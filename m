Message-ID: <48E22E48.5050400@gmail.com>
Date: Tue, 30 Sep 2008 15:48:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Bug in pdftoraster filter
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: OTANI Koji <sho@bbr.jp>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Hi,

I have integrated your filters in the CUPS package on Ubuntu and now we 
have a complete PDF printing workflow there:

https://www.linuxfoundation.org/en/OpenPrinting/PDF_as_Standard_Print_Job_Format
https://blueprints.launchpad.net/ubuntu/+spec/pdf-as-standard-print-job-format

Thank you again for your great work.

Unfortunately, your pdftoraster filter has a bug. It seems to output a 
broken CUPS Raster stream. The "SpliX" driver (a CUPS Raster driver for 
Samsung laser printers, http://splix.ap2c.org/, 
http://openprinting.org/show_driver.cgi?driver=splix2) produces black 
printouts or even crashes when your pdftoraster is used:

https://bugs.launchpad.net/ubuntu/+source/splix/+bug/261363
https://bugs.launchpad.net/ubuntu/+source/splix/+bug/268510
https://bugs.launchpad.net/ubuntu/+source/splix/+bug/269691

To check whether pdftoraster is really the culprit, I have written an 
alternative pdftoraster, a very simple shell script:

#!/bin/sh
set -e
/usr/lib/cups/filter/cpdftocps "$@" | \
   /usr/lib/cups/filter/pstoraster "$@"

cpdftocps is a filter which converts PDF to PostScript and injects 
PostScript commands from the PPD into the resulting PostScript according 
to the option settings. It is originally intended to support PostScript 
printers in the PDF workflow. You can download it here:

http://www.openprinting.org/download/printing/pdf-printing/cpdftocps

I have asked the reporters of the above-mentioned bugs to use this 
alternative filter and they told that when they use it the problems with 
"SpliX" disappear.

So I assume that something is broken with your pdftoraster driver. Can 
you check and fix this as soon as possible, as we are shortly before 
release of Ubuntu Intrepid and it would be great to not have to use a 
script which converts the PDF to PostScript to be able to get CUPS 
Raster data.

For investigating the problem, feel free to get in contact with the 
reporters of the three above-mentioned bug reports, by adding comments 
to the reports.

I have also tried the alternative of a Ghostscript-based pdftoraster 
driver where PDF is directly fed into Ghostscript, but it seems that 
there is a bug in the "cups" output device of Ghostscript. See

http://bugs.ghostscript.com/show_bug.cgi?id=690101

This problem does not occur when feeding PostScript into Ghostscript. 
Anyone who could help here is welcome, too.

Thank you in advance for your quick help.

    Till
