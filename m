Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C93E11.E48940BE"
Date: Mon, 3 Nov 2008 16:14:32 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A6E@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Some Comments /Feedback on CPD Specification
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.


------_=_NextPart_001_01C93E11.E48940BE
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

1.	The specification needs a Terms and Acronyms Section=20

	a.	Printer Zone - I think this mean "Printer Identifier"
Zone
	b.	Quick Preset Zone
	c.	Preview Zone
	d.	Control Zone
	e.	Configuration Matrix Zone
	f.	Printing Parameter Zone

2.	Add a conformance section: SHALL (NOT), WILL (NOT), MAY (NOT)
3.	When a conformance term is being used in the specification it
should be capitalized.
4.	The Overview section needs to provide an overview of CPD with
objectives and goals
5.	Internationalization section should be move the a separate
section later in the specification.=20
6.	Diagram in "dialog structure" section don't match "Dialog Zones"
section; specifically, 'level 3' diagram.   Since there is no value to
both set of diagrams and dual labels (Column 1 =3D=3D 'Quick Preset =
Zone"  I
would suggest removing the "dialog structure" and merge any dimensional
data into the "Dialog Zones" section.
7.	Describing a 'Zone' occupies a specific column adds no value to
description; however, add the dimensional info from the 'dialog
structure' section would.  =20
8.	Is there any value in having a 'level 3' and 'expanded level 3'.
The can be stated the 'expanded printing parameter zone' will be
increased (from 0 height) to accommodate added parameters.
9.	The next is 'zone content', but I notice there are fixed title
fields, drop down, etc.;  are these fields and their attributes
determined the CPD itself or does the application or PPD file extensions
have any control over these fields.   Are any attributes about the
controllable by the application or PPD extensions? Can't really think
why there might be any reason for a application level control of
attributes.

	a.	However, I don't remember seeing in the CPDAPI "Get"
information on the preview area.   This could be important to some
application on how they render reduced resolution preview images.  I am
assuming the current version does not have magnification of the preview;
but that is a logical extension and want to be considered in the
specification at this time.

=20

In general I have a concern with the terms and phrases used in the
dialog.   They do not follow existing conventions which I have found
with most user causes confusion and prompts help calls.

=20

10.	I notice on the 'level-3' example phrases like "For handing out'
instead of the traditional phrase "Handouts".   Can the OpenPrinting
Architecture Team review these labels to ensure coherence with existing
printing standards and conventions?   For example what does "Handling
pages" means or imply?   "Best ever" is a non-conventional term for
either "Best" or "Photo" quality.  "On both sides of the paper" is
called 'duplex'.  If we create new words, terms and phrases for Linux
printing is will be just another reason for people to not use Linux and
if the goal is go beyond Linux, it must use words, terms and phrases
that people are used too - this comment comes from dealing with real
user when even small changes are made.
11.	The label "Default" is confusing; it should say "Pre-set for" or
just "Pre-set".  If I read it as currently then it say "Default
Document, Crisp"; but "Pre-set for Document, crisp" in understandable by
users.

=20

12.	Can the "Control Printing Aspects" rotating arrow just be check
box"?  I also like a simpler label of "Printing Controls" or "Printing
Options".

	a.	Is there a way to "Show" the dialog

=20

=20

This discussion was further elaborated in the Steering Committee meeting
and it was agreed to start an architecture to expand on this.

=20

Glen=20


------_=_NextPart_001_01C93E11.E48940BE
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
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
	{mso-list-id:49572076;
	mso-list-type:hybrid;
	mso-list-template-ids:729040788 67698703 67698713 67698715 67698703 =
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
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>The specification =
needs a Terms
     and Acronyms Section <o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Printer Zone &#8211; =
I think
      this mean &#8220;Printer Identifier&#8221; =
Zone<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Quick Preset =
Zone<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Preview =
Zone<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Control =
Zone<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Configuration Matrix =
Zone<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Printing Parameter =
Zone<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Add a conformance =
section:
     SHALL (NOT), WILL (NOT), MAY (NOT)<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>When a conformance =
term is
     being used in the specification it should be =
capitalized.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>The Overview section =
needs to
     provide an overview of CPD with objectives and =
goals<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Internationalization =
section
     should be move the a separate section later in the specification. =
<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Diagram in =
&#8220;dialog
     structure&#8221; section don&#8217;t match &#8220;Dialog =
Zones&#8221;
     section; specifically, &#8216;level 3&#8217; diagram.&nbsp;&nbsp; =
Since
     there is no value to both set of diagrams and dual labels (Column 1 =
=3D=3D &#8216;Quick
     Preset Zone&#8221;&nbsp; I would suggest removing the &#8220;dialog
     structure&#8221; and merge any dimensional data into the =
&#8220;Dialog
     Zones&#8221; section.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Describing a =
&#8216;Zone&#8217;
     occupies a specific column adds no value to description; however, =
add the
     dimensional info from the &#8216;dialog structure&#8217; section
     would.&nbsp;&nbsp; <o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Is there any value in =
having a &#8216;level
     3&#8217; and &#8216;expanded level 3&#8217;.&nbsp; The can be =
stated the &#8216;expanded
     printing parameter zone&#8217; will be increased (from 0 height) to =
accommodate
     added parameters.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>The next is =
&#8216;zone content&#8217;,
     but I notice there are fixed title fields, drop down, etc.;&nbsp; =
are
     these fields and their attributes determined the CPD itself or does =
the
     application or PPD file extensions have any control over these =
fields.&nbsp;&nbsp;
     Are any attributes about the controllable by the application or PPD
     extensions? Can&#8217;t really think why there might be any reason =
for a
     application level control of =
attributes.<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>However, I =
don&#8217;t
      remember seeing in the CPDAPI &#8220;Get&#8221; information on the
      preview area.&nbsp;&nbsp; This could be important to some =
application on
      how they render reduced resolution preview images.&nbsp; I am =
assuming
      the current version does not have magnification of the =
preview;&nbsp; but
      that is a logical extension and want to be considered in the =
specification
      at this time.<o:p></o:p></span></font></li>
 </ol>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>In general I have a concern with the terms and =
phrases used
in the dialog.&nbsp;&nbsp; They do not follow existing conventions which =
I have
found with most user causes confusion and prompts help =
calls.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D10 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>I notice on the =
&#8216;level-3&#8217;
     example phrases like &#8220;For handing out&#8217; instead of the =
traditional
     phrase &#8220;Handouts&#8221;.&nbsp;&nbsp; Can the OpenPrinting
     Architecture Team review these labels to ensure coherence with =
existing
     printing standards and conventions?&nbsp;&nbsp; For example what =
does &#8220;Handling
     pages&#8221; means or imply? &nbsp;&nbsp;&#8220;Best ever&#8221; is =
a
     non-conventional term for either &#8220;Best&#8221; or =
&#8220;Photo&#8221;
     quality. &nbsp;&#8220;On both sides of the paper&#8221; is called =
&#8216;duplex&#8217;.&nbsp;
     If we create new words, terms and phrases for Linux printing is =
will be
     just another reason for people to not use Linux and if the goal is =
go
     beyond Linux, it must use words, terms and phrases that people are =
used
     too &#8211; this comment comes from dealing with real user when =
even small
     changes are made.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>The label =
&#8220;Default&#8221;
     is confusing; it should say &#8220;Pre-set for&#8221; or just =
&#8220;Pre-set&#8221;.&nbsp;
     If I read it as currently then it say &#8220;Default Document, =
Crisp&#8221;;
     but &#8220;Pre-set for Document, crisp&#8221; in understandable by =
users.<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal style=3D'margin-left:.25in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'><o:p>&nbsp;</o:p></span></fo=
nt></p>

<ol style=3D'margin-top:0in' start=3D12 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Can the &#8220;Control =
Printing
     Aspects&#8221; rotating arrow just be check box&#8221;?&nbsp; I =
also like
     a simpler label of &#8220;Printing Controls&#8221; or =
&#8220;Printing
     Options&#8221;.<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font size=3D2 =
face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Is there a way to =
&#8220;Show&#8221;
      the dialog<o:p></o:p></span></font></li>
 </ol>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>This discussion was further elaborated in the =
Steering
Committee meeting and it was agreed to start an architecture to expand =
on this.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Glen <o:p></o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C93E11.E48940BE--
