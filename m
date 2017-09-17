Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 14:34:51 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917123451.jqbj24rymycoi4x3@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vnatlrosnjlytwto"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: Add missing uninstall lines
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


--vnatlrosnjlytwto
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This cleans some braille files on make uninstall.

Samuel

--vnatlrosnjlytwto
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'Makefile.am'
--- Makefile.am	2017-09-16 23:38:33 +0000
+++ Makefile.am	2017-09-17 12:33:39 +0000
@@ -1039,5 +1047,12 @@ if ENABLE_DRIVERLESS
 endif
 if ENABLE_BRAILLE
 	$(RM) $(DESTDIR)$(pkgfilterdir)/imagetoubrl
+	$(RM) $(DESTDIR)$(pkgfilterdir)/svgtopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/xfigtopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/wmftopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/emftopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/cgmtopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/cmxtopdf
+	$(RM) $(DESTDIR)$(pkgfilterdir)/vectortoubrl
 	$(RM) $(DESTDIR)$(pkgfilterdir)/textbrftoindexv4
 endif


--vnatlrosnjlytwto--
