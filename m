Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 16 Sep 2017 16:30:47 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170916143047.56z65lacurq6tedj@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rclujwlemu3ch55l"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Proper support for xml
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


--rclujwlemu3ch55l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds proper braille support for xml documents: odt, docx, ...
by extracting the xml files from the zip archive and passing that to
liblouisutdml instead of using docx2txt and similar.

Samuel

--rclujwlemu3ch55l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'README'
--- README	2017-09-15 23:13:34 +0000
+++ README	2017-09-16 14:10:52 +0000
@@ -1605,10 +1605,17 @@ lp file.txt
 or even
 
 lp file.html
+lp file.odt
 lp file.doc
-lp file.pdf
 lp file.rtf
 lp file.docx
+lp file.pdf
+
+Important: it is really preferrable to directly print the document files
+themselves, and not a pdf output, or printing from the application (which
+would first convert to pdf). That way, the braille conversion will have the
+proper document structure (paragraphs, titles, footnotes, etc.) to produce good
+quality.
 
 
 --------------------

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2016-04-10 17:23:32 +0000
+++ filter/braille/filters/texttobrf.in	2017-09-16 14:23:36 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -93,6 +93,16 @@ setupTextRendering() {
   esac
 }
 
+# sometimes we can't filter directly from stdin because the tools need to seek
+# within the file (e.g. unzip). This can be called in such case to dump stdin to
+# a file
+dumptofile() {
+  [ -z "$FILE" ] || return 0 # Already a file
+  trap -- 'rm -f "$FILE"' EXIT
+  FILE=$(mktemp "${TMPDIR:-/tmp}/texttobrf.tmp")
+  cat > "$FILE"
+}
+
 #  Selected braille table
 if [ -n "$LIBLOUIS_TABLES" ]
 then
@@ -108,19 +118,26 @@ then
 	LIBLOUIS_TOOL="file2brl -t"
 	CONVERT=""
 	;;
-      text/xml|application/xml|application/xhtml+xml)
+      text/xml|application/xml|application/xhtml+xml|application/sgml)
 	LIBLOUIS_TOOL="file2brl"
 	CONVERT=""
 	;;
       application/msword)
-	LIBLOUIS_TOOL="file2brl"
+	LIBLOUIS_TOOL="file2brl 2> /dev/null"
 	CONVERT="antiword -x db -"
 	checkTool antiword antiword "translating MS-Word doc files"
 	;;
-      application/vnd.openxmlformats-officedocument.wordprocessingml.document)
-	LIBLOUIS_TOOL="file2brl"
-	CONVERT="docx2txt"
-	checkTool docx2txt docx2txt "translating MS-Word docx files"
+      application/vnd.oasis.opendocument*)
+	LIBLOUIS_TOOL="file2brl 2> /dev/null"
+	dumptofile
+	CONVERT="unzip -p $FILE content.xml"
+	checkTool unzip unzip "translating LibreOffice/OpenOffice OpenDocument files"
+	;;
+      application/vnd.openxmlformats-officedocument*)
+	LIBLOUIS_TOOL="file2brl 2> /dev/null"
+	dumptofile
+	CONVERT="unzip -p $FILE word/document.xml"
+	checkTool unzip unzip "translating MS-Word docx files"
 	;;
       text/rtf|application/rtf)
 	LIBLOUIS_TOOL="file2brl"

=== modified file 'mime/braille.convs'
--- mime/braille.convs	2017-09-11 14:55:56 +0000
+++ mime/braille.convs	2017-09-16 14:07:36 +0000
@@ -28,9 +28,30 @@ text/plain		text/vnd.cups-brf	0	texttobr
 text/html		text/vnd.cups-brf	10	texttobrf
 application/xhtml	text/vnd.cups-brf	10	texttobrf
 application/xml		text/vnd.cups-brf	10	texttobrf
+application/sgml	text/vnd.cups-brf	10	texttobrf
+
+application/vnd.oasis.opendocument.chart			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.formula			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.graphics			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.graphics-template		text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.presentation			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.presentation-template	text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.spreadsheet			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.spreadsheet-template		text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.text				text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.text-master			text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.text-template		text/vnd.cups-brf	30	texttobrf
+application/vnd.oasis.opendocument.text-web			text/vnd.cups-brf	30	texttobrf
 
 application/msword	text/vnd.cups-brf	30	texttobrf
-application/vnd.openxmlformats-officedocument.wordprocessingml.document text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.presentationml.presentation	text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.presentationml.slide		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.presentationml.slideshow		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.presentationml.template		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.spreadsheetml.sheet		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.spreadsheetml.template		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.wordprocessingml.document		text/vnd.cups-brf	30	texttobrf
+application/vnd.openxmlformats-officedocument.wordprocessingml.template		text/vnd.cups-brf	30	texttobrf
 
 text/rtf		text/vnd.cups-brf	30	texttobrf
 application/rtf		text/vnd.cups-brf	30	texttobrf

=== modified file 'mime/braille.types'
--- mime/braille.types	2017-09-11 14:55:56 +0000
+++ mime/braille.types	2017-09-16 14:08:31 +0000
@@ -28,7 +28,32 @@ image/vnd.cups-brf
 image/vnd.cups-ubrl
 image/vnd.cups-pdf
 
+application/sgml	sgml
+
+application/vnd.oasis.opendocument.chart					odc
+application/vnd.oasis.opendocument.database					odb
+application/vnd.oasis.opendocument.formula					odf
+application/vnd.oasis.opendocument.graphics					odg
+application/vnd.oasis.opendocument.graphics-template				otg
+application/vnd.oasis.opendocument.image					odi
+application/vnd.oasis.opendocument.presentation					odp
+application/vnd.oasis.opendocument.presentation-template			otp
+application/vnd.oasis.opendocument.spreadsheet					ods
+application/vnd.oasis.opendocument.spreadsheet-template				ots
+application/vnd.oasis.opendocument.text						odt
+application/vnd.oasis.opendocument.text-master					odm
+application/vnd.oasis.opendocument.text-template				ott
+application/vnd.oasis.opendocument.text-web					oth
+
 application/msword	doc string(0,<D0CF11E0A1B11AE1>)
+application/vnd.openxmlformats-officedocument.presentationml.presentation	pptx
+application/vnd.openxmlformats-officedocument.presentationml.slide		sldx
+application/vnd.openxmlformats-officedocument.presentationml.slideshow		ppsx
+application/vnd.openxmlformats-officedocument.presentationml.template		potx
+application/vnd.openxmlformats-officedocument.spreadsheetml.sheet		xlsx
+application/vnd.openxmlformats-officedocument.spreadsheetml.template		xltx
+application/vnd.openxmlformats-officedocument.wordprocessingml.document		docx
+application/vnd.openxmlformats-officedocument.wordprocessingml.template		dotx
 
 image/svg+xml		svg svgz
 application/x-xfig	fig


--rclujwlemu3ch55l--
