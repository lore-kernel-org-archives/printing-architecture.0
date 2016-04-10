Return-Path: <SRS0=Wsa4=QF=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Sun, 10 Apr 2016 18:32:22 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20160410163222.GT2992@var.home>
References: <20160410162936.GR2992@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="19uQFt6ulqmgNgg1"
Content-Disposition: inline
In-Reply-To: <20160410162936.GR2992@var.home>
Subject: [Printing-architecture] [PATCH] braille: drop spurious output from
	tool checking
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


--19uQFt6ulqmgNgg1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Checking for tools with "type" is verbose, we need to drop the output.

--19uQFt6ulqmgNgg1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch2

=== modified file 'filter/braille/filters/cups-braille.sh.in'
--- filter/braille/filters/cups-braille.sh.in	2016-01-19 22:48:12 +0000
+++ filter/braille/filters/cups-braille.sh.in	2016-03-31 23:03:27 +0000
@@ -236,7 +236,7 @@ checkTool() {
   TOOL=$1
   PACKAGE=$2
   USE=$3
-  if ! type $TOOL
+  if ! type $TOOL > /dev/null
   then
     printf "ERROR: The $PACKAGE package is required for $USE\n" >&2
     exit 1

=== modified file 'filter/braille/filters/texttobrf.in'
--- filter/braille/filters/texttobrf.in	2016-01-21 01:10:01 +0000
+++ filter/braille/filters/texttobrf.in	2016-04-10 16:06:59 +0000
@@ -96,7 +96,7 @@ setupTextRendering() {
 #  Selected braille table
 if [ -n "$LIBLOUIS_TABLES" ]
 then
-  if type file2brl
+  if type file2brl > /dev/null
   then
     # Good, we can use liblouisutdml
     case $CONTENT_TYPE in
@@ -138,7 +138,7 @@ then
 	;;
     esac
     RENDER_CALL="$LIBLOUIS_TOOL -CliteraryTextTable=$LIBLOUIS_TABLES,braille-patterns.cti $LIBLOUIS_CONFIG"
-  elif type lou_translate
+  elif type lou_translate > /dev/null
   then
     # Only liblouis, but better than nothing
     setupTextRendering

--19uQFt6ulqmgNgg1--
