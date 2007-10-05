Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D17F2@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 5 Oct 2007 12:37:31 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C80787.2B8C5BA8"
Subject: [Printing-architecture] My suggestions for OP next steps
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C80787.2B8C5BA8
Content-Type: text/plain

[ This is does not include my work on embedded thin thread. ]

 

- OP should evaluate our short-/mid-/long-term directions

 

- Short - OP should specify guidelines for printer driver test tools

    - Directory names and calling sequence (printer name)

    - Send data direct to printer via local channel only?

 

- Mid - OP should specify guidelines for printing path test tools

    - Cover various printing paths, renderers, and channels

    - Output to file?

 

- Long - OP should specify enhancements for discovery/installation

    - Driver installation URI extension for 1284 Device ID?

        - Ira - See previous PWG work on remote driver installation at:

 
ftp://ftp.pwg.org/pub/pwg/ipp/new_DRV/draft-ietf-ipp-install-04.pdf
<ftp://ftp.pwg.org/pub/pwg/ipp/new_DRV/draft-ietf-ipp-install-04.pdf> 

 

- PDF - OP should de-emphasize PDF as the standard print format?

   - Because PDF is not printing format but a document exchange format?

 

- Printing - OP should query the Linux distributions

   - Is printing a vector of differentiation between distro's?

 

- JTAPI - Is the current API a high overhead solutions

(i.e high degree of abstraction plus text-constant object/attribute 

(#defines) based)?

-        Can a numerical-constant (enums) solution be used; can defined data
structures 

versus object/attribute-descriptive encoding be used; should the data 

      structures be exposed to application versus API call to get 

      the attribute type, name and, finally, the value?

 

 


------_=_NextPart_001_01C80787.2B8C5BA8
Content-Type: text/html
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
	{mso-list-id:1369793375;
	mso-list-type:hybrid;
	mso-list-template-ids:408347422 536242388 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:42.0pt;
	mso-level-number-position:left;
	margin-left:42.0pt;
	text-indent:-.25in;
	font-family:"Courier New";
	mso-fareast-font-family:"Times New Roman";}
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

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>[ This is does not include my work on =
embedded thin
thread. ]<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- OP should evaluate our =
short-/mid-/long-term
directions<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Times New Roman"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- Short - OP should specify guidelines for =
printer
driver test tools<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; - Directory names and =
calling
sequence (printer name)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; - Send data direct to =
printer via
local channel only?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- Mid - OP should specify guidelines for =
printing
path test tools<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; - Cover various printing =
paths,
renderers, and channels<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; - Output to =
file?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- Long - OP should specify enhancements for
discovery/installation<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; - Driver installation URI
extension for 1284 Device ID?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - =
Ira -
See previous PWG work on remote driver installation =
at:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier =
New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a =
href=3D"ftp://ftp.pwg.org/pub/pwg/ipp/new_DRV/draft-ietf-ipp-install-04.=
pdf"
title=3D"ftp://ftp.pwg.org/pub/pwg/ipp/new_DRV/draft-ietf-ipp-install-04=
.pdf">ftp://ftp.pwg.org/pub/pwg/ipp/new_DRV/draft-ietf-ipp-install-04.p=
df</a><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- PDF - OP should de-emphasize PDF as the =
standard
print format?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp; - Because PDF is not printing =
format
but a document exchange format?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- Printing - OP should query the Linux =
distributions<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp; - Is printing a vector of
differentiation between distro&#8217;s?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>- JTAPI &#8211; Is the current API a high =
overhead
solutions<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:9.5pt;font-family:"Courier New"'>(i.e high degree of
abstraction plus text-constant object/attribute =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:9.5pt;font-family:"Courier New"'>(#defines) =
based)?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:42.0pt;text-indent:-.25in;mso-list:l0 level1 =
lfo1'><![if !supportLists]><font
size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:9.5pt;font-family:"Courier New"'>Can a =
numerical-constant
(enums) solution be used; can defined data structures =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:24.0pt;text-indent:12.0pt'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:9.5pt;font-family:"Courier New"'>versus
object/attribute-descriptive encoding be used; should the data =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; structures be =
exposed
to application versus API call to get <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:9.5pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the attribute =
type,
name and, finally, the value?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C80787.2B8C5BA8--
