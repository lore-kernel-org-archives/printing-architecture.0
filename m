Return-Path: <samuel.thibault@ens-lyon.org>
Date: Sun, 26 Feb 2017 19:57:12 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20170226185712.jzs2ohpyvugl3dve@var.youpi.perso.aquilenet.fr>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="aqvwrzgisvgqd7ef"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] Complete table list for braille embosser
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


--aqvwrzgisvgqd7ef
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Here is an update for the table list.
I have contacted the liblouis project for them to include the
descriptions in liblouis itself. For now we can code these here.

Samuel

--aqvwrzgisvgqd7ef
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: attachment; filename=patch
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D modified file 'Makefile.am'
--- Makefile.am	2016-11-28 23:02:22 +0000
+++ Makefile.am	2017-02-26 18:55:14 +0000
@@ -289,7 +289,12 @@ GENERATED_LIBLOUIS =3D \
 	filter/braille/filters/liblouis2.defs \
 	filter/braille/filters/liblouis3.defs \
 	filter/braille/filters/liblouis4.defs
-GENERATED_DEFS=3D$(GENERATED_LIBLOUIS)
+GENERATED_DEFS=3D	\
+	filter/braille/filters/liblouis1.defs \
+	$(GENERATED_LIBLOUIS)
+
+filter/braille/filters/liblouis1.defs: filter/braille/filters/liblouis1.de=
fs.gen
+	$< > $@
=20
 $(GENERATED_LIBLOUIS): filter/braille/filters/liblouis%.defs: filter/brail=
le/filters/liblouis1.defs
 	sed -e "s/Braille transcription/Additional Braille transcription ($*)/" -=
e s/LibLouis/LibLouis$*/ < $< > $@
@@ -299,7 +304,7 @@ pkgppdc_DATA +=3D \
 	filter/braille/drivers/index/index.defs \
 	filter/braille/filters/braille.defs \
 	filter/braille/filters/imagemagick.defs \
-	filter/braille/filters/liblouis1.defs \
+	filter/braille/filters/liblouis1.defs.gen.in \
 	filter/braille/filters/liblouis.defs \
 	filter/braille/drivers/common/fr-braille.po
 nodist_pkgppdc_DATA =3D \

=3D=3D=3D modified file 'configure.ac'
--- configure.ac	2017-02-17 18:38:31 +0000
+++ configure.ac	2017-02-26 18:55:18 +0000
@@ -817,8 +817,12 @@ AC_CONFIG_FILES([
 	filter/braille/filters/cups-braille.sh
 	filter/braille/filters/imagetobrf
 	filter/braille/filters/texttobrf
+	filter/braille/filters/liblouis1.defs.gen
 	mime/cupsfilters.convs
 ])
+AC_CONFIG_COMMANDS([executable-scripts], [
+	chmod +x filter/braille/filters/liblouis1.defs.gen
+])
 AC_OUTPUT
=20
 # =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

=3D=3D=3D removed file 'filter/braille/filters/liblouis1.defs'
--- filter/braille/filters/liblouis1.defs	2015-12-12 02:11:10 +0000
+++ filter/braille/filters/liblouis1.defs	1970-01-01 00:00:00 +0000
@@ -1,58 +0,0 @@
-//=20
-// Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
-//=20
-// Permission is hereby granted, free of charge, to any person obtaining a=
 copy
-// of this software and associated documentation files (the "Software"), t=
o deal
-// in the Software without restriction, including without limitation the r=
ights
-// to use, copy, modify, merge, publish, distribute, sublicense, and/or se=
ll
-// copies of the Software, and to permit persons to whom the Software is
-// furnished to do so, subject to the following conditions:
-//=20
-//=20
-// The above copyright notice and this permission notice shall be included=
 in
-// all copies or substantial portions of the Software.
-//=20
-//=20
-// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS=
 OR
-// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHAL=
L THE
-// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING=
 FROM,
-// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS =
IN
-// THE SOFTWARE.
-//=20
-
-Group "Braille/Braille transcription"
-Option "LibLouis/Braille transcription" PickOne AnySetup 10
-  *Choice "None/None" ""
-  Choice "Cz-Cz-g1/Czech Grade 1" ""
-  Choice "Es-Es-g1/Spanish Grade 1" ""
-  Choice "Fr-Ca-g2/Canada French Grade 2" ""
-  Choice "Fr-Fr-g2/France French Grade 2" ""
-  Choice "Lv-Lv-g1/Latvian Grade 1" ""
-  Choice "Nl-Nl-g1/Netherlands Dutch Grade 1" ""
-  Choice "No-No-g0/Norwegian Grade 0" ""
-  Choice "No-No-g1/Norwegian Grade 1" ""
-  Choice "No-No-g2/Norwegian Grade 2" ""
-  Choice "No-No-g3/Norwegian Grade 3" ""
-  Choice "Pl-Pl-g1/Polish Grade 1" ""
-  Choice "Pt-Pt-g1/Portuguese Grade 1" ""
-  Choice "Se-Se-g1/Swedish Grade 1" ""
-  Choice "ar-ar-g1/Arabic Grade 1" ""
-  Choice "cy-cy-g1/Welsh Grade 1" ""
-  Choice "cy-cy-g2/Welsh Grade 2" ""
-  Choice "de-de-g0/German Grade 0" ""
-  Choice "de-de-g1/German Grade 1" ""
-  Choice "de-de-g2/German Grade 2" ""
-  Choice "en-GB-g2/U.K. English Grade 2" ""
-  Choice "en-gb-g1/U.K. English Grade 1" ""
-  Choice "en-us-g1/U.S. English Grade 1" ""
-  Choice "en-us-g2/U.S. English Grade 2" ""
-  Choice "fr-ca-g1/Canada French Grade 1" ""
-  Choice "fr-fr-g1/France French Grade 1" ""
-  Choice "gr-gr-g1/Greek Grade 1" ""
-  Choice "hi-in-g1/Hindi Grade 1" ""
-  Choice "hu-hu-comp8/Hungarian 8 dot computer" ""
-  Choice "hu-hu-g1/Hungarian Grade 1" ""
-  Choice "it-it-g1/Italian Grade 1" ""
-  Choice "nl-be-g1/Belgium Dutch Grade 1" ""

=3D=3D=3D added file 'filter/braille/filters/liblouis1.defs.gen.in'
--- filter/braille/filters/liblouis1.defs.gen.in	1970-01-01 00:00:00 +0000
+++ filter/braille/filters/liblouis1.defs.gen.in	2017-02-26 18:50:48 +0000
@@ -0,0 +1,260 @@
+#!/bin/bash
+
+#=20
+# Copyright (c) 2015, 2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
+#=20
+# Permission is hereby granted, free of charge, to any person obtaining a =
copy
+# of this software and associated documentation files (the "Software"), to=
 deal
+# in the Software without restriction, including without limitation the ri=
ghts
+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+# copies of the Software, and to permit persons to whom the Software is
+# furnished to do so, subject to the following conditions:
+#=20
+#=20
+# The above copyright notice and this permission notice shall be included =
in
+# all copies or substantial portions of the Software.
+#=20
+#=20
+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS =
OR
+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL=
 THE
+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING =
FROM,
+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+# THE SOFTWARE.
+#=20
+
+TABLESDIR=3D@TABLESDIR@
+
+echo 'Group "Braille/Braille transcription"'
+echo 'Option "LibLouis/Braille transcription" PickOne AnySetup 10'
+echo '  *Choice "None/None" ""'
+
+(
+  for i in $TABLESDIR/*.utb $TABLESDIR/*.ctb
+  do
+    file=3D${i##*/}
+    name=3D${file%.ctb}
+    name=3D${name%.utb}
+    DESC=3D$name
+    LANGUAGE=3D""
+    LOCATION=3D""
+    GRADE=3D""
+    case $name in=20
+      "afr-za-g1")	LANGUAGE=3DAfrikaans DESC=3D"grade 1" ;;
+      "ar-ar-g1")	LANGUAGE=3DArabic DESC=3D"grade 1" ;;
+      "ar-fa")		LANGUAGE=3DPersian DESC=3D"grade 1" ;;
+      "as-in-g1")	LANGUAGE=3DAssamese DESC=3D"grade 1" ;;
+      "aw-in-g1")	LANGUAGE=3DAwadhi DESC=3D"grade 1" ;;
+      "be-in-g1")	LANGUAGE=3DBengali DESC=3D"grade 1" ;;
+      "bg")		LANGUAGE=3DBulgarian DESC=3D"grade 1" ;;
+      "bh")		LANGUAGE=3DBihari DESC=3D"grade 1" ;;
+      "bo")		LANGUAGE=3DTibetan DESC=3D"grade 1" ;;
+      "boxes")		DESC=3D"Box drawing" ;;
+      "br-in-g1")	LANGUAGE=3DBraj DESC=3D"Box drawing" ;;
+      "ca-g1")		LANGUAGE=3DCatalan DESC=3D"grade 1" ;;
+      "chr-us-g1")	LANGUAGE=3DCherokee DESC=3D"grade 1" ;;
+      "ckb-g1")		LANGUAGE=3D"Sorani (Kurdish)" DESC=3D"grade 1" ;;
+      "cs-g1")		LANGUAGE=3DCzech DESC=3D"grade 1" ;;
+      "cy-cy-g1")	LANGUAGE=3DWelsh DESC=3D"grade 1" ;;
+      "cy-cy-g2")	LANGUAGE=3DWelsh DESC=3D"grade 2" ;;
+      "Cz-Cz-g1")	LANGUAGE=3DCzech DESC=3D"grade 1" ;;
+      "da-dk-g08")	LANGUAGE=3DDanish DESC=3D"grade 0" ;;
+      "da-dk-g16")	LANGUAGE=3DDanish DESC=3D"grade 1 6 dots" ;;
+      "da-dk-g18")	LANGUAGE=3DDanish DESC=3D"grade 1 8 dots" ;;
+      "da-dk-g26")	LANGUAGE=3DDanish DESC=3D"grade 2 6 dots" ;;
+      "da-dk-g26l")	LANGUAGE=3DDanish DESC=3D"grade 2 6 dots limited" ;;
+      "da-dk-g28")	LANGUAGE=3DDanish DESC=3D"grade 2 8 dots" ;;
+      "da-dk-g28l")	LANGUAGE=3DDanish DESC=3D"grade 2 8 dots limited" ;;
+      "da-lt")		LANGUAGE=3DDanish DESC=3D"LogText" ;;
+      "de-chess")	LANGUAGE=3DGerman DESC=3D"Chess" ;;
+      "de-ch-g0")	LANGUAGE=3DGerman LOCATION=3DSwiss DESC=3D"grade 0" ;;
+      "de-ch-g1")	LANGUAGE=3DGerman LOCATION=3DSwiss DESC=3D"grade 1" ;;
+      "de-ch-g2")	LANGUAGE=3DGerman LOCATION=3DSwiss DESC=3D"grade 2" ;;
+      "de-de-comp8")	LANGUAGE=3DGerman LOCATION=3DGermany DESC=3D"computer=
" ;;
+      "de-de-g0")	LANGUAGE=3DGerman LOCATION=3DGermany DESC=3D"grade 0" ;;
+      "de-de-g1")	LANGUAGE=3DGerman LOCATION=3DGermany DESC=3D"grade 1" ;;
+      "de-de-g2")	LANGUAGE=3DGerman LOCATION=3DGermany DESC=3D"grade 2" ;;
+      "dra")		LANGUAGE=3DDravidian DESC=3D"grade 1" ;;
+      "en_CA")		LANGUAGE=3DEnglish LOCATION=3DCanada DESC=3D"grade 1" ;;
+      "en-chess")	LANGUAGE=3DEnglish DESC=3D"Chess" ;;
+      "en-gb-comp8")	LANGUAGE=3DEnglish LOCATION=3DU.K. DESC=3D"computer" =
;;
+      "en-gb-g1")	LANGUAGE=3DEnglish LOCATION=3DU.K. DESC=3D"grade 1" ;;
+      "en-GB-g2")	LANGUAGE=3DEnglish LOCATION=3DU.K. DESC=3D"grade 2" ;;
+      "en-in-g1")	LANGUAGE=3DEnglish LOCATION=3DIndia  DESC=3D"grade 1" ;;
+      "en-ueb-g1")	LANGUAGE=3DEnglish DESC=3D"Unified grade 1" ;;
+      "en-ueb-g2")	LANGUAGE=3DEnglish DESC=3D"Unified grade 2" ;;
+      "en-us-comp6")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"computer 6=
 dots" ;;
+      "en-us-comp8")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"computer 8=
 dots" ;;
+      "en-us-compbrl")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"computer=
" ;;
+      "en-us-g1")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"grade 1" ;;
+      "en-us-g2")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"grade 2" ;;
+      "en-us-interline")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"interl=
ine" ;;
+      "en-us-mathtext")	LANGUAGE=3DEnglish LOCATION=3DU.S. DESC=3D"mathtex=
t" ;;
+      "eo-g1")		LANGUAGE=3DEsperanto DESC=3D"grade 1" ;;
+      "eo-g1-x-system")	LANGUAGE=3DEsperanto DESC=3D"grade 1 x-system" ;;
+      "Es-Es-G0")	LANGUAGE=3DSpanish DESC=3D"grade 0" ;;
+      "Es-Es-g1")	LANGUAGE=3DSpanish DESC=3D"grade 1" ;;
+      "es-g1")		LANGUAGE=3DSpanish DESC=3D"grade 1" ;;
+      "et")		LANGUAGE=3DEstonian DESC=3D"grade 1" ;;
+      "et-g0")		LANGUAGE=3DEstonian DESC=3D"grade 0" ;;
+      "ethio-g1")	LANGUAGE=3DEthiopic DESC=3D"grade 1" ;;
+      "fi")		LANGUAGE=3DFinnish DESC=3D"6 dot" ;;
+      "fi1")		LANGUAGE=3DFinnish DESC=3D"grade 1" ;;
+      "fi2")		LANGUAGE=3DFinnish DESC=3D"grade 2" ;;
+      "fi-fi-8dot")	LANGUAGE=3DFinnish DESC=3D"8dot" ;;
+      "fi-fi")		LANGUAGE=3DFinnish DESC=3D"6dot" ;;
+      "fr-2007")	LANGUAGE=3DFrench DESC=3D"2007" ;;
+      "fr-bfu-comp6")	LANGUAGE=3DFrench DESC=3D"Braille Fran=E7ais Unifi=
=E9 computer 6 dots" ;;
+      "fr-bfu-comp8")	LANGUAGE=3DFrench DESC=3D"Braille Fran=E7ais Unifi=
=E9 computer 8 dots" ;;
+      "fr-bfu-g2")	LANGUAGE=3DFrench DESC=3D"Braille Fran=E7ais Unifi=E9 g=
rade 2" ;;
+      "fr-ca-g1")	LANGUAGE=3DFrench LOCATION=3DCanada DESC=3D"grade 1" ;;
+      "Fr-Ca-g2")	LANGUAGE=3DFrench LOCATION=3DCanada DESC=3D"grade 2" ;;
+      "fr-fr-g1")	LANGUAGE=3DFrench LOCATION=3DFrance DESC=3D"grade 1" ;;
+      "Fr-Fr-g2")	LANGUAGE=3DFrench LOCATION=3DFrance DESC=3D"grade 2" ;;
+      "ga-g1")		LANGUAGE=3DGaeilge DESC=3D"grade 1" ;;
+      "ga-g2")		LANGUAGE=3DGaeilge DESC=3D"grade 2" ;;
+      "gd")		LANGUAGE=3DGaelic DESC=3D"grade 1" ;;
+      "gon")		LANGUAGE=3DGondi DESC=3D"grade 1" ;;
+      "gr-bb")		LANGUAGE=3DGreek DESC=3D"bb" ;;
+      "gr-gr-g1")	LANGUAGE=3DGreek DESC=3D"grade 1" ;;
+      "gu-in-g1")	LANGUAGE=3DGujarati DESC=3D"grade 1" ;;
+      "haw-us-g1")	LANGUAGE=3DHawaiian DESC=3D"grade 1" ;;
+      "he")		LANGUAGE=3DHebrew DESC=3D"grade 1" ;;
+      "hi-in-g1")	LANGUAGE=3DHindi DESC=3D"grade 1" ;;
+      "hr")		LANGUAGE=3DCroatian DESC=3D"grade 1" ;;
+      "hu-hu-comp8")	LANGUAGE=3DHungarian DESC=3D"computer 8 dots" ;;
+      "hu-hu-g1")	LANGUAGE=3DHungarian DESC=3D"grade 1" ;;
+      "hy")		LANGUAGE=3DArmenian DESC=3D"grade 1" ;;
+      "is")		LANGUAGE=3DIcelandic DESC=3D"grade 1" ;;
+      "it-it-comp6")	LANGUAGE=3DItalian DESC=3D"computer 6 dots" ;;
+      "it-it-comp8")	LANGUAGE=3DItalian DESC=3D"computer 8 dots" ;;
+      "iu-ca-g1")	LANGUAGE=3DInuktitut DESC=3D"grade 1" ;;
+      "ka-in-g1")	LANGUAGE=3DKannada DESC=3D"grade 1" ;;
+      "kh-in-g1")	LANGUAGE=3DKhasi DESC=3D"grade 1" ;;
+      "ko-2006-g1")	LANGUAGE=3DKorean DESC=3D"grade 1 2006" ;;
+      "ko-2006-g2")	LANGUAGE=3DKorean DESC=3D"grade 2 2006" ;;
+      "ko-g1")		LANGUAGE=3DKorean DESC=3D"grade 1" ;;
+      "ko-g2")		LANGUAGE=3DKorean DESC=3D"grade 2" ;;
+      "kok")		LANGUAGE=3DKonkani DESC=3D"grade 1" ;;
+      "kru")		LANGUAGE=3DKurukh DESC=3D"grade 1" ;;
+      "ks-in-g1")	LANGUAGE=3DKashmiri DESC=3D"grade 1" ;;
+      "lt")		LANGUAGE=3DLithuanian DESC=3D"grade 1" ;;
+      "Lv-Lv-g1")	LANGUAGE=3DLatvian DESC=3D"grade 1" ;;
+      "mao-nz-g1")	LANGUAGE=3DMaori DESC=3D"grade 1" ;;
+      "marburg")	DESC=3D"Marburg maths" ;;
+      "marburg_edit")	DESC=3D"Marburg maths post-translation editing" ;;
+      "ml-in-g1")	LANGUAGE=3DMalayalam DESC=3D"grade 1" ;;
+      "mn-in-g1")	LANGUAGE=3DManipuri DESC=3D"grade 1" ;;
+      "mn-MN")		LANGUAGE=3DMongolian DESC=3D"grade 1" ;;
+      "mr-in-g1")	LANGUAGE=3DMarathi DESC=3D"grade 1" ;;
+      "mt")		LANGUAGE=3DMaltese DESC=3D"grade 1" ;;
+      "mun")		LANGUAGE=3DMunda DESC=3D"grade 1" ;;
+      "mwr")		LANGUAGE=3DMarwari DESC=3D"grade 1" ;;
+      "ne")		LANGUAGE=3DNepali DESC=3D"grade 1" ;;
+      "nemeth")		DESC=3D"Nemeth Maths" ;;
+      "nemeth_edit")	DESC=3D"Nemeth Maths post-translation editing" ;;
+      "nl-BE-g0")	LANGUAGE=3DDutch LOCATION=3DBelgium DESC=3D"grade 0" ;;
+      "nl-g0")		LANGUAGE=3DDutch DESC=3D"grade 0" ;;
+      "nl-NL-g0")	LANGUAGE=3DDutch LOCATION=3D"Netherlands" DESC=3D"grade =
0" ;;
+      "Nl-Nl-g1")	LANGUAGE=3DDutch LOCATION=3DNetherlands DESC=3D"grade 1"=
 ;;
+      "no-no-8dot-fallback-6dot-g0")	LANGUAGE=3DNorwegian DESC=3D"grade 0 =
8 dots fallback 6 dots" ;;
+      "no-no-8dot")	LANGUAGE=3DNorwegian DESC=3D"grade 0 8 dots" ;;
+      "no-no-comp8")	LANGUAGE=3DNorwegian DESC=3D"grade 0 computer" ;;
+      "no-no-g0")	LANGUAGE=3DNorwegian DESC=3D"grade 0" ;;
+      "no-no-g1")	LANGUAGE=3DNorwegian DESC=3D"grade 1" ;;
+      "no-no-g2")	LANGUAGE=3DNorwegian DESC=3D"grade 2" ;;
+      "no-no-g3")	LANGUAGE=3DNorwegian DESC=3D"grade 3" ;;
+      "no-no-generic")	LANGUAGE=3DNorwegian DESC=3D"generic" ;;
+      "np-in-g1")	LANGUAGE=3DNepali DESC=3D"grade 1" ;;
+      "or-in-g1")	LANGUAGE=3DOriya DESC=3D"grade 1" ;;
+      "pi")		LANGUAGE=3DPali DESC=3D"grade 1" ;;
+      "pl-pl-comp8")	LANGUAGE=3DPolish DESC=3D"computer" ;;
+      "Pl-Pl-g1")	LANGUAGE=3DPolish DESC=3D"grade 1" ;;
+      "pt-pt-comp8")	LANGUAGE=3DPortuguese DESC=3D"computer" ;;
+      "pt-pt-g1")	LANGUAGE=3DPortuguese DESC=3D"grade 1" ;;
+      "pt-pt-g2")	LANGUAGE=3DPortuguese DESC=3D"grade 2" ;;
+      "pu-in-g1")	LANGUAGE=3DPunjabi DESC=3D"grade 1" ;;
+      "ro")		LANGUAGE=3DRomanian DESC=3D"grade 1" ;;
+      "ru-compbrl")	LANGUAGE=3DRussian DESC=3D"computer" ;;
+      "ru")		LANGUAGE=3DRussian DESC=3D"grade 1" ;;
+      "ru-litbrl")	LANGUAGE=3DRussian DESC=3D"literary" ;;
+      "ru-ru-g1")	LANGUAGE=3DRussian DESC=3D"grade 1" ;;
+      "sa-in-g1")	LANGUAGE=3DSasnskrit DESC=3D"grade 1" ;;
+      "se-se")		LANGUAGE=3DSwedish DESC=3D"grade 1" ;;
+      "Se-Se-g1")	LANGUAGE=3DSwedish DESC=3D"grade 1" ;;
+      "si-in-g1")	LANGUAGE=3DSindhi DESC=3D"grade 1" ;;
+      "sk-g1")		LANGUAGE=3DSlovak DESC=3D"grade 1" ;;
+      "sk-sk-g1")	LANGUAGE=3DSlovak DESC=3D"grade 1" ;;
+      "sk-sk")		LANGUAGE=3DSlovak DESC=3D"grade 1" ;;
+      "sl-si-comp8")	LANGUAGE=3DSlovenian DESC=3D"computer" ;;
+      "sl-si-g1")	LANGUAGE=3DSlovenian DESC=3D"grade 1" ;;
+      "sot-za-g1")	LANGUAGE=3DSotho DESC=3D"grade 1" ;;
+      "spaces")		DESC=3D"Spaces" ;;
+      "sr-g1")		LANGUAGE=3DSerbian DESC=3D"grade 1" ;;
+      "sv-1989")	LANGUAGE=3DSwedish DESC=3D"1989" ;;
+      "sv-1996")	LANGUAGE=3DSwedish DESC=3D"1996" ;;
+      "ta")		LANGUAGE=3DTamil DESC=3D"grade 1" ;;
+      "ta-ta-g1")	LANGUAGE=3DTamil DESC=3D"grade 1" ;;
+      "te-in-g1")	LANGUAGE=3DTelugu DESC=3D"grade 1" ;;
+      "tr")		LANGUAGE=3DTurkish DESC=3D"grade 1" ;;
+      "tsn-za-g1")	LANGUAGE=3DTswana DESC=3D"grade 1" ;;
+      "UEBC-g1")	LANGUAGE=3DEnglish DESC=3D"Unified grade 1" ;;
+      "UEBC-g2")	LANGUAGE=3DEnglish DESC=3D"Unified grade 2" ;;
+      "ukmaths")	DESC=3D"U.K maths" ;;
+      "ukmaths_edit")	DESC=3D"U.K maths post-translation editing" ;;
+      "vi")		LANGUAGE=3DVietnamese DESC=3D"grade 1" ;;
+      "vi-g1")		LANGUAGE=3DVietnamese DESC=3D"grade 1" ;;
+      "wiskunde")	LANGUAGE=3DFlemish DESC=3D"grade 1" ;;
+      "zh-hk")		LANGUAGE=3DChinese LOCATION=3D"Hong Kong" DESC=3D"grade 1"=
 ;;
+      "zh-tw")		LANGUAGE=3DChinese LOCATION=3D"Taiwan" DESC=3D"grade 1" ;;
+    esac
+    echo "$file:$LANGUAGE:$LOCATION:$DESC"
+  done
+
+  for i in $TABLESDIR/hyph_*.dic
+  do
+    file=3D${i##*/}
+    name=3D${file%.dic}
+    name=3D${name#hyph_}
+    DESC=3D$name
+    LANGUAGE=3D""
+    LOCATION=3D""
+    GRADE=3D""
+    case $name in
+  	brl_da_dk)	LANGUAGE=3DDanish ;;
+  	cs_CZ)	LANGUAGE=3DCzech ;;
+  	de_DE)	LANGUAGE=3DGerman ;;
+  	en_US)	LANGUAGE=3DEnglish ;;
+  	eo)	LANGUAGE=3DEsperanto ;;
+  	es_ES)	LANGUAGE=3DSpanish ;;
+  	fr_FR)	LANGUAGE=3DFrench ;;
+  	hu_HU)	LANGUAGE=3DHungarian ;;
+  	it_IT)	LANGUAGE=3DItalian ;;
+  	nb_NO)	LANGUAGE=3D"Norwegian Bokm=E5l" ;;
+  	nl_NL)	LANGUAGE=3DDutch ;;
+  	nn_NO)	LANGUAGE=3D"Norwegian Nynorsk" ;;
+  	pl_PL)	LANGUAGE=3DPolish ;;
+  	pt_PT)	LANGUAGE=3DPortuguese ;;
+  	ru)	LANGUAGE=3DRussian ;;
+  	sv_SE)	LANGUAGE=3DSwedish ;;
+    esac
+    echo "$file:$LANGUAGE:$LOCATION:hyphenation rules"
+  done
+
+) | sort -t : -k 2,3 | (
+
+IFS=3D:
+while read file LANGUAGE LOCATION DESC
+do
+	if [ -z "$DESC" ]
+	then
+	  echo "empty description for $file!"
+	  exit 1
+	fi
+	[ -n "$LOCATION" ] && DESC=3D"$LOCATION $DESC"
+	[ -n "$LANGUAGE" ] && DESC=3D"$LANGUAGE $DESC"
+	echo "  Choice \"$file/$DESC\" \"\""
+done
+)
+


--aqvwrzgisvgqd7ef--
