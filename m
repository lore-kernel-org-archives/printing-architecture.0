Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9BEA1.AEDF97AD"
Date: Thu, 16 Apr 2009 07:45:48 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379CAF@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Preview for CPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, peter sikking <peter@mmiworks.net>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9BEA1.AEDF97AD
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Peter, Till,

=20

I believe my understanding from the print-summit was that the new CPD
would "always" preview the actual print content, which was based on
Peter's usability test results.  The concern I have is that the
potential processing in creating the preview would include the entire
print chain; even though the image is at a very low resolution.  This
level of processing has a potential large time delay.   If the End-User
starts making print option changes that affect the preview; the preview
image will have to be re-rendered, which may take too much time.

=20

I would like to suggest that the CPD add and use, as the default, an
internal default image that illustrates the print intent and print
options but not the actual print content.  This would reduce potential
heavy processing for the actual print content preview.  However, the
user should be able to enable display of the actual print content and
willing to accept the potential time delay in creating the actual print
content.

=20

glen


------_=_NextPart_001_01C9BEA1.AEDF97AD
Content-Type: text/html;
	charset="us-ascii"
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
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Peter, Till,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I believe my understanding from the print-summit was =
that
the new CPD would &#8220;always&#8221; preview the actual print content, =
which
was based on Peter&#8217;s usability test results. &nbsp;The concern I =
have is
that the potential processing in creating the preview would include the =
entire
print chain; even though the image is at a very low resolution.&nbsp; =
This
level of processing has a potential large time delay. &nbsp;&nbsp;If the
End-User starts making print option changes that affect the preview; the
preview image will have to be re-rendered, which may take too much =
time.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I would like to suggest that the CPD add and use, as =
the
default, an internal default image that illustrates the print intent and =
print options
but not the actual print content. &nbsp;This would reduce potential =
heavy
processing for the actual print content preview.&nbsp; However, the user =
should
be able to enable display of the actual print content and willing to =
accept the
potential time delay in creating the actual print =
content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>glen<o:p></o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C9BEA1.AEDF97AD--
