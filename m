Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0130D1CB5@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Fri, 9 Nov 2007 09:22:17 -0800 
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C822F5.138E99C8"
Subject: [Printing-architecture] Directory Path for Printing stuff
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "'printing-architecture@lists.freestandards.org'" <printing-architecture@lists.freestandards.org>, "'printing-summit@lists.linux-foundation.org'" <printing-summit@lists.linux-foundation.org>

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C822F5.138E99C8
Content-Type: text/plain

The existing 'freestandards-fhs-discuss@lists.sourceforge.net' mail list
does not seem to work; does anyone know the correct/new one.

 

====- 

 

Hello,

 

I am member of the 'Linux Foundation/Open Printing' group.  We have recently
trying to create some coherence in the Linux Printing world.  We are looking
for guidance from the fhs group on a directory naming.  

 

Without going in the all of the details we have been trying to stabilize
where printing content is stored.  I recently suggested to the group that a
high level directly for Linux printing be created called '<foo>/print' or
'<foo>/printing'.  This would be the top level directory for all printing
related content.  Since we are trying to create end-user test app's and the
like, I believe that such top level printing directory would make everyone
life a little easier.  However, I was informed that the fhs requires that,
for at least drivers that there is an *existing* convention of
"/usr/lib/supplier".  For printing in the Linux world "supplier" does not
mean manufacture; since there are many independent parties developing
drivers.  So trying to find print related information could be difficult.
Things were ok when the user really didn't need to find things, but that
need becoming a new requirement, I believe another level of organizational
structure is needed. 

 

My suggest was to have a functional top level directory name; for example,
"print", "scan", "fax", "display" and so forth.  With this type of
convention, users would have a fighting chance to locate related
information.   

 

For the "print" or "printing" directory, I would further suggest having the
following subdirectories

 

<foo>/print/managers

<foo>/print/spoolers

<foo>/print/drivers

<foo>/print/help

<foo>/print/pdpca  (a collection of test application which started this
discussion)

<foo>/print/ppd

[I would ask the printing group for the actual list]

 

Under these directories would be the <developer> (supplier) (or project
name) sub-directories and so forth.

 

Glen

 


------_=_NextPart_001_01C822F5.138E99C8
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
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>The existing =
'freestandards-fhs-discuss@lists.sourceforge.net'
mail list does not seem to work; does anyone know the correct/new =
one.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D- <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Hello,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I am member of the &#8216;Linux Foundation/Open
Printing&#8217; group.&nbsp; We have recently trying to create some =
coherence
in the Linux Printing world.&nbsp; We are looking for guidance from the =
fhs
group on a directory naming.&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Without going in the all of the details we have been =
trying
to stabilize where printing content is stored.&nbsp; I recently =
suggested to
the group that a high level directly for Linux printing be created =
called
&#8216;&lt;foo&gt;/print&#8217; or =
&#8216;&lt;foo&gt;/printing&#8217;.&nbsp;
This would be the top level directory for all printing related =
content.&nbsp;
Since we are trying to create end-user test app&#8217;s and the like, I =
believe
that such top level printing directory would make everyone life a =
little
easier.&nbsp; However, I was informed that the fhs requires that, for =
at least
drivers that there is an *existing* convention of
&nbsp;&#8220;/usr/lib/supplier&#8221;.&nbsp; For printing in the Linux =
world
&#8220;supplier&#8221; does not mean manufacture; since there are many
independent parties developing drivers.&nbsp; So trying to find print =
related information
could be difficult.&nbsp;&nbsp; Things were ok when the user really
didn&#8217;t need to find things, but that need becoming a new =
requirement, I
believe another level of organizational structure is needed. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>My suggest was to have a functional top level =
directory
name; for example, &#8220;print&#8221;, &#8220;scan&#8221;, =
&#8220;fax&#8221;,
&#8220;display&#8221; and so forth.&nbsp; With this type of convention, =
users
would have a fighting chance to locate related information.&nbsp;&nbsp; =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>For the &#8220;print&#8221; or =
&#8220;printing&#8221;
directory, I would further suggest having the following =
subdirectories<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/managers<o:p></o:p></span></font></=
p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/spoolers<o:p></o:p></span></font></=
p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/drivers<o:p></o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/help<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/pdpca&nbsp; (a collection of test
application which started this discussion)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&lt;foo&gt;/print/ppd<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>[I would ask the printing group for the actual =
list]<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Under these directories would be the =
&lt;developer&gt;
(supplier) (or project name) sub-directories and so =
forth.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C822F5.138E99C8--
