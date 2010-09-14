Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CB545B.640A9B8E"
Date: Tue, 14 Sep 2010 15:24:21 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F540335@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Final comments on OPVP
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

This is a multi-part message in MIME format.

------_=_NextPart_001_01CB545B.640A9B8E
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

While I have identified a few grammar and related errors; they would in =
no way change the meaning or use of the OPVP.  However, the comments =
below, I believe may be unclear or change the meaning.  Please accepts =
these comments as recommendations and not mandatory.

=20

1.	Page 11, line 21

	a.	Change "The caller may.." to "The caller MAY..." and=20

2.	Page 11, line 22

	a.	Change "SHOULD" to "MUST"

3.	Page 12, line 4

	a.	Change "SHOULD" to "MUST"

4.	Page 13, line 28.

	a.	I would like to very strongly recommend that there is no such thing =
as a "default print job properties".   If you must have a "default", =
then this document should specify the values.  Let any kind of "default =
print job properties" be the responsibility of the caller (i.e. the OS, =
the App) and not the driver.

5.	Page 14, line 17

	a.	Change "If a caller calls the opvpEndJob()...." To "If a caller =
calls the opvpEndJob(), opvpEndPage(), and/or opvpEndDoc() ...."

6.	Page 14, line 36

	a.	Unless there is another way to set document properties; change "The =
caller can set document..." to "The caller [MUST] sets document ..."

7.	Page 19, Iine 5 to line 6

	a.	I do no understand the line beginning with "Supported..."

8.	Page 26, line 37

	a.	There is an inconsistency between section 3.1 and all of the APIs =
that specify "caller coordinate system units".   Section 3.1 states that =
"Units of the coordinate system are based on the device resolution."   =
(Note, through out the document, the words "device" and "driver" are =
used interchangeably.)    I suggest changing Section 3.1 to state "Units =
of coordinate for the caller and driver are independent and are related =
through a Coordinate Transformation Matrix (CTM)." =20
	b.	Note; thus far, I have not found any incorrect use of caller or =
driver units and, in fact, it has been clearly stated what is required.

=20

Finally, I would like to very strongly recommend removing the Optional =
calling of StartDoc and EndDoc if there is only one document.   All jobs =
have documents and all documents have pages; so making a clear and =
distinct startJob, startDoc, start Page,....endPage, endDoc, endJob =
sequence make both the caller and driver clearer.

=20

=20

Glen






------_=_NextPart_001_01CB545B.640A9B8E
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1">
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
	{mso-list-id:851458610;
	mso-list-type:hybrid;
	mso-list-template-ids:-1392332584 67698703 67698713 67698715 67698703 =
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
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
font-family:Arial'>While I have identified a few grammar and related =
errors;
they would in no way change the meaning or use of the OPVP.=A0 However, =
the
comments below, I believe may be unclear or change the meaning.=A0 =
Please accepts
these comments as recommendations and not =
mandatory.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 11, line =
21<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Change &#8220;The =
caller may..&#8221;
      to &#8220;The caller MAY&#8230;&#8221; and =
<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 11, line =
22<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Change =
&#8220;SHOULD&#8221; to
      &#8220;MUST&#8221;<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 12, line =
4<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Change =
&#8220;SHOULD&#8221; to
      &#8220;MUST&#8221;<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 13, line =
28.<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>I would like to very =
strongly
      recommend that there is no such thing as a &#8220;default print =
job
      properties&#8221;.=A0=A0 If you must have a &#8220;default&#8221;, =
then this
      document should specify the values.=A0 Let any kind of =
&#8220;default print
      job properties&#8221; be the responsibility of the caller (i.e. =
the OS,
      the App) and not the driver.<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 14, line =
17<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Change &#8220;If a =
caller
      calls the opvpEndJob()&#8230;.&#8221; To &#8220;If a caller calls =
the
      opvpEndJob(), opvpEndPage(), and/or opvpEndDoc() =
&#8230;.&#8221;<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 14, line =
36<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Unless there is =
another way to
      set document properties; change &#8220;The caller can set =
document&#8230;&#8221;
      to &#8220;The caller [MUST] sets document =
&#8230;&#8221;<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 19, Iine 5 to =
line 6<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>I do no understand =
the line
      beginning with =
&#8220;Supported&#8230;&#8221;<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Page 26, line =
37<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>There is an =
inconsistency
      between section 3.1 and all of the APIs that specify &#8220;caller =
coordinate
      system units&#8221;.=A0 =A0Section 3.1 states that &#8220;Units of =
the coordinate
      system are based on the device resolution.&#8221;=A0=A0 (Note, =
through out
      the document, the words &#8220;device&#8221; and =
&#8220;driver&#8221; are
      used interchangeably.)=A0 =A0=A0I suggest changing Section 3.1 to =
state &#8220;Units
      of coordinate for the caller and driver are independent and are =
related through
      a Coordinate Transformation Matrix (CTM).&#8221;=A0 =
<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Note; thus far, I =
have not found
      any incorrect use of caller or driver units and, in fact, it has =
been
      clearly stated what is required.<o:p></o:p></span></font></li>
 </ol>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Finally, I would like to very strongly recommend =
removing the
Optional calling of StartDoc and EndDoc if there is only one =
document.=A0=A0 All
jobs have documents and all documents have pages; so making a clear and
distinct startJob, startDoc, start Page,&#8230;.endPage, endDoc, endJob
sequence make both the caller and driver =
clearer.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><br>
<br>
<o:p></o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CB545B.640A9B8E--
