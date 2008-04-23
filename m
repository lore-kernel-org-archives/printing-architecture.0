Message-ID: <2F7D63A21DB2C74EB8EB8C09AF667DB0152D3819@eitc220.eitc.epson.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Date: Wed, 23 Apr 2008 08:49:35 -0700
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C8A559.A0FC56D0"
Subject: [Printing-architecture] LF Collaboration Summit Open Printing
	Minutes from Glen Petrie
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

This message is in MIME format. Since your mail reader does not understand
this format, some or all of this message may not be legible.

------_=_NextPart_001_01C8A559.A0FC56D0
Content-Type: text/plain

 

Open Printing Minutes from Glen Petrie

 

Other people who attended the summit should make additions/correction were
needed

 

Action Items from desktop group:

 

1.	Define a specification for machine readable print setting at the
doc, app and desktop level.
2.	Define a set of simple top level state/status indicators for top
level of the Common Print Dialog.

 

 

9:15 am Introductions (Till, George, Glen, Fumio,  David)

============

Status Report from Till

--- Till discussion of GSOC 

      --- 8 students for LF  (5 for Open Printing)

           ---- 1-2:  Gnome and KDE for Print Dialog

           ---- 1:  JTAPI Implementation

           ---- 1: PAPI support 

           ---- 1:  Add modules to ????

           ---- 1:  Modularization of GhostScript

--- Lars if working Foomatic RIP in C (currently in PERL) to allow
connectivity to libraries and to improve performance.  Also, Processing PDF
for integration into CUPS

-- (CUPS computes a cost factor of the best way to print the job.)

-- It will be possible to have more than one command line to support PDF/PS.
--- Foomatic RIP is used for non-PDF/PS printers but is also used to add
print-time information (who, time, date, security)

-- CUPS is not supporting Custom-Options 

=========

- The common printing dialog is the desktop level with at interface to
applications.  Vendor options are put in the PPD extensions. 

-- The Common Print Dialog is dependent upon CUPS and vendor options are
done from PPD extension (via CUPS custom-options) or by APDialogExtensions
API.

-- George concern how the applications will invoke the common print dialog,
he feels this should be done first before worrying about the actual dialog
looks.

--- Glen is worried of extensibility of the dialog for manufacture.

-- Should application be able to restrict options?

 

--- Next Steps

   --- Define the App - to - common dialog interface

        --- Needs to be bi-dir

        --- Application to able constraint option

        --- Application to add their own options

        --- Printer Manufacture add their own options

   --- Define print manufacture to common dialog interface

       --- Done by PPD extensions - Till has a preliminary set of options

            ---  This is only mechanism to get extensions by adding new data
types.

       --- Future will have a mechanism for vendors to have binaries.   The
discussion was to extend the PPD to support this. 

--- A good summer project is support CUPS Web interface.

-- Foomatic extensions are different that CUPS but can use both.

 

GSOC projects are now

1.	Print dialog

a.	GUI dialog
b.	CUPS Extension /Web Interface  -- Lars [Till]
c.	Application Interface (API)Demonstration

2.	PAPI
3.	JTAPI - Dropped
4.	PDF Work : PDF to IJS,  Text to PDF

 

============

 

Slides from Japan

--- Version 1.0 of OPVP available for review

---  Implementation and driver testing completed   (NEC and Canon Drivers
have been tested)

(What license is OPVP and the driver from manufactures.)

 

============

 

11:50 am   Printing on the Desktop

 

Subject: Common Printing Dialog (CPD)

-- There should only be one dialog for all applications

-- The CPD should be part of the Gnome/KDE/Other? Desktops

-- Called using DBUS <--- Is this the best interface to applications.

 

= Like in Windows, there was an expressed desire for remembering print
setting at the desktop level, the application level and the document level.

-- Thus the desktop group is looking for a machine readable definition
(specification) of print settings.

 

= Want the CPD to have a state/status tab.

-- After some discussion, what the desktop people also wanted was some very
simple indicators in the main CPD window showing the "status" ("state",
"condition", "readiness", "busyness") of the printer.   That is, they want
to know that the printer is really ready/available for printing.  Is the
printer out of ink, is the print out of paper, is the printer busy, is the
printer online.   The idea was that the indicators are simple colored boxes.
For example, a box for ink-level is green if ink/toner level is ok, blue if
ink/toner low, red if ink/toner out.  Same for the other status items.  The
user could go to the state/status tab if they need more information.

 

= The desktop group would like to see the CPD be a plug-in solution versus a
separate process. 

 

= The CPD should not define it own basic display parameters such as font,
color, etc.  These should be inherited from the Desktop the CPD is running
on.

 

=========

 

 


------_=_NextPart_001_01C8A559.A0FC56D0
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
	{mso-list-id:62028101;
	mso-list-type:hybrid;
	mso-list-template-ids:-1825788888 1338272574 67698713 67698715 =
67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
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
	{mso-list-id:1072654990;
	mso-list-type:hybrid;
	mso-list-template-ids:-379923560 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:.5in;
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

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Open Printing Minutes from Glen =
Petrie<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Other people who attended the summit should make
additions/correction were needed<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Action Items from desktop =
group:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo2'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Define a =
specification for
     machine readable print setting at the doc, app and desktop =
level.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo2'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Define a set of =
simple top
     level state/status indicators for top level of the Common Print =
Dialog.<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>9:15 am Introductions (Till, George, Glen, =
Fumio,&nbsp;
David)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span=
></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Status Report from Till<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- Till discussion of GSOC =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- 8 students for =
LF&nbsp; (5
for Open Printing)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
---- 1-2:&nbsp; Gnome and KDE for Print =
Dialog<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
---- 1:&nbsp; JTAPI Implementation<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
---- 1: PAPI support <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
---- 1:&nbsp; Add modules to ????<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
---- 1:&nbsp; Modularization of =
GhostScript<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- Lars if working Foomatic RIP in C (currently in =
PERL) to
allow connectivity to libraries and to improve performance.&nbsp; Also,
Processing PDF for integration into CUPS<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- (CUPS computes a cost factor of the best way to =
print the
job.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- It will be possible to have more than one command =
line to
support PDF/PS.&nbsp;&nbsp;&nbsp; --- Foomatic RIP is used for =
non-PDF/PS
printers but is also used to add print-time information (who, time, =
date,
security)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- CUPS is not supporting Custom-Options =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></font><=
/p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span style=3D'font-siz=
e:10.0pt;
font-family:Arial'>- The common printing dialog is the desktop level =
with at
interface to applications.&nbsp; Vendor options are put in the PPD =
extensions. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- The Common Print Dialog is dependent upon CUPS =
and vendor
options are done from PPD extension (via CUPS custom-options) <s>or by
APDialogExtensions API.<o:p></o:p></s></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- George concern how the applications will invoke =
the
common print dialog, he feels this should be done first before worrying =
about
the actual dialog looks.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- Glen is worried of extensibility of the dialog =
for
manufacture.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- Should application be able to restrict =
options?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- Next Steps<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp; --- Define the App &#8211; to &#8211; =
common
dialog interface<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- Needs =
to be
bi-dir<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- =
Application
to able constraint option<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- =
Application
to add their own options<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- =
Printer
Manufacture add their own options<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp; --- Define print manufacture to common =
dialog
interface<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- Done by PPD
extensions &#8211; Till has a preliminary set of =
options<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
---&nbsp; This is only mechanism to get extensions by adding new data =
types.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --- Future will =
have a
mechanism for vendors to have binaries.&nbsp;&nbsp; The discussion was =
to
extend the PPD to support this. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- A good summer project is support CUPS Web =
interface.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- Foomatic extensions are different that CUPS but =
can use
both.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>GSOC projects are now<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Print =
dialog<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font =
size=3D2 face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>GUI =
dialog<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font =
size=3D2 face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>CUPS Extension /Web
      Interface&nbsp; -- Lars [Till]<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l0 level2 lfo1'><font =
size=3D2 face=3DArial><span
      style=3D'font-size:10.0pt;font-family:Arial'>Application =
Interface
      (API)Demonstration<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     =
style=3D'font-size:10.0pt;font-family:Arial'>PAPI<o:p></o:p></span></fon=
t></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>JTAPI &#8211; =
Dropped<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>PDF Work : PDF to =
IJS,&nbsp;
     Text to PDF<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span=
></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Slides from <st1:country-region =
w:st=3D"on"><st1:place =
w:st=3D"on">Japan</st1:place></st1:country-region><o:p></o:p></span></fo=
nt></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>--- Version 1.0 of OPVP available for =
review<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>---&nbsp; Implementation and driver testing
completed&nbsp;&nbsp; (NEC and Canon Drivers have been =
tested)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>(What license is OPVP and the driver from =
manufactures.)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span=
></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>11:50 am&nbsp;&nbsp; Printing on the =
Desktop<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Subject: Common Printing Dialog =
(CPD)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- There should only be one dialog for all =
applications<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- The CPD should be part of the Gnome/KDE/Other? =
Desktops<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span style=3D'font-siz=
e:10.0pt;
font-family:Arial'>-- Called using DBUS &lt;--- Is this the best =
interface to
applications.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D Like in Windows, there was an expressed desire =
for remembering
print setting at the desktop level, the application level and the =
document
level.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- Thus the desktop group is looking for a machine =
readable definition
(specification) of print settings.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D Want the CPD to have a state/status =
tab.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>-- After some discussion, what the desktop people =
also
wanted was some very simple indicators in the main CPD window showing =
the &#8220;status&#8221;
(&#8220;state&#8221;, &#8220;condition&#8221;, &#8220;readiness&#8221;, =
&#8220;busyness&#8221;)
of the printer.&nbsp;&nbsp; That is, they want to know that the printer =
is
really ready/available for printing.&nbsp; Is the printer out of ink, =
is the
print out of paper, is the printer busy, is the printer =
online.&nbsp;&nbsp; The
idea was that the indicators are simple colored boxes.&nbsp; For =
example, a box
for ink-level is green if ink/toner level is ok, blue if ink/toner low, =
red if
ink/toner out.&nbsp; Same for the other status items.&nbsp; The user =
could go
to the state/status tab if they need more =
information.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D The desktop group would like to see the CPD be a =
plug-in
solution versus a separate process. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D The CPD should not define it own basic display =
parameters
such as font, color, etc.&nbsp; These should be inherited from the =
Desktop the
CPD is running on.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></font><=
/p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01C8A559.A0FC56D0--
