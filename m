Return-Path: <SRS0=Wsa4=QF=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Sun, 10 Apr 2016 18:31:22 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20160410163122.GS2992@var.home>
References: <20160410162936.GR2992@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="GyRA7555PLgSTuth"
Content-Disposition: inline
In-Reply-To: <20160410162936.GR2992@var.home>
Subject: [Printing-architecture] [PATCH] braille: index: Avoid spurious EOF
	character
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


--GyRA7555PLgSTuth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

A double-EOF is used in some drivers to avoid some USB bug, but this
actually poses more problems than it solves, and notably the cooling fan
never stops, so stop sending double-EOF, only send one.


--GyRA7555PLgSTuth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch1

=== modified file 'filter/braille/drivers/index/imageubrltoindexv3.in'
--- filter/braille/drivers/index/imageubrltoindexv3.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/imageubrltoindexv3.in	2016-04-10 15:30:51 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -311,6 +311,5 @@ fi ) | sed \
 printf '\033\006'
 # Finish document
 printf '\032'
-printf '\032'
 
 echo "INFO: Ready" >&2

=== modified file 'filter/braille/drivers/index/imageubrltoindexv4.in'
--- filter/braille/drivers/index/imageubrltoindexv4.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/imageubrltoindexv4.in	2016-04-10 15:30:58 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -312,6 +312,5 @@ fi ) | sed \
 printf '\033\006'
 # Finish document
 printf '\032'
-printf '\032'
 
 echo "INFO: Ready" >&2

=== modified file 'filter/braille/drivers/index/textbrftoindexv3.in'
--- filter/braille/drivers/index/textbrftoindexv3.in	2015-12-12 02:11:10 +0000
+++ filter/braille/drivers/index/textbrftoindexv3.in	2016-04-10 15:30:57 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -92,6 +92,5 @@ else
 fi
 
 printf '\032'
-printf '\032'
 
 echo "INFO: Ready" >&2


--GyRA7555PLgSTuth--
