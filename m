Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 15:32:53 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917133253.y66nd5btiehouzz2@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jbou65i2ctg6mh45"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Add UBRL generic ppd
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


--jbou65i2ctg6mh45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds a ppd which generates UBRL output, i.e. braille expressed in
unicode. This is not useful for actual embossers, but very convenient to
check output to be embossed without wasting paper.

Samuel

--jbou65i2ctg6mh45
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=cups-ubrl

=== modified file 'Makefile.am'
---
 Makefile.am          |    1 
 README               |   14 ++++++
 drv/generic-ubrl.drv |  112 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 127 insertions(+)

--- a/Makefile.am
+++ b/Makefile.am
@@ -278,6 +278,7 @@ pkgdriver_DATA = \
 if ENABLE_BRAILLE
 pkgdriver_DATA += \
 	drv/generic-brf.drv \
+	drv/generic-ubrl.drv \
 	drv/indexv3.drv \
 	drv/indexv4.drv
 endif
--- /dev/null
+++ b/drv/generic-ubrl.drv
@@ -0,0 +1,112 @@
+//
+// Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
+//
+// Permission is hereby granted, free of charge, to any person obtaining a copy
+// of this software and associated documentation files (the "Software"), to deal
+// in the Software without restriction, including without limitation the rights
+// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+// copies of the Software, and to permit persons to whom the Software is
+// furnished to do so, subject to the following conditions:
+//
+//
+// The above copyright notice and this permission notice shall be included in
+// all copies or substantial portions of the Software.
+//
+//
+// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
+// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+// THE SOFTWARE.
+//
+
+#include <media.defs>
+#include <media-braille.defs>
+#include <liblouis.defs>
+#include <imagemagick.defs>
+#include <braille.defs>
+
+#po fr "fr-braille.po"
+
+Manufacturer "Generic"
+Version 1.0
+
+Throughput 1
+
+Filter text/vnd.cups-ubrl 0 -
+Filter image/vnd.cups-ubrl 0 -
+
+MediaSize Legal
+MediaSize Letter
+MediaSize A3
+MediaSize A4
+*MediaSize A4TF
+MediaSize A5
+MediaSize 110x115
+MediaSize 110x120
+MediaSize 110x170
+MediaSize 115x110
+MediaSize 120x120
+
+ColorDevice no
+HWMargins 1cm 1cm 1cm 1cm
+VariablePaperSize true
+MinSize 1in 1in
+MaxSize 9999in 9999in
+
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
+ModelName "UBRL generator"
+PCFileName "gen-ubrl.ppd"
--- a/README
+++ b/README
@@ -1771,6 +1771,20 @@ Printing to the resulting printer will g
 subdirectory of the home directory.
 
 
+----------------
+UBRL file output
+----------------
+
+One can generate Unicode braille files, not useful for embossing, but which can
+be easily looked at by sighted people to check for the output.
+
+In the cups interface, create a printer with the CUPS-BRF local printer,
+the Generic maker, and choose the Generic UBRL generator model.
+
+Printing to the resulting printer will generate a .brf file in a BRF
+subdirectory of the home directory.
+
+
 ----------------------------
 Remark about the source code
 ----------------------------

--jbou65i2ctg6mh45--
