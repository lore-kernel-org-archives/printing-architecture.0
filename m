Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9C397.79B0BED1"
Date: Wed, 22 Apr 2009 15:15:20 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Print
	Dialog:PreviewProcessing: Only A Question
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

------_=_NextPart_001_01C9C397.79B0BED1
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

=20

So, is the follow summary correct?  Please correct if I did not capture
the mail thread discussion correctly.

=20

=20

Applications will send the (source) paper-size as part of the print job
(job-ticket???) and the Print Dialog will set the (destination)
paper-size that the one defined in the print job.

=20

*       The Application can not disable the (destination) paper-size
setting in the print dialog

*       The User can change the print (destination) paper-size

o        Default action: The print content will be scaled to fit the
specified destination paper-size on a page-to-page basis.

*         In the event of complex documents, all pages will be scaled to
fit on a page-by-page basis.

o        Options: The dialog may provide optional transforms for going
from the source paper-size to the destination paper-size.

*         In the event of complex documents, all pages will be
transformed the same way on a page-by-page basis.

=20

Question: (Always one more question) - Should a warning message be
displayed when the user is changing the source paper-size to a different
destination paper-size?

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

*       Although you don't normally see margin settings in print dialog;
if they are in the print dialog, I think we should use the same
guideline outlined above.

=20

Finally, if the above guideline is ok, then does it imply that the print
dialog does not need to ask the application to re-render the preview?

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I would like to discuss more about whether the Application renders the
preview or the print dialog does it.

=20

Some considersations:

*       Actually, one reason to have the print dialog render is to the
display an accurate depiction of what will be printed versus previewing
what the application expects will be printed.

*       I believe moving rendering responsibility to the print dialog
puts the rendering in a common place and removes the burden from the
application.

*       Removes bi-directional communication between the application and
print dialog; that is, printing is handed off operation to print dialog.

*       The print dialog may be used to open spooled print job to
provide a preview even when the application has been closed.

=20

=20

=20

=20

=20

=20

=20


------_=_NextPart_001_01C9C397.79B0BED1
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 77.95pt 1.0in 77.95pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:2085950093;
	mso-list-type:hybrid;
	mso-list-template-ids:145550032 -2106319680 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:2;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Batang;
	mso-bidi-font-family:"Courier New";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>So, is the follow summary correct?&nbsp; Please correct if I did =
not
capture the mail thread discussion =
correctly.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Applications will send the (source) paper-size as part of the =
print job
(job-ticket???) and the Print Dialog will set the (destination) =
paper-size that
the one defined in the print job.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>The Application can not =
disable
the (destination) paper-size setting in the print dialog<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>The User can change the =
print (destination)
paper-size<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:
l0 level2 lfo1'><![if !supportLists]><font size=3D2 face=3D"Courier =
New"><span
style=3D'font-size:10.0pt'><span style=3D'mso-list:Ignore'>o<font =
size=3D1
face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>Default action: The print =
content
will be scaled to fit the specified destination paper-size on a =
page-to-page
basis.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:1.75in;text-indent:-.25in;mso-list:
l0 level3 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>&sect;<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>In the event of complex =
documents,
all pages will be scaled to fit on a page-by-page basis.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:
l0 level2 lfo1'><![if !supportLists]><font size=3D2 face=3D"Courier =
New"><span
style=3D'font-size:10.0pt'><span style=3D'mso-list:Ignore'>o<font =
size=3D1
face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>Options: The dialog may =
provide
optional transforms for going from the source paper-size to the =
destination
paper-size.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:1.75in;text-indent:-.25in;mso-list:
l0 level3 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>&sect;<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>In the event of complex =
documents,
all pages will be transformed the same way on a page-by-page =
basis.<o:p></o:p></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Question: (Always one more question) &#8211; Should a warning =
message
be displayed when the user is changing the source paper-size to a =
different
destination paper-size?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p>=
</span></font></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>Although you don&#8217;t =
normally see
margin settings in print dialog; if they are in the print dialog, I =
think we
should use the same guideline outlined above.<o:p></o:p></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Finally, if the above guideline is ok, then does it imply that =
the
print dialog does not need to ask the application to re-render the =
preview?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p>=
</span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>I would like to discuss more about whether the Application =
renders the
preview or the print dialog does it.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Some considersations:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>Actually, one reason to =
have the
print dialog render is to the display an accurate depiction of what will =
be printed
versus previewing what the application expects will be =
printed.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>I believe moving rendering =
responsibility
to the print dialog puts the rendering in a common place and removes the =
burden
from the application.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>Removes bi-directional
communication between the application and print dialog; that is, =
printing is
handed off operation to print dialog.<o:p></o:p></p>

<p class=3DMsoPlainText =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:
l0 level1 lfo1'><![if !supportLists]><font size=3D2 =
face=3DWingdings><span
style=3D'font-size:10.0pt;font-family:Wingdings'><span =
style=3D'mso-list:Ignore'>n<font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]>The print dialog may be =
used to
open spooled print job to provide a preview even when the application =
has been
closed.<o:p></o:p></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C9C397.79B0BED1--
