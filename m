Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Vmd/FCLCp3QXFNjq39pjgQn+WQifkwwDc1ia08KpBJ0=;
 b=VV4akZMYKXgwKRZ8AEQoYC7bxbSvVE3Ic8X5QYqKSJlR3NSJnI7uFo910zZJq9ha+x
 Av7sQQUyN+EnnDlTTJvqIl2cR1ZdpSWeLqOH6KYwqi/X09LRob7H3/V7N91Hoo9/Dzt4
 ucb691NEREpR2e2SOrYZbmVmb8jIiTD8yc/7l7KzWUWVB9jVmYH7hGcprAy0WEKpNlBn
 lrhbinSX0M70eqBd4NbzrAih4Oz45+g+LcBwIKlniTMB6hdcr5sYlfA+dBV5WafnrWt5
 PQOo9WB6OUhrnc20li7e5r/W9iMLef/VSwAUV5VzZmwq39rt9fNzlMoPDQiErF5FXIfo
 346Q==
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
 <4978914c-e66a-3084-251f-4b72ad364eaf@gmail.com>
 <4cd209b5fc90aa7ccfc8e1a7c380f982@suse.de>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <cf2af7c1-186a-3643-2563-0fea0d6dfa6b@gmail.com>
Date: Thu, 25 Feb 2021 14:37:55 +0100
MIME-Version: 1.0
In-Reply-To: <4cd209b5fc90aa7ccfc8e1a7c380f982@suse.de>
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
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org, Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>

On 25/02/2021 11:30, Johannes Meixner wrote:
> 
> Hello,
> 
> I have a general understanding problem and questions
> regarding how Printer Applications are meant to work.
> 
> In
> https://openprinting.github.io/upcoming-technologies/01-printer-application/ 
> 
> I understand that a Printer Application emulates
> a driverless IPP printer so that a printer device
> appears to "others" as IPP Everywhere printer
> which means "others" detect and communicate with
> that (emulated) IPP Everywhere printer via network.
> 
> Basically a Printer Application "wraps" a printer device
> into an IPP Everywhere network printer.
> 
> What I do not understand is how a Printer Application
> detects and communicates with its associated
> actual printer device
> 
> For example printers that have both a USB interface
> and a network interface with several network protocols
> like TCP socket, LPD, (dumb) IPP (no IPP Everywhere).
> 
> How does a Printer Application implement
> detection and communication with such devices?
> 
> Does each and every Printer Application implement
> it for each and every combination of methods?
> 
> Or in other words:
> In traditional CUPS device detection and communication
> was separated from the "driver" functionality by having
> separated CUPS backends for different access methods
> that are also separated from the other CUPS filters.
> How is that done with Printer Applications?
> 
> 

Each Printer Application contains the filter and backend functionality 
for the printers it supports.

The PostScript Printer Application which I have developed for example 
contains functionality to connect to USB printers and to TCP socket 
printers via appropriate device functions in PAPPL. PAPPL (and so also 
my Printer Application) does not support LPD and dumb IPP, as all known 
network printers also support TCP socket (and this is usually more 
reliable than the two others). PAPPL also supports discovery, via libusb 
for USB printers and both via DNS-SD and SNMP for TCP Socket.

The filtering from a driverless-typical standard format (PDF, Apple 
Raster, PWG Raster, JPG) to the printer's native format is also done by 
the Printer Application. For my PostScript application I use the code of 
the pdftops and pstops CUPS filters (converted into filter functions in 
libcupsfilters of cups-filters 2.x) and additional functions (using 
libppd of cups-filters 2.x) to convert PAPPL's raster data streams to 
PostScript.

To get the emulated IPP printer one needs to create a print queue in the 
Printer Application, via web interface, command line, or IPP.

> I am really not a container expert so I may ask obvious things:
> 
> I do not understand how a Printer Application that runs inside
> a container "has access" to printer devices that exist outside
> of the container - i.e. how something inside a container
> "has access" to e.g. USB device nodes that should normally
> be only accessible from the container host system?
> 
> Or in other words:
> If "just installing" a containerized Printer Application
> makes USB device nodes on the container host system
> "just accessible" from within the container
> I would consider this as a major security violation.
> When I install a containerized application I would expect
> that there are no automated holes in its isolation.
> I think all holes in container isolation require explicit
> user confirmation (at least I hope this is the standard).
> E.g. I may have two USB printers (perhaps even two same models)
> and I may want to allow access from within a containerized
> Printer Application to only one exactly specified printer.
> 

The containers are not completely closed. They have controlled 
connections to the outside, so-called interfaces. A Printer Application 
always has interfaces to open a port on the network, to register its 
services on DNS-SD, to provide a UNIX socket, and in addition, to access 
the printer hardware it supports, usually access to USB, to the network 
as a client, and perhaps also to UDEV.

    Till
