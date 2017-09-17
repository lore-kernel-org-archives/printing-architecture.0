Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 19:08:08 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917170808.i6etyuroihmayqyq@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ve6yucrpa3gv67k3"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: add mirror option
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


--ve6yucrpa3gv67k3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Re,

This adds a mirror option for graphical output.

Samuel

--ve6yucrpa3gv67k3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=mirror

---
 filter/braille/drivers/common/fr-braille.po |    3 +++
 filter/braille/filters/imagemagick.defs     |    4 ++++
 filter/braille/filters/imagetobrf.in        |   12 +++++++++++-
 3 files changed, 18 insertions(+), 1 deletion(-)

--- a/filter/braille/drivers/common/fr-braille.po
+++ b/filter/braille/drivers/common/fr-braille.po
@@ -118,6 +118,9 @@ msgstr "Conversion d'image"
 msgid "Resize"
 msgstr "Retailler"
 
+msgid "Mirror"
+msgstr "Miroir"
+
 msgid "Rotation"
 msgstr "Rotation"
 
--- a/filter/braille/filters/imagemagick.defs
+++ b/filter/braille/filters/imagemagick.defs
@@ -41,6 +41,10 @@ Option "fitplot/Resize" Boolean AnySetup
   *Choice "True/Yes" ""
   Choice "False/No" ""
 
+Option "mirror/Mirror" Boolean AnySetup 10
+  Choice "True/Yes" ""
+  *Choice "False/No" ""
+
 Option "Edge/Edge detection" PickOne AnySetup 10
   Choice "None/None"   ""
   Choice "Edge/Simple" ""
--- a/filter/braille/filters/imagetobrf.in
+++ b/filter/braille/filters/imagetobrf.in
@@ -70,6 +70,16 @@ case "$ROTATE" in
     ;;
 esac
 
+MIRROR=$(getOption mirror)
+case "$MIRROR" in
+  True|true)   MIRROR="-flop" ;;
+  False|false) MIRROR="" ;;
+  *)
+    printf "ERROR: Option mirror must either True or False, got '%s'\n" "$MIRROR" >&2
+    exit 1
+    ;;
+esac
+
 PAGE="-page ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}"
 
 RESIZE=$(getOption fitplot)
@@ -100,7 +110,7 @@ case $EDGE in
     ;;
 esac
 
-RENDER_CALL="convert $WORK -rotate $ROTATE $PAGE $RESIZE -flatten - $OUTPUT_FORMAT:-"
+RENDER_CALL="convert $WORK -rotate $ROTATE $PAGE $RESIZE $MIRROR -flatten - $OUTPUT_FORMAT:-"
 
 # Now proceeed
 echo "INFO: Converting image" 1>&2

--ve6yucrpa3gv67k3--
