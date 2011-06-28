Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC35A6.93A2E3ED"
Date: Tue, 28 Jun 2011 08:18:04 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805DCB@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Mobile Guideline Print Dialog - more
	discussion
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

------_=_NextPart_001_01CC35A6.93A2E3ED
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

Using the Binary Printer Capability (for Mobile) data I discussed in my
last email; we now have a fixed list of attributes and values that any
mobile print dialog, solution and system can support.  A mobile print
dialog, solution and system does not need to support the entire list of
attributes and values but at least there is a finite and fixed list.

=20

*	With a fixed list of attributes and values it is now possible .
. .=20

	*	. . . to set the values for predefined print modes.
	*	. . . to define the set of attribute and value
constraints (duplex with transparencies).
	*	. . . to search for printer with a required (needed)
print capability.
	*	. . . to write very "tight code" to minimize the print
solution code footprint.
	*	. . . to guarantee federation interoperability without
the need for "interpretation".
	*	. . . for end users to have a uniform and consistent
print experience.=20

=20

Does the fixed list of attributes and values meet most (almost all,
majority, the 90%, ...) end-user's needs and print intents?

-          I believe this to be true.

=20

Can any "not supported" print intent be done as a best effort?

-          I believe this is NOT true. =20

o       The "not supported" print intents are likely to be unique or
corner-case print intents and are outside the scope of mobile print.

o       This does not mean an end-user, with/using an existing
job-ticket (like JDF), can not submit a unique print intent print job.
It does mean the print dialog, solution and system of the mobile device
does not provide a mechanism for it.

o       End-user can use to the mobile print dialog, solution and system
to print the "content" of "not supported" print intents but the print
out will not be in the final (intended) format.

=20

Next Steps

-          Identify the remaining job ticket attributes and values not
associated with printer capabilities (number of copies, etc)

-          Define (based on existing work) the print dialog terms for
each of the print attributes and values.

o       These terms can be different than code attribute and value
names; that is, they may use more common terminology.

-          Define a collection of predefined print modes.

o       Identify the associated (affected) attributes and values for
each predefined print mode

-          Identify the set of print attribute and value constraints=20

=20

Glen

=20

=20

=20

=20

=20

=20

=20


------_=_NextPart_001_01CC35A6.93A2E3ED
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:a=3D"urn:schemas-microsoft-com:office:access" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:s=3D"uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" =
xmlns:rs=3D"urn:schemas-microsoft-com:rowset" xmlns:z=3D"#RowsetSchema" =
xmlns:b=3D"urn:schemas-microsoft-com:office:publisher" =
xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadsheet" =
xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" =
xmlns:odc=3D"urn:schemas-microsoft-com:office:odc" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" =
xmlns:rtc=3D"http://microsoft.com/officenet/conferencing" =
xmlns:D=3D"DAV:" xmlns:Repl=3D"http://schemas.microsoft.com/repl/" =
xmlns:mt=3D"http://schemas.microsoft.com/sharepoint/soap/meetings/" =
xmlns:x2=3D"http://schemas.microsoft.com/office/excel/2003/xml" =
xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" =
xmlns:ois=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" =
xmlns:dir=3D"http://schemas.microsoft.com/sharepoint/soap/directory/" =
xmlns:ds=3D"http://www.w3.org/2000/09/xmldsig#" =
xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint/dsp" =
xmlns:udc=3D"http://schemas.microsoft.com/data/udc" =
xmlns:xsd=3D"http://www.w3.org/2001/XMLSchema" =
xmlns:sub=3D"http://schemas.microsoft.com/sharepoint/soap/2002/1/alerts/"=
 xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#" =
xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" =
xmlns:sps=3D"http://schemas.microsoft.com/sharepoint/soap/" =
xmlns:xsi=3D"http://www.w3.org/2001/XMLSchema-instance" =
xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/soap" =
xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" =
xmlns:udcp2p=3D"http://schemas.microsoft.com/data/udc/parttopart" =
xmlns:st=3D"&#1;" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"City"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	{mso-list-id:361368029;
	mso-list-type:hybrid;
	mso-list-template-ids:151819924 1258873582 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Cambria;
	mso-fareast-font-family:"Times New Roman";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l1
	{mso-list-id:1533687270;
	mso-list-type:hybrid;
	mso-list-template-ids:32550850 67698689 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
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
font-family:Cambria'>Using the Binary Printer Capability (for <st1:City =
w:st=3D"on"><st1:place
 w:st=3D"on">Mobile</st1:place></st1:City>) data I discussed in my last =
email; we
now have a fixed list of attributes and values that any mobile print =
dialog,
solution and system can support.&nbsp; A mobile print dialog, solution =
and
system does not need to support the entire list of attributes and values =
but at
least there is a finite and fixed list.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<ul style=3D'margin-top:0in' type=3Ddisc>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo1'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>With a fixed list of
     attributes and values it is now possible . . . =
<o:p></o:p></span></font></li>
 <ul style=3D'margin-top:0in' type=3Dcircle>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . to
      set the values for predefined print =
modes.<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . to
      define the set of attribute and value constraints (duplex with =
transparencies).<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . to
      search for printer with a required (needed) print =
capability.<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . to
      write very &#8220;tight code&#8221; to minimize the print solution =
code
      footprint.<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . to guarantee
      federation interoperability without the need for =
&#8220;interpretation&#8221;.<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo1'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>. . . for
      end users to have a uniform and consistent print experience. =
<o:p></o:p></span></font></li>
 </ul>
</ul>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Does the fixed list of attributes and values meet =
most
(almost all, majority, the 90%, &#8230;) end-user&#8217;s needs and =
print
intents?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>I believe this to be =
true.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-left:.25in'><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><o:p>&nbsp;</o:p></span></=
font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Can any &#8220;not supported&#8221; print intent be =
done as
a best effort?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>I believe this is NOT true.&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo2'><![if !supportLists]><font
size=3D3 face=3D"Courier New"><span =
style=3D'font-size:12.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>The &#8220;not =
supported&#8221;
print intents are likely to be unique or corner-case print intents and =
are
outside the scope of mobile print.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo2'><![if !supportLists]><font
size=3D3 face=3D"Courier New"><span =
style=3D'font-size:12.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>This does not mean an =
end-user,
with/using an existing job-ticket (like JDF), can not submit a unique =
print
intent print job. &nbsp;It does mean the print dialog, solution and =
system of
the mobile device does not provide a mechanism for =
it.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo2'><![if !supportLists]><font
size=3D3 face=3D"Courier New"><span =
style=3D'font-size:12.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>End-user can use to =
the mobile
print dialog, solution and system to print the &#8220;content&#8221; of =
&#8220;not
supported&#8221; print intents but the print out will not be in the =
final
(intended) format.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Next Steps<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>Identify the remaining job ticket =
attributes and
values not associated with printer capabilities (number of copies, =
etc)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>Define (based on existing work) the print =
dialog
terms for each of the print attributes and =
values.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo2'><![if !supportLists]><font
size=3D3 face=3D"Courier New"><span =
style=3D'font-size:12.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>These terms can be =
different
than code attribute and value names; that is, they may use more common
terminology.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>Define a collection of predefined print =
modes.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-indent:-.25in;mso-list:l0 level2 =
lfo2'><![if !supportLists]><font
size=3D3 face=3D"Courier New"><span =
style=3D'font-size:12.0pt;font-family:"Courier New"'><span
style=3D'mso-list:Ignore'>o<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
face=3DCambria><span style=3D'font-family:Cambria'>Identify the =
associated (affected)
attributes and values for each predefined print =
mode<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 =
lfo2'><![if !supportLists]><font
size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'><span
style=3D'mso-list:Ignore'>-<font size=3D1 face=3D"Times New Roman"><span
style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>Identify the set of print attribute and =
value
constraints <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

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

------_=_NextPart_001_01CC35A6.93A2E3ED--
