Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Ys1L3LHID9/xwjDD3hWqW2FCshgUbdxwgUo2+DRfwA0=;
 b=gG5rPdpwXrvEoIt+VKlq8w/NPxIZav5xZIQBQemXtl09ZCaNKROhDzIIoHhlPFPigI
 pW6HkbjQoN72F8LGo2KEMwU+5dae8d+K+8eEWx7gtT3QCpEDHWWrxX3XvzHZNwWyIBw9
 ie8WkLYerJ1MQHUjdJDdOd9mF29cZyR0c0Gj+LOub/mUuhJ7u8DaDYSjzor3C5S4D1r2
 EO5x6d+fj3IiCyBb4JlHBn33mpOozqSG3aT2y5uE3oFDytqo9ll3xBVwJZ/VbPJ7UsRm
 FU+aCHTl63s3GOOn2gD7wVl06pkxsfIaFPrKSDrq6oZzkR4D8uQUCYhfW6KEkz99g6TM
 YS+w==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Date: Tue, 23 Feb 2021 20:27:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Automatic printer setup with Printer
	Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>

Hi,

one important feature for a good user experience with printing is the 
automatic setup of printers. at least locally connected (USB) printers 
either when they get plugged in and turned on or when their Printer 
Application gets installed and started.

The user expects this behavior, as in the current Linux distributions 
which use classic printer drivers consisting of PPD files and filters 
the locally connected printers also get their CUPS queue set up 
automatically and we do not want to loose this functionality when 
switching over to Printer Applications.

The first though here is to let the Printer Application, which is 
running as daemon observe the system for USB printers appearing or 
diappearing. This can be done using the hotplug functionality of libusb 
or with a UDEV monitor based on libudev (installing a UDEV rules file to 
make UDEV trigger a command execution does not work out of a Snap or 
other sandboxed packages). As soon as a new device appears the Printer 
Application would check whether it is supported by it and if so, create 
a print queue.

A proposed implementation is discussed as a Pull Request for the Printer 
Application support library PAPPL:

https://github.com/michaelrsweet/pappl/pull/36

There see especially my comment

https://github.com/michaelrsweet/pappl/pull/36#issuecomment-783533960

The main problem of this approach is that there can be many Printer 
Applications installed, especially with a desktop Linux distribution 
which should support as many different models of hardware as possible 
and therefore has practically all drivers available as free software 
installed. Once a new printer plugged in every Printer Application 
checks whether it supports it. Depending on how they do this this can 
cause a load peak for the system and also for the printer (if the 
Printer Application has to do additional queries on the decision whether 
the printer is supported).

So we need to do one or more of the following:

- Use the lowest impact method to observe device appearing and 
disappering. Is it libusb's hotplug or libudev's monitor?

- Lowest impact determining whether the appearing printer is supported, 
ideally letting the libusb/libudev process already grab the device ID 
and then run this device ID through PAPPL's auto-add callback function 
(this is the function with which each driver checks whether a printer is 
supported).

- Configurability of Printer Applications to turn off auto-setup and to 
blacklist selected printers, to avoid that there are more that one 
queues because a printer is supported by several Printer Applications.

- Reduce the number of Printer Applications which come with a Linux 
distribution by creating only one Printer Application which retro-fits 
all legacy printer drivers which are not maintained any more.

On a Debian or Ubuntu distribution you find all available printer 
drivers with the command line

apt search printer-driver | grep '^printer-driver-' | grep -v 
printer-driver-all | grep -v -- -common/ | cut -d / -f 1 | sed -e 
s/^printer-driver-//

which results in

brlaser
c2050
c2esp
cjet
cups-pdf
dymo
escpr
foo2zjs
fujixerox
gutenprint
hpcups
hpijs
indexbraille
m2300w
min12xxw
oki
pnm2ppa
postscript-hp
ptouch
pxljr
sag-gdi
splix

Take out hpcups, hpijs and postscript-hp and replace them by hplip. Also 
take out cups-pdf. Then we have 19 drivers and in addition we have 
foomatic which supports all built-in drivers of Ghostscript. Looking 
through the list there are many which are not maintained upstream any 
more: c2050, c2esp, cjet, m2300w, min12xxw, pnm2ppa, pxljr, sag-gdi, 
splix (and perhaps even more). They can all get joined into the Foomatic 
Printer Application, so we end up with a maximum of 11 Printer 
Applications. One needs to find out whether the impact of all of them on 
an appearing USB printer is too high or not.

An alternative approach would be to have a separate, external program to 
auto-setup printers instead of each Printer Application doing it 
individually, as we have currently /lib/udev/udev-configure-printer 
(part of system-config-printer) to auto-create CUPS queues with classic 
printer drivers. This program identifies the printer and assigns a 
driver supporting it, using a priority scheme if there is more than one 
suitable driver. One could proceed similarly for Printer Applications or 
even extend /lib/udev/udev-configure-printer for Printer Application 
support. This would especially also assure that only one print queue 
gets set up, independent of how many Printer Applications support the 
printer.

WDYT?

Should we take the centralized approach? Or should we let the Printer 
Applications do the auto setup individually?

Should we use libusb's hotplug approach or libudev's UDEV monitor 
approach to get notified of appearing and disappearing printers?

Any other thoughts?

    Till
