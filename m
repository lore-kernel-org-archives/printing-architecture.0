Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sat, 9 Sep 2017 21:00:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170909190058.vz4vtinyblyf4b3v@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wvn5p5b5rr2ewzb2"
Content-Disposition: inline
Subject: [Printing-architecture] Fix installation of liblouis1.defs
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


--wvn5p5b5rr2ewzb2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

There was a confusion in installation of liblouis1.defs, here is a fix:
we don't need to install the .defs.gen.in file, just to distribute it in
the tarball, but we need to install the generated liblouis1.defs along
the others (2,3,4).

Samuel

--wvn5p5b5rr2ewzb2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=liblouis1

---
 Makefile.am |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

--- a/Makefile.am
+++ b/Makefile.am
@@ -308,11 +308,12 @@ pkgppdc_DATA += \
 	filter/braille/drivers/index/index.defs \
 	filter/braille/filters/braille.defs \
 	filter/braille/filters/imagemagick.defs \
-	filter/braille/filters/liblouis1.defs.gen.in \
 	filter/braille/filters/liblouis.defs \
 	filter/braille/drivers/common/fr-braille.po
 nodist_pkgppdc_DATA = \
-	$(GENERATED_LIBLOUIS)
+	$(GENERATED_DEFS)
+
+EXTRA_DIST += filter/braille/filters/liblouis1.defs.gen.in
 endif
 
 EXTRA_DIST += $(pkgppdc_DATA)

--wvn5p5b5rr2ewzb2--
