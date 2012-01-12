Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=AjF9tAzpAXysOvL9eD8MGzCqVGwVOYHAl/l90AU33tI=;
	b=UvBPEK4V1WVEUyIsNmY3r9/5J8vOFwWwsTNrAuCpyXvHum4kNsQllKLfkImUT5sgtr
	31xsnpF8OZr09oAtCOGJuPf1ts1MTWSjtTy3z+5tU8oSgwfQ4eY1wgVm4sciZubA54kO
	zXFVkLxjd5Ka1APlHeCGjO9OfpZk54RkLbtrM=
Message-ID: <4F0E23F2.5010608@gmail.com>
Date: Thu, 12 Jan 2012 01:06:10 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Removal of features in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

as mentioned in the phone meeting Apple/Mike Sweet is dropping features 
which are important for Linux but not much interesting for Mac OS X. 
This means that others have to overtake maintainership to assure that 
printing under Linux continues to work. Even though CUPS is still the 
best maintained printing environment for Linux/Unix and its core 
continues as free software project supplied and maintained by Apple.

Here are the dropped features:


1. Filters go to the new cups-filters project
---------------------------------------------

All filters and backends not used by Mac OS X are dropped. These 
filters, together with the filters for the PDF printing workflow are now 
hosted as the cups-filters project at OpenPrinting. For a first release 
only bannertopdf needs to get finished (by Lars Uebernickel).


2. The Linux implementation of the USB backend looses attention
---------------------------------------------------------------

USB printers can get accessed with two methods: The usblp kernel module 
and libusb. The former is the classic way. It is simple: Data is sent to 
the printer by writing it to a device file as a simple serial data 
stream. Reading the same device file allows bi-di access, at least for 
things like reading out ink levels, status, or printer capability 
information (PJL). It works very well for simple printers, but for 
multi-function devices (printer/scanner) it is not suitable and 
manufacturers like HP supply their own backends.

Formerly, under Unix everything was a file, but now, with printers being 
more complex, one moves to general USB device access as supplied via 
libusb. HP's CUPS backend as shipped with HPLIP for example is 
libusb-based and detaches printers from the usblp kernel module. On HP's 
multi-function devices one can do things like simultaneous, independent 
printing and scanning.

CUPS added a libusb-based USB backend for Linux to access printers via 
libusb, but it is not possible to compile and install both the 
usblp-kernel-module-based one and the libusb-based one at the same time. 
One has to select one by an option for the "./configure" call. Having 
usblp loaded makes only the usblp-based backend see the printers and not 
having the module loaded makes only the libusb-based backend seeing the 
printers. If the module is loaded and some printers get detached from 
the module (HPLIP's backend detaches the printer which it accesses), 
then the not detached printers are visible only by the usblp-based and 
the detached printers only by the libusb-based backend.

To avoid any confusion I have taken care that in Ubuntu all USB printer 
detection and access is always done by both methods to be sure that 
every printer is accessible. This leads to awkward, complex code 
especially for the Plug'n'Print part (automatic queue creation) of 
system-config-printer and for the USB backend of CUPS I have written a 
patch to use CUPS' code for the two USB backend flavors to get one 
hybrid USB backend working with both the usblp and libusb methods so 
that all printers are acessible independent what the usblp kernel module 
is doing.

I proposed my patch to CUPS upstream but Mike rejected it and told me to 
use libusb-only. So in Oneiric I blacklisted the kernel module and built 
CUPS with the libusb version of the backend, not knowing that this 
backend was not really ready for prime time. Several smaller bughs I got 
fixed and issued patched CUPS versions for Oneiric, but now there are 
still several bug reports, especially also due to the libusb-based 
backend not being capable of doing bi-dim which is required by some 
proprietary manufacturer-supplied drivers even for simple printing. I 
asked Mike whether he could fix that but he told that he has no time and 
patches are welcome.

So I am currently trying to improve the backend, I never programmed USB 
stuff before. First I will switch the backend over to use libusb 1.0.x 
instead of the deprecated 0.1.x which is not maintained any more. After 
that I will try to get bi-di in.

Any help is welcome.


3. CUPS Raster output driver in Ghostscript dropped 5 years ago
---------------------------------------------------------------

The first piece of code where Mike dropped maintainership was the CUPS 
Raster output device of Ghostscript. It got into the Ghostscript 
upstream source code right after my merger of ESP Ghostscript into GPL 
Ghostscript in the middle of 2007. From then on Mike did not do any 
change on the CUPS Raster device any more and it was in a rather bad 
state, crashing a lot. I have worked a lot on it to fix its bugs and to 
stabilize it. Now it is working really well.


4. PPD concept will be dropped in CUPS
--------------------------------------

If all printers would be IPP Everywhere when CUPS 1.6.0 comes out, there 
would be no problem, capability and option info comes just 
out-of-the-printer and drivers are not needed. Unfortunately in real 
life we have a lot of printers from the good old times before IPP 
Everywhere and a lot of cheapo printers with rather dumb 
proprietary-raster-only input which would never be capable of telling 
about its capabilities in a standard way. So PPDs and PPD handling is 
still needed. There will be a lot of problems if one cannot place PPD 
generators in /usr/lib/cups/driver any more and if there is no code in 
CUPS any more which generates PPDs from .drv files /usr/share/cups/drv.


All this someone else has to take care of/maintain now. So a lot of 
extra work, especially for OpenPrinting. Here anyone is welcome to 
volunteer, especially a USB expert to get the USB CUPS backend up to the 
state of the art would be great.

    Till
