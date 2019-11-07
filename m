Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=ZF01H/p1hbTb0k72S2uG4ljf5EcrTAL1pT+RcjAbMm0=;
	b=RArno6L5wiALeT6bOV467aoFV+Kgmp502aL7RiLLiSGL8/ed1sN2xD4YSnfPAqolwm
	oozuFRVkOqCfLFg2Uh50b8Qb5pY6lDDtJ5KKN14uanxP13NJqgG7/Hb/bYujndivrhnq
	OQRLzquLQvTIhfmtbcDO0alLiR/wiipQ+lePuNsZh5bHTsWx+zGTANsLHm6GpdhzxeFM
	8SPE9ps8UwOKs8K0x/PMVb0eMo4d8I9Mb9Sh8F8uWABkekgCI5/5hDqokoczbIKT+Kej
	AvYFFCY682sRR0L6was5szecyDS0Whf4WPd8QODPKI81tsAMmZJ74ANpjSs2PO6s0Zns
	zPfw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
Date: Thu, 7 Nov 2019 16:34:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Upcoming work for OpenPrinting: Printer
 (Scanner) Applications and IPP System Service
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

CUPS 2.3.0 came out recently and looking deeper into it, the removal of PPD file 
support comes closer.

If you create a print queue using the lpadmin command, not using "-m 
everywhere", but any other "-m ..." or "-P ..." argument, causing the queue to 
get a PPD file in /etc/cups/ppd/, you get the following warning message:

lpadmin: Printer drivers are deprecated and will stop working in a future 
version of CUPS.

With this explicit warning issued by command the removal seems to be close.

So we need it to make the next step of development in OpenPrinting to prepare 
for printer drivers being delivered as Printer Applications.

So we need to concentrate on Printer/Scanner Applications and IPP System Service 
from know on.

This is a substantial change in the printing architecture on Posix-style 
operating systems.

Especially we need to create libraries to allow easy creation of Printer/Scanner 
Applications.

They should provide:

- Acquisition of a port on localhost (or on all
   network interfaces for sharing). Managing the
   port numbers in a useful way.

- DNS-SD advertising of the services (printer,
   scanner, fax, config interfaces, ...)

- IPP server: Answering all types of requests and
   calling functions to do the needed interactions
   with the printer/scanner and the application-
   internal printer/scanner capability data.

- Processing and filtering the incoming job data:
   Printer Applications will take PDF and raster
   formats as input and convert to the printer's
   native format. Functionality of the filters in
   cups-filters should be moved into a library, to
   be available as API functions.

- Legacy interface functions: For filters/PPDs and
   for SANE drivers.

- Communication with printers and scanners,
   functionality of the CUPS backends.

- IPP System Service as a server, to allow
   configuration of the Printer/Scanner Application
   via an external GUI (IPP System Service client).
   Then there can even be a Printer Application for
   a legacy printer which cannot be auto-discovered
   in the network. The application starts only
   providing IPP System Service. As soon as the
   user has entered the printer's IP address via
   the configuration interface, the application
   connects to the printer and starts to offer IPP
   print service.

- Perhaps also a web server for legacy clients.
   Then commodity functions of the library for
   building up a configuration interface should add
   each interface element to both the IPP System
   Service server and the web server.

- IPP System Service as a client, for GUI (and
   also CLI) apps to configure IPP printers and
   also Printer/Scanner Applications. This will be
   a central part of printer setup tools in the
   future.

For testing this we should create a native Printer Application from Gutenprint 
for example, or one for PostScript printers for which we have PPD files. We also 
should create a native Scanner Application wrapping SANE with its current driver 
collection.

Additional things to do:

- Turn cups-browsed into a Printer Application:
   Instead of creating a local CUPS queue for a
   printer cluster emulate an IPP printer which
   prints to the cluster (and local CUPS picks it
   up automatically, but how to prevent local CUPS
   from seeing the member printers directly?). We
   can also pick up legacy CUPS broadcasts (or
   BrowsePoll from legacy servers) and provide
   these printers as IPP printers. Configuration of
   cups-browsed then also via IPP System Service.

- Overtake PPD support API functions and pstops
   filter as soon as they get dropped from CUPS,
   for legacy support in Printer Aplications and
   cups-browsed.

- SANE driver for IPP scanners, so that
   applications accessing scanners via SANE can
   also access IPP scanners and Scanner
   Applications.

Documentation/Community reach-out:

- Design guidelines for printer and scanner
   drivers as Printer/Scanner Applications,
   instructions to do this with our new libraries.

- As soon as SANE is wrapped into Scanner
   Applications, move GUI developers to base their
   scan frontends on IPP scanning and not SANE any
   more.

The code should get preferably hosted at OpenPrinting as part of cups-filters or 
in separate projects/repositories. Probably we need to overtake some parts of 
the ippsamples code. Or should the lib then better be at the PWG as part ippsamples?

    Till
