Return-Path: <samuel.thibault@ens-lyon.org>
Date: Wed, 25 Oct 2017 23:33:27 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20171025213327.bu2dreaqd3bge3cu@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ctaffr66l6b2f3it"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] index braille: advertise V5
	embossers
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


--ctaffr66l6b2f3it
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Index V5 embossers are compatible with the V4 protocol so we don't need
driver changes, we just need to advertise the support.

Samuel

--ctaffr66l6b2f3it
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'drv/indexv4.drv'
--- drv/indexv4.drv	2017-09-16 22:05:24 +0000
+++ drv/indexv4.drv	2017-10-25 21:31:18 +0000
@@ -82,7 +82,7 @@ Group "Braille"
 // Basic-D
 //
 {
-  ModelName "Basic-D V4"
+  ModelName "Basic-D V4/V5"
   PCFileName "ibasicd4.ppd"
 
   MaxSize 325mm 10m
@@ -100,7 +100,7 @@ Group "Braille"
 // Basic-S
 //
 {
-  ModelName "Basic-S V4"
+  ModelName "Basic-S V4/V5"
   PCFileName "ibasics4.ppd"
 
   MaxSize 325mm 10m
@@ -111,7 +111,7 @@ Group "Braille"
 // Everest-D
 //
 {
-  ModelName "Everest-D V4"
+  ModelName "Everest-D V4/V5"
   PCFileName "ieveres4.ppd"
 
   MaxSize 297mm 10m
@@ -127,7 +127,7 @@ Group "Braille"
 // Braille Box
 //
 {
-  ModelName "Braille Box V4"
+  ModelName "Braille Box V4/V5"
   PCFileName "ibrlbox4.ppd"
 
   MaxSize 297mm 10m


--ctaffr66l6b2f3it--
