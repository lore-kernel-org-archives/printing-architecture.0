Return-Path: <samuel.thibault@ens-lyon.org>
Date: Thu, 23 Feb 2017 20:13:02 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170223191302.5frq7gtvuaavgehd@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cx7ehcdr3lbxo5zw"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Contributing margin support for braille
	embosser support
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


--cx7ehcdr3lbxo5zw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This is an update for the braille drivers, to add support for text
margins.

Samuel

--cx7ehcdr3lbxo5zw
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D modified file 'drv/generic-brf.drv'
--- drv/generic-brf.drv	2015-12-12 12:02:53 +0000
+++ drv/generic-brf.drv	2017-02-23 18:53:28 +0000
@@ -1,5 +1,5 @@
 //=20
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 //=20
 // Permission is hereby granted, free of charge, to any person obtaining a=
 copy
 // of this software and associated documentation files (the "Software"), t=
o deal
@@ -64,5 +64,57 @@ Option "SendSUB/Send Sub (^Z)" Boolean A
   *Choice "True/Yes" ""
   Choice "False/No" ""
=20
+Option "TopMargin/Top margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "BottomMargin/Bottom margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "LeftMargin/Left margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "RightMargin/Right margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
 ModelName "Braille embosser"
 PCFileName "gen-brf.ppd"

=3D=3D=3D modified file 'filter/braille/drivers/generic/brftoembosser.in'
--- filter/braille/drivers/generic/brftoembosser.in	2015-12-12 02:11:10 +00=
00
+++ filter/braille/drivers/generic/brftoembosser.in	2017-02-23 19:08:34 +00=
00
@@ -1,7 +1,7 @@
 #!/bin/bash
=20
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 #=20
 # Permission is hereby granted, free of charge, to any person obtaining a =
copy
 # of this software and associated documentation files (the "Software"), to=
 deal
@@ -47,11 +47,34 @@ fi
 SENDFF=3D$(getOption SendFF)
 SENDSUB=3D$(getOption SendSUB)
=20
+TOPMARGIN=3D$(getOptionNumber TopMargin)
+LEFTMARGIN=3D$(getOptionNumber LeftMargin)
+
 echo "INFO: Writing text to generic embosser" >&2
=20
 while [ $NB -gt 0 ]
 do
-  < "$FILE" sed -e 's/^$/'$'\015''/' -e 's/\([^'$'\015'']\)$/\1'$'\015''/'
+  # Produce top margin
+  if [ -n "$TOPMARGIN" ]; then
+    while [ $TOPMARGIN -gt 0 ]
+    do
+      echo
+      TOPMARGIN=3D$(($TOPMARGIN - 1))
+    done
+  fi
+  LEFTSPACES=3D""
+  if [ -n "$LEFTMARGIN" ]; then
+    while [ $LEFTMARGIN -gt 0 ]
+    do
+      LEFTSPACES=3D"$LEFTSPACES "
+      LEFTMARGIN=3D$(($LEFTMARGIN - 1))
+    done
+  fi
+
+  < "$FILE" \
+    sed -e "s/^/$LEFTSPACES/" \
+        -e 's/^$/'$'\015''/' \
+        -e 's/\([^'$'\015'']\)$/\1'$'\015''/'
  =20
   if [ "$SENDFF" =3D True ]
   then

=3D=3D=3D modified file 'filter/braille/drivers/index/index.defs'
--- filter/braille/drivers/index/index.defs	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/index.defs	2017-02-23 18:53:28 +0000
@@ -1,5 +1,5 @@
 //=20
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 //=20
 // Permission is hereby granted, free of charge, to any person obtaining a=
 copy
 // of this software and associated documentation files (the "Software"), t=
o deal
@@ -56,3 +56,70 @@ Group "Braille"
   Choice "3/User-defined Table 3" ""
   Choice "4/User-defined Table 4" ""
=20
+Option "TopMargin/Top margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "BottomMargin/Bottom margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "InnerMargin/Inner margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "OuterMargin/Outer margin" PickOne AnySetup 10
+  Choice "0" ""
+  Choice "1" ""
+  *Choice "2" ""
+  Choice "3" ""
+  Choice "4" ""
+  Choice "5" ""
+  Choice "6" ""
+  Choice "7" ""
+  Choice "8" ""
+  Choice "9" ""
+  Choice "10" ""
+
+Option "PageNumber/Page Number" PickOne AnySetup 10
+  Choice "None/None" ""
+  Choice "Top/Top-middle" ""
+  Choice "TopLeft/Top-left" ""
+  Choice "TopRight/Top-right" ""
+  Choice "Bottom/Bottom-middle" ""
+  Choice "BottomLeft/Bottom-left" ""
+  Choice "BottomRight/Bottom-right" ""
+
+UIConstraints "*TopMargin 0 *PageNumber Top"
+UIConstraints "*TopMargin 0 *PageNumber TopLeft"
+UIConstraints "*TopMargin 0 *PageNumber TopRight"
+UIConstraints "*BottomMargin 0 *PageNumber Bottom"
+UIConstraints "*BottomMargin 0 *PageNumber BottomLeft"
+UIConstraints "*BottomMargin 0 *PageNumber BottomRight"

=3D=3D=3D modified file 'filter/braille/drivers/index/index.sh.in'
--- filter/braille/drivers/index/index.sh.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/index.sh.in	2017-02-23 18:53:28 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 #=20
 # Permission is hereby granted, free of charge, to any person obtaining a =
copy
 # of this software and associated documentation files (the "Software"), to=
 deal
@@ -28,6 +28,7 @@ FIRMWARE=3D$(getOptionNumber IndexFirmware
 FOLDING=3D$(getOption IndexFolding)
 TABLE=3D$(getOptionNumber IndexTable)
 MULTIPLEIMPACT=3D$(getOptionNumber IndexMultipleImpact)
+PAGENUMBER=3D$(getOption PageNumber)
=20
 # Convert from 100th of mm to Inch fraction
 mmToIndexIn () {
@@ -71,7 +72,7 @@ mmToIndexIn () {
 commonOptions() {
   INIT=3D
   # Disable options we don't want: first line offset and page numbering
-  INIT+=3D,FO0,PN0
+  INIT+=3D,FO0
=20
   # Support hardware-assisted multiple copies
   if [ $NB !=3D 1 ]
@@ -82,7 +83,7 @@ commonOptions() {
   INIT+=3D,MI$MULTIPLEIMPACT
=20
   # Support page folding
-  case $FOLDING in
+  case "$FOLDING" in
     Single)  INIT+=3D,DP1 ;;
     Double)  INIT+=3D,DP2 ;;
     SingleZ) INIT+=3D,DP5 ;;
@@ -101,11 +102,22 @@ commonOptions() {
     320) INIT+=3D,TD2 ;;
     *)   printf "ERROR: unsupported '%s' text dot distance\n" "$TEXTDOTDIS=
TANCE" >&2 ; exit 1 ;;
   esac
-  case $GRAPHICDOTDISTANCE in
+  case "$GRAPHICDOTDISTANCE" in
     160) INIT+=3D,GD2 ;;
     200) INIT+=3D,GD0 ;;
     250) INIT+=3D,GD1 ;;
-    *)   printf "ERROR: unsupported '%s'graphic dot distance\n" "$GRAPHICD=
OTDISTANCE" >&2 ; exit 1 ;;
+    *)   printf "ERROR: unsupported '%s' graphic dot distance\n" "$GRAPHIC=
DOTDISTANCE" >&2 ; exit 1 ;;
+  esac
+
+  case "$PAGENUMBER" in
+    None)        INIT+=3D,PN0 ;;
+    Top)         INIT+=3D,PN1 ;;
+    TopLeft)     INIT+=3D,PN2 ;;
+    TopRight)    INIT+=3D,PN3 ;;
+    Bottom)      INIT+=3D,PN4 ;;
+    BottomLeft)  INIT+=3D,PN5 ;;
+    BottomRight) INIT+=3D,PN6 ;;
+    *)   echo "ERROR: unsupported $PAGENUMBER page number" >&2 ; exit 1 ;;
   esac
=20
   echo "$INIT"

=3D=3D=3D modified file 'filter/braille/drivers/index/indexv3.sh.in'
--- filter/braille/drivers/index/indexv3.sh.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/indexv3.sh.in	2017-02-23 18:53:28 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 #=20
 # Permission is hereby granted, free of charge, to any person obtaining a =
copy
 # of this software and associated documentation files (the "Software"), to=
 deal
@@ -33,7 +33,7 @@ then
   INIT=3D$'\033'D
=20
   # Disable margins
-  INIT+=3DTM0,BM0,IM0,OM0
+  INIT+=3DTM$TOPMARGIN,BM$BOTTOMMARGIN,IM$INNERMARGIN,OM$OUTERMARGIN
=20
   # Trying to disable banner page seems to pose problems
   #INIT+=3D,BP

=3D=3D=3D modified file 'filter/braille/drivers/index/indexv4.sh.in'
--- filter/braille/drivers/index/indexv4.sh.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/indexv4.sh.in	2017-02-23 18:53:28 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 #=20
 # Permission is hereby granted, free of charge, to any person obtaining a =
copy
 # of this software and associated documentation files (the "Software"), to=
 deal
@@ -30,7 +30,7 @@ then
   INIT=3D$'\033'D
=20
   # Disable margins
-  INIT+=3DTM0,BI0
+  INIT+=3DTM$TOPMARGIN,BI$INNERMARGIN
=20
   # Common options
   INIT+=3D"$(setCommonOptions)"

=3D=3D=3D modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2016-04-10 17:20:32 +0000
+++ filter/braille/filters/cups-braille.sh.in	2017-02-23 19:03:06 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 #=20
 # Permission is hereby granted, free of charge, to any person obtaining a =
copy
 # of this software and associated documentation files (the "Software"), to=
 deal
@@ -144,7 +144,7 @@ case "$PAGESIZE" in
     ;;
 esac
=20
-#=A0TODO: hardcoded margin
+#=A0TODO: hardcoded embosser margin
 PRINTABLEWIDTH=3D$((PAGEWIDTH - 1000))
 PRINTABLEHEIGHT=3D$((PAGEHEIGHT - 1000))
=20
@@ -167,9 +167,38 @@ esac
 TEXTDOTS=3D$(getOptionNumber TextDots)
 LINESPACING=3D$(getOptionNumber LineSpacing)
=20
+# Cell dimension, including spacing
+TEXTCELLWIDTH=3D$(( $TEXTDOTDISTANCE + $TEXTCELLDISTANCE ))
+TEXTCELLHEIGHT=3D$(( $TEXTDOTDISTANCE * ($TEXTDOTS / 2 - 1) + $LINESPACING=
 ))
+
+if [ "$(getOption TopMargin)" =3D "" ]
+then
+  # No margin
+  TEXTAREAWIDTH=3D$PRINTABLEWIDTH
+  TEXTAREAHEIGHT=3D$PRINTABLEHEIGHT
+else
+  # Margins in cells
+  TOPMARGIN=3D$(getOptionNumber TopMargin)
+  BOTTOMMARGIN=3D$(getOptionNumber BottomMargin)
+  if [ "$(getOption InnerMargin)" =3D "" ]
+  then
+    LEFTMARGIN=3D$(getOptionNumber LeftMargin)
+    RIGHTMARGIN=3D$(getOptionNumber RightMargin)
+    WIDTHMARGIN=3D$(( $LEFTMARGIN + $RIGHTMARGIN ))
+  else
+    INNERMARGIN=3D$(getOptionNumber InnerMargin)
+    OUTERMARGIN=3D$(getOptionNumber OuterMargin)
+    WIDTHMARGIN=3D$(( $INNERMARGIN + $OUTERMARGIN ))
+  fi
+   =20
+  # Subtract margins from printable area
+  TEXTAREAWIDTH=3D$(( $PRINTABLEWIDTH - $WIDTHMARGIN * $TEXTCELLWIDTH ))
+  TEXTAREAHEIGHT=3D$(( $PRINTABLEHEIGHT - ($TOPMARGIN + $BOTTOMMARGIN) * $=
TEXTCELLHEIGHT ))
+fi
+
 # Compute number of printable cells according to page width and height
-TEXTWIDTH=3D$(( ($PRINTABLEWIDTH + $TEXTCELLDISTANCE) / ($TEXTDOTDISTANCE =
+ $TEXTCELLDISTANCE) ))
-TEXTHEIGHT=3D$(( ($PRINTABLEHEIGHT + $LINESPACING) / ($TEXTDOTDISTANCE * (=
$TEXTDOTS / 2 - 1) + $LINESPACING) ))
+TEXTWIDTH=3D$(( ($TEXTAREAWIDTH + $TEXTCELLDISTANCE) / $TEXTCELLWIDTH  ))
+TEXTHEIGHT=3D$(( ($TEXTAREAHEIGHT + $LINESPACING) / $TEXTCELLHEIGHT ))
=20
 #
 # Graphic spacing


--cx7ehcdr3lbxo5zw--
