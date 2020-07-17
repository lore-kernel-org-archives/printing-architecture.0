Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=BED9t++++bB0a8XF07L8h5k2YV4142cbAea9vByg1Gg=;
 b=eIurrFMGE3n+ZulAOAhkxvi1IEWLvutoLEqumNfVczkzIm7PajJXIkq2g7/qMLoIdj
 FT0wDr6pnAm35VHBo1ejd9ZyetpfOUFGkSOZS8gUeYnN3Vmi8fHenX6qGUlIaWP64/ku
 NbmFveZo5KHr7UBNIEa6WZeZ81wybTeL/0eg1MlVeywD9w1EafY5CgzWTeRRKVjvSPTW
 apNJU2fx1r83sgvrqNXuMaa6VwnqgVYi+Lszwb3z+mZDpo5gPHhxx5yZ9+UUAP1nXvuu
 4Ug5F9KpU9cRC3ewirFYQ/yVa2An2raIUGY1wQv7qYhxvYu3w27obkT1IaZk/qsqIGyi
 E69g==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <199c8f6d-b38a-fc14-526c-3201c473788b@gmail.com>
Date: Sat, 18 Jul 2020 00:06:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printer Applications: Retro-fitting classic
	drivers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Sambhav Dusad <sambhavdusad24@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

in the last days I have studied how to make PAPPL-based Printer 
Applications from already existing classic CUPS drivers, consisting of 
filters and PPD files, especially the special case of PostScript 
printers for which I have the manufacturer's PPD file.

At first I have looked into this sample Printer Application for PCL 
3/4/5c/e printers:

https://github.com/michaelrsweet/hp-printer-app/

This is a simple Printer Application using libpappl:

https://github.com/michaelrsweet/pappl/

It does not use PPD files and it also does not seem to query the actual 
printer for its properties in any form, probably because there is no 
standard way to query arbitrary PCL printers, there are even older 
models with only uni-directional (send job into black hole) communication.

There are simply three sub-drivers to choose from, DeskJet, LaserJet, 
and Generic PCL, the driver code seems to come from the sample drivers 
in CUPS (rastertohp?).

As PostScript is a high-level/vector-graphics PDL and also many other 
legacy drivers are based on a built-in Ghostscript driver I want the 
legacy-driver-import Printer Application to take simply only PDF as 
input format and convert this to the printer's native (often 
proprietary) PDL.

This made me thinking of that PAPPL would need PDF support and so I 
discovered the feature request for PDF support in PAPPL:

https://github.com/michaelrsweet/pappl/issues/3

There I had some discussion with Michael and Jai. PDF support IN PAPPL 
seems to have license issues with currently available PDF interpreters 
but one can simply drop ones own filters into PAPPL as callback 
functions, including one which turns PDF input into the printer's own 
format in a single run. One does not need to follow the page-wise 
functions as used by the sample PCL driver.

So I am currently looking into starting the driver retro-fit Printer 
Application with a one which supports PostScript printers with PPD files.

The Printer Application should get all capability info from the PPD file 
and insert code from the PPD file options into the PostScript output 
stream to control the printer.

To handle the PPD files I have created libppd from the PPD handling 
functions of libcups:

https://github.com/OpenPrinting/cups-filters/tree/master/ppd

and added it to cups-filters. It contains also the new API function 
ppdLoadAttributes() which I have grabbed from CUPS' ippeveprinter to 
generate the response to a get-printer-attributes request from the PPD 
and the new API function ppdGetOptions() taken from CUPS ippeveps to 
turn IPP attributes accompanying a print job into PPD option settings.

The filter to drop into the PAPPL workflow (via 
papplSystemAddMIMEFilter() function) would turn PDF into PostScript 
first, using either the pdftops filter of cups-filters or call 
Ghostscript or Poppler's pdftops directly. I prefer the pdftops filter 
as it is full of quirk workarounds for buggy PostScript interpreters in 
the printers. I have also seen that Michael is doing it exactly this way 
in ippeveps.

The PostScript output needs to get the PostScript code snippets and JCL 
commands of the PPD file inserted, according to the option settings 
(determined with ppdGetOptions(). Here there are two independent pieces 
of code in CUPS, the pstops filter (which is also called by pdftops in 
the usual CUPS workflow) or the ippeveps utility. pstops is more 
sophisticated, doing all page management options which pdftopdf also 
does and especially the page-ranges option to its full extent (allowing 
to list more than one range and also single pages). ippeveps is simpler, 
probably taking into account that all incoming jobs also ran through 
CUPS and cups-filters.

I want to continue the discussion about the design of such a Printer 
Application here, as it is off-topic for the PDF-support feature request 
for PAPPL.

PAPPL needs to know the destination file format which should go to the 
printer (driver_data.format) and Michael told that it should be set to
"application/postscript". For a PostScript printer this looks 
principally OK for me, but if the incoming job is PostScript, a 
PDF-to-PostScript filter would not get called and so all massaging on 
the PostScript not done, the job printed raw. Here Michael's suggestion 
is to let the filter only convert PDF into PostScript but the PPD's 
commands only be inserted by the driver_data.print function, a function 
for transfering the full job to the printer.

I have some doubts and questions:

1. If I import a driver for a non-PostScript printer, for which I have a 
CUPS filter which takes PDF as input (for example foomatic-rip) and a 
PPD file I will proceed similarly, starting with adding a filter to turn 
PDF into the printer's native PDL using the papplSystemAddMIMEFilter() 
function of PAPPL. This time the filter has to do everything to get the 
printer-ready output. The driver_data.print function will not have to do 
anything any more but simply pass on the data. My question here is to 
what I have to set driver_data.format, the output format is an unknown, 
binary, proprietary format and I can assume that I never get an incoming 
job in that format. What do I have to set as the output format MIME type 
here?

2. In CUPS world all incoming PDF gets massaged by pdftopdf, especially 
at first all filled forms and annotations get flattened by a highly 
sophisticated functionality of libqpdf and after that page management 
options (page-ranges, page-set, number-up, ...) get applied. Has a 
Printer Application which accepts PDF (application/pdf, not 
application/vnd.cups-pdf) as input format to apply all of the 
functionality of pdftopdf? Or can we assume that the Printer Application 
gets its PDF ALWAYS from CUPS and so we can be sure that the incoming 
PDF is print-ready?

3. I assume that for PostScript printers the functionality of pdftops 
cannot be omitted, as here we are working around many shortcomings and 
bugs in PostScript interpreters of several printer manufacturers.

4. What is the needed sophistication of the inserting of PPD commands 
and code into a PostScript stream for PostScript printers? Do we need 
the pstops filter's full functionality or is the functionality of 
ippeveps good enough?

5. What determines which input formats a PAPPL-based Printer Application 
accepts? Can we suppress unwished formats, for example PostScript for a 
PostScript Printer Application (which has driver_data.format set to 
PostScript) so that we force the use of the PDF-to-PostScript filter 
with all its quirk magic?

Plans for these Printer Applications are also printer auto setup (Jai?) 
and having all PPD options configurable in the web interface, even if 
they do not translate into IPP attributes, so that all functionality of 
the printer (or driver) is conserved (Sambhav?).

    Till
