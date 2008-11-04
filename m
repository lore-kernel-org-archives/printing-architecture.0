Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C93EAA.B8BFCED6"
Date: Tue, 4 Nov 2008 10:28:32 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A90@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Outline of OpenPrinting Architecture Team
	Next Steps
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


------_=_NextPart_001_01C93EAA.B8BFCED6
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From the Steering Committee / Architecture Meeting of November 3, 2008,
Till Kamppeter suggested the following items for next steps for the
Architecture Team to address.  By far, the Common Print Dialog was
highest on the list.  The order for the remaining activities is what I
remember but someone who at the meeting please provide correction where
needed.

=20

I volunteered to provide more content to each below as a start to
defining each of the activities below.  These are my understanding and
they will be corrected, enhanced and modified by those who are more
directly involved with each.=20

=20

=3D=3D=3D=3D=3D

    o Finish of the Common Printing Dialog

The CPD currently consist of three major components; namely, the GUI
Dialog, the API and PPD extensions.

The CPD GUI Dialog:

Background:

The format/layout of the CPD Dialog is being developed by the
OpenUsability Group. =20

Activity: (by the OpenPrinting Architecture Team)

1. Provide coherence of the GUI with the API and the PPD extensions
along with coherence with existing printing conventions.

2. Validate scalability of the GUI from embedded to production printing
environment.

3. If not currently available; provide a prototype for each environment.

=20

The CPD API:

Background:

The API was began as GSoC and continues by the student.

Activity: (by the OpenPrinting Architecture Team)

1. Review of the existing API

2. Provide suggestion/recommendation of additions, modification,
enhancements of the API

3. Create a formal OpenPrinting Document/Specification of the API

4. If not currently available; provide a prototype.

=20

The CPD PPD extensions:

Background:

The API was began as GSoC and continues by the student.

Activity: (by the OpenPrinting Architecture Team)

1. Align the basic printing options/attributes/values with the existing
JTAPI specification.=20

2. Create a formal OpenPrinting Document/Specification for the CPD PPD
extensions.

3. Create several - 10+ example PPD files illustrating ALL of the CPD
PPD extensions.

4. If not currently available; provide a prototype using the CPD
enhanced PPD file(s).

=20

    o Creation of a key to sign downloadable printer driver packages

I believe that Till Kamppeter should address this.  Till, how can the
Architecture Team help?

=20

    o Study Out of Box User Experience

Printing for Linux has grown a lot over the last several years but is
still considered to being done/setup by "some one in the know".

Background:

This activity is an evaluation or a ???? of the User experience of
literally taking a printer out-of-the-box and what it take to create
their first print page.

Activity: (by the OpenPrinting Architecture Team)

I am not quite sure what the Architecture Team can do to help this
activity directly.  Actually, a central entity or the printer vendors
need to conduct these tests.  The Architecture Team could define what
testing environment and needs to done, and, more importantly, what
feedback information is needed by the testing entity so that the Linux
printing experience can be improved/fixed.

=20

    o Investigate Requirements for next LSB

The LSB adds content by defacto usage; that is, instead of creating a
specification, followed by an implementation; the LSB requires that
content have defacto usage in LSB OS distro's.=20

Background:

To date printing content have been added in an adhoc approach with no
focused direction or goal.

Activity: (by the OpenPrinting Architecture Team)

1. Identify printing content (without regards to time of inclusion in
the LSB) that should be prompted by OpenPrinting.

2. Prioritize ordering and induction of printing content in the LSB.

3. Develop a time line for induction of printing content in the LSB.

4. Outline plans (how/what/time-line) to incorporate printing content
into individual OS distro's.

5. Document defacto usage to the LSB team so that the specific printing
content becomes part of the LSB

    o Embedding of printing metadata/job ticket in PDF for PDF printing

PDF document format is (becoming) the document exchange format of choice
today. The format contains detailed data that allows it be displayed by
any display entity independent of OS.  PDF already supports JDF job
tickets.......................

=20

Till you elaborate on what you want to do here.  Do you want to put the
CPD "print-intent" content in a PDF file?

=20

    o Color Management on the OS/Printing System level

This is complex issues to be performed by knowledgeable personnel.

Background:

I am assuming a generic background here; much the same as was the
situation with PPD files. Thus, the issues is managing ICC profiles or
the equivalent.

Activity: (by the OpenPrinting Architecture Team)

1. If Color Management content extends beyond ICC profile; the Color
Management content needs to be defined.

2. Using the same approach as was used for PPD, a directory location and
structure would be defined for the Color Management content.

=20

=20


------_=_NextPart_001_01C93EAA.B8BFCED6
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
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
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>From the Steering =
Committee
/ Architecture Meeting of November 3, 2008, Till Kamppeter suggested the =
following
items for next steps for the Architecture Team to address.&nbsp; By far, =
the Common
Print Dialog was highest on the list.&nbsp; The order for the remaining
activities is what I remember but someone who at the meeting please =
provide
correction where needed.<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>I volunteered to =
provide
more content to each below as a start to defining each of the activities
below.&nbsp; These are my understanding and they will be corrected, =
enhanced
and modified by those who are more directly involved with each. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>=3D=3D=3D=3D=3D<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o Finish
of the Common Printing Dialog<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
CPD currently consist of three major components; namely, the GUI Dialog, =
the
API and PPD extensions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
CPD GUI Dialog:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
format/layout of the CPD Dialog is being developed by the OpenUsability =
Group.&nbsp;
<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>1. Provide
coherence of the GUI with the API and the PPD extensions along with =
coherence
with existing printing conventions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>2. Validate
scalability of the GUI from embedded to production printing =
environment.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>3.
If not currently available; provide a prototype for each =
environment.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
CPD API:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
API was began as GSoC and continues by the =
student.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>1. Review
of the existing API<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>2.
Provide suggestion/recommendation of additions, modification, =
enhancements of
the API<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>3.
Create a formal OpenPrinting Document/Specification of the =
API<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>4.
If not currently available; provide a =
prototype.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
CPD PPD extensions:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
API was began as GSoC and continues by the =
student.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>1. Align
the basic printing options/attributes/values with the existing JTAPI
specification. <o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>2.
Create a formal OpenPrinting Document/Specification for the CPD PPD =
extensions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>3.
Create several &#8211; 10+ example PPD files illustrating ALL of the CPD =
PPD
extensions.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>4.
If not currently available; provide a prototype using the CPD enhanced =
PPD
file(s).<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o
Creation of a key to sign downloadable printer driver =
packages<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>I
believe that Till Kamppeter should address this.&nbsp; Till, how can the =
Architecture
Team help?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o Study
Out of Box User Experience<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Printing
for Linux has grown a lot over the last several years but is still =
considered
to being done/setup by &#8220;some one in the =
know&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>This
activity is an evaluation or a ???? of the User experience of literally =
taking
a printer out-of-the-box and what it take to create their first print =
page.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>I
am not quite sure what the Architecture Team can do to help this =
activity
directly.&nbsp; Actually, a central entity or the printer vendors need =
to
conduct these tests.&nbsp; The Architecture Team could define what =
testing environment
and needs to done, and, more importantly, what feedback information is =
needed
by the testing entity so that the Linux printing experience can be
improved/fixed.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o
Investigate Requirements for next LSB<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>The
LSB adds content by defacto usage; that is, instead of creating a =
specification,
followed by an implementation; the LSB requires that content have =
defacto usage
in LSB OS distro&#8217;s. <o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>To date printing content have been added in an adhoc =
approach
with no focused direction or goal.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>1. Identify printing content (without regards to time of
inclusion in the LSB) that should be prompted by =
OpenPrinting.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>2. Prioritize ordering and induction of printing content =
in the
LSB.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>3. Develop a time line for induction of printing content =
in the
LSB.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>4. Outline plans (how/what/time-line) to incorporate =
printing
content into individual OS distro&#8217;s.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:.5in;text-autospace:
none'><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:
"Courier New"'>5. Document defacto usage to the LSB team so that the =
specific
printing content becomes part of the LSB<o:p></o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o
Embedding of printing metadata/job ticket in PDF for PDF =
printing<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>PDF
document format is (becoming) the document exchange format of choice =
today. The
format contains detailed data that allows it be displayed by any display =
entity
independent of OS.&nbsp; PDF already supports JDF job =
tickets&#8230;&#8230;&#8230;&#8230;&#8230;&#8230;&#8230;..<o:p></o:p></sp=
an></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>Till you elaborate =
on what
you want to do here.&nbsp; Do you want to put the CPD =
&#8220;print-intent&#8221;
content in a PDF file?<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><font size=3D2 =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
o Color
Management on the OS/Printing System level<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>This
is complex issues to be performed by knowledgeable =
personnel.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>Background:<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>I
am assuming a generic background here; much the same as was the =
situation with
PPD files. Thus, the issues is managing ICC profiles or the =
equivalent.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>Activity:
(by the OpenPrinting Architecture Team)<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>1.
If Color Management content extends beyond ICC profile; the Color =
Management
content needs to be defined.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier New"'>2. Using
the same approach as was used for PPD, a directory location and =
structure would
be defined for the Color Management =
content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal =
style=3D'margin-left:2.0in;text-autospace:none'><font size=3D2
face=3D"Courier New"><span =
style=3D'font-size:10.0pt;font-family:"Courier =
New"'>&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C93EAA.B8BFCED6--
