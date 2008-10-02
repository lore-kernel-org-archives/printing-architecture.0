Message-ID: <48E50424.1080802@gmail.com>
Date: Thu, 02 Oct 2008 19:25:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48E22E48.5050400@gmail.com> <20081002.190418.28794737.sho@bbr.jp>
In-Reply-To: <20081002.190418.28794737.sho@bbr.jp>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Bug in pdftoraster filter
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org

Thank you very much for the fixes. I will apply them to Intrepid in the 
next days and forward the SpliX fix upstream.

    Till

Koji Otani wrote:
> Hi
> I'm Koji Otani.
> 
> I've investigated this problem.
> 
> There are 2 problems in fact.
> 
> 1. splix crashes
> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/261363
> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/268510
>  This happenes when page size is Letter.
> 
> 2. yield completely black pages
> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/269691
> 
> *** CAUSE ***
> 
> 1. splix crashes
>   This is cauesed by several filters' behaviors.
> (1) pstopdf
>    pstopdf produces Only A4 size PDF even when Letter is specified.
>    This behavior seems a bug, I think.
>    This is because no page size option is specified for ps2pdf.
> (2) pdftopdf
>    pdftopdf doesn't change PDF page size in this case.
>    So, the produced PDF is A4 size.
> (3) pdftoraster
>    pdftoraster produces image which size is same as PDF page size.
>    So, the produced image size is A4 size.
> (4) splix
>   splix crashes when height of image size is larger than expected.
>   In this case, input image size is A4 and expected image size is
>   Letter. So, splix crashes.
>   This is a bug of splix.
>   On 64bits AMD, splix doesn't crash luckily although accessing
>   wrong area.
> 
> 2. yield completely black pages
>   When color space is K, pdftoraster uses wrong paper color (Black).
>   Images in PDF are reversed video.
>  And splix requires color space K.
>  This is a bug of psdtoraster.
> 
> ******** Solution *********
> 1. splix crashes
> (1) Fix pstopdf to produce PDF has specified Page size.
>    Using pstops as cpdftocps, setpagedevice operators are passed to ps2pdf.
>    Attached the patch.
> (2) Fix splix not to crash.
>    Attached the patch.
>    This fix is optional in this case.
> (3) Change pdftoraster to produce cups specified size image.
>    Attached the patch.
>    In this case, this fix is not needed. But in other case this is
>    needed. please apply this patch.
> 
> (4) Change pdftopdf to produce cups specified size PDF.
>    Attached the patch.
>    In this case, this fix is not needed. But in other case this is
>    needed. please apply this patch.
> 
> 2. yield completely black pages
> 
> ・Fix pdftoraster
>   Attached the patch. this is merged in solution 1-(3) patch.
> 
> 
> ---------------
> I have applied patches for pdftopdf, pdftoraster to the 
> sourceforge jp repository.
> 
> -------------------------
> Koji Otani
> 
> From: Till Kamppeter <till.kamppeter@gmail.com>
> Subject: Bug in pdftoraster filter
> Date: Tue, 30 Sep 2008 15:48:56 +0200
> Message-ID: <48E22E48.5050400@gmail.com>
> 
> till.kamppeter> Hi,
> till.kamppeter>
> till.kamppeter> I have integrated your filters in the CUPS package on Ubuntu and now we
> till.kamppeter> have a complete PDF printing workflow there:
> till.kamppeter>
> till.kamppeter> https://www.linuxfoundation.org/en/OpenPrinting/PDF_as_Standard_Print_Job_Format
> till.kamppeter> https://blueprints.launchpad.net/ubuntu/+spec/pdf-as-standard-print-job-format
> till.kamppeter>
> till.kamppeter> Thank you again for your great work.
> till.kamppeter>
> till.kamppeter> Unfortunately, your pdftoraster filter has a bug. It seems to output a
> till.kamppeter> broken CUPS Raster stream. The "SpliX" driver (a CUPS Raster driver for
> till.kamppeter> Samsung laser printers, http://splix.ap2c.org/,
> till.kamppeter> http://openprinting.org/show_driver.cgi?driver=splix2) produces black
> till.kamppeter> printouts or even crashes when your pdftoraster is used:
> till.kamppeter>
> till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/261363
> till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/268510
> till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/269691
> till.kamppeter>
> till.kamppeter> To check whether pdftoraster is really the culprit, I have written an
> till.kamppeter> alternative pdftoraster, a very simple shell script:
> till.kamppeter>
> till.kamppeter> #!/bin/sh
> till.kamppeter> set -e
> till.kamppeter> /usr/lib/cups/filter/cpdftocps "$@" | \
> till.kamppeter>    /usr/lib/cups/filter/pstoraster "$@"
> till.kamppeter>
> till.kamppeter> cpdftocps is a filter which converts PDF to PostScript and injects
> till.kamppeter> PostScript commands from the PPD into the resulting PostScript according
> till.kamppeter> to the option settings. It is originally intended to support PostScript
> till.kamppeter> printers in the PDF workflow. You can download it here:
> till.kamppeter>
> till.kamppeter> http://www.openprinting.org/download/printing/pdf-printing/cpdftocps
> till.kamppeter>
> till.kamppeter> I have asked the reporters of the above-mentioned bugs to use this
> till.kamppeter> alternative filter and they told that when they use it the problems with
> till.kamppeter> "SpliX" disappear.
> till.kamppeter>
> till.kamppeter> So I assume that something is broken with your pdftoraster driver. Can
> till.kamppeter> you check and fix this as soon as possible, as we are shortly before
> till.kamppeter> release of Ubuntu Intrepid and it would be great to not have to use a
> till.kamppeter> script which converts the PDF to PostScript to be able to get CUPS
> till.kamppeter> Raster data.
> till.kamppeter>
> till.kamppeter> For investigating the problem, feel free to get in contact with the
> till.kamppeter> reporters of the three above-mentioned bug reports, by adding comments
> till.kamppeter> to the reports.
> till.kamppeter>
> till.kamppeter> I have also tried the alternative of a Ghostscript-based pdftoraster
> till.kamppeter> driver where PDF is directly fed into Ghostscript, but it seems that
> till.kamppeter> there is a bug in the "cups" output device of Ghostscript. See
> till.kamppeter>
> till.kamppeter> http://bugs.ghostscript.com/show_bug.cgi?id=690101
> till.kamppeter>
> till.kamppeter> This problem does not occur when feeding PostScript into Ghostscript.
> till.kamppeter> Anyone who could help here is welcome, too.
> till.kamppeter>
> till.kamppeter> Thank you in advance for your quick help.
> till.kamppeter>
> till.kamppeter>     Till
> 

