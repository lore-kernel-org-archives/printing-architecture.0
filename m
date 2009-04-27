Message-ID: <49F5DA6E.2070502@gmail.com>
Date: Mon, 27 Apr 2009 18:16:46 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
	<49E51AB7.2010902@gmail.com>
In-Reply-To: <49E51AB7.2010902@gmail.com>
Content-Type: multipart/mixed; boundary="------------060908060908030806000801"
Subject: Re: [Printing-architecture] Issue list from HP
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Yie, Shiyun" <shiyun.yie@hp.com>, "Suffield, David" <david.suffield@hp.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Tim Waugh <twaugh@redhat.com>, Martin Pitt <martin.pitt@ubuntu.com>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>, Johannes Meixner <jsmeix@suse.de>

This is a multi-part message in MIME format.
--------------060908060908030806000801
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Till Kamppeter wrote:
>  > CUPS driver issues:
>  > 1. GPL Ghostscript duplex support is missing. For Inkjets the backpage
>  > needs x and y inversion. CUPS attributes cupsFlipDuplex and
>  > cupsBackSide may have worked for ESP Ghostscript, but not in the
>  > current GPL Ghostscript 8.63. What does pdftoraster do?
> 
> This needs to be fixed in the CUPS Raster output device of Ghostscript 
> or in the pdftoraster CUPS filter. Both are part of Ghostscript. So 
> please report a bug on http://bugs.ghostscript.com/ and post the link to 
> your bug report here.
>

pdftoraster or pstoraster do not need to get fixed here, as the "cups" 
output device of Ghostscript reads the PPD directly. So all the static 
printer features in the PPD which are not to be set by the user or the 
admin are not needed to be treated in the wrapper filters pdftoraster or 
pstoraster.

The CUPS library does the PPD reading for Ghostscript's "cups" device. 
In contrary to what one expects from the documentation it does not 
support the cupsBackSide keyword but only the deprecated cupsFlipDuplex 
keyword. The same is valid for the "cups" output device. It only 
supports "cupsFlipDuplex". I have already reported a bug to CUPS:

http://www.cups.org/str.php?L3170

So currently, you can only add the deprecated

*cupsFlipDuplex: True

to the PPDs of the duplexing inkjets.

>  > 2. CUPS filter pstoraster does not allow duplicate papersizes with
>  > different printable regions. For example Letter and LetterDuplex use
>  > the same paper size, but have different printable regions. When
>  > LetterDuplex is selected only the printable region for Letter is
>  > passed to CUPS driver. What does pdftoraster do?
> 
> The pstoraster filter only calls Ghostscript expecting that the pstops 
> CUPS filter has inserted all option settings into the PostScript data 
> stream. The inserted PostScript code contains only the width and height 
> of the paper in points, neither margin info nor the paper size name, so 
> Ghostscript has no information about the selected paper size in active 
> PostScript code. I think in pdftoraster the paper size name gets into 
> the process, but I am not sure how the CUPS Raster output device makes 
> use of it. Please try out whether pdftoraster does the right thing. In 
> general, report a bug on http://bugs.ghostscript.com/, as also 
> pstoraster should work correctly.
>

The page size name problem was not a problem of pstoraster and 
pdftoraster but of the "cups" output device of Ghostscript. I have fixed 
this now in the Subversion repository of Ghostscript, so that different 
page size entries which differ only in the margins and not in the size 
are supported from Ghostscript 8.65 on. I have also attached the patch.

    Till

--------------060908060908030806000801
Content-Type: text/x-patch;
 name="cups-device-select-pagesize-margins-by-pagesize-name.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename*0="cups-device-select-pagesize-margins-by-pagesize-name.patch"

Index: cups/gdevcups.c
===================================================================
--- cups/gdevcups.c	(revision 9663)
+++ cups/gdevcups.c	(working copy)
@@ -2948,6 +2948,10 @@
            i --, size ++)
 	if (fabs(cups->MediaSize[1] - size->length) < 5.0 &&
             fabs(cups->MediaSize[0] - size->width) < 5.0 &&
+#ifdef CUPS_RASTER_SYNCv1
+	    ((strlen(cups->header.cupsPageSizeName) == 0) ||
+	     (strcasecmp(cups->header.cupsPageSizeName, size->name) == 0)) &&
+#endif
 	    (!margins_set ||
 	     (fabs(cups->HWMargins[0] - size->left) < 1.0 &&
 	      fabs(cups->HWMargins[1] - size->bottom) < 1.0)))
@@ -2980,6 +2984,10 @@
              i --, size ++)
 	  if (fabs(cups->MediaSize[0] - size->length) < 5.0 &&
               fabs(cups->MediaSize[1] - size->width) < 5.0 &&
+#ifdef CUPS_RASTER_SYNCv1
+	      ((strlen(cups->header.cupsPageSizeName) == 0) ||
+	       (strcasecmp(cups->header.cupsPageSizeName, size->name) == 0)) &&
+#endif
 	      (!margins_set ||
 	       (fabs(cups->HWMargins[0] - size->left) < 1.0 &&
 		fabs(cups->HWMargins[1] - size->bottom) < 1.0)))

--------------060908060908030806000801--
