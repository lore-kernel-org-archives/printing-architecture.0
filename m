Message-ID: <48EC5B77.4020109@gmail.com>
Date: Wed, 08 Oct 2008 09:04:23 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <48E22E48.5050400@gmail.com>	<20081002.190418.28794737.sho@bbr.jp>	<48E7C759.4020507@gmail.com>
	<20081006.132514.189713237.sho@bbr.jp>
In-Reply-To: <20081006.132514.189713237.sho@bbr.jp>
Content-Type: multipart/mixed; boundary="------------000106020300010106080404"
Subject: [Printing-architecture] Bug in pdftopdf filter: N-Up with manual
	duplex does not work
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
--------------000106020300010106080404
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit

Here is another patch, this time for pdftopdf. It corrects a problem 
when using N-Up printing and manual duplex. To save paper you do at 
first N-up printing, for example 2 pages per sheet (number-up=2). Then 
you get sheets with 1+2, 3+4, 5+6, ... For manual duplex you use the 
page-set=even option, turn over the paper and then use page-set=odd. You 
expect to get 3+4, 7+8, 11+12, ... at first and then 1+2, 5+6, 9+10, ... 
What you get with your filter when using page-set=even is 2+4, 6+8, 
10+12, ... which is pretty useless. The attached patch corrects this bug 
and makes pdftopdf behaving exactly like pstops.

    Till


Koji Otani wrote:
> OK.
> 
> I have made sure that pstoraster behaves as your patch.
> I have applied this patch the source in sourceforge.jp repository.
> 
> Thank you.
> -----------------
> Koji Otani
> 
> From: Till Kamppeter <till.kamppeter@gmail.com>
> Subject: Re: Bug in pdftoraster filter
> Date: Sat, 04 Oct 2008 21:43:21 +0200
> Message-ID: <48E7C759.4020507@gmail.com>
> 
> till.kamppeter> Thank you very much for the patches.
> till.kamppeter> 
> till.kamppeter> I have integrated the filter patches into the CUPS package of Intrepid now.
> till.kamppeter> 
> till.kamppeter> In principle it works, but I had to apply additional fixes:
> till.kamppeter> 
> till.kamppeter> 1. In pdftoraster.cc I had to apply the attached patch, as otherwise the 
> till.kamppeter> margins were not taken into account in your mediabox addition and that 
> till.kamppeter> leads to shifted output. With my patch the output is correctly centered. 
> till.kamppeter> Can you apply this patch upstream? Thanks.
> till.kamppeter> 
> till.kamppeter> 2. The patch for pstopdf did not work on my pstopdf. I have a new 
> till.kamppeter> pstopdf attached which merges the functionality of mine and yours.
> till.kamppeter> 
> till.kamppeter>     Till
> till.kamppeter> 
> till.kamppeter> 
> till.kamppeter> Koji Otani wrote:
> till.kamppeter> > Hi
> till.kamppeter> > I'm Koji Otani.
> till.kamppeter> > 
> till.kamppeter> > I've investigated this problem.
> till.kamppeter> > 
> till.kamppeter> > There are 2 problems in fact.
> till.kamppeter> > 
> till.kamppeter> > 1. splix crashes
> till.kamppeter> > https://bugs.launchpad.net/ubuntu/+source/splix/+bug/261363
> till.kamppeter> > https://bugs.launchpad.net/ubuntu/+source/splix/+bug/268510
> till.kamppeter> >  This happenes when page size is Letter.
> till.kamppeter> > 
> till.kamppeter> > 2. yield completely black pages
> till.kamppeter> > https://bugs.launchpad.net/ubuntu/+source/splix/+bug/269691
> till.kamppeter> > 
> till.kamppeter> > *** CAUSE ***
> till.kamppeter> > 
> till.kamppeter> > 1. splix crashes
> till.kamppeter> >   This is cauesed by several filters' behaviors.
> till.kamppeter> > (1) pstopdf
> till.kamppeter> >    pstopdf produces Only A4 size PDF even when Letter is specified.
> till.kamppeter> >    This behavior seems a bug, I think.
> till.kamppeter> >    This is because no page size option is specified for ps2pdf.
> till.kamppeter> > (2) pdftopdf
> till.kamppeter> >    pdftopdf doesn't change PDF page size in this case.
> till.kamppeter> >    So, the produced PDF is A4 size.
> till.kamppeter> > (3) pdftoraster
> till.kamppeter> >    pdftoraster produces image which size is same as PDF page size.
> till.kamppeter> >    So, the produced image size is A4 size.
> till.kamppeter> > (4) splix
> till.kamppeter> >   splix crashes when height of image size is larger than expected.
> till.kamppeter> >   In this case, input image size is A4 and expected image size is
> till.kamppeter> >   Letter. So, splix crashes.
> till.kamppeter> >   This is a bug of splix.
> till.kamppeter> >   On 64bits AMD, splix doesn't crash luckily although accessing
> till.kamppeter> >   wrong area.
> till.kamppeter> > 
> till.kamppeter> > 2. yield completely black pages
> till.kamppeter> >   When color space is K, pdftoraster uses wrong paper color (Black).
> till.kamppeter> >   Images in PDF are reversed video.
> till.kamppeter> >  And splix requires color space K.
> till.kamppeter> >  This is a bug of psdtoraster.
> till.kamppeter> > 
> till.kamppeter> > ******** Solution *********
> till.kamppeter> > 1. splix crashes
> till.kamppeter> > (1) Fix pstopdf to produce PDF has specified Page size.
> till.kamppeter> >    Using pstops as cpdftocps, setpagedevice operators are passed to ps2pdf.
> till.kamppeter> >    Attached the patch.
> till.kamppeter> > (2) Fix splix not to crash.
> till.kamppeter> >    Attached the patch.
> till.kamppeter> >    This fix is optional in this case.
> till.kamppeter> > (3) Change pdftoraster to produce cups specified size image.
> till.kamppeter> >    Attached the patch.
> till.kamppeter> >    In this case, this fix is not needed. But in other case this is
> till.kamppeter> >    needed. please apply this patch.
> till.kamppeter> > 
> till.kamppeter> > (4) Change pdftopdf to produce cups specified size PDF.
> till.kamppeter> >    Attached the patch.
> till.kamppeter> >    In this case, this fix is not needed. But in other case this is
> till.kamppeter> >    needed. please apply this patch.
> till.kamppeter> > 
> till.kamppeter> > 2. yield completely black pages
> till.kamppeter> > 
> till.kamppeter> > ・Fix pdftoraster
> till.kamppeter> >   Attached the patch. this is merged in solution 1-(3) patch.
> till.kamppeter> > 
> till.kamppeter> > 
> till.kamppeter> > ---------------
> till.kamppeter> > I have applied patches for pdftopdf, pdftoraster to the 
> till.kamppeter> > sourceforge jp repository.
> till.kamppeter> > 
> till.kamppeter> > -------------------------
> till.kamppeter> > Koji Otani
> till.kamppeter> > 
> till.kamppeter> > From: Till Kamppeter <till.kamppeter@gmail.com>
> till.kamppeter> > Subject: Bug in pdftoraster filter
> till.kamppeter> > Date: Tue, 30 Sep 2008 15:48:56 +0200
> till.kamppeter> > Message-ID: <48E22E48.5050400@gmail.com>
> till.kamppeter> > 
> till.kamppeter> > till.kamppeter> Hi,
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> I have integrated your filters in the CUPS package on Ubuntu and now we
> till.kamppeter> > till.kamppeter> have a complete PDF printing workflow there:
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> https://www.linuxfoundation.org/en/OpenPrinting/PDF_as_Standard_Print_Job_Format
> till.kamppeter> > till.kamppeter> https://blueprints.launchpad.net/ubuntu/+spec/pdf-as-standard-print-job-format
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> Thank you again for your great work.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> Unfortunately, your pdftoraster filter has a bug. It seems to output a
> till.kamppeter> > till.kamppeter> broken CUPS Raster stream. The "SpliX" driver (a CUPS Raster driver for
> till.kamppeter> > till.kamppeter> Samsung laser printers, http://splix.ap2c.org/,
> till.kamppeter> > till.kamppeter> http://openprinting.org/show_driver.cgi?driver=splix2) produces black
> till.kamppeter> > till.kamppeter> printouts or even crashes when your pdftoraster is used:
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/261363
> till.kamppeter> > till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/268510
> till.kamppeter> > till.kamppeter> https://bugs.launchpad.net/ubuntu/+source/splix/+bug/269691
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> To check whether pdftoraster is really the culprit, I have written an
> till.kamppeter> > till.kamppeter> alternative pdftoraster, a very simple shell script:
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> #!/bin/sh
> till.kamppeter> > till.kamppeter> set -e
> till.kamppeter> > till.kamppeter> /usr/lib/cups/filter/cpdftocps "$@" | \
> till.kamppeter> > till.kamppeter>    /usr/lib/cups/filter/pstoraster "$@"
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> cpdftocps is a filter which converts PDF to PostScript and injects
> till.kamppeter> > till.kamppeter> PostScript commands from the PPD into the resulting PostScript according
> till.kamppeter> > till.kamppeter> to the option settings. It is originally intended to support PostScript
> till.kamppeter> > till.kamppeter> printers in the PDF workflow. You can download it here:
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> http://www.openprinting.org/download/printing/pdf-printing/cpdftocps
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> I have asked the reporters of the above-mentioned bugs to use this
> till.kamppeter> > till.kamppeter> alternative filter and they told that when they use it the problems with
> till.kamppeter> > till.kamppeter> "SpliX" disappear.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> So I assume that something is broken with your pdftoraster driver. Can
> till.kamppeter> > till.kamppeter> you check and fix this as soon as possible, as we are shortly before
> till.kamppeter> > till.kamppeter> release of Ubuntu Intrepid and it would be great to not have to use a
> till.kamppeter> > till.kamppeter> script which converts the PDF to PostScript to be able to get CUPS
> till.kamppeter> > till.kamppeter> Raster data.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> For investigating the problem, feel free to get in contact with the
> till.kamppeter> > till.kamppeter> reporters of the three above-mentioned bug reports, by adding comments
> till.kamppeter> > till.kamppeter> to the reports.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> I have also tried the alternative of a Ghostscript-based pdftoraster
> till.kamppeter> > till.kamppeter> driver where PDF is directly fed into Ghostscript, but it seems that
> till.kamppeter> > till.kamppeter> there is a bug in the "cups" output device of Ghostscript. See
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> http://bugs.ghostscript.com/show_bug.cgi?id=690101
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> This problem does not occur when feeding PostScript into Ghostscript.
> till.kamppeter> > till.kamppeter> Anyone who could help here is welcome, too.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter> Thank you in advance for your quick help.
> till.kamppeter> > till.kamppeter>
> till.kamppeter> > till.kamppeter>     Till
> till.kamppeter> > 
> till.kamppeter> 
> 


--------------000106020300010106080404
Content-Type: text/x-patch;
 name="pdftopdf-number-up-manual-duplex.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="pdftopdf-number-up-manual-duplex.patch"

--- pdftopdf/P2PCatalog.cxx.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PCatalog.cxx	2008-10-07 22:49:44.000000000 +0200
@@ -68,6 +68,11 @@
   return pageTree->nup(n,box,borderFlag,layout,xpos,ypos);
 }
 
+void P2PCatalog::select(const char *pageSet, const char *pageRanges)
+{
+  pageTree->select(pageSet,pageRanges);
+}
+
 void P2PCatalog::fit(PDFRectangle *box, double zoom)
 {
   pageTree->fit(box,zoom);
--- pdftopdf/P2PCatalog.h.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PCatalog.h	2008-10-07 22:46:18.000000000 +0200
@@ -48,6 +48,7 @@
   virtual void output(P2POutputStream *str, int copies, GBool collate);
   int nup(int n, PDFRectangle *box, unsigned int borderFlag,
     unsigned int layout, int xpos, int ypos);
+  void select(const char *pageSet, const char *pageRanges);
   void fit(PDFRectangle *box, double zoom);
   void mirror();
   void rotate(int orientation);
--- pdftopdf/P2PDoc.cxx.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PDoc.cxx	2008-10-07 22:56:02.000000000 +0200
@@ -174,6 +174,11 @@
   return catalog->nup(n,box,borderFlag,layout,xpos,ypos);
 }
 
+void P2PDoc::select()
+{
+  catalog->select(options.pageSet,options.pageRanges);
+}
+
 void P2PDoc::fit(PDFRectangle *box, double zoom)
 {
   catalog->fit(box,zoom);
--- pdftopdf/P2PDoc.h.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PDoc.h	2008-10-07 22:57:11.000000000 +0200
@@ -108,6 +108,7 @@
     bool deviceCollate = false);
   int nup(int n, PDFRectangle *box, unsigned int borderFlag,
     unsigned int layout, int xpos, int ypos);
+  void select();
   void fit(PDFRectangle *box, double zoom);
   void mirror();
   void rotate(int orientation);
--- pdftopdf/P2PPageTree.cxx.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PPageTree.cxx	2008-10-07 23:07:40.000000000 +0200
@@ -86,18 +86,13 @@
 P2PPageTree::P2PPageTree(Catalog *orgCatalogA, XRef *xrefA)
 {
   int i;
-  int n;
 
   xref = xrefA;
   numPages = orgCatalogA->getNumPages();
   pages = new P2PPage *[numPages];
-  for (n = 0, i = 0;i < numPages;i++) {
-    if (checkPageRange(i+1,P2PDoc::options.pageSet,
-       P2PDoc::options.pageRanges)) {
-      pages[n++] = new P2PPage(orgCatalogA->getPage(i+1),xref);
-    }
+  for (i = 0;i < numPages;i++) {
+    pages[i] = new P2PPage(orgCatalogA->getPage(i+1),xref);
   }
-  numPages = n;
 }
 
 void P2PPageTree::cleanPages(P2PPage **pagesA, int size)
@@ -244,6 +239,24 @@
   return 0;
 }
 
+void P2PPageTree::select(const char *pageSet, const char *pageRanges)
+{
+  P2PPage **newPages;
+  int i,j;
+
+  newPages = new P2PPage *[numPages];
+  for (i = 0,j = 0;i < numPages;i++) {
+    if (checkPageRange(i+1, pageSet, pageRanges)) {
+      newPages[j ++] = pages[i];
+    } else {
+      delete pages[i];
+    }
+  }
+  delete pages;
+  pages = newPages;
+  numPages = j;
+}
+
 void P2PPageTree::fit(PDFRectangle *box, double zoom)
 {
   int i;
--- pdftopdf/P2PPageTree.h.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/P2PPageTree.h	2008-10-07 22:46:44.000000000 +0200
@@ -49,6 +49,7 @@
   virtual void output(P2POutputStream *str, int copies, GBool collate);
   int nup(int n, PDFRectangle *box, unsigned int borderFlag,
     unsigned int layout, int xpos, int ypos);
+  void select(const char *pageSet, const char *pageRanges);
   void fit(PDFRectangle *box, double zoom);
   void mirror();
   void rotate(int orientation);
--- pdftopdf/pdftopdf.cxx.orig	2008-10-04 20:26:52.000000000 +0200
+++ pdftopdf/pdftopdf.cxx	2008-10-07 22:56:10.000000000 +0200
@@ -659,6 +659,8 @@
     p2pdoc->position(&box,xposition,yposition);
   }
 
+  p2pdoc->select();
+
   /* set all pages's mediaBox to the target page size */
   p2pdoc->setMediaBox(&mediaBox);
 

--------------000106020300010106080404--
