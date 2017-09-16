Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 16 Sep 2017 18:57:01 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170916165701.vgnp7umn4pherxmu@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yw32mti2fbldsiyk"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] [PATCH] braille: proper support for
	hardware margins
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


--yw32mti2fbldsiyk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This adds proper support for hardware margins on braille embossers.

Samuel

--yw32mti2fbldsiyk
Content-Type: text/plain; charset="utf-8"
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: 8bit

=== modified file 'drv/indexv3.drv'
--- drv/indexv3.drv	2015-12-12 12:02:53 +0000
+++ drv/indexv3.drv	2017-09-16 16:44:42 +0000
@@ -1,5 +1,5 @@
 // 
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 // 
 // Permission is hereby granted, free of charge, to any person obtaining a copy
 // of this software and associated documentation files (the "Software"), to deal
@@ -41,7 +41,7 @@ Filter image/vnd.cups-ubrl 0 imageubrlto
 // Common options
 //
 
-HWMargins 0.5mm 0.5mm 0.5mm 0.5mm
+HWMargins 0mm 5mm 0mm 2mm
 VariablePaperSize true
 MinSize 1in 1in
 

=== modified file 'drv/indexv4.drv'
--- drv/indexv4.drv	2015-12-12 12:02:53 +0000
+++ drv/indexv4.drv	2017-09-16 15:57:20 +0000
@@ -1,5 +1,5 @@
 // 
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 // 
 // Permission is hereby granted, free of charge, to any person obtaining a copy
 // of this software and associated documentation files (the "Software"), to deal
@@ -41,7 +41,7 @@ Filter image/vnd.cups-ubrl 0 imageubrlto
 // Common options
 //
 
-HWMargins 0.5mm 0.5mm 0.5mm 0.5mm
+HWMargins 5mm 5mm 5mm 5mm
 VariablePaperSize true
 MinSize 1in 1in
 

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2017-09-14 22:19:36 +0000
+++ filter/braille/filters/cups-braille.sh.in	2017-09-16 16:53:38 +0000
@@ -25,7 +25,7 @@
 # Get an attribute from the ppd file
 getAttribute () {
   ATTRIBUTE=$1
-  VALUE=`grep "^\*$ATTRIBUTE:" "$PPD" | cut -d" " -f2`
+  VALUE=`grep "^\*$ATTRIBUTE:" "$PPD" | cut -d" " -f2-`
   VALUE=${VALUE##\"}
   VALUE=${VALUE%%\"}
   printf "DEBUG: Attribute $ATTRIBUTE is '%s'\n" "$VALUE" >&2
@@ -144,9 +144,48 @@ case "$PAGESIZE" in
     ;;
 esac
 
-# TODO: hardcoded embosser margin
-PRINTABLEWIDTH=$((PAGEWIDTH - 1000))
-PRINTABLEHEIGHT=$((PAGEHEIGHT - 1000))
+HWMARGINS=$(getAttribute HWMargins)
+printf "DEBUG: HW margins are $HWMARGINS\n" >&2
+HWMARGIN_LEFT="${HWMARGINS%% *}"
+HWMARGINS="${HWMARGINS#* }"
+HWMARGIN_BOTTOM="${HWMARGINS%% *}"
+HWMARGINS="${HWMARGINS#* }"
+HWMARGIN_RIGHT="${HWMARGINS%% *}"
+HWMARGINS="${HWMARGINS#* }"
+HWMARGIN_TOP="${HWMARGINS%% *}"
+
+# Convert from points (1/72 of inch) to 1/100th of mm
+points2mm() {
+  # First get an integer so bash can compute
+  # I.e. convert to 10^15th of point
+  # Note: bash's integer computation will work until about 1000mm, that's plenty :)
+  POINTS="$1"
+  INT_POINTS="${POINTS%.*}"
+  if [ "$INT_POINTS" = "$POINTS" ]
+  then
+    FRAC_POINTS=000000000000000
+  else
+    FRAC_POINTS="${POINTS#*.}000000000000000"
+  fi
+  FRAC_POINTS="${FRAC_POINTS:0:15}"
+  FRAC_POINTS="$INT_POINTS$FRAC_POINTS"
+  # Then we can compute conversion
+  # We round up to be safe
+  FRAC_INCH=$((("$FRAC_POINTS" + 71) / 72))
+  FRAC_CM=$((("$FRAC_INCH" * 254 + 99) / 100))
+  HUNDRENDTH_MM=$((("$FRAC_CM" + 999999999999) / 1000000000000))
+  echo $HUNDRENDTH_MM
+}
+
+MARGIN_LEFT=$(points2mm "$HWMARGIN_LEFT")
+MARGIN_RIGHT=$(points2mm "$HWMARGIN_RIGHT")
+MARGIN_TOP=$(points2mm "$HWMARGIN_TOP")
+MARGIN_BOTTOM=$(points2mm "$HWMARGIN_BOTTOM")
+
+printf "DEBUG: margins are left $MARGIN_LEFT right $MARGIN_RIGHT top $MARGIN_TOP bottom $MARGIN_BOTTOM\n" >&2
+
+PRINTABLEWIDTH=$((PAGEWIDTH - $MARGIN_LEFT - $MARGIN_RIGHT))
+PRINTABLEHEIGHT=$((PAGEHEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM))
 
 
 #


--yw32mti2fbldsiyk--
