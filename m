Return-Path: <SRS0=4zrL=MN=ens-lyon.org=samuel.thibault@bounce.ens-lyon.org>
Date: Sat, 12 Dec 2015 09:36:05 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
Message-ID: <20151212083605.GX2764@var.home>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2B/JsCI69OhZNC5r"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <566B9A46.7020703@gmail.com>
 <566B8652.6050805@gmail.com>
Subject: Re: [Printing-architecture] Contributing braille embosser support
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org


--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Till Kamppeter, on Sat 12 Dec 2015 00:28:34 -0200, wrote:
> I have integrated your software in cups-filters now and committed it to the
> BZR repository.

Great!  Thank you very much for the integration work!

> Please download and try, and tell me whether everything is
> working.

I'll give it a try as soon as I get time.

> - I have integrated your files into the build system of cups-filters
> following all free software standards. Especially the configure script of
> cups-filters checks the presence of liblouis and also takes an
> "--enable-braille"/"--disable-braille" command line option pair. with
> Braille support being enabled by default if liblouis is present.

Good :) I was lazy to do it in my prototype cups-braille package :)

> - PPD files are not pre-built by the Makefile. The *.drv and *.defs files
> are put into the standard places in the CUPS directories, so that PPDs are
> generated on-the-fly.

Oh, I didn't know cups was able to do this. Even better then.

> If I put them into /usr/share/cups/ppdc/ directory, the
> on-the-fly-generated PPD files get a French locale added.

Yes; that's very useful.

> Only problem is that only one fr.po can be placed in
> /usr/share/cups/ppdc/, so I will look into renaming them and add the two
> renamed files to cups-filter. I assume I have to rename the references in
> the *.drv files appropriately then.

Yes, please do. Actually I was suprised that the documentation tells to
use "fr.po" name, since as seen by this conflict they have to *not* have
that name :)

Actually they could even be merged, that'd be better since otherwise
there would be a lot of duplication.  I have attached the resulting
merge.

> and drivers/index/ubrlto4dot.c. For what are these
> files used, especially what does drivers/index/ubrlto4dot.c do?

This file is used to generate the translation table in
drivers/index/imageubrltoindexv[34].  I felt it was good to integrate it
as "source code" for them, even if actually running the generation in
Makefile is more tedious than really useful.

> - I have dropped the debian/ directory. Upstream packages should never ship
> a debian/ directory, independent if it contains the files for generating
> Debian packages or something else.

Sure, no problem.

> - The Generic embosser PPD file passes cupstestppd, the files for the Index
> printers not. The error message is:
> 
> **FAIL**  Multiple occurrences of option IndexTable choice name 24.
> 
> and indeed the option "IndexTable" has two choices with "24" as short name.

Oops... I must admit I didn't test polish & dutch braille since I speak
them and don't have an index4 device :)  I have attached a patch.

> Thanks again for your great contribution.

Thanks for your reactivity!

Samuel

--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: attachment; filename="fr-braille.po"
Content-Transfer-Encoding: quoted-printable

#
# Copyright (c) 2015 Samuel Thibault <samuel.thibault@ens-lyon.org>
#=20
# Permission is hereby granted, free of charge, to any person obtaining a c=
opy
# of this software and associated documentation files (the "Software"), to =
deal
# in the Software without restriction, including without limitation the rig=
hts
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#=20
#=20
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#=20
#=20
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL =
THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING F=
ROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#=20

msgid "Generic"
msgstr "Generique"

msgid "Braille embosser"
msgstr "Embosseuse braille"

msgid "A4 Tractor Feed"
msgstr "A4 Traction papier"

msgid "Yes"
msgstr "Oui"

msgid "No"
msgstr "Non"

msgid "Braille transcription"
msgstr "Transcription Braille"

msgid "None"
msgstr "Aucune"

msgid "Additional Braille transcription"
msgstr "Transcription Braille additionnelle"

msgid "Text dot distance"
msgstr "Distance points texte"

msgid "Text dots"
msgstr "Points text"

msgid "8 dots"
msgstr "8 points"

msgid "6 dots"
msgstr "6 points"

msgid "Graphic dot distance"
msgstr "Distance points graphique"

msgid "Line spacing"
msgstr "Espacement de ligne"

msgid "Image conversion"
msgstr "Conversion d'image"

msgid "Rotation"
msgstr "Rotation"

msgid "No rotation"
msgstr "Pas de rotation"

msgid "Rotate clockwise to portrait"
msgstr "Rotation horaire vers portrait"

msgid "Rotate clockwise to landscape"
msgstr "Rotation horaire vers paysage"

msgid "Rotate counter clockwise to portrait"
msgstr "Rotation anti-horaire vers portrait"

msgid "Rotate counter clockwise to landscape"
msgstr "Rotation anti-horaire vers paysage"

msgid "Clockwise"
msgstr "Horaire"

msgid "Counter clockwise"
msgstr "Anti-horaire"

msgid "Upside Down"
msgstr "Retourner"

msgid "Edge detection"
msgstr "D=E9tection de contour"

msgid "Simple"
msgstr "Simple"

msgid "Canny"
msgstr "Canny"

msgid "Negate"
msgstr "Inversion"

msgid "EdgeFactor"
msgstr "Facteur de contour"

msgid "CannyRadius"
msgstr "Radius Canny"

msgid "CannySigma"
msgstr "Sigma Canny"

msgid "CannyLower"
msgstr "Lower Canny"

msgid "CannyUpper"
msgstr "Upper Canny"

msgid "Index support"
msgstr "Support Index"

msgid "Installed firmware version"
msgstr "Version de firmware install=E9e"

msgid "10.20 or above"
msgstr "10.20 ou sup=E9rieur"

msgid "10.30 or above"
msgstr "10.30 ou sup=E9rieur"

msgid "11.02.1 or above"
msgstr "11.02.1 ou sup=E9rieur"

msgid "11.03.2 or above"
msgstr "11.03.2 ou sup=E9rieur"

msgid "12.01.3 or above"
msgstr "12.01.3 ou sup=E9rieur"

msgid "Page folding"
msgstr "Recto-Verso"

msgid "Single-sided"
msgstr "Recto seul"

msgid "Double-sided"
msgstr "Recto-Verso"

msgid "Single-sided z-folding"
msgstr "Recto seul, pliage Z"

msgid "Double-sided z-folding"
msgstr "Recto-Verso, pliage Z"

msgid "Single-sided sideways z-folding"
msgstr "Recto seul paysage, pliage Z"

msgid "Double-sided sideways z-folding"
msgstr "Recto-Verso paysage, pliage Z"

msgid "Double-sided saddle stitch 4 pages"
msgstr "Recto-Verso cahier 4 pages"

msgid "Single-sided saddle stitch 4 pages"
msgstr "Recto cahier 4 pages"

msgid "Firmware Braille Table"
msgstr "Table Braille Firmware"

msgid "6-dot MIT table"
msgstr "Table MIT 6 points"

msgid "User-defined Table 1"
msgstr "Table 1 d=E9finie par l'utilisateur"

msgid "User-defined Table 2"
msgstr "Table 2 d=E9finie par l'utilisateur"

msgid "User-defined Table 3"
msgstr "Table 3 d=E9finie par l'utilisateur"

msgid "User-defined Table 4"
msgstr "Table 4 d=E9finie par l'utilisateur"

msgid "Multiple impact"
msgstr "Impact multiple"

--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

=== modified file 'drv/indexv4.drv'
--- drv/indexv4.drv	2015-12-12 02:11:10 +0000
+++ drv/indexv4.drv	2015-12-12 08:27:00 +0000
@@ -74,8 +74,8 @@ Group "Braille"
   Choice "22/Polish literal with capital" ""
   Choice "23/Polish own table 03" ""
   Choice "24/Polish own table 04" ""
-  Choice "24/Dutch computer 6 dots" ""
-  Choice "25/Dutch own table 02" ""
+  Choice "25/Dutch computer 6 dots" ""
+  Choice "26/Dutch own table 02" ""
 
 
 //


--2B/JsCI69OhZNC5r--
