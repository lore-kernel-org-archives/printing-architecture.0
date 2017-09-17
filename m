Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 19:07:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917170717.umcyh6ss7lzvevtz@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bkb7fi32zsdsh6et"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: rename Resize option to
	fitplot
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


--bkb7fi32zsdsh6et
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Re,

This renames the internal cups name of the Resize option to the standard
well-known and well-documented fitplot option.

Samuel

--bkb7fi32zsdsh6et
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=fitplot

---
 README                                  |    6 +++---
 filter/braille/filters/imagemagick.defs |    2 +-
 filter/braille/filters/imagetobrf.in    |    4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

--- a/README
+++ b/README
@@ -1646,7 +1646,7 @@ than high and the paper is higher than w
 modes are provided.
 
 By default, the image will be resized to fit the size of the paper. Disabling
-the resize (Resize set to No) will crop the image to the paper size. This is
+the resize (fitplot set to No) will crop the image to the paper size. This is
 useful for instance when a carefully-drawn image was designed especially for
 embossing, and thus its pixels should exactly match with braille dots. In such
 case, edge detection should very probably be disabled too.
@@ -1689,8 +1689,8 @@ lp -o "Edge=Canny CannyRadius=0 CannySig
 Emboss the image as it is, without any resize or edge detection, as black on
 white or white on black:
 
-lp -o "noResize Edge=None" file.png
-lp -o "noResize Edge=None Negate" file.png
+lp -o "nofitplot Edge=None" file.png
+lp -o "nofitplot Edge=None Negate" file.png
 
 ------------------------
 Generic embosser support
--- a/filter/braille/filters/imagemagick.defs
+++ b/filter/braille/filters/imagemagick.defs
@@ -37,7 +37,7 @@ Option "Rotate/Rotation" PickOne AnySetu
   Choice "270/Counter clockwise" ""
   Choice "180/Upside Down" ""
 
-Option "Resize/Resize" Boolean AnySetup 10
+Option "fitplot/Resize" Boolean AnySetup 10
   *Choice "True/Yes" ""
   Choice "False/No" ""
 
--- a/filter/braille/filters/imagetobrf.in
+++ b/filter/braille/filters/imagetobrf.in
@@ -72,12 +72,12 @@ esac
 
 PAGE="-page ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}"
 
-RESIZE=$(getOption Resize)
+RESIZE=$(getOption fitplot)
 case "$RESIZE" in
   True|true) RESIZE="-size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" ;;
   False|false) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}" ;;
   *)
-    printf "ERROR: Option Resize must either True or False, got '%s'\n" "$RESIZE" >&2
+    printf "ERROR: Option fitplot must either True or False, got '%s'\n" "$RESIZE" >&2
     exit 1
     ;;
 esac

--bkb7fi32zsdsh6et--
