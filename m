Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CACC36.98B6F479"
Date: Thu, 25 Mar 2010 09:16:59 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F0242AF@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Another Epson Question on the Common Print
	Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

This is a multi-part message in MIME format.

------_=_NextPart_001_01CACC36.98B6F479
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

All,

=20

Another question has been asked by Epson internal on the Common Print
Dialog.

=20

The issue is on borderless printing.

=20

1.	Is the follow flow correct?

=20

In addition, we want to ask a question regarding the borderless printing
with Common Printing Dialog (CPD).

We are understanding the borderless printing scenario with CPD as
follows. Is it right?

=20

1) Users select the "Borderless" option.

2) The "Borderless" option is reported back to the application.

3) The application "expands" the image for "Borderless" printing, and
send the expanded PDF to CPD.

4) CPD shows the preview of received PDF.

5) If users judge that it is OK, CPD sends the "expanded" PDF to CUPS.

=20

2.	If the above flow is correct; then, how does the application
"expand" the image ?

a.	by how much ?
b.	if the image size does not equal media size, the how is the
scale ratio of the expanding decided?
c.	what is the method used by the application to expand the  image?
There are other methods beyond simple scaling.

=20

Borderless printing, today, is done by the printer driver independent of
the application.=20

=20

I will forward your replies to internal Epson.

=20

Glen

=20


------_=_NextPart_001_01CACC36.98B6F479
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"MS PGothic";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@MS PGothic";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:Arial;
	color:windowtext;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:263464700;
	mso-list-type:hybrid;
	mso-list-template-ids:-757958864 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:295725298;
	mso-list-type:hybrid;
	mso-list-template-ids:346985352 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2
	{mso-list-id:1647202360;
	mso-list-type:hybrid;
	mso-list-template-ids:-1806766832 67698689 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l3
	{mso-list-id:1833065435;
	mso-list-template-ids:1585107720;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Another question has been asked by Epson internal on =
the
Common Print Dialog.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>The issue is on borderless =
printing.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo8'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Is the follow flow =
correct?<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>In addition, we =
want to ask
a question regarding the borderless printing with Common Printing Dialog =
(CPD).<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>We are =
understanding the
borderless printing scenario with CPD as follows. Is it =
right?<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'><o:p>&nbsp;</o:p></span></fo=
nt></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>1) Users select =
the
&quot;Borderless&quot; option.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>2) The
&quot;Borderless&quot; option is reported back to the =
application.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>3) The =
application </span></font><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>&#8220;</span></font><font
size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>expands</span></font><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>&#8221;</span></font><font
size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'> the
image for &quot;Borderless&quot; printing, and send the expanded PDF to =
CPD.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>4) CPD shows the =
preview of
received PDF.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA style=3D'font-size:10.0pt;font-family:Arial'>5) If users judge =
that it is
OK, CPD sends the </span></font><font size=3D2 face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial'>&#8220;</span></font><font size=3D2 =
face=3DArial><span
lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>expanded</span></font><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>&#8221;</span></font><font
size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'> PDF
to CUPS.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3DArial><span
lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'><o:p>&nbsp;</o:p></span></fo=
nt></p>

<ol style=3D'margin-top:0in' start=3D2 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 =
lfo8;text-autospace:none'><font
     size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>If
     </span></font><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
     font-family:Arial'>the above flow is correct; then, =
</span></font><font
     size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>how
     does the application </span></font><font size=3D2 =
face=3DArial><span
     =
style=3D'font-size:10.0pt;font-family:Arial'>&#8220;</span></font><font
     size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>expand</span></font><font
     size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>&#8221;</span></font><font
     size=3D2 face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>
     the image ?<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 =
lfo8;text-autospace:none'><font
      size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>by how
      much ?</span></font><font size=3D2 face=3DArial><span lang=3DJA
      =
style=3D'font-size:10.0pt;font-family:Arial'><o:p></o:p></span></font></l=
i>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 =
lfo8;text-autospace:none'><font
      size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>if the
      image size does not equal media size, the h</span></font><font =
size=3D2
      face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'>ow is
      the scale ratio of the expanding =
decided?<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 =
lfo8;text-autospace:none'><font
      size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>what is
      the method used by the application to expand the =
&nbsp;image?&nbsp; There
      are other methods beyond simple scaling.</span></font><font =
size=3D2
      face=3DArial><span lang=3DJA =
style=3D'font-size:10.0pt;font-family:Arial'><o:p></o:p></span></font></l=
i>
 </ol>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Borderless printing, today, is done by the printer =
driver independent
of the application. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I will forward your replies to internal =
Epson.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CACC36.98B6F479--
