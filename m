From: "Glen Petrie" <glen.petrie@eitc.epson.com>
Date: Mon, 13 Oct 2003 13:04:35 -0700
Message-ID: <009101c391c5$3cbd2740$11031f8a@GWPLAPTOP>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0092_01C3918A.90677700"
Subject: [Printing-architecture] FSG Architecture Use Model Iinputs - Glen
Sender: printing-architecture-admin@freestandards.org
Errors-To: printing-architecture-admin@freestandards.org
List-Help: <mailto:printing-architecture-request@freestandards.org?subject=help>
List-Post: <mailto:printing-architecture@freestandards.org>
List-Subscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=subscribe>
List-Id: <printing-architecture.freestandards.org>
List-Unsubscribe: <http://freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@freestandards.org?subject=unsubscribe>
List-Archive: <http://freestandards.org/pipermail/printing-architecture/>
To: printing-architecture@freestandards.org

This is a multi-part message in MIME format.

------=_NextPart_000_0092_01C3918A.90677700
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by eeamx2.eea.epson.com id h9DK8DtB001748

It was suggested at last weeks meeting to at least begin writing the top
level example for the use-models.  These are my suggestion for several

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

3.4 Use Model 3: Desktop Personal (Consumer) Printing

Print to a low printer from an application

1. Example Use Model:

Dorothy has been editing and formatting her biology term paper for weeks.
She takes her laptop computer to class and constantly update her term pap=
er
on new information from the lectures and labs.   She uses her portable
scanner and graphics editor to illustrates the step-by-step processes in =
her
term paper as well as the final charts and graphs which will are all
integration into her word processor.  The night before she must turn in t=
he
paper she does one final edit.  Then she loads her 2000XYZ-Color inkjet
printer with the special paper required by the professor; she connects th=
e
USB cable from her printer to her laptop and she=92s ready to print.   Sh=
e has
already formatted the print job but brings up the print preview window to
double check; the special paper is expensive.   Finally, she brings up th=
e
print dialog box and makes her selections.  She selects collated copies,
highest print resolution and background printing mode (she still has work=
 on
her chemistry assignment) before hitting the print button.  Thirty Eight
minutes later (why did I use highest quality mode!) she removes the print=
ed
pages, carefully inspects each page and staples each copy into special co=
ver
sheets for the biology class.

--------------------------------------------------------------
3.5 Use Model 5:  Desktop Small-Office / Home-Office Printing

Print to mid-volume laser printer and to impact printer

1. Example Use Model:

Keith knew it was going to be a long day; it=92s the end of the month, ag=
ain.
Keith=92s small company produces about 5000 widgets a month for a large
industrial firm.  Keith could do it all when they started but now has two
employees and the customer now wants a data sheet on each widget.   Keith
yells out his office to see if the data base has been completed for the
month and if all the widgets are packaged; they are.   Keith initially
brings up the data base and request a summary report; he=92ll need 25 cop=
ies
this month.   From the command-line Keith send the simple text summary fi=
le
to the print spooler requesting 25 copies.  Within seconds, the laser
printer, connect over a BlueTooth adaptor, starting warming up and produc=
ing
the 25 copies.  Keith returns to the data base software and request data
sheets for each entry; individual post-script files.  Keith spent weeks
designing/creating the template for the data sheets; including color and
graphics.  Keith wishes he had a laser color printer but uses his direct
connected business level inkjet for another month.  Navigating to the
directory with this months data sheets; he again request the spooler to
print two copies of each file in the current directory on the office inkj=
et
printer.  While that going on, Keith decides to do the timecards for the
temporary-agency he is using.   The temporary-agency wants a 3-part time
cards to be printed.   The impact is already loaded to the pin-feed 3-par=
t
and parallel cable in connected.   After looking over the spread data, Ke=
ith
selects the print action in the accounting software instructing the
application to send the print data to spooler for printing on the impact
printer.

-------------------------------------------------------

3.7 Use Model 6: Central (Print Room) Office Printing

Mid to large volume printing from document repository with data
transformation and post printing finishing

1. Example Use Model:

In three days Michael will provide a sales and marketing pitch to first a=
nd
second tier managers of the Zeta Bank for a new bank statement design and
end-customer packaging of statements and collaterals.  Michael has spent =
the
last two weeks interfacing to a creative writing firm to develop the text
content for his materials.   He has along spent four weeks with his inter=
nal
graphic art department designing the handout package including the stagge=
red
sized collateral sheets, integrated pictorial and text content and, final=
ly,
creation his presentation slides.  Michael now stores the images for the
collaterals which are in tiff format along with his presentation that is
MS-Power-Point format, followed by storing the MS-Word formatted bank
statement and finally, the Frame-Maker version of the end-customer packag=
e
on his internal document repository system.  Michael then brings up the
electronic technical-publication department submission form.   Michael
starts editing the contact information, the number of copies, location of
the electronic data and special finishing instructions fields of the
submission form and hits the return key.  . . .  The night before the
presentation, the technical-publication department deliveries 6 boxes of
printed sales and marketing materials for Michael sales and marketing pit=
ch.



-------------------------------------------------------
3.8 Use Model 7: Desktop File (Direct) Printing

Print to print service directly from file-manager/shell-script with going
through an application

1. Example Use Model:

Robert is the lead engineer on the power subsystem of the companies next
generation satellite.   He has spent the last 6 month working with
individual engineering and other departments on no less than 12 interrela=
ted
specifications and design documents.  People have been delivering him
post-script versions of their document over the last several days.  Rober=
t
recently bought a wide format color inkjet printer from the Acme print co=
py.
The printer has great output resolution and an extended color gammit but
does not print post script natively; so Robert download and installs the
latest version of GhostScript along with the print driver.  Robert types =
in
the print options, printer model and location of the print data for
GhostScript at the command line and wait for each document to printed.
Robert begins the task of checking and removing ambiguities between the
specifications.










Rgds,
Glen W. Petrie
Manager, Software Printing Solutions
Epson Imaging Technology Center
150 River Oaks Parkway, Suite 200
San Jose, CA, 95134
Voice: 408.576.4131  Fax: 408.474.0511


------=_NextPart_000_0092_01C3918A.90677700
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Diso-8859-1">

<meta name=3D"Microsoft Theme 2.00" content=3D"blends 010">

<meta name=3DProgId content=3DWord.Document>
<meta name=3DGenerator content=3D"Microsoft Word 9">
<meta name=3DOriginator content=3D"Microsoft Word 9">
<link rel=3DFile-List href=3D"cid:filelist.xml@01C3918A.8C970E10">
<!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:DoNotRelyOnCSS/>
  <o:DoNotOrganizeInFolder/>
  <o:TargetScreenSize>640x480</o:TargetScreenSize>
 </o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:DocumentKind>DocumentEmail</w:DocumentKind>
  <w:EnvelopeVis/>
  <w:Compatibility>
   <w:UseFELayout/>
  </w:Compatibility>
 </w:WordDocument>
</xml><![endif]-->
<style>
<!--
 /* Font Definitions */
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;
	mso-font-alt:"\FF2D\FF33 \660E\671D";
	mso-font-charset:128;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-1610612033 1757936891 16 0 131231 0;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:script;
	mso-font-pitch:variable;
	mso-font-signature:647 0 0 0 159 0;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;
	mso-font-charset:128;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-1610612033 1757936891 16 0 131231 0;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:7 0 0 0 19 0;}
 /* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Trebuchet MS";
	mso-fareast-font-family:"MS Mincho";
	mso-bidi-font-family:"Times New Roman";
	color:black;
	mso-fareast-language:JA;}
h1
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:1;
	font-size:24.0pt;
	font-family:"Trebuchet MS";
	mso-bidi-font-family:Arial;
	color:#330099;
	mso-font-kerning:16.0pt;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;}
h2
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:2;
	font-size:18.0pt;
	font-family:"Trebuchet MS";
	mso-bidi-font-family:Arial;
	color:#330099;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;
	mso-bidi-font-style:italic;}
h3
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:3;
	font-size:14.0pt;
	font-family:"Trebuchet MS";
	mso-bidi-font-family:Arial;
	color:#330099;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;}
h4
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	page-break-after:avoid;
	mso-outline-level:4;
	font-size:12.0pt;
	font-family:"Trebuchet MS";
	color:#330099;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;}
h5
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:5;
	font-size:10.0pt;
	font-family:"Trebuchet MS";
	color:#330099;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;
	mso-bidi-font-style:italic;}
h6
	{mso-style-next:Normal;
	margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:6;
	font-size:8.0pt;
	font-family:"Trebuchet MS";
	color:#330099;
	mso-fareast-language:JA;
	font-weight:normal;
	mso-bidi-font-weight:bold;}
a:link, span.MsoHyperlink
	{color:#993300;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;
	text-underline:single;}
p.MsoAutoSig, li.MsoAutoSig, div.MsoAutoSig
	{margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Trebuchet MS";
	mso-fareast-font-family:"MS Mincho";
	mso-bidi-font-family:"Times New Roman";
	color:black;
	mso-fareast-language:JA;}
span.EmailStyle15
	{mso-style-type:personal-compose;
	mso-ansi-font-size:10.0pt;
	mso-ascii-font-family:"Courier New";
	mso-hansi-font-family:"Courier New";
	mso-bidi-font-family:Arial;
	color:black;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026"/>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1"/>
 </o:shapelayout></xml><![endif]-->
</head>

<body bgcolor=3D"#cccccc" lang=3DEN-US link=3D"#993300" vlink=3Dblue =
style=3D'tab-interval:
.5in'>

<div class=3DSection1>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>It was suggested =
at last
weeks meeting to at least begin writing the top level example for the
use-models.<span style=3D"mso-spacerun: yes">&nbsp; </span>These are my
suggestion for several<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier =
New";mso-bidi-font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></font></s=
pan></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>3.4 Use Model 3: =
Desktop
Personal (Consumer) Printing<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Print to a low =
printer
from an application <o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>1. Example Use =
Model:<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Dorothy has been =
editing
and formatting her biology term paper for weeks.<span =
style=3D"mso-spacerun:
yes">&nbsp; </span>She takes her laptop computer to class and constantly =
update
her term paper on new information from the lectures and labs.<span
style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>She uses her portable =
scanner and
graphics editor to illustrates the step-by-step processes in her term =
paper as
well as the final charts and graphs which will are all integration into =
her
word processor.<span style=3D"mso-spacerun: yes">&nbsp; </span>The night =
before
she must turn in the paper she does one final edit.<span =
style=3D"mso-spacerun:
yes">&nbsp; </span>Then she loads her 2000XYZ-Color inkjet printer with =
the
special paper required by the professor; she connects the USB cable from =
her
printer to her laptop and she&#8217;s ready to print.<span =
style=3D"mso-spacerun:
yes">&nbsp;&nbsp; </span>She has already formatted the print job but =
brings up
the print preview window to double check; the special paper is =
expensive.<span
style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>Finally, she brings up =
the print dialog
box and makes her selections.<span style=3D"mso-spacerun: yes">&nbsp; =
</span>She
selects collated copies, highest print resolution and background =
printing mode
(she still has work on her chemistry assignment) before hitting the =
print
button.<span style=3D"mso-spacerun: yes">&nbsp; </span>Thirty Eight =
minutes later
(why did I use highest quality mode!) she removes the printed pages, =
carefully
inspects each page and staples each copy into special cover sheets for =
the
biology class.<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier =
New";mso-bidi-font-family:Arial'>----------------------------------------=
----------------------<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>3.5 Use Model =
5:<span
style=3D"mso-spacerun: yes">&nbsp; </span>Desktop Small-Office / =
Home-Office
Printing<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Print to =
mid-volume laser
printer and to impact printer<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>1. Example Use =
Model:<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Keith knew it was =
going
to be a long day; it&#8217;s the end of the month, again.<span =
style=3D"mso-spacerun:
yes">&nbsp; </span>Keith&#8217;s small company produces about 5000 =
widgets a month
for a large industrial firm.<span style=3D"mso-spacerun: yes">&nbsp; =
</span>Keith
could do it all when they started but now has two employees and the =
customer
now wants a data sheet on each widget.<span style=3D"mso-spacerun:
yes">&nbsp;&nbsp; </span>Keith yells out his office to see if the data =
base has
been completed for the month and if all the widgets are packaged; they
are.<span style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>Keith =
initially brings
up the data base and request a summary report; he&#8217;ll need 25 =
copies this
month.<span style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>From the =
command-line
Keith send the simple text summary file to the print spooler requesting =
25
copies.<span style=3D"mso-spacerun: yes">&nbsp; </span>Within seconds, =
the laser
printer, connect over a BlueTooth adaptor, starting warming up and =
producing
the 25 copies.<span style=3D"mso-spacerun: yes">&nbsp; </span>Keith =
returns to
the data base software and request data sheets for each entry; =
individual
post-script files.<span style=3D"mso-spacerun: yes">&nbsp; </span>Keith =
spent
weeks designing/creating the template for the data sheets; including =
color and
graphics.<span style=3D"mso-spacerun: yes">&nbsp; </span>Keith wishes he =
had a
laser color printer but uses his direct connected business level inkjet =
for
another month.<span style=3D"mso-spacerun: yes">&nbsp; </span>Navigating =
to the
directory with this months data sheets; he again request the spooler to =
print
two copies of each file in the current directory on the office inkjet
printer.<span style=3D"mso-spacerun: yes">&nbsp; </span>While that going =
on,
Keith decides to do the timecards for the temporary-agency he is =
using.<span
style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>The temporary-agency =
wants a 3-part
time cards to be printed.<span style=3D"mso-spacerun: yes">&nbsp; =
</span><span
style=3D"mso-spacerun: yes">&nbsp;</span>The impact is already loaded to =
the pin-feed
3-part and parallel cable in connected.<span style=3D"mso-spacerun:
yes">&nbsp;&nbsp; </span>After looking over the spread data, Keith =
selects the
print action in the accounting software instructing the application to =
send the
print data to spooler for printing on the impact =
printer.<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier =
New";mso-bidi-font-family:Arial'>----------------------------------------=
---------------<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>3.7 Use Model 6: =
Central
(Print Room) Office Printing<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Mid to large =
volume
printing from document repository with data transformation and post =
printing
finishing<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>1. Example Use =
Model:<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>In three days =
Michael
will provide a sales and marketing pitch to first and second tier =
managers of
the Zeta Bank for a new bank statement design and end-customer packaging =
of
statements and collaterals.<span style=3D"mso-spacerun: yes">&nbsp;
</span>Michael has spent the last two weeks interfacing to a creative =
writing
firm to develop the text content for his materials.<span =
style=3D"mso-spacerun:
yes">&nbsp;&nbsp; </span>He has along spent four weeks with his internal =
graphic
art department designing the handout package including the staggered =
sized collateral
sheets, integrated pictorial and text content and, finally, creation his
presentation slides. <span style=3D"mso-spacerun: =
yes">&nbsp;</span>Michael now
stores the images for the collaterals which are in tiff format along =
with his
presentation that is MS-Power-Point format, followed by storing the =
MS-Word formatted
bank statement and finally, the Frame-Maker version of the end-customer =
package
on his internal document repository system. <span style=3D"mso-spacerun:
yes">&nbsp;</span>Michael then brings up the electronic =
technical-publication
department submission form.<span style=3D"mso-spacerun: =
yes">&nbsp;&nbsp;
</span>Michael starts editing the contact information, the number of =
copies,
location of the electronic data and special finishing instructions =
fields of
the submission form and hits the return key.<span style=3D"mso-spacerun:
yes">&nbsp; </span>. . .<span style=3D"mso-spacerun: yes">&nbsp; =
</span>The night
before the presentation, the technical-publication department deliveries =
6
boxes of printed sales and marketing materials for Michael sales and =
marketing
pitch.<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier =
New";mso-bidi-font-family:Arial'>----------------------------------------=
---------------<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>3.8 Use Model 7: =
Desktop
File (Direct) Printing<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Print to print =
service
directly from file-manager/shell-script with going through an =
application<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>1. Example Use =
Model:<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'>Robert is the lead
engineer on the power subsystem of the companies next generation
satellite.<span style=3D"mso-spacerun: yes">&nbsp;&nbsp; </span>He has =
spent the
last 6 month working with individual engineering and other departments =
on no
less than 12 interrelated specifications and design documents.<span
style=3D"mso-spacerun: yes">&nbsp; </span>People have been delivering =
him post-script
versions of their document over the last several days.<span
style=3D"mso-spacerun: yes">&nbsp; </span>Robert recently bought a wide =
format
color inkjet printer from the Acme print copy.<span =
style=3D"mso-spacerun:
yes">&nbsp; </span>The printer has great output resolution and an =
extended
color gammit but does not print post script natively; so Robert download =
and
installs the latest version of GhostScript along with the print =
driver.<span
style=3D"mso-spacerun: yes">&nbsp; </span>Robert types in the print =
options,
printer model and location of the print data for GhostScript at the =
command
line and wait for each document to printed.<span style=3D"mso-spacerun:
yes">&nbsp; </span>Robert begins the task of checking and removing =
ambiguities between
the specifications.<o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><span class=3DEmailStyle15><font size=3D2 =
color=3Dblack
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;
font-family:"Courier New";mso-bidi-font-family:Arial'><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></font></span></p>

<p class=3DMsoNormal><!--[if supportFields]><span =
style=3D'mso-element:field-begin'></span><span=20
style=3D"mso-spacerun: yes">&nbsp;</span>AUTOTEXTLIST \s &quot;E-mail=20
Signature&quot; <span =
style=3D'mso-element:field-separator'></span><![endif]--><i><font
size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;mso-bidi-font-size:
12.0pt;font-family:"Comic Sans MS";font-style:italic'>Rgds, =
<o:p></o:p></span></font></i></p>

<p class=3DMsoNormal><b><i><font size=3D2 color=3D"#333399" =
face=3D"Comic Sans MS"><span
style=3D'font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Glen W. =
Petrie<o:p></o:p></span></font></i></b></p>

<p class=3DMsoNormal><b><i><font size=3D2 color=3D"#333399" =
face=3D"Comic Sans MS"><span
style=3D'font-size:11.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Manager, Software =
Printing
Solutions<o:p></o:p></span></font></i></b></p>

<p class=3DMsoNormal><i><font size=3D2 color=3Dblack face=3D"Comic Sans =
MS"><span
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
font-style:italic'>Epson Imaging Technology Center =
<o:p></o:p></span></font></i></p>

<p class=3DMsoNormal><i><font size=3D2 color=3Dblack face=3D"Comic Sans =
MS"><span
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
font-style:italic'>150 River Oaks Parkway, Suite 200 =
<o:p></o:p></span></font></i></p>

<p class=3DMsoNormal><i><font size=3D2 color=3Dblack face=3D"Comic Sans =
MS"><span
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
font-style:italic'>San Jose, CA, 95134 <o:p></o:p></span></font></i></p>

<p class=3DMsoNormal><i><font size=3D2 color=3Dblack face=3D"Comic Sans =
MS"><span
style=3D'font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:"Comic =
Sans MS";
font-style:italic'>Voice: 408.576.4131<span style=3D"mso-spacerun: =
yes">&nbsp;
</span>Fax: 408.474.0511<o:p></o:p></span></font></i></p>

<p class=3DMsoNormal><!--[if supportFields]><span =
style=3D'mso-element:field-end'></span><![endif]--><![if =
!supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_0092_01C3918A.90677700--


