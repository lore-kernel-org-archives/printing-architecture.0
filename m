Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 19:05:58 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917170558.3r3ab653lubxhlzt@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xdzco7qm3psevsdo"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] [PATCH] braille: add margins in graphical
	mode
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


--xdzco7qm3psevsdo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This adds support for margins in graphical mode, defaulting them to 15
points (a bit more than 5mm).

Samuel

--xdzco7qm3psevsdo
Content-Type: text/plain; charset="utf-8"
Content-Disposition: attachment; filename=margins
Content-Transfer-Encoding: 8bit

---
 filter/braille/drivers/common/fr-braille.po |   12 ++++++
 filter/braille/filters/cups-braille.sh.in   |   53 +++++++++++++++++++++++-----
 filter/braille/filters/imagemagick.defs     |   41 +++++++++++++++++++++
 filter/braille/filters/imagetobrf.in        |   14 ++++---
 filter/braille/filters/vectortobrf.in       |   12 +++---
 5 files changed, 113 insertions(+), 19 deletions(-)

--- a/filter/braille/filters/imagemagick.defs
+++ b/filter/braille/filters/imagemagick.defs
@@ -79,3 +79,44 @@ Option "CannyUpper/CannyUpper" PickOne A
   *Choice "30/30" ""
   Choice "40/40" ""
   Choice "50/50" ""
+
+Option "page-top/Graphical top margin" PickOne AnySetup 10.0
+  Choice "0/0" ""
+  Choice "5/5" ""
+  Choice "10/10" ""
+  *Choice "15/15" ""
+  Choice "20/20" ""
+  Choice "25/25" ""
+  Attribute Custompage-top True ""
+  Attribute ParamCustompage-top Points "1 int 1 999"
+
+Option "page-bottom/Graphical bottom margin" PickOne AnySetup 10.0
+  Choice "0/0" ""
+  Choice "5/5" ""
+  Choice "10/10" ""
+  *Choice "15/15" ""
+  Choice "20/20" ""
+  Choice "25/25" ""
+  Attribute Custompage-bottom True ""
+  Attribute ParamCustompage-bottom Points "1 int 1 999"
+
+Option "page-left/Graphical left margin" PickOne AnySetup 10.0
+  Choice "0/0" ""
+  Choice "5/5" ""
+  Choice "10/10" ""
+  *Choice "15/15" ""
+  Choice "20/20" ""
+  Choice "25/25" ""
+  Attribute Custompage-left True ""
+  Attribute ParamCustompage-left Points "1 int 1 999"
+
+Option "page-right/Graphical right margin" PickOne AnySetup 10.0
+  Choice "0/0" ""
+  Choice "5/5" ""
+  Choice "10/10" ""
+  *Choice "15/15" ""
+  Choice "20/20" ""
+  Choice "25/25" ""
+  Attribute Custompage-right True ""
+  Attribute ParamCustompage-right Points "1 int 1 999"
+
--- a/filter/braille/drivers/common/fr-braille.po
+++ b/filter/braille/drivers/common/fr-braille.po
@@ -100,6 +100,18 @@ msgstr "Marge extérieure"
 msgid "Page number"
 msgstr "Numéro de page"
 
+msgid "Graphical top margin"
+msgstr "Marge graphique haut"
+
+msgid "Graphical bottom margin"
+msgstr "Marge graphique bas"
+
+msgid "Graphical left margin"
+msgstr "Marge graphique gauche"
+
+msgid "Graphical right margin"
+msgstr "Marge graphique droite"
+
 msgid "Image conversion"
 msgstr "Conversion d'image"
 
--- a/filter/braille/filters/cups-braille.sh.in
+++ b/filter/braille/filters/cups-braille.sh.in
@@ -75,6 +75,7 @@ getOption () {
 getOptionNumber () {
   OPTION=$1
   VALUE=$(getOption $OPTION)
+  VALUE=${VALUE#Custom.}
   case "$VALUE" in
     [0-9]*) ;;
     *) printf "ERROR: Option $OPTION must be a number, got '%s'\n" "$VALUE" >&2
@@ -144,8 +145,9 @@ case "$PAGESIZE" in
     ;;
 esac
 
+# Margins as announced by embosser
 HWMARGINS=$(getAttribute HWMargins)
-printf "DEBUG: HW margins are $HWMARGINS\n" >&2
+echo "DEBUG: HW margins are $HWMARGINS" >&2
 HWMARGIN_LEFT="${HWMARGINS%% *}"
 HWMARGINS="${HWMARGINS#* }"
 HWMARGIN_BOTTOM="${HWMARGINS%% *}"
@@ -182,11 +184,25 @@ MARGIN_RIGHT=$(points2mm "$HWMARGIN_RIGH
 MARGIN_TOP=$(points2mm "$HWMARGIN_TOP")
 MARGIN_BOTTOM=$(points2mm "$HWMARGIN_BOTTOM")
 
-printf "DEBUG: margins are left $MARGIN_LEFT right $MARGIN_RIGHT top $MARGIN_TOP bottom $MARGIN_BOTTOM\n" >&2
-
-PRINTABLEWIDTH=$((PAGEWIDTH - $MARGIN_LEFT - $MARGIN_RIGHT))
-PRINTABLEHEIGHT=$((PAGEHEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM))
+# Margins requested by user
+PAGE_LEFT=$(points2mm $(getOptionNumber page-left))
+PAGE_RIGHT=$(points2mm $(getOptionNumber page-right))
+PAGE_TOP=$(points2mm $(getOptionNumber page-top))
+PAGE_BOTTOM=$(points2mm $(getOptionNumber page-bottom))
+
+[ -n "$PAGE_LEFT"   -a "$MARGIN_LEFT"   -le "$PAGE_LEFT"   ] || PAGE_LEFT=$MARGIN_LEFT
+[ -n "$PAGE_RIGHT"  -a "$MARGIN_RIGHT"  -le "$PAGE_RIGHT"  ] || PAGE_RIGHT=$MARGIN_RIGHT
+[ -n "$PAGE_TOP"    -a "$MARGIN_TOP"    -le "$PAGE_TOP"    ] || PAGE_TOP=$MARGIN_TOP
+[ -n "$PAGE_BOTTOM" -a "$MARGIN_BOTTOM" -le "$PAGE_BOTTOM" ] || PAGE_BOTTOM=$MARGIN_BOTTOM
+
+echo "DEBUG: hard margins are left $MARGIN_LEFT right $MARGIN_RIGHT top $MARGIN_TOP bottom $MARGIN_BOTTOM" >&2
+echo "DEBUG: graphical margins are left $PAGE_LEFT right $PAGE_RIGHT top $PAGE_TOP bottom $PAGE_BOTTOM" >&2
+
+# This is the hardware-printable area
+PRINTABLEWIDTH=$(($PAGEWIDTH - $MARGIN_LEFT - $MARGIN_RIGHT))
+PRINTABLEHEIGHT=$(($PAGEHEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM))
 
+echo "DEBUG: printable area is ${PRINTABLEWIDTH}x${PRINTABLEHEIGHT}" >&2
 
 #
 # Text spacing
@@ -244,10 +260,31 @@ TEXTHEIGHT=$(( ($TEXTAREAHEIGHT + $LINES
 #
 
 # Compute number of printable cells according to page size
-# Take into account that dots have a width.
 GRAPHICDOTDISTANCE=$(getOptionNumber GraphicDotDistance)
-GRAPHICWIDTH=$(( ( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ) / 2 * 2 ))
-GRAPHICHEIGHT=$(( ( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ) / 4 * 4 ))
+
+# This is the total area we will send to the embosser
+TOTALGRAPHICWIDTH=$(( ( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ) / 2 * 2 ))
+TOTALGRAPHICHEIGHT=$(( ( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ) / 4 * 4 ))
+
+echo "DEBUG: total graphical: ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}" >&2
+
+# This is how many dots we have to introduce to respect at least the software left+top margin
+GRAPHICHOFFSET=$(( ($PAGE_LEFT - $MARGIN_LEFT + $GRAPHICDOTDISTANCE - 1) / $GRAPHICDOTDISTANCE ))
+GRAPHICVOFFSET=$(( ($PAGE_TOP - $MARGIN_TOP + $GRAPHICDOTDISTANCE - 1) / $GRAPHICDOTDISTANCE ))
+
+echo "DEBUG: graphical offset: ${GRAPHICHOFFSET}x${GRAPHICVOFFSET}" >&2
+
+# This is the resulting actual margin
+GRAPHICLEFTMARGIN=$(( $MARGIN_LEFT + $GRAPHICHOFFSET * $GRAPHICDOTDISTANCE ))
+GRAPHICTOPMARGIN=$(( $MARGIN_TOP + $GRAPHICVOFFSET * $GRAPHICDOTDISTANCE ))
+
+echo "DEBUG: rounded graphical top-left corner margin: ${GRAPHICLEFTMARGIN}x${GRAPHICTOPMARGIN}" >&2
+
+# Then compute how many dots we can afford until reaching the software right+bottom margin
+GRAPHICWIDTH=$(( ( ( $PAGEWIDTH - $GRAPHICLEFTMARGIN - $PAGE_RIGHT ) - 160) / $GRAPHICDOTDISTANCE ))
+GRAPHICHEIGHT=$(( ( ( $PAGEHEIGHT - $GRAPHICTOPMARGIN - $PAGE_BOTTOM ) - 160) / $GRAPHICDOTDISTANCE ))
+
+echo "DEBUG: resulting graphical area: ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" >&2
 
 #
 # Text translation
--- a/filter/braille/filters/imagetobrf.in
+++ b/filter/braille/filters/imagetobrf.in
@@ -70,10 +70,12 @@ case "$ROTATE" in
     ;;
 esac
 
+PAGE="-page ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}"
+
 RESIZE=$(getOption Resize)
 case "$RESIZE" in
   True|true) RESIZE="-size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" ;;
-  False|false) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+0+0" ;;
+  False|false) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}" ;;
   *)
     printf "ERROR: Option Resize must either True or False, got '%s'\n" "$RESIZE" >&2
     exit 1
@@ -98,16 +100,16 @@ case $EDGE in
     ;;
 esac
 
-RENDER_CALL="convert $WORK -rotate $ROTATE $RESIZE - $OUTPUT_FORMAT:-"
+RENDER_CALL="convert $WORK -rotate $ROTATE $PAGE $RESIZE -flatten - $OUTPUT_FORMAT:-"
 
 # Now proceeed
 echo "INFO: Converting image" 1>&2
 if [ -z "$FILE" ]
 then
-  printf "DEBUG: Calling $RENDER_CALL from stdin\n" 1>&2
-  $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d' 
+  printf "DEBUG: Calling %s from stdin\n" "$RENDER_CALL" 1>&2
+  $RENDER_CALL | sed -e '/^\(Width\|X\|Y\): [0-9]*$/,/^$/d'
 else
-  printf "DEBUG: Calling $RENDER_CALL on '%s'\n" "$FILE" 1>&2
-  $RENDER_CALL < "$FILE" | sed -e '/^Width: [0-9]*$/,/^$/d' 
+  printf "DEBUG: Calling %s on '%s'\n" "$RENDER_CALL" "$FILE" 1>&2
+  $RENDER_CALL < "$FILE" | sed -e '/^\(Width\|X\|Y\): [0-9]*$/,/^$/d'
 fi
 echo "INFO: Ready" >&2
--- a/filter/braille/filters/vectortobrf.in
+++ b/filter/braille/filters/vectortobrf.in
@@ -54,17 +54,19 @@ case "$NEGATE" in
     ;;
 esac
 
+PAGE="-page ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}+${GRAPHICHOFFSET}+${GRAPHICVOFFSET}"
+
 GS_CALL="gs -q -dDEVICEWIDTHPOINTS=${GRAPHICWIDTH} -dDEVICEHEIGHTPOINTS=${GRAPHICHEIGHT} -noantialias -dTextAlphaBits=1 -dGraphicsAlphaBits=1 -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pngmono -dFitPage -r72 -sOutputFile=-"
-RENDER_CALL="convert $NEGATE - $OUTPUT_FORMAT:-"
+RENDER_CALL="convert $NEGATE $PAGE -flatten - $OUTPUT_FORMAT:-"
 
 # Now proceeed
 echo "INFO: Converting image" 1>&2
 if [ -z "$FILE" ]
 then
-  printf "DEBUG: Calling $GS_CALL and $RENDER_CALL from stdin\n" 1>&2
-  $GS_CALL - | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d'
+  printf "DEBUG: Calling %s and %s from stdin\n" "$GS_CALL" "$RENDER_CALL" 1>&2
+  $GS_CALL - | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^\(Width\|X\|Y\): [0-9]*$/,/^$/d'
 else
-  printf "DEBUG: Calling $GS_CALL and $RENDER_CALL on '%s'\n" "$FILE" 1>&2
-  $GS_CALL "$FILE" | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^Width: [0-9]*$/,/^$/d' 
+  printf "DEBUG: Calling %s and %s on '%s'\n" "$GS_CALL" "$RENDER_CALL" "$FILE" 1>&2
+  $GS_CALL "$FILE" | sed -e '/-noantialias/d' | $RENDER_CALL | sed -e '/^\(Width\|X\|Y\): [0-9]*$/,/^$/d'
 fi
 echo "INFO: Ready" >&2

--xdzco7qm3psevsdo--
