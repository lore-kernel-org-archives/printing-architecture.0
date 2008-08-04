Message-ID: <4896BF68.3080804@gmail.com>
Date: Mon, 04 Aug 2008 10:35:52 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Two more PDF CUPS filters: pstopdf and
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, Lars Uebernickel <larsuebernickel@gmx.de>, Michael Sweet <mike@easysw.com>, OTANI Koji <sho@bbr.jp>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>, Tobias Hoffmann <th55@gmx.de>

Hi,

to complete the PDF printing workflow there are two more, rather simple
CUPS filters needed: pstopdf and cpdftocps.


pstopdf
-------

This filter kicks in if a legacy application emits its print jobs in
PostScript. I started about something very simple, like the pstoraster
and pstopxl wrapper scripts which come with Ghostscript, only that this
wrapper will use "pdfwrite" as output device. This will at least work
for apps which supply the options as job attributes (attributes for the
CUPS library function to submit a job, or command line options for the
"lpr" command).

It is possible and legal that applications supply the options embedded
in the PostScript data stream. For that options to work, the pstopdf
filter needs an extension: It must read the PostScript data stream
before feeding it into Ghostscript for conversion and whenever it finds
a line like

%%BeginFeature: <option>=<value>

to add the key value pair to a JCL header for the output:

pdftopdf jobInfo: <option>=<value>
<option2>=<value2>
...
%PDF-1.3
...

pdftopdf must read this JCL header and pass it through to the next
filter, perhaps interpret some options by itself, like PageSize. Driver
filters like pdftoraster, pdftopvp, pdftoijs, cpdftocps, and
foomatic-rip have to read out these option settings to control the
driver accordingly.

I think this is the only and easiest way in the CUPS architecture to
propagate options which are embedded in PostScript input.

This is a way to get a complete PDF printing workflow (page management 
always through pdftopdf, never through pstops) without regressions (like 
loss of option settings embedded in PostScript data stream). Problem is 
that many of the other filters (all with PDF or CUPS PDF as input 
format) will need to be changed to be able to read out and pass on the 
JCL header with the option settings.

Alternatively, the pstopdf filter can be left out and then PostScript 
input goes its old way through pstops, but these means that page 
management keeps unreliable for legacy applications with PostScript 
printing output and driver PPDs must be made in a way that both PDF and 
PostScript input is possible for a longer time.


cpdftocps
---------

This filter converts application/vnd.cups-pdf to
application/vnd.cups-postscript. It runs after the pdftopdf filter to
support manufacturer-supplied PostScript printer PPD files without
"cupsFilter" line or legacy PPDs which do not explicitly support the PDF
printing workflow (only one "cupsFilter" line with 
application/vnd.cups-postscript as input format). Therefore we call this 
filter "PostScript driver", as it allows to print on output devices 
which understand only PostScript.

The filter can be a wrapper script around other filters. At first 
pdftops is called with the same command line parameters as they were 
used for calling the cpdftocps script. After that the data is passed 
through pstops, but in the call of pstops we filter all CUPS options out 
of the fifth command line argument (we leave only the PPD options in the 
fifth argument) so that only the PPD options get embedded into the 
PostScript data stream but the page management will not get repeated. 
Otherwise we would get unwished effects like N-up getting N^2-up.

This filter will assure that any legacy PPD file/printer driver can be 
continued to be used with a PDF workflow. This keeps especially print 
queues working which existed before when updating from a 
PostScript-printing-based version of the OS to a PDF-printing-based version.


Anyone wants to code these filters? They are not too complicated scripts 
or they can also be made by rearranging some existing CUPS code.

    Till



