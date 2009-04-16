Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9BEDA.EA672465"
Date: Thu, 16 Apr 2009 14:35:29 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379CC7@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379CB8@EEAEX03.us.epson.net>
	<4B3C1712-1367-404C-B77B-E7C5E5110C28@apple.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Another Common Dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9BEDA.EA672465
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the inputs Michael.  This provides some seeds for the
implementation details.  I am hoping Peter will provide similar comment
for the look-and-feel of the interface.

=20

Glen

=20

=20

________________________________

From: Michael Sweet [mailto:msweet@apple.com]=20
Sent: Thursday, April 16, 2009 2:18 PM
To: Petrie, Glen
Cc: Till Kamppeter; peter sikking;
printing-architecture@lists.linux-foundation.org;
printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-summit] Another Common Dialog

=20

Due to numerous practical issues, most MFPs that support fax and print
have to use two separate print queues; detecting this from the print
dialog or monitoring application is fairly easy (compare device URIs and
capability bits, merge queues that differ only by capabilities), and
supporting this at the OS level is essential (and then you can really
make things easy by creating both queues, "foo" and "foo_fax"...)

=20

Scanning functionality is managed separately from CUPS at the OS level
(usually SANE + a USB driver) but can be merged in the UI as long as the
OS provides the necessary hooks.

=20

Supporting memory cards (presumably exposed as USB mass storage or some
sort of network share) is also possible, again as long as the OS has the
necessary hooks.

=20

On Apr 16, 2009, at 11:21 AM, Petrie, Glen wrote:





Have you ever considered creating/defining a Common Status/Monitoring
Dialog.   CUPS may have something already but does it support
multi-function devices sub-units like fax, scan, memory card, etc and
can it provide the status/monitoring information on a sub-unit by
sub-unit basis or as a roll-up for the entire MFD or both????

=20

glen

_______________________________________________
Printing-summit mailing list
Printing-summit@lists.linux-foundation.org
https://lists.linux-foundation.org/mailman/listinfo/printing-summit

=20

________________________________________

Michael R Sweet, Senior Printing System Engineer

=20


------_=_NextPart_001_01C9BEDA.EA672465
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<base href=3D"x-msg://29/">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"PersonName"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Batang;
	panose-1:2 3 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@Batang";
	panose-1:2 3 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:Monaco;
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
	{color:blue;
	text-decoration:underline;}
span.EmailStyle18
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

<body lang=3DEN-US link=3Dblue vlink=3Dblue style=3D'word-wrap: =
break-word;-webkit-nbsp-mode: space;
-webkit-line-break: after-white-space'>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Thanks for the inputs Michael. =
&nbsp;This provides
some seeds for the implementation details. &nbsp;I am hoping Peter will =
provide
similar comment for the look-and-feel of the =
interface.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

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
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> =
Michael Sweet
[mailto:msweet@apple.com] <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, April 16, =
2009
2:18 PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> <st1:PersonName =
w:st=3D"on">Petrie,
 Glen</st1:PersonName><br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> Till Kamppeter; peter =
sikking;
printing-architecture@lists.linux-foundation.org; =
printing-summit@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: =
[Printing-summit]
Another Common Dialog</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Due to numerous practical issues, most MFPs that support fax and =
print
have to use two separate print queues; detecting this from the print =
dialog or
monitoring application is fairly easy (compare device URIs and =
capability bits,
merge queues that differ only by capabilities), and supporting this at =
the OS
level is essential (and then you can really make things easy by creating =
both
queues, &quot;foo&quot; and =
&quot;foo_fax&quot;...)<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Scanning functionality is managed separately from CUPS at the OS =
level
(usually SANE + a USB driver) but can be merged in the UI as long as the =
OS
provides the necessary hooks.<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Supporting memory cards (presumably exposed as USB mass storage =
or some
sort of network share) is also possible, again as long as the OS has the
necessary hooks.<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Apr 16, 2009, at 11:21 AM, <st1:PersonName =
w:st=3D"on">Petrie, Glen</st1:PersonName>
wrote:<o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
<br>
<o:p></o:p></span></font></p>

<span style=3D'orphans: 2;text-align:auto;widows: =
2;-webkit-border-horizontal-spacing: 0px;
-webkit-border-vertical-spacing: 0px;-webkit-text-decorations-in-effect: =
none;
-webkit-text-size-adjust: auto;-webkit-text-stroke-width: =
0px;word-spacing:
0px'>

<div link=3Dblue vlink=3Dpurple>

<div>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:black'>Have you ever considered
creating/defining a Common Status/Monitoring Dialog. &nbsp;&nbsp;CUPS =
may have
something already but does it support multi-function devices sub-units =
like
fax, scan, memory card, etc and can it provide the status/monitoring
information on a sub-unit by sub-unit basis or as a roll-up for the =
entire MFD
or both????<u1:p></u1:p></span></font><font color=3Dblack><span =
style=3D'color:
black'><o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:black'><u1:p>&nbsp;</u1:p></span></font><f=
ont
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:black'>glen<u1:p></u1:p></span></font><fon=
t
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

</div>

</div>

<p class=3DMsoNormal><font size=3D1 color=3Dblack face=3DMonaco><span =
style=3D'font-size:
9.0pt;font-family:Monaco;color:black'>___________________________________=
____________<br>
Printing-summit mailing list<br>
<a =
href=3D"mailto:Printing-summit@lists.linux-foundation.org">Printing-summi=
t@lists.linux-foundation.org</a><br>
<a =
href=3D"https://lists.linux-foundation.org/mailman/listinfo/printing-summ=
it">https://lists.linux-foundation.org/mailman/listinfo/printing-summit</=
a><o:p></o:p></span></font></p>

</div>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'></span><o:p>&nbsp;</o:p></span></font></p>

<div><span style=3D'orphans: 2;text-align:auto;widows: =
2;-webkit-border-horizontal-spacing: 0px;
-webkit-border-vertical-spacing: 0px;-webkit-text-decorations-in-effect: =
none;
-webkit-text-size-adjust: auto;-webkit-text-stroke-width: =
0px;word-spacing:
0px'><span style=3D'orphans: 2;widows: =
2;-webkit-border-horizontal-spacing: 0px;
-webkit-border-vertical-spacing: 0px;-webkit-text-decorations-in-effect: =
none;
-webkit-text-size-adjust: auto;-webkit-text-stroke-width: =
0px;word-spacing:
0px'>

<div style=3D'word-wrap: break-word;-webkit-nbsp-mode: =
space;-webkit-line-break: after-white-space'>

<div>

<div>

<p class=3DMsoNormal><font size=3D1 color=3Dblack face=3DHelvetica><span
style=3D'font-size:9.0pt;font-family:Helvetica;color:black'>_____________=
___________________________<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D1 color=3Dblack face=3DHelvetica><span
style=3D'font-size:9.0pt;font-family:Helvetica;color:black'>Michael R =
Sweet,
Senior Printing System Engineer<o:p></o:p></span></font></p>

</div>

</div>

</div>

</div>

</span>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</span></div>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C9BEDA.EA672465--
