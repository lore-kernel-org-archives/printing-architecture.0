Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC2F94.BD06DF7B"
Date: Mon, 20 Jun 2011 14:55:15 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805DBE@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] OpenPrinting Mobile Behavior Guidelines
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

------_=_NextPart_001_01CC2F94.BD06DF7B
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

I had an action item to produce the "OpenPrinting Mobile Behavior
Guidelines".  It is time to start.

=20

Please comment on the following: do you agree or do you have another
opinion (explain your opinion)?

=20

=20

What should be in the guidelines: =20

General what the mobile device (client) needs to do and can expect.
And, what the print "interface" needs to do and can expect.

=20

From my presentation at the last F2F, I had defined the guidelines would
include such things as

1.      Definition of objects,  elements and attributes

2.      Definition ranges or the set of extensible and non-extensible
values

3.      Groupings of related objects, elements and attributes

4.      Interrelationships between objects, elements, attributes and
their values

5.      Constraints between  objects, elements, attributes and their
values

=20

Looking at the list above, the first three things are covered the JTAPI.
So I would propose that the Guidelines state that elements of JTAPI be
used.

=20

For item 4 and 5, I can go through the various combinations to determine
the determinable constraints and relationships.

=20

I can go through the various combinations and create a set of predefined
print mode (photo, web page, etc) that mobile devices (clients) can
specify and will be understood by the print services or printer.=20

=20

What would the simplest print-architecture look like and various levels
of complexity.  That is can a mobile device include CUPS or another, and
simpler, print manager (management) solution.   How thin can a print
manger (management) module be?  We would specific (as part of the
guideline) what was the minimum support and the ordering for adding more
complex capabilities.

=20

For the various combinations of interface types shown below, I can
create proposed "values" (names or iconics or keystroke or whatever) to
support each interface type.

*         a dialog box? (how big?, how many pixels)

*         pull down menus?

*         hierarchical menus?  (same as display on a printer)

*         one or more iconic?

*         keystroke commands?

*         gesturing (double tap to print)?

*         a physical button action?

*         combinations of the above?

=20

The guideline would need a conformance section (include what not to do).

=20

The guideline conformance should define the level of print "dialog"
(interface) support is required for a mobile device with specific
display size and computing power.  (think of phone to iPad to netbook to
laptop)

=20

The guideline needs to define how applications can """extent""" mobile
printing and mobile dialogs.  The same would be true for print vendor
extension.  =20

=20

The guideline would need a complete glossary.  (I suspect that this
would be used by people with various levels of print interface
development experience.)

=20

The guideline would need a sample implementation (?) of each interface
type (?)

=20

=20

=20

=20

=20

=20


------_=_NextPart_001_01CC2F94.BD06DF7B
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	font-family:Cambria;
	color:windowtext;
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
	{mso-list-id:61828991;
	mso-list-type:hybrid;
	mso-list-template-ids:1654128690 1521675468 -124608338 67698703 =
-865033462 1307979368 -1681331310 -101783080 -1446901374 162537306;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l0:level2
	{mso-level-start-at:612;
	mso-level-number-format:bullet;
	mso-level-text:\2013;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:1287278346;
	mso-list-type:hybrid;
	mso-list-template-ids:-465119264 1521675468 -124608338 -1614266800 =
-865033462 1307979368 -1681331310 -101783080 -1446901374 162537306;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l1:level2
	{mso-level-start-at:612;
	mso-level-number-format:bullet;
	mso-level-text:\2013;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l2
	{mso-list-id:1342053499;
	mso-list-type:hybrid;
	mso-list-template-ids:-1623281706 1477883458 -1805214956 -1207693544 =
1881209600 -519917506 -895477796 -1815082622 229822858 1083054680;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l2:level2
	{mso-level-start-at:612;
	mso-level-number-format:bullet;
	mso-level-text:\2013;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\2022;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I had an action item to produce the =
&#8220;OpenPrinting
Mobile Behavior Guidelines&#8221;.&nbsp; It is time to =
start.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Please comment on the following: do you agree or do =
you
have another opinion (explain your =
opinion)?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>What should be in the guidelines:&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>General what the mobile =
device
(client) needs to do and can expect.&nbsp; And, what the print =
&#8220;interface&#8221;
needs to do and can expect.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.5in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>From my presentation at =
the last
F2F, I had defined the guidelines would include such things =
as<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l0 level3 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Definition of =
objects,&nbsp;
elements and attributes<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l0 level3 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Definition ranges or =
the set of
extensible and non-extensible values<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l0 level3 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Groupings of related =
objects,
elements and attributes<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l0 level3 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Interrelationships =
between
objects, elements, attributes and their =
values<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l0 level3 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>5.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Constraints =
between&nbsp;
objects, elements, attributes and their =
values<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.25in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>Looking at the list =
above, the first
three things are covered the JTAPI.&nbsp; So I would propose that the
Guidelines state that elements of JTAPI be =
used.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>For item 4 and 5, I can =
go through
the various combinations to determine the determinable constraints and =
relationships.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>I can go through the =
various
combinations and create a set of predefined print mode (photo, web page, =
etc)
that mobile devices (clients) can specify and will be understood by the =
print
services or printer. <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>What would the simplest
print-architecture look like and various levels of complexity.&nbsp; =
That is
can a mobile device include CUPS or another, and simpler, print manager
(management) solution.&nbsp;&nbsp; How thin can a print manger =
(management)
module be?&nbsp; We would specific (as part of the guideline) what was =
the
minimum support and the ordering for adding more complex =
capabilities.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>For the various =
combinations of
interface types shown below, I can create proposed &#8220;values&#8221; =
(names
or iconics or keystroke or whatever) to support each interface =
type.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>a dialog box? (how big?, how many =
pixels)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>pull down =
menus?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>hierarchical menus?&nbsp; (same as display =
on a
printer)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>one or more =
iconic?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>keystroke =
commands?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>gesturing (double tap to =
print)?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>a physical button =
action?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l2 level3 =
lfo3'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>&#8226;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>combinations of the =
above?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The guideline would need =
a conformance
section (include what not to do).<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The guideline conformance =
should
define the level of print &#8220;dialog&#8221; (interface) support is =
required
for a mobile device with specific display size and computing =
power.&nbsp;
(think of phone to iPad to netbook to =
laptop)<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The guideline needs to =
define how
applications can &#8220;&#8221;&#8221;extent&#8221;&#8221;&#8221; mobile
printing and mobile dialogs.&nbsp; The same would be true for print =
vendor
extension.&nbsp; &nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The guideline would need =
a
complete glossary.&nbsp; (I suspect that this would be used by people =
with various
levels of print interface development =
experience.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'>The guideline would need =
a sample implementation
(?) of each interface type (?)<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal style=3D'margin-left:1.0in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

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

------_=_NextPart_001_01CC2F94.BD06DF7B--
