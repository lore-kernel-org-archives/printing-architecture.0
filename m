Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 29 Oct 2017 22:25:54 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20171029212554.volqq54tg5a7gmhz@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5ib3bzmy4nvmyiaf"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: fix computation with old
	bash
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


--5ib3bzmy4nvmyiaf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Old bash does not like quotes in $(("123" + 0)) , the attached patch
removes these unneeded quotes.

Samuel

--5ib3bzmy4nvmyiaf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2017-09-18 01:44:55 +0000
+++ filter/braille/filters/cups-braille.sh.in	2017-10-29 21:14:42 +0000
@@ -173,9 +173,9 @@ points2mm() {
   FRAC_POINTS="$INT_POINTS$FRAC_POINTS"
   # Then we can compute conversion
   # We round up to be safe
-  FRAC_INCH=$((("$FRAC_POINTS" + 71) / 72))
-  FRAC_CM=$((("$FRAC_INCH" * 254 + 99) / 100))
-  HUNDRENDTH_MM=$((("$FRAC_CM" + 999999999999) / 1000000000000))
+  FRAC_INCH=$((($FRAC_POINTS + 71) / 72))
+  FRAC_CM=$((($FRAC_INCH * 254 + 99) / 100))
+  HUNDRENDTH_MM=$((($FRAC_CM + 999999999999) / 1000000000000))
   echo $HUNDRENDTH_MM
 }
 


--5ib3bzmy4nvmyiaf--
