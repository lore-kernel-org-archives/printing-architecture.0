Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB04A3328@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Wed, 17 Mar 2004 08:47:52 -0800
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C40C3F.968CF670"
Subject: [Printing-architecture] Have I misunderstood what Bi-di was about
List-Id: Printing architecture under linux
	<printing-architecture.mail.freestandards.org>
List-Unsubscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=unsubscribe>
List-Archive: <http://mail.freestandards.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@mail.freestandards.org>
List-Help: <mailto:printing-architecture-request@mail.freestandards.org?subject=help>
List-Subscribe: <http://mail.freestandards.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@mail.freestandards.org?subject=subscribe>
To: printing-architecture@freestandards.org, printing-japan@freestandards.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C40C3F.968CF670
Content-Type: text/plain

All,

 

I have read the Bi-di specification (better late than never) and I was
surprised at its overall function.   I thought Bi-di was only a
bi-directional communication API but not encompassing status monitoring API.
Although status monitoring requires bi-di communication, I thought the Bi-di
API was going to be more generic in that is would provide basic bi-direction
communication to any portal for any kind of data a
print-service/application/driver wanted to send/receive; for example, print
data, printer commands and, of course, status monitoring data/control.
Some printer drivers send/receive information that is not status-monitoring
data; how does this data get back to calling
print-service/application/driver?  Remember FSG specification cover the
print domain of Embedded-Mobile, Desktop/Home, Office/Network and
Production; show I doubt the only bi-di information is status monitoring
information.   I had assumed the Bi-di API would not be aware of the type of
data being sent/received but only acts as a bi-directional channel
(controller) so that a print-service/application/driver would not have to
know the physical or logical interface controls - it would only have to know
the Bi-di API - that is, a single communication interface API.

 

I thought the bi-di API would be derived by looking at 1284.4 and other
communication protocols and determining a top level API.  Example, 1284.4
requires a command, control and data channels.  We can assume other
protocols require similar channels.   So, should the generic Bi-di API have
that level of detailed control?

 

Someone hinted that each company may write their own proprietary Bi-di
implementation.  I would propose that there should be only one Bi-di
implementation that everyone can use.  The "generic" Bi-di communication API
would have not need proprietary code.  All proprietary code would be in the
print-service/application/driver where the data is understood.  Also the
Bi-di implementation should be at the same conceptual level as a spooler;
that is, it is not forked (spawned) by separate
print-services/applications/drivers but instead there is a single Bi-di
implementation controlling all I/O portals in the system.   I have not
thought this through so this idea could be reconsidered if conflicts for the
same physical/logical I/O portals can be resolved by separate forked
processes - I need to think about this more.

 

I guess I saw a different architectural model for Bi-di.  Perhaps this can
be discussed at the Japan-US meeting.

 

I think the current Bi-di specification is great but should be renamed as
the "Status-Monitor API".   This means we have to still write the basic
Bi-di API (which would/could be very similar to the "status-monitoring" one
but different as discussed in this note.)

 

I have some other concerns and I will list them here.

 

1.	It appears they have configured the API to only be a DLL.   If Bi-di
can be integrated (compiled) with other code we need a static library
possibility. 
2.	The information transfer uses XML.   Although this is an OK
technique for desktop and higher printing models, it is a big memory burden
for IA's.  I suggest that the XML interface should not be mandatory and
there should a "flag" to be able to send data in a more compressed (numeric)
format. 
3.	Like the job-ticket API, we should have function names begin with
fsg_sm_<foo> (fsg status monitoring) to ensure isolation from other
libraries.  The name "bidi" is probably used a lot in generic bi-di
libraries. 
4.	The nomenclature "job" (startjob, endjob, canceljob) is used
throughout.  This give the impression of "print job" and that control of the
"job" is through this module.   I believe the
print-service/application/driver should have "job" control API's not Bi-di.
I suggest the use of startSM, endSM and cancelSM. 

 

 

 

Rgds, 
Glen W. Petrie 
Epson Imaging Technology Center 
150 River Oaks Parkway, Suite 200 
San Jose, CA, 95134 
Voice: 408.576.4131  Fax: 408.474.0511 

 


------_=_NextPart_001_01C40C3F.968CF670
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3DUS-ASCII">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PersonName"/>
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
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
 /* List Definitions */
 @list l0
	{mso-list-id:1940285774;
	mso-list-type:hybrid;
	mso-list-template-ids:-221746282 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
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
style=3D'font-size:10.0pt;
font-family:"Courier New"'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I have read the Bi-di specification (better =
late
than never) and I was surprised at its overall function.&nbsp; &nbsp;I =
thought
Bi-di was only a bi-directional communication API but not encompassing =
status
monitoring API.&nbsp;&nbsp; Although status monitoring requires bi-di
communication, I thought the Bi-di API was going to be more generic in =
that is
would provide basic bi-direction communication to any portal for any =
kind of
data a print-service/application/driver wanted to send/receive; for =
example, print
data, printer commands and, of course, status monitoring data/control.
&nbsp;&nbsp;Some printer drivers send/receive information that is not
status-monitoring data; how does this data get back to calling =
print-service/application/driver?&nbsp;
Remember FSG specification cover the print domain of Embedded-Mobile, =
Desktop/<st1:PersonName
w:st=3D"on">Home</st1:PersonName>, Office/Network and Production; show =
I doubt
the only bi-di information is status monitoring information. =
&nbsp;&nbsp;I had
assumed the Bi-di API would not be aware of the type of data being
sent/received but only acts as a bi-directional channel (controller) so =
that a print-service/application/driver
would not have to know the physical or logical interface controls =
&#8211; it
would only have to know the Bi-di API &#8211; that is, a single =
communication interface
API.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I thought the bi-di API would be derived by =
looking at
1284.4 and other communication protocols and determining a top level =
API.
&nbsp;Example, 1284.4 requires a command, control and data =
channels.&nbsp; We
can assume other protocols require similar channels. &nbsp;&nbsp;So, =
should the
generic Bi-di API have that level of detailed =
control?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>Someone hinted that each company may write =
their own
proprietary Bi-di implementation. &nbsp;I would propose that there =
should be
only one Bi-di implementation that everyone can use. &nbsp;The =
&#8220;generic&#8221;
Bi-di communication API would have not need proprietary code. &nbsp;All
proprietary code would be in the print-service/application/driver where =
the
data is understood.&nbsp; Also the Bi-di implementation should be at =
the same
conceptual level as a spooler; that is, it is not forked (spawned) by =
separate print-services/applications/drivers
but instead there is a single Bi-di implementation controlling all I/O =
portals
in the system. &nbsp;&nbsp;I have not thought this through so this idea =
could
be reconsidered if conflicts for the same physical/logical I/O portals =
can be
resolved by separate forked processes &#8211; I need to think about =
this more.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I guess I saw a different architectural =
model for
Bi-di.&nbsp; Perhaps this can be discussed at the Japan-US =
meeting.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I think the current Bi-di specification is =
great but
should be renamed as the &#8220;Status-Monitor API&#8221;. =
&nbsp;&nbsp;This
means we have to still write the basic Bi-di API (which would/could be =
very
similar to the &#8220;status-monitoring&#8221; one but different as =
discussed in
this note.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'>I have some other concerns and I will list =
them
here.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2
     face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>It
     appears they have configured the API to only be a DLL. =
&nbsp;&nbsp;If
     Bi-di can be integrated (compiled) with other code we need a =
static library
     possibility.</span></font> <font size=3D2 face=3D"Courier =
New"><span
     style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2
     face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
     information transfer uses XML.&nbsp; &nbsp;Although this is an OK
     technique for desktop and higher printing models, it is a big =
memory
     burden for IA&#8217;s. &nbsp;I suggest that the XML interface =
should not
     be mandatory and there should a &#8220;flag&#8221; to be able to =
send data
     in a more compressed (numeric) format. =
<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2
     face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Like
     the job-ticket API, we should have function names begin with
     fsg_sm_&lt;foo&gt; (fsg status monitoring) to ensure isolation =
from other
     libraries.&nbsp; The name &#8220;bidi&#8221; is probably used a =
lot in
     generic bi-di libraries. <o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2
     face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
     nomenclature &#8220;job&#8221; (startjob, endjob, canceljob) is =
used
     throughout.&nbsp; This give the impression of &#8220;print =
job&#8221; and
     that control of the &#8220;job&#8221; is through this =
module.&nbsp; &nbsp;I
     believe the print-service/application/driver should have =
&#8220;job&#8221;
     control API&#8217;s not Bi-di.&nbsp; &nbsp;I suggest the use of =
startSM,
     endSM and cancelSM. <o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><i><font size=3D2 face=3D"Comic Sans MS"><span
style=3D'font-size:10.0pt;font-family:"Comic Sans =
MS";font-style:italic'>Rgds, </span></font></i><br>
<b><i><font color=3D"#333399" face=3D"Comic Sans MS"><span =
style=3D'font-family:"Comic Sans MS";
color:#333399;font-weight:bold;font-style:italic'>Glen W. =
Petrie</span></font></i></b>
<br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>Epson Imaging Technology Center =
</span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>150 River Oaks Parkway, Suite 200 =
</span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>San Jose, CA, 95134 </span></font></i><br>
<i><font face=3D"Comic Sans MS"><span style=3D'font-family:"Comic Sans =
MS";
font-style:italic'>Voice: 408.576.4131&nbsp; Fax: =
408.474.0511</span></font></i>
<o:p></o:p></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C40C3F.968CF670--

