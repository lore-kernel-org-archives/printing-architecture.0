Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=OtoX6xVej9SxOJBkmn1jxkAElfxyoefX8pLmW22Vcm8=;
	b=pHevIxlm7kRMynhnu4Xs3gZMRJVGtSCsmRuwKQTrFegKYbyvtNwLgHWl3/Gty8zt8B
	XvGBlWwYQNg5XNyiP0OdYG1fsyWbylHFtSmGl3tOiCjHRgK02DdvSDKNh037g/MyBI3A
	QV0+Xhk47G1lNTl+gx1NtLaDNZUrGBlSb648P2Y5Fsdvd3G8pBBDGC3Yrw7/Oj9+u/GK
	Tfj5Rm7gRIzvTlSmFn+48rJ92nokaajG+mAw08hJUAnapt8LpwfUxphPlJqFW6E9Yu0x
	9U7YK93DVVkfKrTcq6OOKVutfkvfQ3+kYKXjsAJjhI4Ejz8Har8pqP314Z5RLWClr434
	h0Pg==
Message-ID: <530CCC53.8070007@gmail.com>
Date: Tue, 25 Feb 2014 18:01:07 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Google Summer of Code 2014 - IPP-over-USB
 printer support - Joint project idea for OpenPrinting and the kernel
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Greg KH <greg@kroah.com>, Open Printing <printing-architecture@lists.linux-foundation.org>, Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>, kernelnewbies@kernelnewbies.org, Linus Torvalds <torvalds@linux-foundation.org>

Hi,

a new standard not yet supported under Linux but starting to penetrate
the market is IPP-over-USB (Internet Printing Protocol over USB).

IPP, the Internet Printing Protocol from the Printing Working Group
(PWG, http://www.pwg.org/) is a standard protocol for network printers
(and also used by CUPS, the standard printing environment on practically
all non-Windows operating systems). IPP network printers have a lot of
advantages compared to USB printers (letting the ability of several
computers on a network being able to access them aside):

- Encrypted job transfer
- Possibility to request printer status and printer capabilities
- Web interface to configure the printer

All this works with standard protocols and without any requirement of
printer manufacturer/model specific software. For printers which also
understand standard languages for the jobs themselves (PostScript, PDF,
PWG Raster, PCL, JPG, TIFF) this means completely driverless printing
(IPP Everywhere).

Unfortunately, this is a network protocol for network printers.

Fortunately, the PWG has added a standard to make it also go into USB
printers, IPP-over-USB. Problem is that there is no Linux support for that.

First, I want to make a feature request to the kernel to add it. Second,
I want to suggest this as a Google Summer of Code project, asking for
mentors on the kernel side. Mentoring Organization will be the Linux
Foundation, hosting projects for both OpenPrinting and the kernel.

It should not be too complex. Probably one can start on the driver for
USB Ethernet or WLAN sticks, as they are also USB devices which
introduce a network interface to the system. What one has to do is to
create a driver for another, probably similar device, the IPP-over-USB
printer. The driver should not be specific to the printer model (it is
an open standard protocol) and it also should provide a network
interface to the system under which there is only found the printer. The
printer should be accessible under this interface via port 80 (web
interface), 631 (IPP), and 443 (encrypted).

There are already HP printers available which do IPP-over-USB. I will
try to make arrangements for developers/students to get samples.

WDYT? Is this a viable project? Should we post it on the ideas lists?
Who would mentor it?

   Till

