Return-Path: <samuel.thibault@ens-lyon.org>
Date: Thu, 14 Sep 2017 19:40:09 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170914174009.hs6uhfcyzauzmd6m@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="kgvs4twn4lzelqf3"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] Fix graphical braille margins
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


--kgvs4twn4lzelqf3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

In Index graphical mode we need to disable the text margins, since they
come in the way there too.
Also, we should always add a 1.6mm margin for taking into account the
width of dots.

Samuel

--kgvs4twn4lzelqf3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/drivers/index/imageubrltoindexv3.in'
--- filter/braille/drivers/index/imageubrltoindexv3.in	2016-04-10 17:18:44 +0000
+++ filter/braille/drivers/index/imageubrltoindexv3.in	2017-09-14 17:15:17 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -34,6 +34,12 @@ NB=$4
 OPTIONS=$5
 FILE=$6
 
+# Disable margins, they are done by imagemagick before this
+TOPMARGIN=0
+BOTTOMMARGIN=0
+INNERMARGIN=0
+OUTERMARGIN=0
+
 . @CUPS_DATADIR@/braille/indexv3.sh
 printf "$INIT"
 

=== modified file 'filter/braille/drivers/index/imageubrltoindexv4.in'
--- filter/braille/drivers/index/imageubrltoindexv4.in	2016-04-10 17:18:44 +0000
+++ filter/braille/drivers/index/imageubrltoindexv4.in	2017-09-14 17:15:15 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -34,6 +34,12 @@ NB=$4
 OPTIONS=$5
 FILE=$6
 
+# Disable margins, they are done by imagemagick before this
+TOPMARGIN=0
+BOTTOMMARGIN=0
+INNERMARGIN=0
+OUTERMARGIN=0
+
 . @CUPS_SERVERBIN@/filter/indexv4.sh
 printf "$INIT"
 

=== modified file 'filter/braille/drivers/index/indexv3.sh.in'
--- filter/braille/drivers/index/indexv3.sh.in	2017-02-24 15:28:15 +0000
+++ filter/braille/drivers/index/indexv3.sh.in	2017-09-14 17:14:48 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -32,7 +32,7 @@ then
   # Firmware 10.30 and above support temporary parameters
   INIT=$'\033'D
 
-  # Disable margins
+  # Configure margins
   INIT+=TM$TOPMARGIN,BM$BOTTOMMARGIN,IM$INNERMARGIN,OM$OUTERMARGIN
 
   # Trying to disable banner page seems to pose problems

=== modified file 'filter/braille/drivers/index/indexv4.sh.in'
--- filter/braille/drivers/index/indexv4.sh.in	2017-02-24 15:28:15 +0000
+++ filter/braille/drivers/index/indexv4.sh.in	2017-09-14 17:14:53 +0000
@@ -1,5 +1,5 @@
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -29,7 +29,7 @@ then
   # Firmware 10.30 and above support temporary parameters
   INIT=$'\033'D
 
-  # Disable margins
+  # Configure margins
   INIT+=TM$TOPMARGIN,BI$INNERMARGIN
 
   # Common options

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2017-03-03 22:08:47 +0000
+++ filter/braille/filters/cups-braille.sh.in	2017-09-14 17:39:12 +0000
@@ -205,9 +205,10 @@ TEXTHEIGHT=$(( ($TEXTAREAHEIGHT + $LINES
 #
 
 # Compute number of printable cells according to page size
+# Take into account that dots have a width.
 GRAPHICDOTDISTANCE=$(getOptionNumber GraphicDotDistance)
-GRAPHICWIDTH=$(( $PRINTABLEWIDTH / $GRAPHICDOTDISTANCE ))
-GRAPHICHEIGHT=$(( $PRINTABLEHEIGHT / $GRAPHICDOTDISTANCE ))
+GRAPHICWIDTH=$(( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ))
+GRAPHICHEIGHT=$(( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ))
 
 #
 # Text translation


--kgvs4twn4lzelqf3--
