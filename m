Return-Path: <samuel.thibault@ens-lyon.org>
Date: Thu, 2 Nov 2017 11:09:44 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20171102100944.y7z77pwuzddegw6r@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="exbchp45pt6dlvm5"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Fix heading spaces
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


--exbchp45pt6dlvm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Spaces at the head of lines were not getting embossed, because bash
would eat them in the read command. IFS allows to avoid the issue.

Samuel

--exbchp45pt6dlvm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/drivers/index/textbrftoindexv3.in'
--- filter/braille/drivers/index/textbrftoindexv3.in	2016-04-10 17:18:44 +0000
+++ filter/braille/drivers/index/textbrftoindexv3.in	2017-11-02 09:38:38 +0000
@@ -1,7 +1,7 @@
 #!/bin/bash
 
 #
-# Copyright (c) 2015-2016 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
 # 
 # Permission is hereby granted, free of charge, to any person obtaining a copy
 # of this software and associated documentation files (the "Software"), to deal
@@ -57,7 +57,7 @@ then
   else
     cat "$FILE"
   fi | (
-    while read LINE
+    while IFS=$'\n' read LINE
     do
       # Strip CRs
       LINE=${LINE//$'\015'}


--exbchp45pt6dlvm5--
