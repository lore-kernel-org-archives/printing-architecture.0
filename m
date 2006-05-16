Return-Path: <mike@easysw.com>
Message-ID: <4469AF6E.40707@easysw.com>
Date: Tue, 16 May 2006 06:54:38 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
Subject: Re: [Printing-architecture] Re: [Desktop_printing] Re: Trying out
	sample implementation of japanese OpenPrinting efforts
References: <4468D97E.1030707@easysw.com> <4468EF42.8060502@gmx.net>
	<20060516114211.A670.TORATANI.YASUMASA@canon.co.jp>
In-Reply-To: <20060516114211.A670.TORATANI.YASUMASA@canon.co.jp>
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
To: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
Cc: Till Kamppeter <till.kamppeter@gmx.net>, printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

TORATANI Yasumasa wrote:
> Hi,
> 
> I think the common statement that we will shift to PDF as a new printing
> spooling format is reasonable.
> 
> On the other hand, when a CUPS filter handles the PDF data, I think the
> filter needs to access the entire PDF file, so, in case of long page document,
> for instance over 100 pages document, does pdftopdf convert 100 pages PDF
> into layouted 100 pages PDF, and save it into disk, and after completion of
> saving 100 pages PDF data, pdfto* filter starts to read the saved PDF data
> from the disk, and converts it into raster, PDL, etc?  Or, does pdftopdf send
> some header including some PDF table info. to pdf* filter via stdin/stdout,
> before sending the PDF document body data?

Those are implementation details - we're a bit too early in the
process set those in stone.  In general, we *will* need to save the
printer-specific PDF file (application/vnd.cups-pdf, already
registered with IANA) to disk in the pdftops/pdftoraster filter,
however the document filter (pdftopdf) can probably stream the
objects through the use of indirect objects to hold the stream
lengths.

That said, an alternative solution would be to put the job filtering
in pdftops/pdftoraster themselves, in which case pdftopdf will only
be necessary when printing to a PDF-capable printer.  The current
Xpdf/poppler APIs are insufficient for this right now, but if
implemented properly it would provide a highly efficient filtering
solution.

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Publishing Software        http://www.easysw.com

