Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9BF6F.0E5BB617"
Date: Fri, 17 Apr 2009 08:15:56 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379CD1@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Common Dialogs for Printing
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

------_=_NextPart_001_01C9BF6F.0E5BB617
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

I guess the addition of the actual preview to the CPD has triggered more
review of CPD from my perspective.

=20

I hope and believe the key object of this effort is focused on "Common".
Thus, I now believe we may be trying to do too much in the CPD and
actually need three common dialogs; specifically, the Common Preview
Dialog (CRD), the Common Print Dialog (CPD), and the Common
Status/Monitoring Dialog (CSD). =20

=20

Actually, what we call print preview is really "preview of the page
setup" or "layout".  It is expected that printer will print the page as
shown in the "print preview" or "page preview".   So is this the "print
preview" or the applications "page preview"???

=20

Background:

1.	We should learn from what other OS / Application have evolved
from or to.
2.	We have now have usability test data and results but I have not
seen use-cases.

=20

=20

Print Preview Dialog:

*       As Johannes stated and I agree, I use Print Preview but only
about 20% of the time (maybe less); the other 80% I am not concerned
with how the content will appear printed or I already know.  The key,
however, is that when I want to print preview I am interested in the
details that really cannot be obtained from a thumbnail representation
of the content.  Example 1; I want to know what rows/columns of my
spreadsheet will fit on a page and will I be able to read the content
once printed.  Example 2; I want to place an image at a specific place
on the print page.   The point is I will need to see the print content
at full scale (as rendered to the screen resolution as a representation
of the print resolution).

o        In this case, I am willing to wait for what ever the needed
processing time is to render the print content because reviewing the
rendered print content is what I want to do.

*       Thus, this needs to be a separate callable dialog from an
application that has the emphasis on panning or zooming of a single page
while stepping through individual pages.  It could have operations to
show margin positions, hole punch locations and other normally invisible
markings/attributes.

=20

=20

Print Dialog:

*       When I print, however, 95% of the time I want to see a symbolic
representation of the print options.  That is, which edge is selected
when duplex printing, where are the punch hole locations, is the print
BW or color, is the media in portrait or landscape mode.  None of these
and other print options require the actual print content.

o        In this case, I am not willing to wait for a thumbnail
representation of my actual print content because it adds no value to
setting print options.

o        Having a consistent symbolic representation is critical because
it makes it easier to quickly identify what options I have set or have
not set.

*       Therefore, I really support using the previous version of the
CPD along with a symbolic representation of the print options.=20

=20

Status/Monitoring Dialog:

*       Some days I want to see this dialog and others days it is very
annoying; so careful consideration of this dialog is important.

o        I don't want see ink/toner levels every time I print.=20

o        I don't want see supply levels (waste, paper, trays) every time
I print.

*       What do I want to see?

o        I would like to have the option of three type of dialogs

*         1. A popup dialog box (option to auto close when complete)

*         2. A desktop iconic (with start, % complete, done)

*         3. An application bar (like the % indicator when downloading a
file)

o        First thing, and not really shown today, I want to know if the
printer really accepted my job

o        I want to know what page, of the total pages, is being printed
right now -- not just spooled.

o        I want to know what percentage of the current page has actually
been printed right now at the printer; not just spooled.

*         Yes, there could be a indicator that the print content has
been spooled - therefore, the user know that print content is ready for
physical printing.

o        I want to know when the job has completed.

*       What I do not want to see?

o        I do not want a dialog to popup with "Job Complete" that would
interrupt the work I may be doing to address an "OK done" dialog.

=20

I think I will leave out any other details until I hear feedback from
reading this email.

=20

gwp

=20


------_=_NextPart_001_01C9BF6F.0E5BB617
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
	{mso-list-id:86311216;
	mso-list-type:hybrid;
	mso-list-template-ids:1441185918 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:451049880;
	mso-list-type:hybrid;
	mso-list-template-ids:2071628558 2030070850 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Batang;
	mso-bidi-font-family:Arial;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
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

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I guess the addition of the actual preview to the CPD =
has
triggered more review of CPD from my =
perspective.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I hope and believe the key object of this effort is =
focused
on &#8220;Common&#8221;.&nbsp; Thus, I now believe we may be trying to =
do too
much in the CPD and actually need three common dialogs; specifically, =
the Common
Preview Dialog (CRD), the Common Print Dialog (CPD), and the Common
Status/Monitoring Dialog (CSD).&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Actually, what we call print preview is really =
&#8220;preview
of the page setup&#8221; or &#8220;layout&#8221;. &nbsp;It is expected =
that
printer will print the page as shown in the &#8220;print preview&#8221; =
or &#8220;page
preview&#8221;. &nbsp;&nbsp;So is this the &#8220;print preview&#8221; =
or the
applications &#8220;page preview&#8221;???<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Background:<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>We should learn from =
what other
     OS / Application have evolved from or =
to.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>We have now have =
usability test
     data and results but I have not seen =
use-cases.<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Print Preview Dialog:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>As Johannes
stated and I agree, I use Print Preview but only about 20% of the time =
(maybe
less); the other 80% I am not concerned with how the content will appear =
printed
or I already know.&nbsp; The key, however, is that when I want to print =
preview
I am interested in the details that really cannot be obtained from a =
thumbnail representation
of the content.&nbsp; Example 1; I want to know what rows/columns of my
spreadsheet will fit on a page and will I be able to read the content =
once
printed.&nbsp; Example 2; I want to place an image at a specific place =
on the
print page. &nbsp;&nbsp;The point is I will need to see the print =
content at full
scale (as rendered to the screen resolution as a representation of the =
print
resolution).<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>In this case, I am willing =
to wait
for what ever the needed processing time is to render the print content =
because
reviewing the rendered print content is what I want to =
do.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Thus, this
needs to be a separate callable dialog from an application that has the
emphasis on panning or zooming of a single page while stepping through
individual pages.&nbsp; It could have operations to show margin =
positions, hole
punch locations and other normally invisible =
markings/attributes.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Print Dialog:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>When I
print, however, 95% of the time I want to see a symbolic representation =
of the
print options.&nbsp; That is, which edge is selected when duplex =
printing,
where are the punch hole locations, is the print BW or color, is the =
media in
portrait or landscape mode.&nbsp; None of these and other print options =
require
the actual print content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>In this case, I am not =
willing to
wait for a thumbnail representation of my actual print content because =
it adds
no value to setting print options.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Having a consistent =
symbolic representation
is critical because it makes it easier to quickly identify what options =
I have
set or have not set.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Therefore, I
really support using the previous version of the CPD along with a =
symbolic
representation of the print options. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Status/Monitoring =
Dialog:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Some days I
want to see this dialog and others days it is very annoying; so careful
consideration of this dialog is important.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I don&#8217;t want see =
ink/toner
levels every time I print. <o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I don&#8217;t want see =
supply levels
(waste, paper, trays) every time I print.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>What do I
want to see?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I would like to have the =
option of
three type of dialogs<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l1 level3 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>&sect;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>1. A popup dialog box =
(option to
auto close when complete)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l1 level3 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>&sect;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>2. A desktop iconic (with =
start, %
complete, done)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l1 level3 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>&sect;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>3. An application bar (like =
the %
indicator when downloading a file)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>First thing, and not really =
shown
today, I want to know if the printer really accepted my =
job<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I want to know what page, =
of the
total pages, is being printed right now -- not just =
spooled.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I want to know what =
percentage of
the current page has actually been printed right now at the printer; not =
just
spooled.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-.25in;mso-list:l1 level3 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>&sect;<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Yes, there could be a =
indicator that
the print content has been spooled &#8211; therefore, the user know that =
print
content is ready for physical printing.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I want to know when the job =
has
completed.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DWingdings><span =
style=3D'font-size:10.0pt;font-family:Wingdings'><span
style=3D'mso-list:Ignore'>n<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>What I do
not want to see?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I do not want a dialog to =
popup with
&#8220;Job Complete&#8221; that would interrupt the work I may be doing =
to
address an &#8220;OK done&#8221; dialog.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I think I will leave out any other details until I =
hear
feedback from reading this email.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>gwp<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C9BF6F.0E5BB617--
