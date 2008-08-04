Message-ID: <489735F0.40203@gmail.com>
Date: Mon, 04 Aug 2008 19:01:36 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4896BF68.3080804@gmail.com> <48971403.9090006@easysw.com>
In-Reply-To: <48971403.9090006@easysw.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Two more PDF CUPS filters: pstopdf and
 cpdftocps ("PostScript driver")
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: OTANI Koji <sho@bbr.jp>, Chris Cheney <chris.cheney@canonical.com>, seb128@ubuntu.com, Tobias Hoffmann <th55@gmx.de>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>

Michael Sweet wrote:
> Till Kamppeter wrote:
>> Hi,
>>
>> to complete the PDF printing workflow there are two more, rather simple
>> CUPS filters needed: pstopdf and cpdftocps.
> 
> Comments in-line.  In short, only pstopdf is needed.
> 
>> pstopdf
>> -------
>>
>> This filter kicks in if a legacy application emits its print jobs in
>> PostScript. I started about something very simple, like the pstoraster
> 
> Since this filter would need to be based on Ghostscript, limit the
> scope of the pstopdf filter to convert application/postscript to
> application/pdf, which can then be filtered through pdftopdf to
> support PDF printers.
> 
> PostScript printers would use pstops.
> 
> Raster printers would use pstoraster plus their raster filter.
> 
> As for getting options from the PostScript data stream, today we
> can embed page size and duplex mode in the PDF document.  Supporting
> other embedded features is not feasible, although applications can
> use the CUPS PS job ticket comments at the top of the file:
> 
>     %!PS-Adobe-3.0
>     %cupsJobTicket: option=value ... option=value
>     %cupsJobTicket: option=value ... option=value
>     %cupsJobTicket: option=value ... option=value
>     ... other PS comments
>     %%EndComments
> 
>> cpdftocps
>> ---------
>>
>> This filter converts application/vnd.cups-pdf to
>> application/vnd.cups-postscript. It runs after the pdftopdf filter to
>> support manufacturer-supplied PostScript printer PPD files without
>  > ...
> 
> This filter is NOT required.  We ALREADY have a pdftops filter that
> takes application/pdf and produces application/ps, which is then run
> through pstops for PostScript printers.  We DO NOT want to have a
> filter for every combination of file formats because it will be a
> maintenance nightmare.
> 

So this would mean that a real PDF workflow (always using the pdftopdf 
filter) would only happen if

- The printer is a PDF printer
- The printer/driver PPD takes exclusively CUPS PDF

In the following cases pdftopdf will be at least be used if the input is 
PDF, an image, or text:

- The printer/driver PPD takes CUPS raster (then we can go through
   pdftopdf + pdftoraster or pstops + pstoraster)
- The printer/driver PPD has cupsFilter lines for both PDF and
   PostScript input (Foomatic 4.0 or OpenPrinting Vector)

In case of PostScript input they would lead to pstops + pstoraster or 
pstops + foomatic-rip filter chain and so they are subject to page 
management problems caused by bad PostScript input.

If we can assume that the pdftops filter produces fully DSC-conforming 
PostScript (Is this the case?), then we solve all page management 
problems if all apps send jobs in PDF, as CUPS takes then care of clean 
PostScript by generating it with the pdftops filter. Then page 
management issues get even solved with current CUPS, without adding all 
the new PDF filters. In addition, apps producing PDF jobs can also not 
raise problems with embedded option settings. They HAVE to send option 
settings as job attributes.

So the most important step to benefit from PDF as standard print job 
format is to make all apps outputting print jobs in PDF instead of in 
PostScript. This solves at least all page management problems and 
reduces the job size. This also leads to a complete PDF workflow if the 
printer or driver understands PDF.

Printers and drivers which accept PDF make up a complete PDF workflow if 
the input data is PDF and so these can make use of the additional PDF 
benefits like more sophisticated graphical elements and color management.

The pstopdf filter should be handled with caution as it can lead to the 
loss of embedded option setting code. So it should have a high cost 
factor to make it only be used in the case that it is really needed, 
like if an application produces PostScript output and the output device 
is PDF-only (and in this case the PDF should not contain embeddable 
PostScript code).

So we will only add the simple Ghostscript-based pstopdf printer. One 
question: Does GhostScript embed the PageSize and Duplex settings 
correctly in the PDF file?

Most important for completing the workflow is that all desktop 
developers, application developers and maintainers of appropriate parts 
in distributions make sure that all applications produce PDF output when 
sending print jobs.

    Till
