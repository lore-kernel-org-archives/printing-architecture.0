Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A34F0@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Mon, 19 Apr 2004 13:12:10 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C4264A.98C7C1C0"
Subject: [Printing-architecture] More Vector Driver questions and Job
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-japan@freestandards.org, printing-architecture@freestandards.org, printing-driver@freestandards.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C4264A.98C7C1C0
Content-Type: text/plain

Hello,

 

The US driver team discussed the possibility of having the driver supporting
multiple jobs; the idea was ok with the condition that the driver is only
required to support at most one job.   However, it still means changes to
the current API.  Supporting multiple jobs makes the overall driver API more
generic and provides for greater integration configurations.  But there are
issues with the current design.

 

 

The API needs to have some changes starting from the very first Library
call; OpenPrinter.  Currently, in the call the printer model is specified.
For a multiple job configuration this would have to be done at the "start
job" API.   However, this can reduce the "dynamics" of the APIEntry feature
since the printer would not be know at library initialization; instead would
be know at "start job" API.   One solution is to have a fixed set of API
that a driver must support; that should be straight forward.  This way at
library initialization, certain critical functions must be supported.   

 

Does this mean moving the return for "optional" APIEntry table to "start
job".   Maybe Yes, Maybe No. 

 

1.) First the driver "query device capability" and "query device info" API
would have to be callable before setting/starting a job.  This means that
the "printer model" be added to their argument list. - That easy solved.
Now the capability is called after the library is initialized but before
calling "start job".  

 

2.) The APIEntry changes based on the printer type and its capability.   It
has been argued that User or other determining body may want to change the
basic printer capability.  For example, the printer language; if the printer
supports PCL2 and PCL5 and this may be a settable option.  This "basic
printer property" selection differs from selection from selection we do in a
job-ticket.  It is giving the User selection over printer capabilities. To
support this kind of selection, we would need a new API called "set printer
capabilities".   The driver, generically, remembers the set printer
capabilities and when start job is called with printer name it will use the
settings.   

 

If both 1.) and 2.) are implemented then greater dynamics of the APIEntry is
possible.  

 

I really don't think "start job" is the best place for the APIEntry's to be
returned; but for now it a starting point for discussion.

 

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 

 


------_=_NextPart_001_01C4264A.98C7C1C0
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"country-region"/>
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
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
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
span.EmailStyle19
	{mso-style-type:personal;
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
font-family:"Courier New"'>Hello,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>The <st1:country-region =
w:st=3D"on"><st1:place w:st=3D"on">US</st1:place></st1:country-region>
driver team discussed the possibility of having the driver supporting =
multiple
jobs; the idea was ok with the condition that the driver is only =
required to
support at most one job.&nbsp; &nbsp;However, it still means changes to =
the
current API.&nbsp; Supporting multiple jobs makes the overall driver =
API more
generic and provides for greater integration configurations.&nbsp; But =
there
are issues with the current design.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>The API needs to have some changes starting =
from the
very first Library call; OpenPrinter.&nbsp; Currently, in the call the =
printer
model is specified.&nbsp; For a multiple job configuration this would =
have to
be done at the &#8220;start job&#8221; API. &nbsp;&nbsp;However, this =
can
reduce the &#8220;dynamics&#8221; of the APIEntry feature since the =
printer
would not be know at library initialization; instead would be know at =
&#8220;start
job&#8221; API.&nbsp; &nbsp;One solution is to have a fixed set of API =
that a
driver must support; that should be straight forward.&nbsp; This way at =
library
initialization, certain critical functions must be supported.&nbsp; =
&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Does this mean moving the return for =
&#8220;optional&#8221;
APIEntry table to &#8220;start job&#8221;.&nbsp; &nbsp;Maybe Yes, Maybe =
No. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>1.) First the driver &#8220;query device =
capability&#8221;
and &#8220;query device info&#8221; API would have to be callable =
before
setting/starting a job. &nbsp;This means that the &#8220;printer =
model&#8221;
be added to their argument list. - That easy solved.&nbsp; Now the =
capability
is called after the library is initialized but before calling =
&#8220;start job&#8221;.
&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>2.) The APIEntry changes based on the =
printer type
and its capability.&nbsp; &nbsp;It has been argued that User or other
determining body may want to change the basic printer capability.&nbsp; =
For
example, the printer language; if the printer supports PCL2 and PCL5 =
and this
may be a settable option.&nbsp; This &#8220;basic printer =
property&#8221;
selection differs from selection from selection we do in a =
job-ticket.&nbsp; It
is giving the User selection over printer capabilities. To support this =
kind of
selection, we would need a new API called &#8220;set printer =
capabilities&#8221;.&nbsp;
&nbsp;The driver, generically, remembers the set printer capabilities =
and when
start job is called with printer name it will use the settings. =
&nbsp;&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>If both 1.) and 2.) are implemented then =
greater
dynamics of the APIEntry is possible. =
&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I really don&#8217;t think &#8220;start =
job&#8221;
is the best place for the APIEntry&#8217;s to be returned; but for now =
it a
starting point for discussion.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

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

------_=_NextPart_001_01C4264A.98C7C1C0--

