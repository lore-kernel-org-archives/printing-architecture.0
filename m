Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CE5648.BD06955B"
Date: Tue, 21 May 2013 10:29:24 -0700
Message-ID: <E8C3B9E653C80C48B0951F8494C049A98E9A60@EEAEX02.us.epson.net>
References: <E8C3B9E653C80C48B0951F8494C049A98E9A5F@EEAEX02.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Common Mobile Print Client software
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01CE5648.BD06955B
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Till,

=20

I added the Preview code.  There is not much code here but I thought I
would post it.

=20

Glen

=20

=20

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Petrie, Glen
Sent: Tuesday, May 21, 2013 8:59 AM
To: Till Kamppeter
Cc: printing-architecture@lists.linux-foundation.org
Subject: [Printing-architecture] Common Mobile Print Client software

=20

Till,

=20

As we discussed at the recent PWG/OpenPrint Summit, I am posting the
software I developed for the Common Mobile Print Clint (CMPC) based on
the slides I provided at last year's summit meeting.  As I informed you,
the software provides only a skeleton of the GUI and is based on JTAPI
objects, elements and values.   I would suggest converting JTAPI
objects, elements and values to the PWG/PJT objects, elements and
values.    I hope to post the PWG/PJT content as C-code very soon.
Also based on the slides from last year, I developed a skeleton for the
Common Mobile Print Preview; which I will try to publish.=20

=20

See content at
ftp://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/=20

=20

Glen

=20


------_=_NextPart_001_01CE5648.BD06955B
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
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:Cambria;}
h1
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l1 level1 lfo5;
	font-size:14.0pt;
	font-family:Cambria;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.3in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l3 level2 lfo6;
	font-size:14.0pt;
	font-family:Cambria;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:0in;
	font-size:12.0pt;
	font-family:Cambria;}
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
	mso-list:l1 level2 lfo1;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
p.StyleAppendix, li.StyleAppendix, div.StyleAppendix
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l3 level1 lfo2;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
p.StyleNumberedNormalItalicBlack, li.StyleNumberedNormalItalicBlack, =
div.StyleNumberedNormalItalicBlack
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.05pt;
	text-indent:-.25in;
	line-height:18.0pt;
	mso-list:l0 level1 lfo3;
	font-size:12.0pt;
	font-family:"Times New Roman";
	color:black;
	font-style:italic;}
p.StyleNumberedNormalLeft025Firstline0TopNobor, =
li.StyleNumberedNormalLeft025Firstline0TopNobor, =
div.StyleNumberedNormalLeft025Firstline0TopNobor
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:54.05pt;
	text-indent:-.25in;
	line-height:18.0pt;
	mso-list:l2 level1 lfo4;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.StyleNumberedNormalBlackLeft025Firstline0Top, =
li.StyleNumberedNormalBlackLeft025Firstline0Top, =
div.StyleNumberedNormalBlackLeft025Firstline0Top
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:18.0pt;
	border:none;
	padding:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";
	color:black;}
p.styleheading1notboldblack0, li.styleheading1notboldblack0, =
div.styleheading1notboldblack0
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l1 level2 lfo5;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
p.styleappendix0, li.styleappendix0, div.styleappendix0
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l3 level1 lfo6;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
p.stylenumberednormalitalicblack0, li.stylenumberednormalitalicblack0, =
div.stylenumberednormalitalicblack0
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:.05pt;
	text-indent:-.25in;
	line-height:18.0pt;
	mso-list:l0 level1 lfo7;
	font-size:12.0pt;
	font-family:"Times New Roman";
	color:black;
	font-style:italic;}
p.stylenumberednormalleft025firstline0topnobor0, =
li.stylenumberednormalleft025firstline0topnobor0, =
div.stylenumberednormalleft025firstline0topnobor0
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:54.05pt;
	text-indent:-.25in;
	line-height:18.0pt;
	mso-list:l2 level1 lfo8;
	font-size:12.0pt;
	font-family:"Times New Roman";}
p.stylenumberednormalblackleft025firstline0top0, =
li.stylenumberednormalblackleft025firstline0top0, =
div.stylenumberednormalblackleft025firstline0top0
	{margin-top:6.0pt;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:18.0pt;
	font-size:12.0pt;
	font-family:"Times New Roman";
	color:black;}
span.EmailStyle28
	{mso-style-type:personal;
	font-family:Cambria;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle29
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
	{mso-list-id:189496343;
	mso-list-type:hybrid;
	mso-list-template-ids:-1789785564 1630831480 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-style-link:"Style Numbered Normal + Italic Black";
	mso-level-tab-stop:.05pt;
	mso-level-number-position:left;
	margin-left:.05pt;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-tab-stop:1.0in;
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
	{mso-list-id:675117133;
	mso-list-template-ids:-319017128;}
@list l1:level1
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
@list l1:level2
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
@list l1:level3
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
@list l1:level4
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
@list l1:level5
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
@list l1:level6
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
@list l1:level7
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
@list l1:level8
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
@list l1:level9
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
@list l2
	{mso-list-id:1443261058;
	mso-list-type:hybrid;
	mso-list-template-ids:2094972392 338451262 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-style-link:"Style Numbered Normal + Left\:  0\.25\0022 First =
line\:  0\0022 Top\: \(No bor\.\.\.";
	mso-level-tab-stop:54.05pt;
	mso-level-number-position:left;
	margin-left:54.05pt;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3
	{mso-list-id:1691636573;
	mso-list-template-ids:1894306706;}
@list l3:level1
	{mso-level-style-link:StyleAppendix;
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
@list l3:level2
	{mso-level-style-link:"Heading 2";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.3in;
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
@list l3:level3
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
@list l3:level4
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
@list l3:level5
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
@list l3:level6
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
@list l3:level7
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
@list l3:level8
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
@list l3:level9
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
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'>Till,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'>I added the Preview code.&nbsp; There is not much =
code here but I
thought I would post it.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span =
style=3D'font-size:12.0pt;font-family:"Times New Roman"'>

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
style=3D'font-weight:bold'>On Behalf Of </span></b>Petrie, Glen<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Tuesday, May 21, =
2013 8:59
AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Till Kamppeter<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b>
printing-architecture@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> =
[Printing-architecture]
Common Mobile Print Client software</span></font><font face=3D"Times New =
Roman"><span
style=3D'font-family:"Times New Roman"'><o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Till,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>As
we discussed at the recent PWG/OpenPrint Summit, I am posting the =
software I
developed for the Common Mobile Print Clint (CMPC) based on the slides I
provided at last year's summit meeting.&nbsp; As I informed you, the =
software
provides only a skeleton of the GUI and is based on JTAPI objects, =
elements and
values.&nbsp;&nbsp; I would suggest converting JTAPI objects, elements =
and values
to the PWG/PJT objects, elements and values.&nbsp;&nbsp;&nbsp; I hope to =
post
the PWG/PJT content as C-code very soon. &nbsp;&nbsp;Also based on the =
slides
from last year, I developed a skeleton for the Common Mobile Print =
Preview;
which I will try to publish. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>See
content at <a =
href=3D"ftp://ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/">ftp:=
//ftp.pwg.org/pub/pwg/openprinting/common.mobile.print/</a>
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CE5648.BD06955B--
