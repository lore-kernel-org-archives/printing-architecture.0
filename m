Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9C364.F6AAE90D"
Date: Wed, 22 Apr 2009 09:13:50 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com>
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
To: Michael Sweet <msweet@apple.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9C364.F6AAE90D
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Apr 22, 2009, at 6:45 AM, Petrie, Glen wrote:

=09

	All,

	=20

	I have been requested to get a better understanding of
processing related to the print preview. =20

	I am not proposing a solution or suggesting changing to a
solution.

	=20

	Question Summary: Will the Application or the Print Dialog
Generate the Preview?  Perhaps some of both?  Perhaps on one.

=20

That really depends on the implementation and API.  If the dialog is
given a print file, it can use the "cupsfilter" command to generate
preview data with all options applied and display the results.  If the
application can supply per-page data to the dialog, it makes more sense
to do the preview generation in the application (faster).

=20

=20

[gwp]  Ok, so unless we want to dictate one or the other; we should make
either option possible.

=20

=20

FWIW, on Mac OS X we use a hybrid approach - in-dialog preview is done
via Cocoa class methods (all in-process), while external preview and the
PDF workflow/save-as-pdf functionality uses cupsfilter.

=20

Either way, you can normally restrict yourself to a subset of known
options that affect layout, scaling, and basic color presentation (color
vs grayscale, maybe proof using ICC color profiles) - none of the dozens
of Gutenprint color options can be represented in the preview, for
example. (The Gimp plug-in supports it by linking to Gutenprint,
something we probably don't want since it would involve binary plug-ins
and then we have the mess of platforms/architectures to deal with...)

=20

[gwp]  I think I understand your point.  I would like to explore the
case where the app does the "layout" settings and, then, the print
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

[gwp] Do we need to make a general policy on how to handle these cases?=20


------_=_NextPart_001_01C9C364.F6AAE90D
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<base href=3D"x-msg://1/">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
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

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in =
0in 4.0pt'>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Apr 22, 2009, at 6:45 AM, <st1:PersonName w:st=3D"on">Petrie, =
Glen</st1:PersonName>
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'margin-top:5.0pt;margin-bottom:5.0pt' =
type=3Dcite><span
style=3D'orphans: 2;text-align:auto;widows: =
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
10.0pt;font-family:Arial;color:black'>All,<u1:p></u1:p></span></font><fon=
t
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

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
10.0pt;font-family:Arial;color:black'>I have been requested to get a =
better
understanding of processing related to the print preview. =
&nbsp;<u1:p></u1:p></span></font><font
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D2 color=3Dblack face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:black'>I am not proposing a solution or
suggesting changing to a solution.<u1:p></u1:p></span></font><font =
color=3Dblack><span
style=3D'color:black'><o:p></o:p></span></font></p>

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
10.0pt;font-family:Arial;color:black'>Question Summary: Will the =
Application or
the Print Dialog Generate the Preview? &nbsp;Perhaps some of both?&nbsp;
Perhaps on one.</span></font><font color=3Dblack><span =
style=3D'color:black'><o:p></o:p></span></font></p>

</div>

</div>

</div>

</blockquote>

</span>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>That really depends on the implementation and API. &nbsp;If the =
dialog
is given a print file, it can use the &quot;cupsfilter&quot; command to
generate preview data with all options applied and display the results.
&nbsp;If the application can supply per-page data to the dialog, it =
makes more
sense to do the preview generation in the application =
(faster).<o:p></o:p></span></font></p>

</div>

<div>

<p class=3DMsoNormal><font size=3D3 color=3Dnavy face=3D"Times New =
Roman"><span
style=3D'font-size:12.0pt;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>[gwp]&nbsp; Ok, so unless we want =
to
dictate one or the other; we should make either option =
possible.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>FWIW, on Mac OS X we use a hybrid approach - in-dialog preview =
is done
via <st1:place w:st=3D"on">Cocoa</st1:place> class methods (all =
in-process),
while external preview and the PDF workflow/save-as-pdf functionality =
uses
cupsfilter.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Either way, you can normally restrict yourself to a subset of =
known
options that affect layout, scaling, and basic color presentation (color =
vs
grayscale, maybe proof using ICC color profiles) - none of the dozens of
Gutenprint color options can be represented in the preview,&nbsp;for =
example.
(The Gimp plug-in supports it by linking to Gutenprint, something we =
probably
don't want since it would involve binary plug-ins and then we have the =
mess of
platforms/architectures to deal with...)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>[gwp]&nbsp; I think I understand =
your
point. &nbsp;I would like to explore the case where the app does the =
&#8220;layout&#8221;
settings and, then, the print dialog has &#8220;layout&#8221; settings. =
&nbsp;What
is your expectation if the app (like OpenOffice Write) sets (and flows) =
the
document to letter size; then the print dialog offers &#8220;page =
size&#8221; attribute
and the user now selects A4.&nbsp; Would you expect the print dialog to =
send the
info back to application to reformat/reflow the document or clip letter =
content
exceeding A4 or scale the letter content (without calling the =
application) to
fit A4. &nbsp;I guess I would you go with the last option&#8230;.but I =
have
seen the system where letter formatted content is printed on 4x6 cards =
(silly I
know) by simply clipping the letter content to 4x6.&nbsp; I had not seen =
any implementation
of calling back to the application.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>[gwp] Do we need to make a general =
policy
on how to handle these cases? <o:p></o:p></span></font></p>

</div>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C9C364.F6AAE90D--
