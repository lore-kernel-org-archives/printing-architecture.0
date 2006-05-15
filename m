Return-Path: <mike@easysw.com>
Message-ID: <4468D97E.1030707@easysw.com>
Date: Mon, 15 May 2006 15:41:50 -0400
From: Michael Sweet <mike@easysw.com>
MIME-Version: 1.0
References: <44664EAA.2030508@gmx.net> <4468D32D.40005@gmx.net>
In-Reply-To: <4468D32D.40005@gmx.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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
Cc: printing-architecture <printing-architecture@freestandards.org>, "desktop_printing@osdl.org" <desktop_printing@osdl.org>

Till Kamppeter wrote:
> Here is a way to print with a real PDF workflow and without GhostScript
> at all:
> 
> Now I have also tried to compile the pdftoopvp package from the CVS of
> the opfc project on SourceForge.jp
> (http://sourceforge.jp/projects/opfc/). One needs these two patches:
> 
> http://www.linuxprinting.org/till/tmp/xpdf-3.00-gcc401.patch
> http://www.linuxprinting.org/till/tmp/pdftoopvp-gcc401.patch
> 
> After compiling there is a CUPS filter xpdf-3.00/xpdf/pdftoopvp which
> has to be copied into /usr/lib/cups/filter and the PPDs into
> /usr/share/cups/model. In addition, the OpenPrinting vector drivers for
> the desired printers need to be installed. Then PDF files sent to a
> queue created with the new PPDs should be directly rendered with
> pdftoopvp, without GhostScript detour. pdftoopvp is a real CUPS filter
> which does not need any wrapper. the driver library to be used it
> determines by reading the PPD file.
> 
> The PPD files need to be edited to comply with cupstestppd.

It is important to note that this is NOT a complete solution.  We
still need to implement a pdftopdf filter which does page selection,
imposition, page labeling, and so forth before we can use this in
CUPS...

-- 
______________________________________________________________________
Michael Sweet, Easy Software Products           mike at easysw dot com
Internet Printing and Document Software          http://www.easysw.com
