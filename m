Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=vgualpRhcJOoob2UAKNs+12DrFga9ghjNxhWpdCmMNI=;
 b=XSCWwgbSTSuyTbUBPidi11DeyoNJEa9Qpw9EAzNQj/lMWY9vaRRfx2Ax9ny3GHcDK3
 i85WL09LsZfWXwtHZzvNsX7guSc9E4qd+zeJibrdn83fEz8fESIcHeIqhgk5k+2I6KP0
 LpVL9tz5Lre5GodLNkToLDpRvYy5AzH5iVADfifBDqKLorwaMfoZxFfvNVmBSaOyYRo9
 kxfFCQCMic0wKVEvbBeSn8CIY3XPVSmZmrDVx+uvVgoFGZyOUro6iej0NI2eyge611uB
 MRwY3b/Nfl+CVswYzS2sg/rO0Un00FF05xcC23FvuOcFM6/4K9a0Rc8oOOspfw4siT3E
 a15w==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
Date: Wed, 24 Feb 2021 12:25:48 +0100
MIME-Version: 1.0
In-Reply-To: <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
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
To: Zdenek Dohnal <zdohnal@redhat.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>

On 24/02/2021 09:03, Zdenek Dohnal wrote:
> 
> Ok, I did a quick search, udev rules don't work because /sys is a
> read-only in Snap?
>

The problem is that the installation of a Snap cannot install a UDEV 
rules file (/lib/udev/rules.d/70-printers.rules) into the system.

> Then a service/daemon looks like a only way. Printer applications will
> run as a service and udev-configure-printer is run as a service already,
> but the udev rules must be removed and we need to add libusb/libudev
> functionality into udev-configure-printer, if we are going to use it.
> 

Yes, we need to do either use a UDEV monitor based on libudev or use the 
hotplug functionality of libusb. Then udev-configure-printer has to be a 
permanently running daemon and a function gets triggered on every event 
of a USB device appearing or disappearing. We need to check whether the 
device is an actual printer at first, without polling anything from the 
device, so that we do not hammer all kinds of USB devices. If it is a 
printer we can do further things like polling the device ID from it. 
Advantage of a centralized service is that there are not 10 or more 
Printer Applications polling the device ID at the same time.

So udev-configure-printer will get turned into a permanent daemon and if 
it detects a printer plug/unplug it does more or less what the former 
udev-configure-printer did, but instead of creating a queue on CUPS it 
creates one on a Printer Application.

> 
> It just got on my mind (probably it will be nonsense) - what about
> having only one printer application as a front door and a communication
> point with other stuff in the system, and the other driver specific
> stuff will be as a module, which could be loaded by one main printer
> application, which would do the registering in MDNS and communication
> with USB, so hammering USB ports could be prevented.
> 
> Even users can be happy that they don't need to install
> 'foomatic-printerapp' for this printer, 'hplip-printerapp' for other
> printer, and they can just install 'generic-printerapp' and if they
> don't care about installing all drivers (iiuc our CUPS snap integrates
> all drivers anyway...) the modules will be installed via weak deps. Who
> cares about minimization, he can install without weak deps and find out
> which module supports his printer.
> 
> I just got this thought because I'm thinking more about systemd
> nowadays, so it would be kind of systemd-version for printing apps.
> 

We must keep in mind that everything should work in Snaps. So as we 
cannot add CUPS filters and PPD files to an installed CUPS Snap we also 
cannot add some kind of "driver plugins" to a Printer Application (at 
least not by means of an installation of an additional Snap containing 
the driver/plugin).

> If the one big printer application system+modules is a complete
> nonsense, I would go with at least putting all dead drivers into
> foomatic printer application, and then update udev-configure-printer to
> use libusb/libudev for checking USB device, and if found any, it will
> contact a printer application via PAPPL API or (probably rather, it
> looks like it is more popular) via DBUS message.

Yes, we can go this way, especially stuffing all the old drivers into 
the Foomatic Printer Application.

udev-configure-printer will not connect to the Printer Application via 
D-Bus, as there is no appropriate interface (yet).

udev-configure-printer will need an interface at all Printer 
Applications where it can send a device ID and the Printer Application 
answers back whether it supports this printer (with driver name), and 
that without the Printer Application talking to the physical printers. 
This interface more or less calls the autoadd callback function of the 
Printer Application. This way udev-configure-printer will find out 
whether there is support for the printer and if yes, by which Printer 
Applications and then prioritize. Great would be if a Printer 
Application also could report back support level (generic, third-party, 
manufacturer, ...). It could perhaps also prioritize unknown Printer 
Applications as they are most probably from the manufacturer and not 
from the distro.

> I would prefer libusb - IMO libudev is closer to HW, which IIUC is not
> needed here, so libusb looks fine for us.

Yes, libusb has also the advantage that in the same action we can grab 
the device ID of the printer.

libudev has the advantage to support more than only USB, parallel for 
example. But do we have to support the parallel port? Or can we safely 
assume that computers on which we install a current distro do not have 
parallel ports any more?

    Till

