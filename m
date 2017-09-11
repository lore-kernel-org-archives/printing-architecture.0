Return-Path: <samuel.thibault@ens-lyon.org>
Date: Tue, 12 Sep 2017 01:12:49 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170911231249.5spmbytp3ol2if4g@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dgfmcrejaxh7iehf"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] Improve braille support for bitmap
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org


--dgfmcrejaxh7iehf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This improves the braille support for bitmap images:

- it moves the graphical dot distance option to the image conversion
  group
- it adds an option to avoid image resize
- it makes the rotation option easier by proposing to just fit paper
  instead of fitting portrait or landscape

Samuel

--dgfmcrejaxh7iehf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'README'
--- README	2017-09-11 14:55:56 +0000
+++ README	2017-09-11 23:09:18 +0000
@@ -1586,7 +1586,7 @@ cups-filters also provides filters and d
 embossers. It supports:
 
 - Text on all kinds of embossers with generic support
-- Text and graphics on the Index V3 embossers.
+- Text and graphics on the Index V3 embossers and above.
 
 This is configured in CUPS just like any printer. Options can then be configured
 in the standard printer panel, or passed as -o options to the lp command.
@@ -1634,8 +1634,15 @@ Image support
 Images can be embossed by converting them to braille dots.
 
 The orientation of the image can be controlled. By default it will be rotate to
-portrait, i.e. it will be rotate by 90 degree if it was wider than high. Other
-rotation modes are provided.
+fit the image orientation, i.e. it will be rotate by 90 degree if it is wider
+than high and the paper is higher than wide, or if vice-versa. Other rotation
+modes are provided.
+
+By default, the image will be resized to fit the size of the paper. Disabling
+the resize (Resize set to No) will crop the image to the paper size. This is
+useful for instance when a carefully-drawn image was designed especially for
+embossing, and thus its pixels should exactly match with braille dots. In such
+case, edge detection should very probably be disabled too.
 
 The image can be processed for edge detection. When no processing is done (edge
 detection is configured to "None"), the dark pixels are embossed if the Negate
@@ -1661,11 +1668,22 @@ lp file.jpg
 Here are complete examples for controlling the processing (all options can be
 omitted, the default values are shown here):
 
-lp -o "Edge=None Rotate=90> Negate" file.png
-lp -o "Edge=None Rotate=90> noNegate" file.png
+Emboss the image without edge detection, as black on white or white on black:
+
+lp -o "Edge=None" file.png
+lp -o "Edge=None Negate" file.png
+
+Emboss the image with edge detection, the default tuning parameters are set
+here:
+
 lp -o "Edge=Edge EdgeFactor=1" file.png
 lp -o "Edge=Canny CannyRadius=0 CannySigma=1 CannyLower=10 CannyUpper=30" file.png
 
+Emboss the image as it is, without any resize or edge detection, as black on
+white or white on black:
+
+lp -o "noResize Edge=None" file.png
+lp -o "noResize Edge=None Negate" file.png
 
 ------------------------
 Generic embosser support

=== modified file 'filter/braille/drivers/common/fr-braille.po'
--- filter/braille/drivers/common/fr-braille.po	2015-12-13 11:05:46 +0000
+++ filter/braille/drivers/common/fr-braille.po	2017-09-11 22:53:25 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -67,23 +67,20 @@ msgstr "Espacement de ligne"
 msgid "Image conversion"
 msgstr "Conversion d'image"
 
+msgid "Resize"
+msgstr "Retailler"
+
 msgid "Rotation"
 msgstr "Rotation"
 
 msgid "No rotation"
 msgstr "Pas de rotation"
 
-msgid "Rotate clockwise to portrait"
-msgstr "Rotation horaire vers portrait"
-
-msgid "Rotate clockwise to landscape"
-msgstr "Rotation horaire vers paysage"
-
-msgid "Rotate counter clockwise to portrait"
-msgstr "Rotation anti-horaire vers portrait"
+msgid "Rotate clockwise to fit paper"
+msgstr "Rotation horaire pour correspondre au papier"
 
-msgid "Rotate counter clockwise to landscape"
-msgstr "Rotation anti-horaire vers paysage"
+msgid "Rotate counter clockwise to fit paper"
+msgstr "Rotation anti-horaire pour correspondre au papier"
 
 msgid "Clockwise"
 msgstr "Horaire"

=== modified file 'filter/braille/filters/braille.defs'
--- filter/braille/filters/braille.defs	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/braille.defs	2017-09-11 22:34:17 +0000
@@ -1,5 +1,5 @@
 // 
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 // 
 // Permission is hereby granted, free of charge, to any person obtaining a copy
 // of this software and associated documentation files (the "Software"), to deal
@@ -32,11 +32,6 @@ Option "TextDots/Text dots" PickOne AnyS
   Choice "8/8 dots" ""
   *Choice "6/6 dots" ""
 
-Option "GraphicDotDistance/Graphic dot distance" PickOne AnySetup 10
-  Choice "160/1.6mm" ""
-  *Choice "200/2.0mm" ""
-  Choice "250/2.5mm" ""
-
 Option "LineSpacing/Line spacing" PickOne AnySetup 10
   Choice "250/2.5mm" ""
   Choice "375/3.75mm" ""

=== modified file 'filter/braille/filters/imagemagick.defs'
--- filter/braille/filters/imagemagick.defs	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/imagemagick.defs	2017-09-11 23:01:13 +0000
@@ -1,5 +1,5 @@
 // 
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 // 
 // Permission is hereby granted, free of charge, to any person obtaining a copy
 // of this software and associated documentation files (the "Software"), to deal
@@ -23,16 +23,24 @@
 // 
 
 Group "Image/Image conversion"
+
+Option "GraphicDotDistance/Graphic dot distance" PickOne AnySetup 10
+  Choice "160/1.6mm" ""
+  *Choice "200/2.0mm" ""
+  Choice "250/2.5mm" ""
+
 Option "Rotate/Rotation" PickOne AnySetup 10
   Choice "0/No rotation" ""
-  *Choice "90>/Rotate clockwise to portrait" ""
-  Choice "90</Rotate clockwise to landscape" ""
-  Choice "270>/Rotate counter clockwise to portrait" ""
-  Choice "270</Rotate counter clockwise to landscape" ""
+  *Choice "90>/Rotate clockwise to fit paper" ""
+  Choice "270>/Rotate counter clockwise to fit paper" ""
   Choice "90/Clockwise" ""
   Choice "270/Counter clockwise" ""
   Choice "180/Upside Down" ""
 
+Option "Resize/Resize" Boolean AnySetup 10
+  *Choice "True/Yes" ""
+  Choice "False/No" ""
+
 Option "Edge/Edge detection" PickOne AnySetup 10
   Choice "None/None"   ""
   Choice "Edge/Simple" ""

=== modified file 'filter/braille/filters/imagetobrf.in'
--- filter/braille/filters/imagetobrf.in	2016-01-19 22:48:12 +0000
+++ filter/braille/filters/imagetobrf.in	2017-09-11 23:09:55 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -56,13 +56,30 @@ esac
 
 ROTATE=$(getOption Rotate)
 case "$ROTATE" in
-  0|90|90\>|90\<|270|270\>|270\<|180) ;;
+  90\>|270\>)
+    if [ "$GRAPHICWIDTH" -gt "$GRAPHICHEIGHT" ]
+    then
+      # Landscape paper, rotate to landscape instead of to portrait
+      ROTATE=${ROTATE/\>/\<}
+    fi
+    ;;
+  0|90|270|180) ;;
   *)
     printf "ERROR: Option Rotate must be a valid rotation value, got '%s'\n" "$ROTATE" >&2
     exit 1
     ;;
 esac
 
+RESIZE=$(getOption Resize)
+case "$RESIZE" in
+  True) RESIZE="-size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" ;;
+  False) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+0+0" ;;
+  *)
+    printf "ERROR: Option Resize must either True or False, got '%s'\n" "$RESIZE" >&2
+    exit 1
+    ;;
+esac
+
 EDGE=$(getOption Edge)
 EDGEFACTOR=$(getOptionNumber EdgeFactor)
 
@@ -81,7 +98,7 @@ case $EDGE in
     ;;
 esac
 
-RENDER_CALL="convert $WORK -rotate $ROTATE -size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT} - $OUTPUT_FORMAT:-"
+RENDER_CALL="convert $WORK -rotate $ROTATE $RESIZE - $OUTPUT_FORMAT:-"
 
 # Now proceeed
 echo "INFO: Converting image" 1>&2


--dgfmcrejaxh7iehf--
