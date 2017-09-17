Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 12:08:57 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917100857.qw4gysoncarh7nve@var.youpi.perso.aquilenet.fr>
References: <20170916143047.56z65lacurq6tedj@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oj22se2siuxhyd4l"
Content-Disposition: inline
In-Reply-To: <20170916143047.56z65lacurq6tedj@var.youpi.perso.aquilenet.fr>
Subject: Re: [Printing-architecture] [PATCH] braille: Proper support for xml
	documents
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


--oj22se2siuxhyd4l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Samuel Thibault, on sam. 16 sept. 2017 16:30:47 +0200, wrote:
> This adds proper braille support for xml documents: odt, docx, ...
> by extracting the xml files from the zip archive and passing that to
> liblouisutdml instead of using docx2txt and similar.

This file2brl patch had a last-minute change which I couldn't check, and
of course it was bogus.  Here is a patch to fix it.

Samuel

--oj22se2siuxhyd4l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2017-09-16 21:55:36 +0000
+++ filter/braille/filters/texttobrf.in	2017-09-17 10:03:15 +0000
@@ -123,18 +123,18 @@ then
 	CONVERT=""
 	;;
       application/msword)
-	LIBLOUIS_TOOL="file2brl 2> /dev/null"
+	LIBLOUIS_TOOL="file2brl"
 	CONVERT="antiword -x db -"
 	checkTool antiword antiword "translating MS-Word doc files"
 	;;
       application/vnd.oasis.opendocument*)
-	LIBLOUIS_TOOL="file2brl 2> /dev/null"
+	LIBLOUIS_TOOL="file2brl"
 	dumptofile
 	CONVERT="unzip -p $FILE content.xml"
 	checkTool unzip unzip "translating LibreOffice/OpenOffice OpenDocument files"
 	;;
       application/vnd.openxmlformats-officedocument*)
-	LIBLOUIS_TOOL="file2brl 2> /dev/null"
+	LIBLOUIS_TOOL="file2brl"
 	dumptofile
 	CONVERT="unzip -p $FILE word/document.xml"
 	checkTool unzip unzip "translating MS-Word docx files"
@@ -179,26 +179,26 @@ then
   printf "DEBUG: Calling $RENDER_CALL on '%s'\n" "$FILE" >&2
   if [ -z "$FILE" ]
   then
-    $RENDER_CALL
+    $RENDER_CALL 2> /dev/null
   else
-   < "$FILE" $RENDER_CALL
+   < "$FILE" $RENDER_CALL 2> /dev/null
   fi
 elif [ -z "$TRANSLATE" ]
 then
   printf "DEBUG: Calling $CONVERT | $RENDER_CALL on '%s'\n" "$FILE" >&2
   if [ -z "$FILE" ]
   then
-    $CONVERT | $RENDER_CALL
+    $CONVERT | $RENDER_CALL 2> /dev/null
   else
-  < "$FILE" $CONVERT | $RENDER_CALL
+  < "$FILE" $CONVERT | $RENDER_CALL 2> /dev/null
   fi
 else
   printf "DEBUG: Calling $CONVERT | $RENDER_CALL | $TRANSLATE on '%s'\n" "$FILE" >&2
   if [ -z "$FILE" ]
   then
-    $CONVERT | $RENDER_CALL | $TRANSLATE
+    $CONVERT | $RENDER_CALL 2> /dev/null | $TRANSLATE
   else
-  < "$FILE" $CONVERT | $RENDER_CALL | $TRANSLATE
+  < "$FILE" $CONVERT | $RENDER_CALL 2> /dev/null | $TRANSLATE
   fi
 fi
 


--oj22se2siuxhyd4l--
