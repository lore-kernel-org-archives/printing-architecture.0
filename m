Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D35D3@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 4 Apr 2008 10:30:52 -0700 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C89679.A13CF978"
Subject: Re: [Printing-architecture] [GSoC] Implementing JTAPI
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Aditya M <aditya87@gmail.com>
Cc: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C89679.A13CF978
Content-Type: text/plain

Aditya,

 

Sorry for the late reply.  I have been looking into opinion for this year's
GSoc projects.  I am trying to extend the current JTAPI project to allow a
second student.   We have a strong candidate for the existing JTAPI project.
So what I going to try and propose to have a second JTAPI activity that
begins the development of JDF job-ticket JTAPI input module.  This means, a
module that can read JDF job-ticket, translate it JTAPI object/attributes,
and then calls the JTAPI.  If time permits it would nice to create the
output module which does the opposite.   

 

I don't believe this will require any unique domain (printing) knowledge.
The project is basically a parser, hash (translation) functions and API
calling.

 

If this project interest you, please let me know?

 

Also note, that in the end Google decides how many student slots each
organization gets; so we are not sure if we will get a slot for the original
JTAPI and/or this additional JTAPI project.

 

glen

 

  _____  

From: Aditya M [mailto:aditya87@gmail.com] 
Sent: Thursday, April 03, 2008 10:25 AM
To: printing-jobticket@lists.linux-foundation.org;
glen.petrie@eitc.epson.com
Subject: [GSoC] Implementing JTAPI

 

Hi,

I am a final year Computer Science and Engineering student from National
Institute of Technology, Trichy, India (www.nitt.edu <http://www.nitt.edu>
). My resume at [0]. I am interested in writing an implementation of the
JTAPI as a Google Summer of Code project. I am proficient in C programming
and familiar with how libraries are linked, etc. Are there any other
pre-requisites for taking up this work?

I have a few questions about the expected scope for this project. The
project description says that once the library itself is implemented, it
will have to be integrated with applications, the CUPS printing system, etc.
I am not currently aware of the internals of these systems. Will this be a
significant set back? I would in fact like to know more about what kind of
integration into other systems is expected, especially with other drivers
and filters.

Thanks and regards,
Aditya Manthramurthy

[0]: http://aditya87.googlepages.com/AdityaResume.pdf
<http://aditya87.googlepages.com/AdityaResume.pdf>  


------_=_NextPart_001_01C89679.A13CF978
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
name=3D"country-region"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"City"/>
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
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Aditya,<o:p></o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Sorry for the late reply.&nbsp; I =
have been
looking into opinion for this year&#8217;s GSoc projects.&nbsp; I am =
trying to extend the
current JTAPI project to allow a second student.&nbsp;&nbsp; We have a =
strong candidate
for the existing JTAPI project.&nbsp; So what I going to try and =
propose to have a
second JTAPI activity that begins the development of JDF job-ticket =
JTAPI input
module.&nbsp; This means, a module that can read JDF job-ticket, =
translate it JTAPI
object/attributes, and then calls the JTAPI.&nbsp; If time permits it =
would nice to
create the output module which does the opposite.&nbsp;&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>I don&#8217;t believe this will =
require any unique
domain (printing) knowledge.&nbsp; The project is basically a parser, =
hash (translation)
functions and API calling.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>If this project interest you, =
please let
me know?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Also note, that in the end Google =
decides
how many student slots each organization gets; so we are not sure if we =
will
get a slot for the original JTAPI and/or this additional JTAPI =
project.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>glen<o:p></o:p></span></font></p>

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
Aditya M
[mailto:aditya87@gmail.com] <br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, April =
03, 2008
10:25 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b>
printing-jobticket@lists.linux-foundation.org; =
glen.petrie@eitc.epson.com<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> [GSoC] =
Implementing JTAPI</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Hi,<br>
<br>
I am a final year Computer Science and Engineering student from =
National
Institute of Technology, <st1:place w:st=3D"on"><st1:City =
w:st=3D"on">Trichy</st1:City>,
 <st1:country-region w:st=3D"on">India</st1:country-region></st1:place> =
(<a
href=3D"http://www.nitt.edu">www.nitt.edu</a>). My resume at [0]. I am =
interested
in writing an implementation of the JTAPI as a Google Summer of Code =
project. I
am proficient in C programming and familiar with how libraries are =
linked, etc.
Are there any other pre-requisites for taking up this work?<br =
clear=3Dall>
<br>
I have a few questions about the expected scope for this project. The =
project
description says that once the library itself is implemented, it will =
have to
be integrated with applications, the CUPS printing system, etc. I am =
not
currently aware of the internals of these systems. Will this be a =
significant
set back? I would in fact like to know more about what kind of =
integration into
other systems is expected, especially with other drivers and =
filters.<br>
<br>
Thanks and regards,<br>
Aditya Manthramurthy<br>
<br>
[0]: <a =
href=3D"http://aditya87.googlepages.com/AdityaResume.pdf">http://aditya8=
7.googlepages.com/AdityaResume.pdf</a>
<o:p></o:p></span></font></p>

</div>

</div>

</body>

</html>

------_=_NextPart_001_01C89679.A13CF978--
