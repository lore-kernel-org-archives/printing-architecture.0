Return-Path: <doug@uq.edu.au>
From: Douglas Kosovic <doug@uq.edu.au>
Date: Wed, 23 Sep 2015 05:30:27 +0000
Message-ID: <b1369b280796437dafe4df2ddab10885@uq-exmbx3.soe.uq.edu.au>
References: <C94797B6E346CF4BAB0CF528FBA520CA0E199575@DM1PRD7301MB031.mgdir.irco.com>
In-Reply-To: <C94797B6E346CF4BAB0CF528FBA520CA0E199575@DM1PRD7301MB031.mgdir.irco.com>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b1369b280796437dafe4df2ddab10885uqexmbx3soeuqeduau_"
MIME-Version: 1.0
Subject: Re: [Printing-architecture] No package 'lcms' found  cups-filter
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: David Collins <DavidD.Collins@irco.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--_000_b1369b280796437dafe4df2ddab10885uqexmbx3soeuqeduau_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi David,

You've probably worked out by now, but you also need the lcms2-devel packag=
e to be installed also.

$ rpm -qa "lcms2*"
lcms2-2.7-1.el7.x86_64
lcms2-devel-2.7-1.el7.x86_64

To get the very latest version of CUPS and dependencies, I usually rebuild =
the RPMs from the Fedora rawhide source RPMs, e.g. :

wget https://dl.fedoraproject.org/pub/fedora/linux/development/rawhide/sour=
ce/SRPMS/c/cups-filters-1.0.76-1.fc24.src.rpm

rpmbuild --rebuild cups-filters-1.0.76-1.fc24.src.rpm



Cheers,
Doug

From: printing-architecture-bounces@lists.linux-foundation.org [mailto:prin=
ting-architecture-bounces@lists.linux-foundation.org] On Behalf Of Collins,=
 David
Sent: Friday, 18 September 2015 12:22 AM
To: printing-architecture@lists.linux-foundation.org
Subject: [Printing-architecture] No package 'lcms' found cups-filter

I'm getting this error:  checking for LCMS...  configure:  error:  Package =
requirements (lcms) were not met.  I can't figure out why it's not picking =
up the package as I've got this package installed.

* Using Oracle Linux 7   3.8.13-55.1.6.e17uek.x86_64
* Cups-filter(latest)  cups-filter-1.0-20150819

############################################
rpm -qa |grep lcms
lcms2-2.5-4.e17.x86_64

I've also tried the source code and installed lcms2-2.7.

Anyone have any recommendations?  Thanks for any help!




________________________________

The information contained in this message is privileged and intended only f=
or the recipients named. If the reader is not a representative of the inten=
ded recipient, any review, dissemination or copying of this message or the =
information it contains is prohibited. If you have received this message in=
 error, please immediately notify the sender, and delete the original messa=
ge and attachments.

--_000_b1369b280796437dafe4df2ddab10885uqexmbx3soeuqeduau_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi David,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">You&#8217;ve probably =
worked out by now, but you also need the lcms2-devel package to be installe=
d also.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">$ rpm -qa &quot;lcms2*=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">lcms2-2.7-1.el7.x86_64=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">lcms2-devel-2.7-1.el7.=
x86_64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">To get the very latest=
 version of CUPS and dependencies, I usually rebuild the RPMs from the Fedo=
ra rawhide source RPMs, e.g. :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">wget <a href=3D"https:=
//dl.fedoraproject.org/pub/fedora/linux/development/rawhide/source/SRPMS/c/=
cups-filters-1.0.76-1.fc24.src.rpm">
https://dl.fedoraproject.org/pub/fedora/linux/development/rawhide/source/SR=
PMS/c/cups-filters-1.0.76-1.fc24.src.rpm</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">rpmbuild --rebuild cup=
s-filters-1.0.76-1.fc24.src.rpm<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cheers,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Doug<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> printing-architecture-bounces@lists.lin=
ux-foundation.org [mailto:printing-architecture-bounces@lists.linux-foundat=
ion.org]
<b>On Behalf Of </b>Collins, David<br>
<b>Sent:</b> Friday, 18 September 2015 12:22 AM<br>
<b>To:</b> printing-architecture@lists.linux-foundation.org<br>
<b>Subject:</b> [Printing-architecture] No package 'lcms' found cups-filter=
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m getting this error:&nbsp; checking for LCM=
S&#8230;&nbsp; configure:&nbsp; error:&nbsp; Package requirements (lcms) we=
re not met.&nbsp; I can&#8217;t figure out why it&#8217;s not picking up th=
e package as I&#8217;ve got this package installed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">* Using Oracle Linux 7 &nbsp;&nbsp;3.8.13-55.1.6.e17=
uek.x86_64<o:p></o:p></p>
<p class=3D"MsoNormal">* Cups-filter(latest)&nbsp; cups-filter-1.0-20150819=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">############################################<o:p></o=
:p></p>
<p class=3D"MsoNormal">rpm &#8211;qa |grep lcms<o:p></o:p></p>
<p class=3D"MsoNormal">lcms2-2.5-4.e17.x86_64<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also tried the source code and installed =
lcms2-2.7.&nbsp; <o:p>
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Anyone have any recommendations?&nbsp; Thanks for an=
y help!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:&quot;Ti=
mes New Roman&quot;,serif"><o:p>&nbsp;</o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:gray"><br>
The information contained in this message is privileged and intended only f=
or the recipients named. If the reader is not a representative of the inten=
ded recipient, any review, dissemination or copying of this message or the =
information it contains is prohibited.
 If you have received this message in error, please immediately notify the =
sender, and delete the original message and attachments.</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"><o:p></=
o:p></span></p>
</div>
</body>
</html>

--_000_b1369b280796437dafe4df2ddab10885uqexmbx3soeuqeduau_--
