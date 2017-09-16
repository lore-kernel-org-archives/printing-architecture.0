Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 01:30:23 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170916233023.curoxk3urf4evv64@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="smw2jxoroltq5ubh"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: add MusicXML embossing
	support
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


--smw2jxoroltq5ubh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds support for embossing MusicXML files, through the FreeDots
transcriptor.

Samuel

--smw2jxoroltq5ubh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'Makefile.am'
--- Makefile.am	2017-09-11 14:55:56 +0000
+++ Makefile.am	2017-09-16 23:05:31 +0000
@@ -536,7 +536,8 @@ nodist_pkgfilter_SCRIPTS = \
 	filter/braille/filters/imagetobrf \
 	filter/braille/filters/vectortopdf \
 	filter/braille/filters/vectortobrf \
-	filter/braille/filters/texttobrf
+	filter/braille/filters/texttobrf \
+	filter/braille/filters/musicxmltobrf
 endif
 pkgfilter_PROGRAMS += \
 	commandtoescpx \

=== modified file 'configure.ac'
--- configure.ac	2017-09-15 23:13:34 +0000
+++ configure.ac	2017-09-16 23:05:34 +0000
@@ -852,6 +852,7 @@ AC_CONFIG_FILES([
 	filter/braille/filters/texttobrf
 	filter/braille/filters/vectortopdf
 	filter/braille/filters/vectortobrf
+	filter/braille/filters/musicxmltobrf
 	filter/braille/filters/liblouis1.defs.gen
 	mime/cupsfilters.convs
 ])

=== added file 'filter/braille/filters/musicxmltobrf.in'
--- filter/braille/filters/musicxmltobrf.in	1970-01-01 00:00:00 +0000
+++ filter/braille/filters/musicxmltobrf.in	2017-09-16 23:09:56 +0000
@@ -0,0 +1,56 @@
+#!/bin/bash
+
+#
+# Copyright (c) 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
+# 
+# Permission is hereby granted, free of charge, to any person obtaining a copy
+# of this software and associated documentation files (the "Software"), to deal
+# in the Software without restriction, including without limitation the rights
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+# copies of the Software, and to permit persons to whom the Software is
+# furnished to do so, subject to the following conditions:
+# 
+# 
+# The above copyright notice and this permission notice shall be included in
+# all copies or substantial portions of the Software.
+# 
+# 
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+# THE SOFTWARE.
+# 
+
+# Make sure we have enough options
+if [ $# != 5 -a $# != 6 ]; then
+  echo "ERROR: $0 jobid user name nb options [filename]" >&2
+  exit 1
+fi
+
+NB=$4
+OPTIONS=$5
+FILE=$6
+
+. @CUPS_DATADIR@/braille/cups-braille.sh
+
+checkTool FreeDots FreeDots "translating musicxml files"
+checkTool lou_translate liblouis "translating musicxml files"
+
+CONVERT="FreeDots -nw -w $TEXTWIDTH /dev/stdin"
+TRANSLATE="lou_translate $LIBLOUIS_TABLES,braille-patterns.cti"
+
+cd $TMPDIR
+echo "INFO: Translating MusicXML" >&2
+
+printf "DEBUG: Calling $CONVERT | $TRANSLATE on '%s'\n" "$FILE" >&2
+if [ -z "$FILE" ]
+then
+  $CONVERT | $TRANSLATE
+else
+  < "$FILE" $CONVERT | $TRANSLATE
+fi
+
+echo "INFO: Ready" >&2

=== modified file 'mime/braille.convs'
--- mime/braille.convs	2017-09-16 21:55:36 +0000
+++ mime/braille.convs	2017-09-16 23:13:12 +0000
@@ -30,6 +30,8 @@ application/xhtml	text/vnd.cups-brf	10	t
 application/xml		text/vnd.cups-brf	10	texttobrf
 application/sgml	text/vnd.cups-brf	10	texttobrf
 
+application/vnd.recordare.musicxml+xml text/vnd.cups-brf	30	musicxmltobrf
+
 application/vnd.oasis.opendocument.chart			text/vnd.cups-brf	30	texttobrf
 application/vnd.oasis.opendocument.formula			text/vnd.cups-brf	30	texttobrf
 application/vnd.oasis.opendocument.graphics			text/vnd.cups-brf	30	texttobrf

=== modified file 'mime/braille.types'
--- mime/braille.types	2017-09-16 21:55:36 +0000
+++ mime/braille.types	2017-09-16 22:46:03 +0000
@@ -30,6 +30,8 @@ image/vnd.cups-pdf
 
 application/sgml	sgml
 
+application/vnd.recordare.musicxml+xml xml contains(0,1000,"<score-partwise")
+
 application/vnd.oasis.opendocument.chart					odc
 application/vnd.oasis.opendocument.database					odb
 application/vnd.oasis.opendocument.formula					odf


--smw2jxoroltq5ubh--
