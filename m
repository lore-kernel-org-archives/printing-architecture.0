Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D355E@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Tue, 1 Apr 2008 08:52:38 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C89410.693D5B28"
Subject: Re: [Printing-architecture] Google Summer of Code 2008: JTAPI
	Library Project
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, "Petrie, Glen" <glen.petrie@eitc.epson.com>, "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C89410.693D5B28
Content-Type: text/plain

Lars,

 

During your design phase of the JTAPI I would like you to consider what the
original intent of the JTAPI is and, what I believe it another use of the
JTAPI.    The original intent is two fold (if memory service correctly).
The first, and I believe the primary intent, was to have library (tools)
that could create different Job-Ticket formats (JDF, MJT, proprietary-JT)
from a common set of API's, objects and attributes without the
user/developer having to know anything about the final job-ticket format.
The second intent was that by the addition of a "front-end" module one
job-ticket format could be inputted and parsed into the JTAPI common
objects/attributes; then using the JTAPIs, a different job-ticket format
could be generated ---- that is a job-ticket translation service. 

 

I see the third use of the JTAPI as either a common interface or front-end
translation service to an internal job-ticket object (a C data struct in
this case since JTAPI is to be coded in C) representation.  That is, a
developer uses JTAPI as an input portal to an internal object definition and
may never create an actual JDF, MJT or proprietary-JT formatted job-ticket.
In this case the job-ticket info (struct) is directly passed on to the next
print processing module.   I actually see this as the big potential use of
JTAPI and its associated objects/attributes definitions.

 

Thus, during your design and development phase of the internal component of
the JTAPI, please pay extra attention to how you design and document the
internal job-ticket objects.

 

Glen

 

 

  _____  

From: Petrie, Glen 
Sent: Wednesday, March 19, 2008 12:35 PM
To: Petrie, Glen; Ira McDonald; Norm Jacobs; Claudia Alimpich; Amanda
McPherson; Markus Rex; Jim Zemlin; Dan Kohn; Jeff Licquia; Wichmann, Mats D;
Susanne Oberhauser; Theodore Ts'o; Till Kamppeter
Subject: Google Summer of Code 2008: JTAPI Library Project

 

Hello All,

 

I am going to the mentor for the JTAPI implementation under the Google
Summer of Code 2008.  With only three months for the project, the project
needs to be scoped to fit within the time frame.   Therefore, I am sending
the following proposal to the group for comments and general approval for
the group.

 

***Project: 

JTAPI - Library

 

***Objective: 

Using the header files created by the Open-Printing Job-Ticket Working Group
develop a platform independent C library for the reading-of, modification-of
and storage-of a print job ticket for the Printer Working Group's (PWG's)
Micro-Job-Ticket (MJT).

 

***Approach:

1.   Review OP/JTWG Job-Ticket Application Programming Interface (JTAPI)
header documents

2.   Review PWG/MJT specification.

3.   Create Test MJT's 

a.   Manually create a minimum of 3 representative MJTs (text files) to be
used for testing and evaluation

4.   Define the command-line Test Application to exercise the JTAPIs;
include an initial set of commands

5.   Create Thin-Thread implementation of the individual JTAPIs and the Test
Application.

a.   This will be the first demonstrational implementation and the start
code for detailed development.

b.   This will include minimum documentation on how to use the Test
Application

6.   Enhance individual JTAPIs and the Test Application to provide full
functionality.

a.   Provided update documentation as required.

7.   Project Demonstration.

 

***Code License: 

MIT

 

***Coding Language: 

Platform Independent C

(No platform or vendor-specific extensions)

 

***Coding Document:

            In-line commenting must be sufficient to understand the flow and
any section requiring extended understanding.

 

***Operating System: 

Student's choice - Linux or Windows (non-gui for either)

 

***Interface: 

Command Line - GUI not required unless very simple (due to project time
constraint) 

 

***Document:

            Minimum:

1.   How to build the JTAPI library.

2.   How to build the Test Application

3.   The Test Application command-line instructions

4.   Three examples of using the Test Application and exercising the JTAPIs

 

 

==============


JTAPI implementation


Job tickets are extended descriptions for print jobs. They tell which
documents should be printed, on which type of paper, which resolution and
quality, whether there should be sheets inserted between the documents, ...,
and even information like delivery address, payment, ... A job ticket
accompanies a print job from its submission to its delivery. Job tickets
come from the professional printing world. In former times they were a paper
form with instructions what everyone involved in the printing process has to
do. Nowadays they are standardized files
<http://en.wikipedia.org/wiki/Job_Definition_Format>  which are used by
print servers, printers, and production printing machines. These job tickets
do not only make sense for large-scale production printing, they are also
useful for mobile devices, home desktops, workgroup printers, ... Also
access to print services on the internet directly from the desktop
applications simply via a print queue would be possible. 

To allow desktop applications, printing systems, and printer drivers to
easily create, edit, and read job tickets without needing to deal with the
actual job ticket format, the job ticket application programming interface
(JTAPI <https://www.linux-foundation.org/en/OpenPrinting/JTAPI> ) was
developed by OpenPrinting. A complete specification
<ftp://ftp.pwg.org/pub/pwg/fsg/jobticket/JTAPI_Spec/fsg-openprinting-job-tic
ket-api-v0100-20050315.pdf>  is published. 

The next step to do is the actual implementation of the JTAPI library and
its integration in applications, the CUPS printing system, drivers, filters,
... This will be the task of the student in this Google Summer of Code
project. 

Mentor: Glen Petrie, Epson 

Desired knowledge: C Programming 

 


------_=_NextPart_001_01C89410.693D5B28
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">


<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h3
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:13.5pt;
	font-family:"Times New Roman";
	font-weight:bold;}
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:Arial;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:693769049;
	mso-list-type:hybrid;
	mso-list-template-ids:774767480 1486375436 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.25in;
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
@list l1
	{mso-list-id:1424111423;
	mso-list-type:hybrid;
	mso-list-template-ids:218416938 1676937354 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:.75in;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
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

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Lars,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>During your design phase of the =
JTAPI I
would like you to consider what the original intent of the JTAPI is =
and, what I
believe it another use of the JTAPI.&nbsp;&nbsp; &nbsp;The original =
intent is two
fold (if memory service correctly).&nbsp; The first, and I believe the =
primary
intent, was to have library (tools) that could create different =
Job-Ticket
formats (JDF, MJT, proprietary-JT) from a common set of API&#8217;s, =
objects
and attributes without the user/developer having to know anything about =
the
final job-ticket format.&nbsp; The second intent was that by the =
addition of a &#8220;front-end&#8221;
module one job-ticket format could be inputted and parsed into the =
JTAPI common
objects/attributes; then using the JTAPIs, a different job-ticket =
format could
be generated ---- that is a job-ticket translation service. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>I see the third use of the JTAPI =
as either
a common interface or front-end translation service to an internal =
job-ticket
object (a C data struct in this case since JTAPI is to be coded in C) =
representation.&nbsp;
That is, a developer uses JTAPI as an input portal to an internal =
object
definition and may never create an actual JDF, MJT or proprietary-JT =
formatted job-ticket.&nbsp;
In this case the job-ticket info (struct) is directly passed on to the =
next
print processing module. &nbsp;&nbsp;I actually see this as the big =
potential
use of JTAPI and its associated objects/attributes =
definitions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Thus, during your design and =
development
phase of the internal component of the JTAPI, please pay extra =
attention to how
you design and document the internal job-ticket =
objects.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in =
0in 4.0pt'>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D2 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> =
Petrie, Glen <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Wednesday, March =
19, 2008
12:35 PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Petrie, Glen; Ira =
McDonald;
Norm Jacobs; Claudia Alimpich; Amanda McPherson; Markus Rex; Jim =
Zemlin; Dan
Kohn; Jeff Licquia; Wichmann, Mats D; Susanne Oberhauser; Theodore =
Ts'o; Till
Kamppeter<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Google Summer =
of Code
2008: JTAPI Library Project</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Hello All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I am going to the mentor for the JTAPI =
implementation under
the Google Summer of Code 2008.&nbsp; With only three months for the =
project,
the project needs to be scoped to fit within the time =
frame.&nbsp;&nbsp;
Therefore, I am sending the following proposal to the group for =
comments and
general approval for the group.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Project: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>JTAPI &#8211; =
Library<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Objective: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Using the header files =
created by
the Open-Printing Job-Ticket Working Group develop a platform =
independent C library
for the reading-of, modification-of and storage-of a print job ticket =
for the
Printer Working Group&#8217;s (PWG&#8217;s) Micro-Job-Ticket =
(MJT).<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Approach:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Review
OP/JTWG Job-Ticket Application Programming Interface (JTAPI) header =
documents<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span style=3D'font-size:10.0pt;font-family:Arial'=
>Review
PWG/MJT specification.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Create Test
MJT&#8217;s <o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Manually
create a minimum of 3 representative MJTs (text files) to be used for =
testing
and evaluation<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Define the
command-line Test Application to exercise the JTAPIs; include an =
initial set of
commands<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>5.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Create
Thin-Thread implementation of the individual JTAPIs and the Test =
Application.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>This will be
the first demonstrational implementation and the start code for =
detailed
development.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>b.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>This will
include minimum documentation on how to use the Test =
Application<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>6.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Enhance
individual JTAPIs and the Test Application to provide full =
functionality.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l1 level2 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span style=3D'font-size:10.0pt;font-family:Arial'=
><span
style=3D'mso-list:Ignore'>a.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Provided
update documentation as required.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:.75in;text-indent:-.25in;mso-list:l1 level1 =
lfo2'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>7.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Project
Demonstration.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Code License: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>MIT<o:p></o:p></span></font=
></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Coding Language: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Platform Independent =
C<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>(No platform or =
vendor-specific
extensions)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Coding Document:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
In-line commenting must be sufficient to understand the flow and any =
section
requiring extended understanding.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'><o:p>&nbsp;</o:p></span></f=
ont></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Operating System: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Student&#8217;s choice =
&#8211; Linux
or Windows (non-gui for either)<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'><o:p>&nbsp;</o:p></span></f=
ont></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Interface: <o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-indent:.5in'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Command Line &#8211; GUI =
not required
unless very simple (due to project time constraint) =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>***Document:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
Minimum:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo4'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>1.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>How to build
the JTAPI library.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo4'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>2.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>How to build
the Test Application<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo4'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>3.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>The Test
Application command-line instructions<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.25in;text-indent:-.25in;mso-list:l0 level1 =
lfo4'><![if !supportLists]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'><span
style=3D'mso-list:Ignore'>4.<font size=3D1 face=3D"Times New =
Roman"><span
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp; =
</span></font></span></span></font><![endif]><font
size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;font-family:Arial'>Three
examples of using the Test Application and exercising the =
JTAPIs<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p>=
</span></font></p>

<h3><span class=3Dmw-headline><b><font size=3D4 face=3D"Times New =
Roman"><span
lang=3DEN style=3D'font-size:13.5pt'>JTAPI =
implementation</span></font></b></span><span
lang=3DEN><o:p></o:p></span></h3>

<p><font size=3D3 face=3D"Times New Roman"><span lang=3DEN =
style=3D'font-size:12.0pt'>Job
tickets are extended descriptions for print jobs. They tell which =
documents
should be printed, on which type of paper, which resolution and =
quality,
whether there should be sheets inserted between the documents, ..., and =
even
information like delivery address, payment, ... A job ticket =
accompanies a
print job from its submission to its delivery. Job tickets come from =
the
professional printing world. In former times they were a paper form =
with
instructions what everyone involved in the printing process has to do. =
Nowadays
they are <a href=3D"http://en.wikipedia.org/wiki/Job_Definition_Format"
title=3D"http://en.wikipedia.org/wiki/Job_Definition_Format">standardize=
d files</a>
which are used by print servers, printers, and production printing =
machines.
These job tickets do not only make sense for large-scale production =
printing,
they are also useful for mobile devices, home desktops, workgroup =
printers, ...
Also access to print services on the internet directly from the desktop
applications simply via a print queue would be possible. =
<o:p></o:p></span></font></p>

<p><font size=3D3 face=3D"Times New Roman"><span lang=3DEN =
style=3D'font-size:12.0pt'>To
allow desktop applications, printing systems, and printer drivers to =
easily
create, edit, and read job tickets without needing to deal with the =
actual job
ticket format, the job ticket application programming interface (<a
href=3D"https://www.linux-foundation.org/en/OpenPrinting/JTAPI"
title=3D"OpenPrinting/JTAPI">JTAPI</a>) was developed by OpenPrinting. =
A complete
<a
href=3D"ftp://ftp.pwg.org/pub/pwg/fsg/jobticket/JTAPI_Spec/fsg-openprint=
ing-job-ticket-api-v0100-20050315.pdf"
title=3D"ftp://ftp.pwg.org/pub/pwg/fsg/jobticket/JTAPI_Spec/fsg-openprin=
ting-job-ticket-api-v0100-20050315.pdf">specification</a>
is published. <o:p></o:p></span></font></p>

<p><font size=3D3 face=3D"Times New Roman"><span lang=3DEN =
style=3D'font-size:12.0pt'>The
next step to do is the actual implementation of the JTAPI library and =
its
integration in applications, the CUPS printing system, drivers, =
filters, ...
This will be the task of the student in this Google Summer of Code =
project. <o:p></o:p></span></font></p>

<p><st1:place w:st=3D"on"><st1:City w:st=3D"on"><font size=3D3 =
face=3D"Times New Roman"><span
  lang=3DEN =
style=3D'font-size:12.0pt'>Mentor</span></font></st1:City></st1:place><s=
pan
lang=3DEN>: Glen Petrie, Epson <o:p></o:p></span></p>

<p><font size=3D3 face=3D"Times New Roman"><span lang=3DEN =
style=3D'font-size:12.0pt'>Desired
knowledge: C Programming <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C89410.693D5B28--
