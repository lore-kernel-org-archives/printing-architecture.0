Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <50EDBBC6.4090408@gmail.com>
Date: Wed, 09 Jan 2013 14:53:02 -0500
Message-id: <CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
References: <50EDBBC6.4090408@gmail.com>
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

Till,

Responses inline...

On Jan 9, 2013, at 1:49 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> 1. How to print from a Linux machine to an IPP Everywhere printer?
> ------------------------------------------------------------------
> ...

Currently the only way to do this is to query the printer and generate a PPD file from the data. Then add the queue.  All of the generated PPDs should contain:

    *cupsFilter2: "application/vnd.cups-raster image/pwg-raster 100 rastertopwg"

Printers with PDF support should list:

    *cupsFilter2: "application/vnd.cups-pdf application/pdf 0 -"

Printers with JPEG support should list:

    *cupsFilter2: "image/jpeg image/jpeg 0 -"

I have this on my to-do list for CUPS, but thus far haven't had the time to write it...

> 2. How to make a Linux CUPS server emulate IPP Everywhere?
> ----------------------------------------------------------
> 
> Another use case for IPP Everywhere is having a Linux machine running CUPS and with a conventional (non-IPP Everywhere) printer connected via network or USB and a CUPS queue with driver and PPD (HPLIP, Gutenprint, PostScript, etc.). Now I have a mobile device or TV set (Android, Windows Phone, ...) which supports printing on IPP Everywhere printers. How do I make CUPS emulate IPP Everywhere, so that the shared CUPS queues appear like IPP Everywhere printers? Or does CUPS do this already?

CUPS already implements the required (and many of the optional) parts of IPP Everywhere, sans WS-Discovery (which really needs system-level support and I have 0 interest in implementing it...)  You just need to add the following to cupsd.conf to make the Bonjour registrations report the _print subtype:

    BrowseDNSSDSubTypes _cups,_print

Of course, without the WS-Discovery stuff your WinPhone won't be able to discover the printer, but AFAIK Microsoft has not yet implemented IPP Everywhere...

________________________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

