Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CtBdYcrV5wz8/ph9w2nB/lx50veTJf05ub/Ji0djqcM=;
 b=LRbMFEtQO3EDQmz5B924jsqDbpeqlvfxzbkJlF1PHk6lQWuH+gJPIBdlOYkvHq3nfR
 0ypn3s4RzefqCPQdXkoMxU2uYBFpadZYo7AqObX7IjFv8K2/I+xxc6LLbu1E0mca0O6S
 9ri03Gou0+kjeroh5zB6j1EOPnM8E2YLY4htevdfh8dBVDauexc2CjUr3Z3gwVVmQE3V
 rmiTtnxNmA93udE6uOFzgjHzHDMez5oi8LQlIt+hjAr3xlyXBG81P5G70OVlIAkGrUad
 FTNtUDhtrOpgS85R1mLN3dmP3V3R6eOQAo4RzeMuVXBLeUaURMZNxMrLe/zyHK5dkDWb
 3R0A==
References: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e9cfb622-9618-05d3-ca65-86eab89787f1@gmail.com>
Date: Fri, 14 Aug 2020 11:57:04 +0200
MIME-Version: 1.0
In-Reply-To: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Will IPP printer devices and Printer
 Applications obsolete the cupsd?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org

On 14/08/2020 10:47, Johannes Meixner wrote:
> 
> Hello,
> 
> I have a general question:
> 
> Will IPP printer devices and Printer Applications obsolete the cupsd?
> 

No, cupsd does spooling, pre-filtering (convert PDF to Raster, 
flattening PDF forms, N-up, booklet, scaling photos to page, print A4 on 
Letter and vice-versa, ...), printer sharing on networks, also with 
authentication like Kerberos, ...

> My current understanding about future Linux printing is that
> "printing targets" (i.e. whereto clients send what to print)
> will be only IPP servers
> either as IPP server running inside an IPP printer device
> or as IPP server running in a Printer Application
> and
> clients autodetect the "printing targets" via DNS-SD
> (mostly indirectly via a DNS-SD listener like Avahi)
> and then
> clients communicate via IPP directly with a "printing target"
> to get the actual printing done.
> 
> The cupsd is also an IPP server
> but when clients communicate directly with
> IPP printer devices or Printer Applications
> I wonder what is left as use case to have a cupsd running?
> 

There are two ways how a client can find available printers:

1. As you mention, DNS-SD and IPP, finds physical network printers, 
Printer Applications, and remote CUPS queues (a CUPS daemon is also a 
certain kind of Printer Applications).

2. The (new) CUPS API. cupsEnumDests() of libcups lists the printers 
available for the local (or default) cupsd.

User applications should use CUPS, find printers via method (2). Why?

SPOOLING: Printer Applications (and also network printers) are not 
required to spool jobs. If you send a job to a non-spooling target it 
can happen that your application is blocked until the target has taken 
in the job completely.

Non-spooling targets are for example the IPP-over-USB daemons ipp-usb 
and ippusbxd, also cheaper printers can be non-spooling. PAPPL is 
probably spooling, but I am not sure. Michael? cupsd always spools jobs.

RASTER-ONLY PRINT TARGETS: There are Printer Applications and also 
network printers which do not accept PDF as input format, but user 
applications send jobs in PDF.

We do not want the application and GUI developers to have to chabnge the 
print dialogs of applications to send both PDF and Raster on the 
target's needs. It is difficult enough to make them change something 
(think of CUPS' temporary queues or the Common Print Dialog Backends 
(CPDB). We are lucky that all applications send PDF nowadays. CUPS 
happily converts PDF input to Raster.

PDF HANDLING: Printer Applications or network printers which accept PDF 
can easily have problems to correctly print PDFs with filled forms or 
annotations. They also are not able to do N-up, booklets, even/odd 
pages, print a photo filling the whole paper without white borders left, 
... or not in a very sophisticated way. CUPS runs all jobs through the 
pdftopdf filter which flattens filled forms and annotations to ordinary 
PDFs (with the filled-in data), and does the page management, ...

NETWORK PRINTING: Most Printer Applications are intended to replace the 
classic printer drivers, to get rid of the old, clunky PPD files, and 
also to have a way to to work with a sandbox-packaged CUPS and 
sandbox-packaged printer drivers, for distribution-independent driver 
packages, and extra security. Other Printer Applications (ipp-usb, 
ippusbxd) take USB devices into the wonderful world of driverless 
printing and scanning (by the way, the Canon Lide 400 scans perfectly 
under Linux),

BUT the many different developers of all these do not put in a very 
highly sophisticated network interface, but only the basics, sometimes 
only to work on localhost (loopback devices) or at least on the network 
interface of the local machine, for the local network. No sophisticated 
things like Kerberos authentication, also encrypted communication is not 
always assured. CUPS does all this and even gives much better 
configurability.

> Or in other words:
> When filters and backends are dropped from CUPS
> what would be still left to do for a cupsd?
> I.e. what service would a cupsd still provide then?
> Cf.
> https://www.cups.org/doc/man-filter.html
> and
> https://www.cups.org/doc/man-backend.html
> that read (excerpt)
> "CUPS printer drivers and backends are deprecated and
> will no longer be supported in a future feature release of CUPS"
> 

Classic drivers are deprecated and replaced by Printer Applications. 
This does not mean that CUPS filters are deprecated. The driver filters, 
rasterto... will go away, but not general filters, like ...topdf, 
pdftopdf, pdftoraster. Backends will most probably go away, and the IPP 
backend as the only remaining one get built-in.

cupsd has still enough to do: Spooling, pre-filtering, networking.

Michael, am I right, did I see it correctly?

I hope Apple will recover working on CUPS and I do not actually start a 
bug-fix fork for the distro maintainers on OpenPrinting.

    Till
