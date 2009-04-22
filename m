Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9C370.81BEAD7B"
Date: Wed, 22 Apr 2009 10:36:27 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D5A@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
	<3F74D775-B66B-422D-A091-D8723BA657AC@apple.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Print Dialog: Preview
	Processing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9C370.81BEAD7B
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

=20

=20

________________________________

From: Michael R Sweet [mailto:msweet@apple.com]=20
Sent: Wednesday, April 22, 2009 9:29 AM
To: Petrie, Glen
Cc: printing-architecture@lists.linux-foundation.org;
printing-summit@lists.linux-foundation.org
Subject: Re: [Printing-summit] Print Dialog: Preview Processing: Only A
Question

=20

On Apr 22, 2009, at 9:13 AM, Petrie, Glen wrote:

	...

	[gwp]  I think I understand your point.  I would like to explore
the case where the app does the "layout" settings and, then, the print
dialog has "layout" settings.  What is your expectation if the app (like
OpenOffice Write) sets (and flows) the document to letter size; then the
print dialog offers "page size" attribute and the user now selects A4.
Would you expect the print dialog to send the info back to application
to reformat/reflow the document or clip letter content exceeding A4 or
scale the letter content (without calling the application) to fit A4.  I
guess I would you go with the last option....but I have seen the system
where letter formatted content is printed on 4x6 cards (silly I know) by
simply clipping the letter content to 4x6.  I had not seen any
implementation of calling back to the application.

	=20

	[gwp] Do we need to make a general policy on how to handle these
cases?=20

=20

OK, here are some more Mac'isms...

=20

Applications choose whether the page size chooser is displayed in the
print dialog. For page-based applications, it makes more sense for the
application to pre-select the page size and margins since the user is
formatting their document for that size. For other applications (email,
web browser, image viewer, etc.) it makes more sense for the page size
control to be in the print dialog since pages and page size have no
meaning unless you are printing.

=20

[gwp] This is a perfect solution and I would like to encourage this idea
for OpenPrinting.

=20

=20

=20


------_=_NextPart_001_01C9C370.81BEAD7B
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
	{font-family:Batang;
	panose-1:2 3 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@Batang";
	panose-1:2 3 6 0 0 1 1 1 1 1;}
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:Arial;
	color:navy;}
span.EmailStyle19
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
Michael R Sweet
[mailto:msweet@apple.com] <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Wednesday, April =
22, 2009
9:29 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> <st1:PersonName =
w:st=3D"on">Petrie,
 Glen</st1:PersonName><br>
<b><span style=3D'font-weight:bold'>Cc:</span></b>
printing-architecture@lists.linux-foundation.org;
printing-summit@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: =
[Printing-summit]
Print Dialog: Preview Processing: Only A =
Question</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Apr 22, 2009, at 9:13 AM, <st1:PersonName w:st=3D"on">Petrie, =
Glen</st1:PersonName>
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt' =
type=3Dcite><u1:smarttagtype =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"place"><u1:smarttagtype =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"PersonName">

<div link=3Dblue vlink=3Dblue style=3D'word-wrap: =
break-word;-webkit-nbsp-mode: space;
-webkit-line-break: after-white-space'>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in =
0in 4.0pt'>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>...<o:p></o:p></span></font></p>

</div>

</div>

</div>

</div>

</blockquote>

<blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'></u1:smarttagtype></u1:sma=
rttagtype><u1:smarttagtype =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"place"><u1:smarttagtype =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"PersonName">

<div link=3Dblue vlink=3Dblue style=3D'word-wrap: =
break-word;-webkit-nbsp-mode: space;
-webkit-line-break: after-white-space'>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in =
0in 4.0pt'>

<div>

<div>

<p class=3DMsoNormal><span class=3Dapple-style-span><font size=3D2 =
color=3Dnavy
face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial;color:navy'>[gwp]&nbsp;
I think I understand your point. &nbsp;I would like to explore the case =
where
the app does the &#8220;layout&#8221; settings and, then, the print =
dialog has &#8220;layout&#8221;
settings. &nbsp;What is your expectation if the app (like OpenOffice =
Write)
sets (and flows) the document to letter size; then the print dialog =
offers
&#8220;page size&#8221; attribute and the user now selects A4.&nbsp; =
Would you expect the
print dialog to send the info back to application to reformat/reflow the
document or clip letter content exceeding A4 or scale the letter content
(without calling the application) to fit A4. &nbsp;I guess I would you =
go with
the last option&#8230;.but I have seen the system where letter formatted =
content is
printed on 4x6 cards (silly I know) by simply clipping the letter =
content to
4x6.&nbsp; I had not seen any implementation of calling back to the
application.</span></font></span><o:p></o:p></p>

</div>

</div>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><u1:p>&nbsp;</u1:p></span></font><o:=
p></o:p></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>[gwp] Do we need to make a general =
policy
on how to handle these cases? <u1:p></u1:p></span></font><o:p></o:p></p>

</div>

</div>

</div>

</blockquote>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</u1:smarttagtype></u1:smarttagtype>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>OK, here are some more Mac'isms...<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Applications choose whether the page size chooser is displayed =
in the
print dialog. For page-based applications, it makes more sense for the
application to pre-select the page size and margins since the user is
formatting their document for that size. For other applications (email, =
web
browser, image viewer, etc.) it makes more sense for the page size =
control to
be in the print dialog since pages and page size have no meaning unless =
you are
printing.<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 color=3Dnavy face=3D"Times New =
Roman"><span
style=3D'font-size:12.0pt;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>[gwp] This is a perfect solution =
and I
would like to encourage this idea for =
OpenPrinting.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C9C370.81BEAD7B--
