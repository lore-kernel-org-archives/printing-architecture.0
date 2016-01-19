Return-Path: <SRS0=tO/t=NT=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Tue, 19 Jan 2016 23:09:29 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20160119220929.GR3427@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Checking for tool presence
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


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

The attached patch makes the braille support check for tool presence, so
that cups nicely tells the user what is missing, allowing distributions
to relax package dependencies.

Samuel

--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2015-12-21 13:51:08 +0000
+++ filter/braille/filters/cups-braille.sh.in	2016-01-19 21:51:03 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -228,3 +228,17 @@ echo "DEBUG: Table4 $LIBLOUIS4" >&2
 [ "$LIBLOUIS2" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS2"
 [ "$LIBLOUIS3" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS3"
 [ "$LIBLOUIS4" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS4"
+
+#
+# Checking for presence of tools
+#
+checkTool() {
+  TOOL=$1
+  PACKAGE=$2
+  USE=$3
+  if ! type $TOOL
+  then
+    printf "ERROR: The $PACKAGE package is required for $USE\n" >&2
+    exit 1
+  fi
+}

=== modified file 'filter/braille/filters/imagetobrf.in'
--- filter/braille/filters/imagetobrf.in	2015-12-21 13:54:30 +0000
+++ filter/braille/filters/imagetobrf.in	2016-01-19 22:01:01 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -42,6 +42,8 @@ esac
 
 . @CUPS_DATADIR@/braille/cups-braille.sh
 
+checkTool convert imagemagick "embossing images"
+
 NEGATE=$(getOption Negate)
 case "$NEGATE" in
   True)  NEGATE=-negate ;;

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2015-12-21 13:51:08 +0000
+++ filter/braille/filters/texttobrf.in	2016-01-19 21:54:10 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -57,6 +57,8 @@ echo "DEBUG: Input content type: $CONTEN
 #  Selected braille table
 if [ -n "$LIBLOUIS_TABLES" ]
 then
+  checkTool file2brl liblouis "translating braille"
+
   #  Tool to be used for the conversion
   # FIXME CONTENT_TYPE contains original document, not document passed as parameter ?!!
   case $CONTENT_TYPE in
@@ -75,18 +77,22 @@ then
     application/msword)
       LIBLOUIS_TOOL="file2brl"
       CONVERT="antiword -x db /dev/stdin"
+      checkTool antiword antiword "translating MS-Word doc files"
       ;;
     application/vnd.openxmlformats-officedocument.wordprocessingml.document)
       LIBLOUIS_TOOL="file2brl"
       CONVERT="docx2txt"
+      checkTool docx2txt docx2txt "translating MS-Word docx files"
       ;;
     text/rtf|application/rtf)
       LIBLOUIS_TOOL="file2brl"
       CONVERT="rtf2xml /dev/stdin"
+      checkTool rtf2xml rtf2xml "translating RTF files"
       ;;
     application/pdf)
       LIBLOUIS_TOOL="file2brl -p"
       CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+      checkTool pdftotext poppler "translating PDF files"
       ;;
     *)
       echo "ERROR: unsupported content type $CONTENT_TYPE" >&2
@@ -107,18 +113,23 @@ else
     text/html)
       CONVERT=""
       RENDER_CALL="lynx -width=$TEXTWIDTH -dump -stdin"
+      checkTool lynx lynx "translating html files"
       ;;
     application/msword)
       CONVERT="antiword /dev/stdin"
+      checkTool antiword antiword "translating MS-Word doc files"
       ;;
     application/vnd.openxmlformats-officedocument.wordprocessingml.document)
       CONVERT="docx2txt"
+      checkTool docx2txt docx2txt "translating MS-Word docx files"
       ;;
     text/rtf|application/rtf)
       CONVERT="rtf2txt /dev/stdin"
+      checkTool rtf2txt rtf2txt "translating RTF files"
       ;;
     application/pdf)
       CONVERT="pdftotext -raw /dev/stdin /dev/stdout"
+      checkTool pdftotext poppler "translating PDF files"
       ;;
     *)
       echo "ERROR: unsupported content type $CONTENT_TYPE" >&2


--azLHFNyN32YCQGCU--
