Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C92D51.1679DB68"
Date: Mon, 13 Oct 2008 09:33:40 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2746@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Embedded printing
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Matt Gessner <magembcons@gmail.com>, printing-architecture@lists.linux-foundation.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

This is a multi-part message in MIME format.


------_=_NextPart_001_01C92D51.1679DB68
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Matt,

=20

For embedded solutions, IJS (for Epson and others) or HPIJS (for HP
printers) is a suggestion.  It is small, MIT open-source driver; and,
print-vender drivers typically do not have floating point.   (Contact me
for a CD of Epson's version of the IJS.)

=20

Epson also has a generic, platform independent, non-floating driver for
their desktop inkjet printer. (Contact me if you are interested.)

=20

glen

=20

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Matt Gessner
Sent: Sunday, October 12, 2008 6:33 PM
To: printing-architecture@lists.linux-foundation.org
Subject: [Printing-architecture] Embedded printing

=20

Hi,

I''m looking for some solutions for doing printing on an embedded system
(arm, if it matters).  Raster screen shots and simple text reports are
(pretty much) all that's desired.

One objective is to avoid using anything that requires floating point
math, as it's only emulated on this particular arm.

I've been searcing the lists and can't find anything specific to
embedded systems, but in an O'Reilly article from 2007, there's a note
that such capabilities would be added in 6 months.  Since we're well
past that date, I'm wondering if that's been tackled.=20

Would someone please point me to some resources where I could read up on
how to do printing on such a system?  I will continue to do my own
research, but it sure seems like this is an area where there would be
some discussion so I'm hoping this is the right list.

Thank you.


------_=_NextPart_001_01C92D51.1679DB68
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Matt,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>For embedded solutions, IJS (for =
Epson and
others) or HPIJS (for HP printers) is a suggestion.&nbsp; It is small, =
MIT
open-source driver; and, print-vender drivers typically do not have =
floating
point.&nbsp;&nbsp; (Contact me for a CD of Epson&#8217;s version of the =
IJS.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Epson also has a generic, platform
independent, non-floating driver for their desktop inkjet printer. =
(Contact me
if you are interested.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in =
0in 4.0pt'>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D2 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'>
printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] =
<b><span
style=3D'font-weight:bold'>On Behalf Of </span></b>Matt Gessner<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Sunday, October 12, =
2008
6:33 PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b>
printing-architecture@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> =
[Printing-architecture]
Embedded printing</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Hi,<br>
<br>
I''m looking for some solutions for doing printing on an embedded system =
(arm,
if it matters).&nbsp; Raster screen shots and simple text reports are =
(pretty
much) all that's desired.<br>
<br>
One objective is to avoid using anything that requires floating point =
math, as
it's only emulated on this particular arm.<br>
<br>
I've been searcing the lists and can't find anything specific to =
embedded
systems, but in an O'Reilly article from 2007, there's a note that such
capabilities would be added in 6 months.&nbsp; Since we're well past =
that date,
I'm wondering if that's been tackled. <br>
<br>
Would someone please point me to some resources where I could read up on =
how to
do printing on such a system?&nbsp; I will continue to do my own =
research, but
it sure seems like this is an area where there would be some discussion =
so I'm
hoping this is the right list.<br>
<br>
Thank you.<o:p></o:p></span></font></p>

</div>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C92D51.1679DB68--
