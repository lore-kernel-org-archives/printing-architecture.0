Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CCB078.449F0069"
Date: Thu, 1 Dec 2011 14:26:28 -0800
Message-ID: <E8C3B9E653C80C48B0951F8494C049A90267EF@EEAEX02.us.epson.net>
References: <E8C3B9E653C80C48B0951F8494C049A90267EE@EEAEX02.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Conceptual Model for Common Mobile
	Print Dialog (Client)
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

This is a multi-part message in MIME format.

------_=_NextPart_001_01CCB078.449F0069
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just a note that this model was reviewed by several members of the PWG
and I believe that will some minor corrections and terminology changed
(with help from Ira) this model will be copasetic with the PWG.   As the
model is refined, I hope to stay aligned with the PWG where ever
possible.=20

=20

I hope to discuss this more at the next phone conference.=20

=20

________________________________

From: Petrie, Glen=20
Sent: Thursday, December 01, 2011 11:16 AM
To: printing-architecture@lists.linux-foundation.org
Cc: Zehler, Peter; Petrie, Glen
Subject: Conceptual Model for Common Mobile Print Dialog (Client)

=20

All,=20

=20

below is my current conceptual model for Mobile Common Print Dialog.  I
would like feedback so that I go continue to defining the details.   I
would also like to discuss it at the next phone conference meeting.=20

..................

=20

=20

=20

=20


------_=_NextPart_001_01CCB078.449F0069
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"place"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h1
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l2 level1 lfo2;
	font-size:14.0pt;
	font-family:Cambria;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l0 level2 lfo3;
	font-size:14.0pt;
	font-family:Cambria;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p.StyleHeading1NotBoldBlack, li.StyleHeading1NotBoldBlack, =
div.StyleHeading1NotBoldBlack
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l2 level2 lfo1;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
p.styleheading1notboldblack0, li.styleheading1notboldblack0, =
div.styleheading1notboldblack0
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l2 level2 lfo2;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:Cambria;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:Cambria;
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:232006760;
	mso-list-template-ids:9729752;}
@list l0:level1
	{mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level2
	{mso-level-style-link:"Heading 2";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level3
	{mso-level-reset-level:level1;
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level4
	{mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1
	{mso-list-id:329136865;
	mso-list-type:hybrid;
	mso-list-template-ids:622208580 2109873162 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2
	{mso-list-id:675117133;
	mso-list-template-ids:-319017128;}
@list l2:level1
	{mso-level-style-link:"Heading 1";
	mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level2
	{mso-level-style-link:"Style Heading 1 + Not Bold Black";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level3
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level4
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level5
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level6
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level7
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l3
	{mso-list-id:923609856;
	mso-list-type:hybrid;
	mso-list-template-ids:701522370 2109873162 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l3:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level9
	{mso-level-tab-stop:4.5in;
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

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Just a note that this model was =
reviewed
by several members of the PWG and I believe that will some minor =
corrections
and terminology changed (with help from Ira) this model will be =
copasetic with the
PWG.&nbsp;&nbsp; As the model is refined, I hope to stay aligned with =
the PWG
where ever possible. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>I hope to discuss this more at =
the next
phone conference. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

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
Petrie, Glen <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, December =
01, 2011
11:16 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b>
printing-architecture@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> Zehler, Peter; =
Petrie, Glen<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Conceptual Model =
for Common
<st1:place w:st=3D"on">Mobile</st1:place> Print Dialog =
(Client)</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>All, <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>below is my current conceptual model for Mobile =
Common
Print Dialog.&nbsp; I would like feedback so that I go continue to =
defining the
details.&nbsp;&nbsp; I would also like to discuss it at the next phone
conference meeting. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>&#8230;&#8230;&#8230;&#8230;&#8230=
;&#8230;</span></font><font
face=3DCambria><span =
style=3D'font-family:Cambria'><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CCB078.449F0069--
