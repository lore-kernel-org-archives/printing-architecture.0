Return-Path: <mike@easysw.com>
Message-ID: <446CCE7F.4070501@easysw.com>
Date: Thu, 18 May 2006 15:43:59 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Meeting notes for 2006-05-17 / LSB 3.2
	recommendation
References: <446BA39A.80802@Sun.COM> <446BBE7C.5090500@easysw.com>
	<446CB026.4020804@gmx.net>
In-Reply-To: <446CB026.4020804@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: Printing architecture under linux
	<printing-architecture.lists.freestandards.org>
List-Unsubscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=unsubscribe>
List-Archive: <http://lists.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.freestandards.org>
List-Help: <mailto:printing-architecture-request@lists.freestandards.org?subject=help>
List-Subscribe: <http://lists.freestandards.org/cgi-bin/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.freestandards.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmx.net>
Cc: Norm Jacobs <Norm.Jacobs@Sun.COM>, printing-architecture <printing-architecture@freestandards.org>

Till Kamppeter wrote:
> ...
> CUPS driver scripts and backends must go into /usr/lib/cups/filter and
> /usr/lib/cups/backend, either physically or as a symbolic link from
> files in /usr/lib/printerdriver/{supplier}/.

That's actually not necessary.  You can (and most vendors do, on
MacOS X) put a full path to the filter in the PPD file.

> ...
> So If we really say LSB is the LINUX Standards Base, we can let the LSB
> 3.2 require CUPS 1.2.x or newer, ESP GhostScript 8.15.2 or newer (to
> serve pswrite, pdfwrite, cups, ijs, opvp), KDE Print, GTK Print, PAPI

Agreed.

> If we want the LSB standard to be a standard for all Unixes (then they
> should rename to USB perhaps) then we can only require more abstract
> standards, especially PAPI, so that ISVs do not need to care about the
> spooler used on the destination system. In that case also Foomatic
> should be required by the standard, as it interfaces the same driver
> (including CUPS raster drivers) to many different spoolers, including
> CUPS, BSD LPD, and Solaris LP.

Does Foomatic do file type detection and conversion (i.e. the whole
CUPS filter chain)?

I'm thinking more along the lines of a Solaris-specific interface
script (and a BSD-specific filter script) which emulates/provides
the CUPS, IJS, and OPVP driver interfaces.

We did the equivalent of the CUPS raster path via Solaris interface
scripts and a helper program for 5 years before we released CUPS -
I'm happy to donate the code to the cause.

The CUPS testmime program could also serve this function as well.
I believe that is what Codehost, one of our OEMs, does to support
copiers on Solaris and other commercial UNIX's when running with
the native spooler...

All that said, keep in mind that the functionality of printing
with older print spoolers can be quite limited - that's one of
the reasons we developed CUPS in the first place.  IMHO we should
concentrate on print spoolers that can provide a good user
experience...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com
