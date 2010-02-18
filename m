Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CAB0C3.A8854B5A"
Date: Thu, 18 Feb 2010 09:56:12 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F024235@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Epson Question on the Common Print Dialog
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

------_=_NextPart_001_01CAB0C3.A8854B5A
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

All,

=20

As the Common Print Dialog (CPD) continues to mature, I felt is was time
to get feedback from Epson internal.  Therefore, I sent an email Epson
internally asking interested parties to review the current state of the
CPD and to send me any questions, comments or concerns, which I am now
forwarding to the open mailing list.

=20

1.	Does the CPD support Watermarks?

	a.	I remember this being there at some point but it could
be confirmed.

2.	How does the CPD support the connection between borderless print
mode and media size/type.

	a.	Not all media sizes and media types are designed to
support borderless mode; is there a mechanism to handle this.

3.	How will the CPD allow vendors to display printer status, toner
(ink) levels, job status and support printing maintenance items like
nozzle check, nozzle clean and head alignment?

	a.	Is there a vendor zone or pane (panel) for this?

4.	Does changing the media size in the CPD "reflow" the document or
simple scale (perhaps with clip) the document content to the selected
media size in the CPD.

	a.	That is, an application (via the user) sets the document
page size (say letter) while the CPD (via the user) specifies the print
media size of the document page to be A4; in which case, the letter
sized content is scaled (maintaining aspect ratio) to A4.

=20

I will forward your replies to internal Epson.

=20

Glen

=20


------_=_NextPart_001_01CAB0C3.A8854B5A
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
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
font-family:Arial'>As the Common Print Dialog (CPD) continues to mature, =
I felt
is was time to get feedback from Epson internal.&nbsp; Therefore, I sent =
an email
Epson internally asking interested parties to review the current state =
of the
CPD and to send me any questions, comments or concerns, which I am now
forwarding to the open mailing list.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Does the CPD support =
Watermarks?<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>I remember this being =
there at
      some point but it could be =
confirmed.<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>How does the CPD =
support the
     connection between borderless print mode and media =
size/type.<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Not all media sizes =
and media types
      are designed to support borderless mode; is there a mechanism to =
handle
      this.<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>How will the CPD allow =
vendors to
     display printer status, toner (ink) levels, job status and support
     printing maintenance items like nozzle check, nozzle clean and head
     alignment?<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Is there a vendor =
zone or pane
      (panel) for this?<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Does changing the =
media size in
     the CPD &#8220;reflow&#8221; the document or simple scale (perhaps =
with
     clip) the document content to the selected media size in the =
CPD.<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>That is, an =
application (via
      the user) sets the document page size (say letter) while the CPD =
(via the
      user) specifies the print media size of the document page to be =
A4; in
      which case, the letter sized content is scaled (maintaining aspect =
ratio)
      to A4.<o:p></o:p></span></font></li>
 </ol>
</ol>

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

------_=_NextPart_001_01CAB0C3.A8854B5A--
