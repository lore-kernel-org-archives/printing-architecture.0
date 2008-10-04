Message-ID: <48E7C759.4020507@gmail.com>
Date: Sat, 04 Oct 2008 21:43:21 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48E22E48.5050400@gmail.com> <20081002.190418.28794737.sho@bbr.jp>
In-Reply-To: <20081002.190418.28794737.sho@bbr.jp>
Content-Type: multipart/mixed; boundary="------------070006090903000208010401"
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

This is a multi-part message in MIME format.
--------------070006090903000208010401
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Thank you very much for the patches.

I have integrated the filter patches into the CUPS package of Intrepid now.

In principle it works, but I had to apply additional fixes:

1. In pdftoraster.cc I had to apply the attached patch, as otherwise the 
margins were not taken into account in your mediabox addition and that 
leads to shifted output. With my patch the output is correctly centered. 
Can you apply this patch upstream? Thanks.

2. The patch for pstopdf did not work on my pstopdf. I have a new 
pstopdf attached which merges the functionality of mine and yours.

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


--------------070006090903000208010401
Content-Type: text/x-patch;
 name="pdftoraster-margins.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="pdftoraster-margins.patch"

--- src/pdftoraster.cc.orig	2008-10-03 11:33:14.000000000 +0200
+++ src/pdftoraster.cc	2008-10-04 20:22:55.000000000 +0200
@@ -208,9 +208,10 @@
     Page *page = catalog->getPage(i);
     PDFRectangle *mediaBox = page->getMediaBox();
 
-    mediaBox->x1 = mediaBox->y1 = 0;
-    mediaBox->x2 = header.PageSize[0];
-    mediaBox->y2 = header.PageSize[1];
+    mediaBox->x1 = header.ImagingBoundingBox[0];
+    mediaBox->y1 = header.ImagingBoundingBox[1];
+    mediaBox->x2 = header.ImagingBoundingBox[2];
+    mediaBox->y2 = header.ImagingBoundingBox[3];
   }
 
   /* fix NumCopies, Collate ccording to PDFTOPDFComments */

--------------070006090903000208010401
Content-Type: text/plain;
 name="pstopdf"
Content-Transfer-Encoding: base64
Content-Disposition: inline;
 filename="pstopdf"

IyEvYmluL3NoCgojICRJZDogcHN0b3BkZix2IDEuMyAyMDAzLzAyLzE1IDE1OjIxOjAwIGd1
cnViZXJ0IEV4cCAkCiMKIyBUaGlzIGlzIGEgUG9zdHNjcmlwdCB0byBQREYgZmlsdGVyIGZv
ciBDVVBTCiMKIyAoQykgMjAwMyBSb2JlcnQgU2FuZGVyIDxyb2JlcnQuc2FuZGVyQGVwaWdl
bm9taWNzLmNvbT4KIwojIFJlbGVhc2VkIHVuZGVyIEdQTAojCiMgTk8gV0FSUkFOVFkgQVQg
QUxMCiMKCnNldCAtZQoKIyBUaGVzZSBvcHRpb25zIGFyZSAqbm90KiBwYXNzZWQgdGhyb3Vn
aCB0byBwc3RvcHMsIHNpbmNlIHBkZnRvcGRmIG9yCiMgZXF1aXZhbGVudCBoYXMgYWxyZWFk
eSBwcm9jZXNzZWQgdGhlbS4KTUFTSz0nCiAgYnJpZ2h0bmVzcwogIENvbGxhdGUKICBjdXBz
RXZlbkR1cGxleAogIGZpdHBsb3QKICBnYW1tYQogIGh1ZQogIGxhbmRzY2FwZQogIG1pcnJv
cgogIG11bHRpcGxlLWRvY3VtZW50LWhhbmRsaW5nCiAgbmF0dXJhbC1zY2FsaW5nCiAgbnVt
YmVyLXVwCiAgbnVtYmVyLXVwLWxheW91dAogIG9yaWVudGF0aW9uLXJlcXVlc3RlZAogIE91
dHB1dE9yZGVyCiAgcGFnZS1ib3JkZXIKICBwYWdlLWJvdHRvbQogIHBhZ2UtbGFiZWwKICBw
YWdlLWxlZnQKICBwYWdlLXJhbmdlcwogIHBhZ2UtcmlnaHQKICBwYWdlLXNldAogIHBhZ2Ut
dG9wCiAgcG9zaXRpb24KICBzYXR1cmF0aW9uCiAgc2NhbGluZwogIHNpZGVzCicKCiMgQ29u
dmVydCBNQVNLIHRvIGEgcmVnZXhwLgpNQVNLX1JFPSQoCiAgc2V0IC0tICRNQVNLCiAgSUZT
PSd8JwogIHByaW50ZiAiJXMiICIkKiIKKQoKIyBBbm5paGlsYXRlIGFsbCBmb3JtcyBvZiB0
aGUgbWFza2VkIG9wdGlvbnMgZnJvbSAkNToKIyAtIDxvcHRpb24+PXBhcmFtZXRlcgojIC0g
PG9wdGlvbj4gICAoYm9vbGVhbikKIyAtIG5vPG9wdGlvbj4gKGJvb2xlYW4pCk1BU0tFRF9P
UFRTPSQoCiAgcHJpbnRmICIlcyIgIiQ1IiB8IFwKICAgIHNlZCAtciAtZSAncy8oXnxccysp
KG5vKT8oJyIkTUFTS19SRSInKSg9XFMqKT8vL2cnIC1lICdzL15ccysvLycKKQoKUFMyUFM9
L3Vzci9iaW4vcHMycHMKUFNUT1BTPS91c3IvbGliL2N1cHMvZmlsdGVyL3BzdG9wcwpQUzJQ
REY9L3Vzci9iaW4vcHMycGRmMTMKUFMyUFNfT1BUSU9OUz0iLWRBdXRvUm90YXRlUGFnZXM9
L05vbmUgLWRBdXRvRmlsdGVyQ29sb3JJbWFnZXM9ZmFsc2UKICAgICAgICAgICAgICAgIC1k
Tk9QTEFURk9OVFMgLWRQQVJBTk9JRFNBRkVSIC1zc3Rkb3V0PSVzdGRlcnIiClBTMlBERl9P
UFRJT05TPSIkUFMyUFNfT1BUSU9OUyAtZENvbG9ySW1hZ2VGaWx0ZXI9L0ZsYXRlRW5jb2Rl
IgoKZWNobyAiREVCVUc6IHBzdG9wZGYgYXJndlskI10gPSAkQCIgPiYyCgppZiBbICQjIC1s
dCA1IC1vICQjIC1ndCA2IF07IHRoZW4KCiAgZWNobyAiRVJST1I6ICQwIGpvYi1pZCB1c2Vy
IHRpdGxlIGNvcGllcyBvcHRpb25zIFtmaWxlXSIgPiYyCiAgZXhpdCAxCgpmaQoKIyBSZWFk
IGZyb20gZ2l2ZW4gZmlsZS4KaWYgWyAtbiAiJDYiIF07IHRoZW4KICBleGVjIDwiJDYiCmZp
Cgp0ZW1wZmlsZXM9CnRyYXAgJ3JtIC1mICR0ZW1wZmlsZXMnIDAgMSAyIDEzIDE1CgppbmZp
bGU9JChta3RlbXAgLXQgcHN0b3BkZi5YWFhYWFgpCnRlbXBmaWxlcz0iJHRlbXBmaWxlcyAk
aW5maWxlIgoKY2F0ID4iJGluZmlsZSIKCiMgQXBwbHkgUFBEIHNldHRpbmdzLgoKcmVzb2x1
dGlvbj0KZXZhbCAiJChwcmludGYgIiVzIiAiJDUiIHwgc2VkIC1ucmUgJ3MvLiooXnxccylS
ZXNvbHV0aW9uPShbMC05Ll0rKHhbMC05Ll0rKT8pLiovcmVzb2x1dGlvbj0iJHtyZXNvbHV0
aW9uOi1cMn0iL3AnKSIKaWYgdGVzdCAtZSAiJFBQRCI7IHRoZW4KICBldmFsICIkKHNlZCAt
bnJlICdzL15cKkRlZmF1bHRSZXNvbHV0aW9uOlxzKyhbMC05Ll0rKHhbMC05Ll0rKT8pLiov
cmVzb2x1dGlvbj0iJHtyZXNvbHV0aW9uOi1cMX0iL3AnICIkUFBEIikiCmZpCgpwYWdlc2l6
ZT0KZXZhbCAiJChwcmludGYgIiVzIiAiJDUiIHwgc2VkIC1ucmUgJ3MvLiooXnxccykobWVk
aWF8UGFnZVNpemUpPShcUyspLiovcGFnZXNpemU9IiR7cGFnZXNpemU6LVwzfSIvcCcpIgpp
ZiB0ZXN0IC1lICIkUFBEIjsgdGhlbgogIGV2YWwgIiQoc2VkIC1ucmUgJ3MvXlwqRGVmYXVs
dFBhZ2VTaXplOlxzKyguKykkL3BhZ2VzaXplPSIke3BhZ2VzaXplOi1cMX0iL3AnICIkUFBE
IikiCmZpCgp3aWR0aD0KaGVpZ2h0PQp0bF94PQp0bF95PQpicl94PQpicl95PQppZiB0ZXN0
IC1uICIkcGFnZXNpemUiICYmIHRlc3QgLWUgIiRQUEQiOyB0aGVuCiAgZXZhbCAiJChzZWQg
LW5yZSAnc3xeXCpQYXBlckRpbWVuc2lvblxzKyciJHBhZ2VzaXplIicvW14iXSs6XHMrIihc
UyspXHMrKFxTKykiJHx3aWR0aD0iXDEiOyBoZWlnaHQ9IlwyInxwJyAiJFBQRCIpIgoKICBl
dmFsICIkKHNlZCAtbnJlICdzfF5cKkltYWdlYWJsZUFyZWFccysnIiRwYWdlc2l6ZSInL1te
Il0rOlxzKyIoXFMrKVxzKyhcUyspXHMrKFxTKylccysoXFMrKSIkfHRsX3g9IlwxIjsgdGxf
eT0iXDIiOyBicl94PSJcMyI7IGJyX3k9Ilw0InxwJyAiJFBQRCIpIgpmaQoKbWFyZ2luX2w9
Cm1hcmdpbl9iPQptYXJnaW5fcj0KbWFyZ2luX3Q9CmlmIHRlc3QgLW4gIiR3aWR0aCIgJiYg
dGVzdCAtbiAiJGhlaWdodCIgJiYgXAogICB0ZXN0IC1uICIkdGxfeCIgJiYgdGVzdCAtbiAi
JHRsX3kiICYmIFwKICAgdGVzdCAtbiAiJGJyX3giICYmIHRlc3QgLW4gIiRicl95IjsgdGhl
bgogIG1hcmdpbl9sPSIkdGxfeCIKICBtYXJnaW5fYj0iJChwcmludGYgInNjYWxlPTg7ICgl
cyktKCVzKVxuIiAiJGhlaWdodCIgIiRicl95IiB8IGJjKSIKICBtYXJnaW5fcj0iJChwcmlu
dGYgInNjYWxlPTg7ICglcyktKCVzKVxuIiAiJHdpZHRoIiAiJGJyX3giIHwgYmMpIgogIG1h
cmdpbl90PSIkdGxfeSIKZmkKCmluamVjdF9wcz0KaWYgdGVzdCAtbiAiJG1hcmdpbl9sIiAm
JiB0ZXN0IC1uICIkbWFyZ2luX2IiICYmIFwKICAgdGVzdCAtbiAiJG1hcmdpbl9yIiAmJiB0
ZXN0IC1uICIkbWFyZ2luX3QiOyB0aGVuCiAgaW5qZWN0X3BzPSI8PC8uSFdNYXJnaW5zWyRt
YXJnaW5fbCAkbWFyZ2luX2IgJG1hcmdpbl9yICRtYXJnaW5fdF0gL01hcmdpbnNbMCAwXT4+
c2V0cGFnZWRldmljZSIKZmkKCnBwZF9vcHRzPQppZiB0ZXN0IC1uICIkcmVzb2x1dGlvbiI7
IHRoZW4KICBwcGRfb3B0cz0iJHtwcGRfb3B0czorJHBwZF9vcHRzIH0tciRyZXNvbHV0aW9u
IgpmaQppZiB0ZXN0IC1uICIkd2lkdGgiOyB0aGVuCiAgcHBkX29wdHM9IiR7cHBkX29wdHM6
KyRwcGRfb3B0cyB9LWRERVZJQ0VXSURUSFBPSU5UUz0kd2lkdGgiCmZpCmlmIHRlc3QgLW4g
IiRoZWlnaHQiOyB0aGVuCiAgcHBkX29wdHM9IiR7cHBkX29wdHM6KyRwcGRfb3B0cyB9LWRE
RVZJQ0VIRUlHSFRQT0lOVFM9JGhlaWdodCIKZmkKCiMgSW5qZWN0aW9uCmlmIHRlc3QgLW4g
IiRpbmplY3RfcHMiOyB0aGVuCiAgZWNobyAiREVCVUc6IEluamVjdGluZyBQb3N0U2NyaXB0
OiAkaW5qZWN0X3BzIiA+JjIKCiAgb3JpZ19pbmZpbGU9IiRpbmZpbGUiCgogIGluZmlsZT0k
KG1rdGVtcCAtdCBwc3RvcGRmLlhYWFhYWCkKICB0ZW1wZmlsZXM9IiR0ZW1wZmlsZXMgJGlu
ZmlsZSIKCiAgcGVybCAtcCAtZSAnaWYgKCEgJGRpZCkgeyBzOiheJSEuKikkOlwxXG4nIiRp
bmplY3RfcHMiJzogJiYgJGRpZCsrOyB9JyAiJG9yaWdfaW5maWxlIiA+ICIkaW5maWxlIgpm
aQoKIyBEUk0KCkRSTV9NQVRDSD0nXiUuKlJlbW92aW5nIHRoZSBmb2xsb3dpbmcuKmxpbmVz
IGlzIGlsbGVnYWwuKkRpZ2l0YWwgQ29weXJpZ2h0IEFjdCcKaWYgZWdyZXAgLXEgIiREUk1f
TUFUQ0giICIkaW5maWxlIjsgdGhlbgogICMgVGhpcyBQUyBpcyBEUk0taW5mZXN0ZWQuIE5v
cm1hbGl6ZSBpdCB3aXRoIHBzMnBzIGZpcnN0LgogIGVjaG8gIkRFQlVHOiBOb3JtYWxpemlu
ZyBBZG9iZSBSZWFkZXIgUG9zdFNjcmlwdCB3aXRoIHBzMnBzIiA+JjIKCiAgRFJNRklMVEVS
PSIkUFMyUFMgJFBTMlBTX09QVElPTlMgJHBwZF9vcHRzIC0gLSIKZWxzZQogIERSTUZJTFRF
Uj1jYXQKZmkKCiRQU1RPUFMgIiQxIiAiJDIiICIkMyIgIiQ0IiAiJE1BU0tFRF9PUFRTIiAi
JGluZmlsZSIgfCAkRFJNRklMVEVSIHwgJFBTMlBERiAkUFMyUERGX09QVElPTlMgJHBwZF9v
cHRzIC0gLQo=
--------------070006090903000208010401--
