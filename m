Return-Path: <SRS0=Wsa4=QF=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Sun, 10 Apr 2016 18:34:11 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20160410163411.GU2992@var.home>
References: <20160410162936.GR2992@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4VrXvz3cwkc87Wze"
Content-Disposition: inline
In-Reply-To: <20160410162936.GR2992@var.home>
Subject: [Printing-architecture] [PATCH] braille: Fix banner page printing
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


--4VrXvz3cwkc87Wze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Banners use the application/vnd.cups-pdf-banner MIME type instead of
application/pdf, so recognize that as well.  Also, the banner file can
not be opened by the script, we have to really just use the standard
input, and not try to reopen /dev/stdin, which would fail.

--4VrXvz3cwkc87Wze
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch3

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2016-01-21 01:10:01 +0000
+++ filter/braille/filters/texttobrf.in	2016-04-10 16:06:59 +0000
@@ -71,7 +71,7 @@ setupTextRendering() {
       checkTool lynx lynx "translating html files"
       ;;
     application/msword)
-      CONVERT="antiword /dev/stdin"
+      CONVERT="antiword -"
       checkTool antiword antiword "translating MS-Word doc files"
       ;;
     application/vnd.openxmlformats-officedocument.wordprocessingml.document)
@@ -82,8 +82,8 @@ setupTextRendering() {
       CONVERT="rtf2txt /dev/stdin"
       checkTool rtf2txt rtf2txt "translating RTF files"
       ;;
-    application/pdf)
-      CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+    application/pdf|application/vnd.cups-pdf-banner)
+      CONVERT="pdftotext -raw - -"
       checkTool pdftotext poppler "translating PDF files"
       ;;
     *)
@@ -114,7 +114,7 @@ then
 	;;
       application/msword)
 	LIBLOUIS_TOOL="file2brl"
-	CONVERT="antiword -x db /dev/stdin"
+	CONVERT="antiword -x db -"
 	checkTool antiword antiword "translating MS-Word doc files"
 	;;
       application/vnd.openxmlformats-officedocument.wordprocessingml.document)
@@ -127,9 +127,9 @@ then
 	CONVERT="rtf2xml /dev/stdin"
 	checkTool rtf2xml rtf2xml "translating RTF files"
 	;;
-      application/pdf)
+      application/pdf|application/vnd.cups-pdf-banner)
 	LIBLOUIS_TOOL="file2brl -p"
-	CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+	CONVERT="pdftotext -raw - -"
 	checkTool pdftotext poppler "translating PDF files"
 	;;
       *)
@@ -156,19 +156,33 @@ fi
 # Now proceeed
 cd $TMPDIR
 echo "INFO: Reformating text" >&2
-[ -z "$FILE" ] && FILE=/dev/stdin
 
 if [ -z "$CONVERT" ]
 then
   printf "DEBUG: Calling $RENDER_CALL on '%s'\n" "$FILE" >&2
+  if [ -z "$FILE" ]
+  then
+    $RENDER_CALL
+  else
    < "$FILE" $RENDER_CALL
+  fi
 elif [ -z "$TRANSLATE" ]
 then
   printf "DEBUG: Calling $CONVERT | $RENDER_CALL on '%s'\n" "$FILE" >&2
+  if [ -z "$FILE" ]
+  then
+    $CONVERT | $RENDER_CALL
+  else
   < "$FILE" $CONVERT | $RENDER_CALL
+  fi
 else
   printf "DEBUG: Calling $CONVERT | $RENDER_CALL | $TRANSLATE on '%s'\n" "$FILE" >&2
+  if [ -z "$FILE" ]
+  then
+    $CONVERT | $RENDER_CALL | $TRANSLATE
+  else
   < "$FILE" $CONVERT | $RENDER_CALL | $TRANSLATE
+  fi
 fi
 
 echo "INFO: Ready" >&2


--4VrXvz3cwkc87Wze--
