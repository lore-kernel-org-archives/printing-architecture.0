Return-Path: <SRS0=sTJX=MW=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Mon, 21 Dec 2015 01:11:12 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20151221001112.GB4287@var.home>
References: <20151212083605.GX2764@var.home> <566C0ACD.2040305@gmail.com>
	<20151213024001.GR2765@var.home> <566D5181.6010103@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MfFXiAuoTsnnDAfZ"
Content-Disposition: inline
In-Reply-To: <566D5181.6010103@gmail.com>
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org


--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Till Kamppeter, on Sun 13 Dec 2015 09:07:45 -0200, wrote:
> Now please download the BZR of cups-filters and check whether everything is
> OK. Thanks.

It seems I didn't test enough the case where the user didn't select any
braille translation to let the embosser do it.  The attached patch fixes
that case: since we just use fmt to render the text, we need to make
converters emit pure text, not xml.

Samuel

--MfFXiAuoTsnnDAfZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/cups-braille.sh.in	2015-12-21 00:03:08 +0000
@@ -224,7 +224,7 @@ echo "DEBUG: Table2 $LIBLOUIS2" >&2
 echo "DEBUG: Table3 $LIBLOUIS3" >&2
 echo "DEBUG: Table4 $LIBLOUIS4" >&2
 
-LIBLOUIS_TABLES="$LIBLOUIS1"
-[ -n "$LIBLOUIS2" ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS2"
-[ -n "$LIBLOUIS3" ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS3"
-[ -n "$LIBLOUIS4" ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS4"
+[ "$LIBLOUIS1" != None ] && LIBLOUIS_TABLES="$LIBLOUIS1"
+[ "$LIBLOUIS2" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS2"
+[ "$LIBLOUIS3" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS3"
+[ "$LIBLOUIS4" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS4"

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/texttobrf.in	2015-12-20 18:08:37 +0000
@@ -36,9 +36,6 @@ FILE=$6
 
 . @CUPS_DATADIR@/braille/cups-braille.sh
 
-# Default rendering without translation: just reformat paragraphs
-RENDER_CALL="fmt -$TEXTWIDTH"
-
 ####################
 # Liblouis options #
 ####################
@@ -57,47 +54,77 @@ fi
 
 echo "DEBUG: Input content type: $CONTENT_TYPE" >&2
 
-#  Tool to be used for the conversion
-# FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
-case $CONTENT_TYPE in
-  text/plain)
-    LIBLOUIS_TOOL="file2brl"
-    CONVERT=""
-    ;;
-  text/html)
-    LIBLOUIS_TOOL="file2brl -t"
-    CONVERT=""
-    ;;
-  text/xml|application/xml|application/xhtml+xml)
-    LIBLOUIS_TOOL="file2brl"
-    CONVERT=""
-    ;;
-  application/msword)
-    LIBLOUIS_TOOL="file2brl"
-    CONVERT="antiword -x db /dev/stdin"
-    ;;
-  application/vnd.openxmlformats-officedocument.wordprocessingml.document)
-    LIBLOUIS_TOOL="file2brl"
-    CONVERT="docx2txt"
-    ;;
-  text/rtf|application/rtf)
-    LIBLOUIS_TOOL="file2brl"
-    CONVERT="rtf2xml /dev/stdin"
-    ;;
-  application/pdf)
-    LIBLOUIS_TOOL="file2brl -p"
-    CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
-    ;;
-  *)
-    echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
-    exit 1
-    ;;
-esac
-
 #  Selected braille table
 if [ -n "$LIBLOUIS_TABLES" ]
 then
+  #  Tool to be used for the conversion
+  # FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
+  case $CONTENT_TYPE in
+    text/plain)
+      LIBLOUIS_TOOL="file2brl"
+      CONVERT=""
+      ;;
+    text/html)
+      LIBLOUIS_TOOL="file2brl -t"
+      CONVERT=""
+      ;;
+    text/xml|application/xml|application/xhtml+xml)
+      LIBLOUIS_TOOL="file2brl"
+      CONVERT=""
+      ;;
+    application/msword)
+      LIBLOUIS_TOOL="file2brl"
+      CONVERT="antiword -x db /dev/stdin"
+      ;;
+    application/vnd.openxmlformats-officedocument.wordprocessingml.document)
+      LIBLOUIS_TOOL="file2brl"
+      CONVERT="docx2txt"
+      ;;
+    text/rtf|application/rtf)
+      LIBLOUIS_TOOL="file2brl"
+      CONVERT="rtf2xml /dev/stdin"
+      ;;
+    application/pdf)
+      LIBLOUIS_TOOL="file2brl -p"
+      CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+      ;;
+    *)
+      echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
+      exit 1
+      ;;
+  esac
   RENDER_CALL="$LIBLOUIS_TOOL -CliteraryTextTable=$LIBLOUIS_TABLES,braille-patterns.cti $LIBLOUIS_CONFIG"
+else
+  # Default rendering without translation: just reformat paragraphs
+  RENDER_CALL="fmt -$TEXTWIDTH"
+
+  #  Tool to be used for the conversion
+  # FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
+  case $CONTENT_TYPE in
+    text/plain)
+      CONVERT=""
+      ;;
+    text/html)
+      CONVERT=""
+      RENDER_CALL="lynx -width=$TEXTWIDTH -dump -stdin"
+      ;;
+    application/msword)
+      CONVERT="antiword /dev/stdin"
+      ;;
+    application/vnd.openxmlformats-officedocument.wordprocessingml.document)
+      CONVERT="docx2txt"
+      ;;
+    text/rtf|application/rtf)
+      CONVERT="rtf2txt /dev/stdin"
+      ;;
+    application/pdf)
+      CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+      ;;
+    *)
+      echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
+      exit 1
+      ;;
+  esac
 fi
 
 # Now proceeed


--MfFXiAuoTsnnDAfZ--
