Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9C350.32247D5B"
Date: Wed, 22 Apr 2009 06:45:11 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Print Dialog: Preview Processing: Only A
	Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9C350.32247D5B
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

I have been requested to get a better understanding of processing
related to the print preview. =20

I am not proposing a solution or suggesting changing to a solution.

=20

Question Summary: Will the Application or the Print Dialog Generate the
Preview?  Perhaps some of both?  Perhaps on one.

=20

Supporting Discussion:

=20

Something brought up at the summit which I need clarification on was the
aspect of the "preview"; specifically, where it is generated (where does
the "processing" occur) and whether the Print Dialog will initially
and/or subsequently need/request the application to generate new/updated
preview content. Maybe all of this is a non-issue.  That this;
specifically, what printing attributes and what attributes would require
the application to generate/regenerate print(/preview) content?  I
believe the ones that we could all agree on would be margins, pages size
and page orientation.  I believe that most (if not all) applications
provide a mechanism for setting the page size and page orientation.
Applications also have a mechanism for margins or use the printer
default (how in Linux do applications get the default/min margin values
for a specific (the active) printer?).  So, I believe that the Print
Dialog is not "controlling"/setting these attributes for the
applications.  If the previous statements were true then what attributes
in the Print Dialog would need the application to generate/regenerate
the preview?=20

=20

What are the other printing parameters that should only be at the
application level?

=20

What attributes can the dialog support generating the preview (note the
command would be passed to the print manager and printer driver for
actually printing or if no preview is skipped)

*       scaling (i.e. scale to fit)

*       n-up

*       duplex

*       booking (book layout)

*       watermarks

*       color-to-bw

*       Please see the OpenPrinting JTAPI list of objects and attributes
for a more complete list.

=20

(An interesting case is page size (or page orientation) when the user
selects "scale-to-fit"; so that the print dialog over rides these two
options by scaling the original print content from the applications to
fit the new pages size/orientation.  However, the print content is not
recreated by the application.)

=20

I don't believe that the actually printer driver would be needed to
render the preview at the level needed for the preview; so this keeps
generation of the preview within the confines of the print dialog.

=20

Now, should we consider the design where the print dialog only receives
the print job and no preview image (less burden on the application);
then it is the responsibility of the print dialog to "render" the
preview. Examples

=20

--- If the print dialog receives an image then the Print Dialog
under-samples/sub-samples or uses a GDI command to create the preview
(size) image.

--- If the print dialog receives PS/PDF then the Print Dialog calls
Ghostscript to a DPI/resolution value needed for the preview.  I assume
this processing is within an acceptable load.

--- If the print dialog receives text; use Ghostscript or "printing" to
off screen memory to create an image representation.

=20

So, dose this support having all of the "processing" of the preview
contained with the print dialog only?=20

=20

glen

=20

=20


------_=_NextPart_001_01C9C350.32247D5B
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
 /* List Definitions */
 @list l0
	{mso-list-id:1534417330;
	mso-list-type:hybrid;
	mso-list-template-ids:-1855695498 -1209924042 67698691 67698693 =
67698689 67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:2;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Batang;
	mso-bidi-font-family:Arial;}
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
font-family:Arial'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I have been requested to get a better understanding =
of
processing related to the print preview. =
&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I am not proposing a solution or suggesting changing =
to a
solution.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Question Summary: Will the Application or the Print =
Dialog
Generate the Preview? &nbsp;Perhaps some of both?&nbsp; Perhaps on =
one.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Supporting Discussion:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Something brought up at the summit which I need
clarification on was the aspect of the &#8220;preview&#8221;; =
specifically, where
it is generated (where does the &#8220;processing&#8221; occur) and =
whether the
Print Dialog will initially and/or subsequently need/request the =
application to
generate new/updated preview content. Maybe all of this is a non-issue.
&nbsp;That this; specifically, what printing attributes and what =
attributes would
require the application to generate/regenerate print(/preview) content? =
&nbsp;I
believe the ones that we could all agree on would be margins, pages size =
and
page orientation.&nbsp; I believe that most (if not all) applications =
provide a
mechanism for setting the page size and page orientation.&nbsp; =
Applications also
have a mechanism for margins or use the printer default (how in Linux do =
applications
get the default/min margin values for a specific (the active) =
printer?).&nbsp; So,
I believe that the Print Dialog is not &#8220;controlling&#8221;/setting =
these
attributes for the applications.&nbsp; If the previous statements were =
true
then what attributes in the Print Dialog would need the application to =
generate/regenerate
the preview? <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>What are the other printing parameters that should =
only be
at the application level?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>What attributes can the dialog support generating the
preview (note the command would be passed to the print manager and =
printer
driver for actually printing or if no preview is =
skipped)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>scaling
(i.e. scale to fit)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>n-up<o:p></o:p></span></font=
></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>duplex<o:p></o:p></span></fo=
nt></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>booking
(book layout)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>watermarks<o:p></o:p></span>=
</font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>color-to-bw<o:p></o:p></span=
></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Please see
the OpenPrinting JTAPI list of objects and attributes for a more =
complete list.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>(An interesting case is page size (or page =
orientation) when
the user selects &#8220;scale-to-fit&#8221;; so that the print dialog =
over
rides these two options by scaling the original print content from the
applications to fit the new pages size/orientation.&nbsp; However, the =
print
content is not recreated by the =
application.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I don&#8217;t believe that the actually printer =
driver would
be needed to render the preview at the level needed for the preview; so =
this
keeps generation of the preview within the confines of the print =
dialog.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Now, should we consider the design where the print =
dialog
only receives the print job and no preview image (less burden on the
application); then it is the responsibility of the print dialog to
&#8220;render&#8221; the preview. Examples<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- If the print dialog receives an image then the =
Print
Dialog under-samples/sub-samples or uses a GDI command to create the =
preview (size)
image.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- If the print dialog receives PS/PDF then the =
Print
Dialog calls Ghostscript to a DPI/resolution value needed for the =
preview.
&nbsp;I assume this processing is within an acceptable =
load.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- If the print dialog receives text; use =
Ghostscript or
&#8220;printing&#8221; to off screen memory to create an image =
representation.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>So, dose this support having all of the =
&#8220;processing&#8221;
of the preview contained with the print dialog only? =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C9C350.32247D5B--
