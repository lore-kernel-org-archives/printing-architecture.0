Message-ID: <485AD507.4050300@gmail.com>
Date: Thu, 19 Jun 2008 23:52:07 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printer setup tools: Automatically choose
	the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, printing-foomatic@lists.linux-foundation.org, Tim Waugh <twaugh@redhat.com>, David Suffield <suffield@hp.com>, shiyun.yie@hp.com, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>, Printing-japan <printing-japan@lists.linux-foundation.org>

Hi,

currently, it is no problem any more to determine which model a 
connected printer is and to find the correct PPD/driver for it. The 
bigger problem is to use the correct backend automatically if the driver 
comes with its own backend. Examples for such drivers are Gutenprint and 
HPLIP. The "canon" and "epson" backends for Gutenprint are usually not 
used and this does not restrict anything on normal printing. They only 
allow printer maintenance "through the print queue" by sending special 
commands. But for HPLIP the "hp" and "hpfax" backends are very 
important. The first allows printing with bi-directional functionality 
(HPLIP needs this also for border-less printing) and the second allows 
faxing on HP's multi-function devices.

The list of auto-detected printers in a printer setup tool is the 
equivalent of the output of "lpinfo -v":

------------------------------------------------------------------------
till@till-laptop:~/printing/foomatic/foomatic-db-hpijs$ lpinfo -v
network socket
network beh
direct 
hal:///org/freedesktop/Hal/devices/usb_device_3f0_3517_00CNMJP81545_if0_printer_noserial
network socket://192.168.2.34
network ipp://fe80::21d:60ff:fe48:c2d7:631/printers/SanFranciscoFax
network socket://192.168.2.29
direct hpfax:/usb/HP_LaserJet_3390?serial=00CNMJP81545
direct usb://HP/LaserJet%203390
direct hp:/usb/HP_LaserJet_3390?serial=00CNMJP81545
direct 
hal:///org/freedesktop/Hal/devices/usb_device_3f0_2812_CN7BU18154_if0_printer_CN7BU18154
direct usb://HP/Officejet%20H470?serial=CN7BU18154
direct hp:/usb/Officejet_H470?serial=CN7BU18154
network socket://192.168.2.35
direct 
hal:///org/freedesktop/Hal/devices/usb_device_3f0_bd02_MY7143104604C1_if0_printer_MY7143104604C1
network socket://192.168.2.30
direct usb://HP/Photosmart%20Pro%20B9100%20series?serial=MY7143104604C1
direct hp:/usb/Photosmart_Pro_B9100_series?serial=MY7143104604C1
network http
network ipp
network lpd
network bluetooth://001A0E1769AA
file cups-pdf:/
direct scsi
network smb
till@till-laptop:~/printing/foomatic/foomatic-db-hpijs$
------------------------------------------------------------------------

You see already that several printers get detected three times, first by 
the "hal" backend, second by "usb" and third by "hp". Users of a GUI- or 
web-based printer setup tool will see the model name of their printer 
three times and are completely confused what they should choose. So only 
a few will choose the "hp" backend and so will be able to print 
borderless or use the hp-toolbox.

A method which I have applied twice (printerdrake and 
system-config-printer) is to add explicit support for backends supplied 
with the driver. Therefore at least these two backends select the "hp" 
backend automatically (and even suppress the superfluous entries in the 
list of detected printers). This works fine at least for drivers which 
are common enough and existed before the release of the printer setup 
tool in use. Some authors also give no special support for third-party 
software in general.

So one needs a method to auto-select the best backend for a printer. As 
all information about each supported printer model is supplied to CUPS 
by a PPD file for the printer, the most obvious place for information 
about the preferred backend is the PPD file.

Therefore I suggest the following PPD extensions:

*cupsPreferBackend: "hp"

This entry simply recommends a backend. In this case a printer setup 
tool should look for full URIs of this backend in the output of "lpinfo 
-l -v" and compares make-and-model and device ID entries with the ones 
of the URI which the user has chosen. If both the user-chosen URI qnd 
the URI found as replacement have the printer's serial number or IP, 
they must match. URIs with serial number or IP should never be replaced 
by URIs with another serial number or IP.

*cupsPreferBackend usb,parallel,hal: "hp"

This is a modifier for all keywords listed here. It estricts the 
application of the backend selection rule to the case when the URI 
selected by the user uses one of the listed backends, in this example 
the printer setup tool should only try to use the "hp" backend if the 
user has selected an URI for the "usb", "parallel", or "hal" backend.

*cupsReplaceURI: "usb://HP/LaserJet(_|%20)42\d\d hp:/usb/HP_LaserJet_42\d\d"

Here we do not use model info from the "lpinfo -l -v" output. The 
printer setup tool should match the first regexp against the user-chosen 
URI and the search the "lpinfo -v" output for an URI matching the second 
regexp. In this case the user-chosen URI gets relaced. Serial numbers 
and IPs have to get checked here, too, as with the *cupsPreferBackend 
keyword.

*cupsMakeURI: "hp-makeuri -c @IP@"
*cupsMakeURI: "hp-makeuri -c @USB_BUS@:@USB_DEV@"
*cupsMakeURI: "hp-makeuri -c @PARDEV@"

*cupsMakeURI: "foojet-geturi @USBDEV@"
*cupsMakeURI: "foojet-geturi @URI@"

Some drivers have their own tools to determine the correct URIs for 
their printers. With these lines a printer setup tool should execute the 
shown commands, substituting the parameters (@...@) at first. There can 
be more than one line, and they should be tried from the top to the 
bottom, until one line produces a valid URI. So if a parameter cannot be 
substituted because it does not exist, as for example the IP for an USB 
printer, or if a command gives an error, the next line gets tried. If 
all lines fail the printer setup tool creates the queue, but it uses the 
URI chosen by the user.

@URI@ is here the URI chosen by the user, @PARDEV@ is the device file 
for the parallel port, like /dev/lp0, @USBDEV@ is the USB device like 
/dev/usb/lp0, ...

In general there should be more than one of all the above keywords 
allowed and substitutions be attempted using each line, from the top to 
the bottom, until the first line appears which generates a valid 
replacement URI.

*cupsMakeExtraURI lsb/usr/hpijs/HP/HP-Fax-hplip.ppd: "hp-makeuri -f @IP@"

This keyword is for multi-function devices. It calls a tool to find out 
URIs for additional queues, like for example a fax queue. A printer 
setup tool is supposed to finish the setup of the current print queue 
and then to create a queue for the URI found here. The CUPS URI for the 
PPD file for that extra queue is given before the colon.

There can be more than one of these lines. In this case for each 
succeeding line (except duplicate URIs) one extra queue has to be created.

*cupsExtraURI lsb/usr/hpijs/HP/HP-Fax-hplip.ppd: "s!^hp:!hpfax:!"

On the resulting URI for this print queue (after substitution applying 
the previous keywords) the given regexp substitution is applied. If the 
substitution succeeds, the printer setup tool is supposed to create an 
additional queue with the given PPD file.

What do you think about this PPD extension? This should finally allow to 
set up printers completely automatically and non-interactively. This 
should allow Plug'n'Print in all cases and also with multi-function devices.

    Till
