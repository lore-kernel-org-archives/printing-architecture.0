Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB06EFAC7@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Wed, 4 Aug 2004 15:38:47 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C47A73.CE31E2A0"
Subject: [Printing-architecture] Reference Model Description for Status
	Monitoring and Capabilitie s. 
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C47A73.CE31E2A0
Content-Type: text/plain

Status Monitoring Subsystem:

 

The Status Monitoring subsystem provides a single subsystem for the
collection, acquisition, summarization, dissemination and/or reporting of
the physical and/or logical print driver, print communication and/or printer
status and/or state information.  There is a single Application Programming
Interface (API) for the setup and retrieval of specified status information.
In addition to polling support for specified status information, the API
shall include a callback mechanism to report specified status information
based on an events and/or times.   The subsystem shall include a dead-man
timer capability for monitoring the general operation of the print driver,
print communication and/or printer.  Status information, for example
includes, but is not limited to, the printer's current state, ink/toner
levels, percentage of a page, document and/or job completed and the
state/condition of all I/O channels.  "Standard" status information (to be
determined) is formatted for efficiency while formatting for extension
status information is not specified.  Status Monitoring is not to be
confused with Job Monitoring associated with the Print Manager.

 

 

Capabilities Subsystem:

 

The Capabilities Subsystem provides a single subsystem for the collection,
acquisition, summarization, dissemination and/or reporting of the printer's
physical and logical capabilities.  Collection of capability information
comes from the printer, a file(s) and/or network location(s).  There is a
single Application Programming Interface (API) that can accept capability
information in to-be-determined formats and report specified capability
information.  The API will provide specified information for a specified
print device and/or can provide the printer or list of printers with the
specified capability(ies).  "Standard" capability information (to be
determined) is formatted for efficiency while formatting for extension
capability information is represented by key-value pairs.  The Capability
Subsystem does not interpret capability information nor validate the
information beyond syntax and "reasonableness" bounds checking for
"standard" capability information.  

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 

 


------_=_NextPart_001_01C47A73.CE31E2A0
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
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
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
p
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Courier New";
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

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Status Monitoring =
Subsystem:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>The Status Monitoring subsystem provides a =
single subsystem
for the collection, acquisition, summarization, dissemination and/or =
reporting
of the physical and/or logical print driver, print communication and/or =
printer
status and/or state information.&nbsp; There is a single Application
Programming Interface (API) for the setup and retrieval of specified =
status
information. &nbsp;&nbsp;In addition to polling support for specified =
status
information, the API shall include a callback mechanism to report =
specified
status information based on an events and/or times. &nbsp;&nbsp;The =
subsystem
shall include a dead-man timer capability for monitoring the general =
operation
of the print driver, print communication and/or printer. &nbsp;Status
information, for example includes, but is not limited to, the =
printer&#8217;s
current state, ink/toner levels, percentage of a page, document and/or =
job
completed and the state/condition of all I/O channels.&nbsp; =
&#8220;Standard&#8221;
status information (to be determined) is formatted for efficiency while =
formatting
for extension status information is not specified. &nbsp;Status =
Monitoring is
not to be confused with Job Monitoring associated with the Print =
Manager.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Capabilities =
Subsystem:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>The Capabilities Subsystem provides a single
subsystem for the collection, acquisition, summarization, dissemination =
and/or
reporting of the printer&#8217;s physical and logical =
capabilities.&nbsp; Collection
of capability information comes from the printer, a file(s) and/or =
network
location(s). &nbsp;There is a single Application Programming Interface =
(API) that
can accept capability information in to-be-determined formats and =
report
specified capability information. &nbsp;The API will provide specified
information for a specified print device and/or can provide the printer =
or list
of printers with the specified capability(ies). =
&nbsp;&#8220;Standard&#8221; capability
information (to be determined) is formatted for efficiency while =
formatting for
extension capability information is represented by key-value =
pairs.&nbsp; The Capability
Subsystem does not interpret capability information nor validate the =
information
beyond syntax and &#8220;reasonableness&#8221; bounds checking for =
&#8220;standard&#8221;
capability information. &nbsp;<o:p></o:p></span></font></p>

<p><i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;
font-family:"Comic Sans MS";font-style:italic'>Rgds, =
</span></font></i><br>
<b><i><font color=3D"#333399" face=3D"Comic Sans MS"><span =
style=3D'font-family:"Comic Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Glen W. =
Petrie</span></font></i></b>
<br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>Epson Imaging Technology Center =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>150 River Oaks Parkway, Suite 200 =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>San Jose, CA, 95134 =
</span></font></i><br>
<i><font size=3D2 face=3D"Comic Sans MS"><span =
style=3D'font-size:10.0pt;font-family:
"Comic Sans MS";font-style:italic'>Voice: 408.576.4131&nbsp; Fax: =
408.474.0511</span></font></i>
<o:p></o:p></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C47A73.CE31E2A0--

