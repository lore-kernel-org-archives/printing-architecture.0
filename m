Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 17 Sep 2017 14:37:50 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170917123750.uynrgpkxl6daejng@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ezvuc5zf3jylq353"
Content-Disposition: inline
Subject: [Printing-architecture] [PATCH] braille: be more flexible about
	boolean options
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


--ezvuc5zf3jylq353
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Some tools seem to emit true/false instead of True/False, so let's cope
with it.

Samuel

--ezvuc5zf3jylq353
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'filter/braille/filters/imagetobrf.in'
--- filter/braille/filters/imagetobrf.in	2017-09-11 23:40:36 +0000
+++ filter/braille/filters/imagetobrf.in	2017-09-17 10:15:05 +0000
@@ -46,8 +46,8 @@ checkTool convert imagemagick "embossing
 
 NEGATE=$(getOption Negate)
 case "$NEGATE" in
-  True)  NEGATE=-negate ;;
-  False) NEGATE= ;;
+  True|true)  NEGATE=-negate ;;
+  False|false) NEGATE= ;;
   *)
     printf "ERROR: Option Negate must either True or False, got '%s'\n" "$NEGATE" >&2
     exit 1
@@ -72,8 +72,8 @@ esac
 
 RESIZE=$(getOption Resize)
 case "$RESIZE" in
-  True) RESIZE="-size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" ;;
-  False) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+0+0" ;;
+  True|true) RESIZE="-size ${GRAPHICWIDTH}x${GRAPHICHEIGHT} -resize ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" ;;
+  False|false) RESIZE="-crop ${GRAPHICWIDTH}x${GRAPHICHEIGHT}+0+0" ;;
   *)
     printf "ERROR: Option Resize must either True or False, got '%s'\n" "$RESIZE" >&2
     exit 1

=== modified file 'filter/braille/filters/vectortobrf.in'
--- filter/braille/filters/vectortobrf.in	2017-09-11 20:04:22 +0000
+++ filter/braille/filters/vectortobrf.in	2017-09-17 10:15:12 +0000
@@ -46,8 +46,8 @@ checkTool convert imagemagick "embossing
 
 NEGATE=$(getOption Negate)
 case "$NEGATE" in
-  True)  NEGATE=-negate ;;
-  False) NEGATE= ;;
+  True|true)  NEGATE=-negate ;;
+  False|false) NEGATE= ;;
   *)
     printf "ERROR: Option Negate must either True or False, got '%s'\n" "$NEGATE" >&2
     exit 1


--ezvuc5zf3jylq353--
