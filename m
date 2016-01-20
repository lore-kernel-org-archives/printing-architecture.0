Return-Path: <SRS0=RE4l=NU=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Thu, 21 Jan 2016 00:28:07 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20160120232807.GA465@var.home>
References: <20160119220929.GR3427@var.home>
 <569EBD80.3040504@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
In-Reply-To: <569EBD80.3040504@gmail.com>
Subject: Re: [Printing-architecture] [PATCH] braille: Checking for tool
 presence
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The attached patch makes cups-filter able to use lou_translate from
liblouis-bin (and warn about that) when file2brl from liblouisutdml-bin
is not available.

Samuel

--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2016-01-19 22:48:12 +0000
+++ filter/braille/filters/texttobrf.in	2016-01-20 23:25:50 +0000
@@ -54,58 +54,13 @@ fi
 
 echo "DEBUG: Input content type: $CONTENT_TYPE" >&2
 
-#  Selected braille table
-if [ -n "$LIBLOUIS_TABLES" ]
-then
-  checkTool file2brl liblouis "translating braille"
+# FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
 
-  #  Tool to be used for the conversion
-  # FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
-  case $CONTENT_TYPE in
-    text/plain)
-      LIBLOUIS_TOOL="file2brl"
-      CONVERT=""
-      ;;
-    text/html)
-      LIBLOUIS_TOOL="file2brl -t"
-      CONVERT=""
-      ;;
-    text/xml|application/xml|application/xhtml+xml)
-      LIBLOUIS_TOOL="file2brl"
-      CONVERT=""
-      ;;
-    application/msword)
-      LIBLOUIS_TOOL="file2brl"
-      CONVERT="antiword -x db /dev/stdin"
-      checkTool antiword antiword "translating MS-Word doc files"
-      ;;
-    application/vnd.openxmlformats-officedocument.wordprocessingml.document)
-      LIBLOUIS_TOOL="file2brl"
-      CONVERT="docx2txt"
-      checkTool docx2txt docx2txt "translating MS-Word docx files"
-      ;;
-    text/rtf|application/rtf)
-      LIBLOUIS_TOOL="file2brl"
-      CONVERT="rtf2xml /dev/stdin"
-      checkTool rtf2xml rtf2xml "translating RTF files"
-      ;;
-    application/pdf)
-      LIBLOUIS_TOOL="file2brl -p"
-      CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
-      checkTool pdftotext poppler "translating PDF files"
-      ;;
-    *)
-      echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
-      exit 1
-      ;;
-  esac
-  RENDER_CALL="$LIBLOUIS_TOOL -CliteraryTextTable=$LIBLOUIS_TABLES,braille-patterns.cti $LIBLOUIS_CONFIG"
-else
+setupTextRendering() {
   # Default rendering without translation: just reformat paragraphs
   RENDER_CALL="fmt -$TEXTWIDTH"
 
   #  Tool to be used for the conversion
-  # FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
   case $CONTENT_TYPE in
     text/plain)
       CONVERT=""
@@ -136,6 +91,66 @@ else
       exit 1
       ;;
   esac
+}
+
+#  Selected braille table
+if [ -n "$LIBLOUIS_TABLES" ]
+then
+  if type file2brl
+  then
+    # Good, we can use liblouisutdml
+    case $CONTENT_TYPE in
+      text/plain)
+	LIBLOUIS_TOOL="file2brl"
+	CONVERT=""
+	;;
+      text/html)
+	LIBLOUIS_TOOL="file2brl -t"
+	CONVERT=""
+	;;
+      text/xml|application/xml|application/xhtml+xml)
+	LIBLOUIS_TOOL="file2brl"
+	CONVERT=""
+	;;
+      application/msword)
+	LIBLOUIS_TOOL="file2brl"
+	CONVERT="antiword -x db /dev/stdin"
+	checkTool antiword antiword "translating MS-Word doc files"
+	;;
+      application/vnd.openxmlformats-officedocument.wordprocessingml.document)
+	LIBLOUIS_TOOL="file2brl"
+	CONVERT="docx2txt"
+	checkTool docx2txt docx2txt "translating MS-Word docx files"
+	;;
+      text/rtf|application/rtf)
+	LIBLOUIS_TOOL="file2brl"
+	CONVERT="rtf2xml /dev/stdin"
+	checkTool rtf2xml rtf2xml "translating RTF files"
+	;;
+      application/pdf)
+	LIBLOUIS_TOOL="file2brl -p"
+	CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+	checkTool pdftotext poppler "translating PDF files"
+	;;
+      *)
+	echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
+	exit 1
+	;;
+    esac
+    RENDER_CALL="$LIBLOUIS_TOOL -CliteraryTextTable=$LIBLOUIS_TABLES,braille-patterns.cti $LIBLOUIS_CONFIG"
+  elif type lou_translate
+  then
+    # Only liblouis, but better than nothing
+    setupTextRendering
+    printf "WARN: The liblouisutdml package is required for translating braille better\n" >&2
+    TRANSLATE="lou_translate $LIBLOUIS_TABLES,braille-patterns.cti"
+  else
+    printf "ERROR: The liblouisutdml package is required for translating braille\n" >&2
+    exit 1
+  fi
+else
+  # No translation, only text rendering
+  setupTextRendering
 fi
 
 # Now proceeed
@@ -147,9 +162,13 @@ if [ -z "$CONVERT" ]
 then
   printf "DEBUG: Calling $RENDER_CALL on '%s'\n" "$FILE" >&2
    < "$FILE" $RENDER_CALL
-else
+elif [ -z "$TRANSLATE" ]
+then
   printf "DEBUG: Calling $CONVERT | $RENDER_CALL on '%s'\n" "$FILE" >&2
   < "$FILE" $CONVERT | $RENDER_CALL
+else
+  printf "DEBUG: Calling $CONVERT | $RENDER_CALL | $TRANSLATE on '%s'\n" "$FILE" >&2
+  < "$FILE" $CONVERT | $RENDER_CALL | $TRANSLATE
 fi
 
 echo "INFO: Ready" >&2


--vkogqOf2sHV7VnPd--
