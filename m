Return-Path: <toratani.yasumasa@canon.co.jp>
Date: Tue, 16 May 2006 12:22:24 +0900
From: TORATANI Yasumasa <toratani.yasumasa@canon.co.jp>
In-Reply-To: <4468EF42.8060502@gmx.net>
References: <4468D97E.1030707@easysw.com> <4468EF42.8060502@gmx.net>
Message-Id: <20060516114211.A670.TORATANI.YASUMASA@canon.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Re: [Desktop_printing] Re: Trying out
	sample implementation of japanese OpenPrinting efforts
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
Cc: Michael Sweet <mike@easysw.com>, printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Hi,

I think the common statement that we will shift to PDF as a new printing
spooling format is reasonable.

On the other hand, when a CUPS filter handles the PDF data, I think the
filter needs to access the entire PDF file, so, in case of long page document,
for instance over 100 pages document, does pdftopdf convert 100 pages PDF
into layouted 100 pages PDF, and save it into disk, and after completion of
saving 100 pages PDF data, pdfto* filter starts to read the saved PDF data
from the disk, and converts it into raster, PDL, etc?  Or, does pdftopdf send
some header including some PDF table info. to pdf* filter via stdin/stdout,
before sending the PDF document body data?

TORATANI.

On Mon, 15 May 2006 23:14:42 +0200
Till Kamppeter <till.kamppeter@gmx.net> wrote:

> Michael Sweet wrote:
> > Till Kamppeter wrote:
> > 
> >> Here is a way to print with a real PDF workflow and without GhostScript
> >> at all:
> >>
> > 
> > 
> > It is important to note that this is NOT a complete solution.  We
> > still need to implement a pdftopdf filter which does page selection,
> > imposition, page labeling, and so forth before we can use this in
> > CUPS...
> > 
> 
> And there are more things missing or better to be made differently:
> 
> - The PDF renderer should not be a patched XPDF, but it should be linked
>   against libpoppler, as well as the pdftops which ships already with
>   CUPS, so that there is no repeated code which causes full hard disks
>   and maintenance neightmares.
> 
> - A pstopdf filter is needed to handle incoming PostScript jobs
> 
> - Also an imagetopdf and texttopdf filter is needed.
> 
>    Till
> _______________________________________________
> Desktop_printing mailing list
> Desktop_printing@lists.osdl.org
> https://lists.osdl.org/mailman/listinfo/desktop_printing

-----------------------------------------
TORATANI Yasumasa
Software Engineering Dept.22
Platform Technology Development Headquarters, CANON INC.

