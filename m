Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 9 Sep 2017 21:02:07 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kqt54otjrru72yli"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] Add braille support for vector
	images
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


--kqt54otjrru72yli
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds support for embossing vector images as braille, by using
ghostscript to rasterize without antialias.

Samuel

--kqt54otjrru72yli
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'Makefile.am'
--- Makefile.am	2017-08-22 21:16:26 +0000
+++ Makefile.am	2017-09-09 18:20:28 +0000
@@ -533,6 +533,8 @@ nodist_pkgfilter_SCRIPTS = \
 	filter/braille/drivers/index/imageubrltoindexv4 \
 	filter/braille/drivers/index/textbrftoindexv3 \
 	filter/braille/filters/imagetobrf \
+	filter/braille/filters/vectortopdf \
+	filter/braille/filters/vectortobrf \
 	filter/braille/filters/texttobrf
 endif
 pkgfilter_PROGRAMS += \
@@ -994,6 +996,13 @@ if ENABLE_DRIVERLESS
 endif
 if ENABLE_BRAILLE
 	$(LN_S) -f imagetobrf $(DESTDIR)$(pkgfilterdir)/imagetoubrl
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/svgtopdf
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/xfigtopdf
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/wmftopdf
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/emftopdf
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/cgmtopdf
+	$(LN_S) -f vectortopdf $(DESTDIR)$(pkgfilterdir)/cmxtopdf
+	$(LN_S) -f vectortobrf $(DESTDIR)$(pkgfilterdir)/vectortoubrl
 	$(LN_S) -f textbrftoindexv3 $(DESTDIR)$(pkgfilterdir)/textbrftoindexv4
 endif
 

=== modified file 'README'
--- README	2017-09-07 17:04:34 +0000
+++ README	2017-09-09 17:25:20 +0000
@@ -1611,6 +1611,22 @@ lp file.rtf
 lp file.docx
 
 
+--------------------
+Vector Image support
+--------------------
+
+Vector images can be embossed by converting them to braille dots.
+
+This needs the inkscape package installed. Various input formats are then
+supported: .svg, .fig, .wmf, .emf, .cgm, .cmx
+
+The conversion assumes that the input is black-on-white. If it is
+white-on-black, the -o Negate option can be used.
+
+This image support is preferred over the generic image support described below,
+which has to reconstruct lines to be embossed.
+
+
 -------------
 Image support
 -------------

=== modified file 'configure.ac'
--- configure.ac	2017-09-07 17:04:34 +0000
+++ configure.ac	2017-09-09 17:25:20 +0000
@@ -850,6 +850,8 @@ AC_CONFIG_FILES([
 	filter/braille/filters/cups-braille.sh
 	filter/braille/filters/imagetobrf
 	filter/braille/filters/texttobrf
+	filter/braille/filters/vectortopdf
+	filter/braille/filters/vectortobrf
 	filter/braille/filters/liblouis1.defs.gen
 	mime/cupsfilters.convs
 ])

=== added file 'filter/braille/filters/vectortobrf.in'
--- filter/braille/filters/vectortobrf.in	1970-01-01 00:00:00 +0000
+++ filter/braille/filters/vectortobrf.in	2017-09-09 16:41:43 +0000
@@ -0,0 +1,70 @@
+#!/bin/bash
+
+#
+# Copyright (c) 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# 
+# Permission is hereby granted, free of charge, to any person obtaining a copy
+# of this software and associated documentation files (the "Software"), to deal
+# in the Software without restriction, including without limitation the rights
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+# copies of the Software, and to permit persons to whom the Software is
+# furnished to do so, subject to the following conditions:
+# 
+# 
+# The above copyright notice and this permission notice shall be included in
+# all copies or substantial portions of the Software.
+# 
+# 
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+# THE SOFTWARE.
+# 
+
+# Make sure we have enough options
+if [ $# != 5 -a $# != 6 ]; then
+  echo "ERROR: $0 jobid user name nb options [filename]" >&2
+  exit 1
+fi
+
+NB=$4
+OPTIONS=$5
+FILE=$6
+
+OUTPUT_FORMAT=brf
+
+case $0 in
+  *vectortoubrl*) OUTPUT_FORMAT=ubrl ;;
+esac
+
+. @CUPS_DATADIR@/braille/cups-braille.sh
+
+checkTool convert imagemagick "embossing images"
+
+NEGATE=$(getOption Negate)
+case "$NEGATE" in
+  True)  NEGATE=-negate ;;
+  False) NEGATE= ;;
+  *)
+    printf "ERROR: Option Negate must either True or False, got '%s'\n" "$NEGATE" >&2
+    exit 1
+    ;;
+esac
+
+GS_CALL="gs -q -dDEVICEWIDTHPOINTS=${GRAPHICWIDTH} -dDEVICEHEIGHTPOINTS=${GRAPHICHEIGHT} -noantialias -dTextAlphaBits=1 -dGraphicsAlphaBits=1 -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pngmono -dFitPage -r72 -sOutputFile=-"
+RENDER_CALL="convert $NEGATE - $OUTPUT_FORMAT:-"
+
+# Now proceeed
+echo "INFO: Converting image" 1>&2
+if [ -z "$FILE" ]
+then
+  printf "DEBUG: Calling $GS_CALL and $RENDER_CALL from stdin\n" 1>&2
+  $GS_CALL - | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d'
+else
+  printf "DEBUG: Calling $GS_CALL and $RENDER_CALL on '%s'\n" "$FILE" 1>&2
+  $GS_CALL "$FILE" | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d' 
+fi
+echo "INFO: Ready" >&2

=== added file 'filter/braille/filters/vectortopdf.in'
--- filter/braille/filters/vectortopdf.in	1970-01-01 00:00:00 +0000
+++ filter/braille/filters/vectortopdf.in	2017-09-09 18:53:19 +0000
@@ -0,0 +1,70 @@
+#!/bin/bash
+
+#
+# Copyright (c) 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# 
+# Permission is hereby granted, free of charge, to any person obtaining a copy
+# of this software and associated documentation files (the "Software"), to deal
+# in the Software without restriction, including without limitation the rights
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+# copies of the Software, and to permit persons to whom the Software is
+# furnished to do so, subject to the following conditions:
+# 
+# 
+# The above copyright notice and this permission notice shall be included in
+# all copies or substantial portions of the Software.
+# 
+# 
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+# THE SOFTWARE.
+# 
+
+# Make sure we have enough options
+if [ $# != 5 -a $# != 6 ]; then
+  echo "ERROR: $0 jobid user name nb options [filename]" >&2
+  exit 1
+fi
+
+NB=$4
+OPTIONS=$5
+FILE=$6
+
+case $0 in
+  *svgtopdf*) INPUT_FORMAT=svg ;;
+  *xfigtopdf*) INPUT_FORMAT=fig ;;
+  *wmftopdf*) INPUT_FORMAT=wmf ;;
+  *emftopdf*) INPUT_FORMAT=emf ;;
+  *cgmtopdf*) INPUT_FORMAT=cgm ;;
+  *cmxtopdf*) INPUT_FORMAT=cmx ;;
+esac
+
+trap -- 'rm -f "$FILE_FORMAT"' EXIT
+trap -- 'rm -f "$FILE_FORMAT_PDF"' EXIT
+FILE_FORMAT=$(mktemp "${TMPDIR:-/tmp}/vectortopdf.XXXXXX.${INPUT_FORMAT}")
+FILE_PDF=$(mktemp "${TMPDIR:-/tmp}/vectortopdf.XXXXXX.pdf")
+
+if [ -z "$FILE" ]
+then
+  # Get input from stdin
+  cat > "$FILE_FORMAT"
+else
+  cat "$FILE" > "$FILE_FORMAT"
+fi
+
+. @CUPS_DATADIR@/braille/cups-braille.sh
+
+checkTool inkscape inkscape "embossing ${INPUT_FORMAT} vector images"
+
+INKSCAPE="inkscape -z --export-area-drawing"
+
+echo "INFO: Converting image" 1>&2
+printf "DEBUG: Calling $INKSCAPE on '%s'\n" "$FILE_FORMAT" 1>&2
+$INKSCAPE -A "$FILE_PDF" "$FILE_FORMAT"
+cat "$FILE_PDF"
+
+echo "INFO: Ready" >&2

=== modified file 'mime/braille.convs'
--- mime/braille.convs	2015-12-12 02:11:10 +0000
+++ mime/braille.convs	2017-09-09 18:29:39 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -43,7 +43,6 @@ image/gif		image/vnd.cups-brf	70	imageto
 image/jpeg		image/vnd.cups-brf	70	imagetobrf
 image/pcx		image/vnd.cups-brf	70	imagetobrf
 image/png		image/vnd.cups-brf	70	imagetobrf
-image/svg		image/vnd.cups-brf	70	imagetobrf
 image/tiff		image/vnd.cups-brf	70	imagetobrf
 image/vnd.microsoft.icon	image/vnd.cups-brf	70	imagetobrf
 image/x-ms-bmp		image/vnd.cups-brf	70	imagetobrf
@@ -59,7 +58,6 @@ image/gif		image/vnd.cups-ubrl	70	imaget
 image/jpeg		image/vnd.cups-ubrl	70	imagetoubrl
 image/pcx		image/vnd.cups-ubrl	70	imagetoubrl
 image/png		image/vnd.cups-ubrl	70	imagetoubrl
-image/svg		image/vnd.cups-ubrl	70	imagetoubrl
 image/tiff		image/vnd.cups-ubrl	70	imagetoubrl
 image/vnd.microsoft.icon	image/vnd.cups-ubrl	70	imagetoubrl
 image/x-ms-bmp		image/vnd.cups-ubrl	70	imagetoubrl
@@ -71,5 +69,17 @@ image/x-xbitmap		image/vnd.cups-ubrl	70
 image/x-xpixmap		image/vnd.cups-ubrl	70	imagetoubrl
 image/x-xwindowdump	image/vnd.cups-ubrl	70	imagetoubrl
 
-# TODO: 
-#image/svg		image/vnd.cups-brf	30	vectortobrf
+image/svg		image/vnd.cups-pdf	30	svgtopdf
+image/svg+xml		image/vnd.cups-pdf	30	svgtopdf
+application/x-xfig	image/vnd.cups-pdf	30	xfigtopdf
+image/wmf		image/vnd.cups-pdf	30	wmftopdf
+image/x-wmf		image/vnd.cups-pdf	30	wmftopdf
+windows/metafile	image/vnd.cups-pdf	30	wmftopdf
+application/x-msmetafile	image/vnd.cups-pdf	30	wmftopdf
+image/emf		image/vnd.cups-pdf	30	emftopdf
+image/x-emf		image/vnd.cups-pdf	30	emftopdf
+image/cgm		image/vnd.cups-pdf	30	cgmtopdf
+image/x-cmx		image/vnd.cups-pdf	30	cmxtopdf
+
+image/vnd.cups-pdf	image/vnd.cups-brf	30	vectortobrf
+image/vnd.cups-pdf	image/vnd.cups-ubrl	30	vectortoubrl

=== modified file 'mime/braille.types'
--- mime/braille.types	2015-12-12 02:11:10 +0000
+++ mime/braille.types	2017-09-09 18:41:48 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -26,5 +26,13 @@ text/vnd.cups-brf	brf
 text/vnd.cups-ubrl
 image/vnd.cups-brf
 image/vnd.cups-ubrl
+image/vnd.cups-pdf
 
 application/msword	doc string(0,<D0CF11E0A1B11AE1>)
+
+image/svg+xml		svg svgz
+application/x-xfig	fig
+image/wmf		wmf
+image/emf		emf
+image/cgm		cgm
+image/x-cmx		cmx


--kqt54otjrru72yli--
