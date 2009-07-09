Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CA00B3.39BD83F8"
Date: Thu, 9 Jul 2009 09:39:14 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Questions, Concern, Disscusion on CPD
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

This is a multi-part message in MIME format.

------_=_NextPart_001_01CA00B3.39BD83F8
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

I have not had time until now to look at the latest version of the CPD.

=20

I will on comment on the example denoted at the URL:

http://wiki.openusability.org/printing/index.php/Personal_laser_paramete
r_specifications=20

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

My first "very strong" recommendation, to all those individuals involved
with the CPD, is that they read and understand the OpenPrinting JTAPI
specification, object, attributes and values.    A great deal of
print-domain knowledge, covering embedded-printing to
production-printing; covering job-tickets to IPP; and years of the
various individuals experience, went into creating and defining the
JTAPI content.    One should think of a print dialog as the method for
setting a print job-ticket.

=20

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Section 1:

A: Media Type (shown in Section 5) needs to be in this section since
media-type and media-size (not paper-size) are connected.  For example,
I want to print on a CD; it is not paper and the size is defined by
media-type.=20

=20

B: The "paper size" has no "default setting"; the application sends the
CPD the size of the media.  Setting the media-size is initially done in
the application in the "Page Setup".  The CPD is not doing setup
functions.  The user may override the media-size; even the orientation
received from the application in the CPD; in which case the "fit policy"
would be invoked.

=20

C: The word "borders" I believe refers to "margins".  It is not the
function of the CPD to set the margins.  The ability to set margin to a
specific value or "borderless" is done within the application in the
"Page Setup".  The "Page Setup" within the application would have
retrieved the currently selected printer's capabilities to know the
printer's min/max margin and if the printer supports "borderless"
printing.

=20

D: I (nor I suspect most users) understand the meaning of the values for
the "fit" option; specifically, what does "to paper" or "shrink only"
actually mean.  What will they actually do?  These types of tags I lump
into a classification I call "The Buttons, Icons, Controls and Labels of
Confusion (BICLC)".   The term typically used for "fit policy", and
defined in the JTAPI specification, are Clip-to-Page and
(Scale)Fit-to-Page.  Also, there can not be a value of "none".  If the
content does not fit the media-size, something has to be done; either
clip or fit.

=20

 E: Another "option" to consider for this section is an advanced button.
The key to printing a specific print-quality (actually, better stated as
a specific print-intent) is to know more about the media being printed
to.   That is, for example using paper; what is brightness, the weight,
the finish (rough, smooth, polished), color, etc.  From these facts, the
printer driver can tune its color-to-ink processing and other factors to
achieve the best output for the user print intent.  Typically, a user
can easily find this information on the cover of the media being used in
the printer.  Note, I have not seen this kind of processing done in
color-management processing software.=20

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Section 2:

A: The label "page(s)" is better stated as "page(s) to print".

=20

B: Above the current "page(s)" field there should be a button for
printing the "current page".  The current page (number) is provided to
the CPD from the application.   Or the application is requested to
provide only the "current page".

=20

C: Above the current "page(s)" field there should be a button for
printing the "selection".  The application is requested to provide only
the "selected content".

=20

D: Above the current "page(s)" field there should be a button for
printing the "Clipboard".  The content of the clipboard is printed.

=20

E: Any combination of B:/C:/D:/page(s) should be possible.  For example,
I want to print the clipboard, the currently selected content and page 3
of the content.

=20

F: The label "pages per side" will be confused with "sides per page".
A more generally accept terms are "Print Layout
 or "Page Layout" or just "Layout" and the options are 1 page, 2, pages,
4 pages, etc.  Default is "1 page"

=20

G: For the values of "pages per side", the typical values are 1, 2, 3,
4, 6, 8, 9. Beyond 9, it is really hard to read the output. Printing 25
pages per side seem silly.  If the intent is to print "thumbnails" then
that should be a value.

=20

H: If you allow "pages per side", there should be an option for
"presentation direction".   Again, the OpenPrinting JTAPI specification
provides the values for this option.

=20

I: I never heard of the option called "poster" in a print dialog and if
I understand it correctly, it is how to print a large content-page on
many printed-pages.  This is not an option for the CPD.  Again, this a
setup option and should be controlled by the application.   This is not
a simple process (I know from experience).   For example, does each page
have a set amount of content overlay for piecing the pages together or
are alignment-marks used.  For non-borderless media, are cut-line
printed.   So forth, and so forth.

=20

J: The label "both sides", again, is strange.  "sides" would be better
or use the word "duplex".  I believe most people today are used to the
term duplex.

=20

K: I believe "page turning" refers to "binding edge" or just "binding",
which has values of top, left, right.   Introducing new terminology to
print is just confusing.

=20

L: "page turning" has no "off" state.  When "sides" is set to one, then
"page-turning" is deactivated.  When "sides" is set to two, then the
default for "page turning" has to be some real value (top, left, or
right) but not "off".

=20

M: It would be nice to have a "binding type" option (again, see JTAPI
specification for values) and to overlay the binding on the print-page.
For example, a 3-hole punch would print the location of the holes on the
final printed page.  At a minimum, it needs to be in the preview.

=20

N: One really nice addition would be to show the media size values
(width and height; both in inch and mm).  Not every one knows the
dimensions of all the various paper sizes.

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Section 3:

=20

A: Sorry, but "resolution" is a numerical specification.  The correct
label should be "print quality" or just "quality".    Please look at the
JTAPI Specification.  Also note, that many debates have been done in the
printing community on how to specify quality.  The JTAPI specification
values are those agreed upon by the community.  Please do not invent new
values that have no concrete meaning and, thus, are left open to
interpretation by all entities along the print chain.  =20

=20

B: Sorry, but "color settings" are not related to "text and photo". The
correct label should be "print content" or just "content".  You could
even call this "print intent" or just "intent".  Please look at the
JTAPI Specification.  Also note, that many debates have been done in the
printing community on how to specify content.  The JTAPI specification
values are those agreed upon by the community.  Please do not invent new
values that have no concrete meaning and, thus, are left open to
interpretation by all entities along the print chain.

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Section 4:

=20

A:  I would add the following options:

    A1: For any, add orientation.  (many watermarks are placed at 45
degrees)

    A2: For text , add color (unless that will be in the "format text"
option)

    A3: For any, add "placement" label with values like "tile,
scale-to-fit, top, bottom".

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Section 5:

=20

A:  Please change the label "which way-up" (not even good English).
The JTAPI variable is "output orientation". Please look at the JTAPI
Specification.

=20

B. "output order" option is missing.  Please look at the JTAPI
Specification.

=20

C: "output bin" option is missing.  Please look at the JTAPI
Specification.

=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Other

A: There needs to be an option for a "cover sheet"

=20

B: A new issue arising in the print world is that of security.  For
example, one the simplest security features for networked printers is
"print only when at printer".  The user must enter a code to start the
print process.  This needs to be set in the CPD.   I know this out of
scope right now but since we are in the design/conception phase of this
project; security needs to be addressed.

=20

C: I really don't think that the preview is providing sufficient
information to the user.  For example, for n-up, the preview should show
the n-up.  For a binding edge, there should be a graphical indication of
which edge.   For two-sided printing, the preview should show a turned
corner (the corner changes depending if the page being displayed is the
front or back page).  And so forth and so forth.

=20

Glen

=20

=20


------_=_NextPart_001_01CA00B3.39BD83F8
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Batang;
	panose-1:2 3 6 0 0 1 1 1 1 1;}
@font-face
	{font-family:"\@Batang";
	panose-1:2 3 6 0 0 1 1 1 1 1;}
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
font-family:Arial'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I have not had time until now to look at the latest =
version
of the CPD.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I will on comment on the example denoted at the =
URL:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><a
href=3D"http://wiki.openusability.org/printing/index.php/Personal_laser_p=
arameter_specifications">http://wiki.openusability.org/printing/index.php=
/Personal_laser_parameter_specifications</a>
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>My first &#8220;very strong&#8221; recommendation, to =
all
those individuals involved with the CPD, is that they read and =
understand the OpenPrinting
JTAPI specification, object, attributes and values. &nbsp;&nbsp;&nbsp;A =
great deal
of print-domain knowledge, covering embedded-printing to =
production-printing; covering
job-tickets to IPP; and years of the various individuals experience, =
went into
creating and defining the JTAPI content. &nbsp;&nbsp;&nbsp;One should =
think of
a print dialog as the method for setting a print =
job-ticket.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Section 1:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A: Media Type (shown in Section 5) needs to be in =
this section
since media-type and media-size (not paper-size) are connected. =
&nbsp;For
example, I want to print on a CD; it is not paper and the size is =
defined by
media-type. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>B: The &#8220;paper size&#8221; has no &#8220;default
setting&#8221;; the application sends the CPD the size of the media. =
&nbsp;Setting
the media-size is initially done in the application in the &#8220;Page =
Setup&#8221;.
&nbsp;The CPD is not doing setup functions.&nbsp; The user may override =
the media-size;
even the orientation received from the application in the CPD; in which =
case
the &#8220;fit policy&#8221; would be =
invoked.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>C: The word &#8220;borders&#8221; I believe refers to =
&#8220;margins&#8221;.
&nbsp;It is not the function of the CPD to set the margins. &nbsp;The =
ability
to set margin to a specific value or &#8220;borderless&#8221; is done =
within
the application in the &#8220;Page Setup&#8221;. &nbsp;The &#8220;Page =
Setup&#8221;
within the application would have retrieved the currently selected =
printer&#8217;s
capabilities to know the printer&#8217;s min/max margin and if the =
printer
supports &#8220;borderless&#8221; printing.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>D: I (nor I suspect most users) understand the =
meaning of the
values for the &#8220;fit&#8221; option; specifically, what does =
&#8220;to
paper&#8221; or &#8220;shrink only&#8221; actually mean. &nbsp;What will =
they
actually do? &nbsp;These types of tags I lump into a classification I =
call &#8220;The
Buttons, Icons, Controls and Labels of Confusion (BICLC)&#8221;.&nbsp; =
&nbsp;The
term typically used for &#8220;fit policy&#8221;, and defined in the =
JTAPI specification,
are Clip-to-Page and (Scale)Fit-to-Page. &nbsp;Also, there can not be a =
value
of &#8220;none&#8221;.&nbsp; If the content does not fit the media-size,
something has to be done; either clip or =
fit.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;E: Another &#8220;option&#8221; to consider for =
this
section is an advanced button. &nbsp;The key to printing a specific =
print-quality
(actually, better stated as a specific print-intent) is to know more =
about the
media being printed to. &nbsp;&nbsp;That is, for example using paper; =
what is
brightness, the weight, the finish (rough, smooth, polished), color, =
etc. &nbsp;From
these facts, the printer driver can tune its color-to-ink processing and =
other
factors to achieve the best output for the user print intent.&nbsp; =
Typically,
a user can easily find this information on the cover of the media being =
used in
the printer. &nbsp;Note, I have not seen this kind of processing done in
color-management processing software. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Section 2:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A: The label &#8220;page(s)&#8221; is better stated =
as &#8220;page(s)
to print&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>B: Above the current &#8220;page(s)&#8221; field =
there
should be a button for printing the &#8220;current page&#8221;. =
&nbsp;The
current page (number) is provided to the CPD from the application. =
&nbsp;&nbsp;Or
the application is requested to provide only the &#8220;current =
page&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>C: <a name=3D"OLE_LINK2"></a><a =
name=3D"OLE_LINK1">Above the
current &#8220;page(s)&#8221; field there should be a button for =
printing the &#8220;selection&#8221;.
&nbsp;The application is requested to provide only the &#8220;selected =
content&#8221;.</a><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>D: Above the current &#8220;page(s)&#8221; field =
there
should be a button for printing the &#8220;Clipboard&#8221;. &nbsp;The =
content
of the clipboard is printed.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>E: Any combination of B:/C:/D:/page(s) should be =
possible. &nbsp;For
example, I want to print the clipboard, the currently selected content =
and page
3 of the content.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>F: The label &#8220;pages per side&#8221; will be =
confused
with &#8220;sides per page&#8221;. &nbsp;&nbsp;A more generally accept =
terms are
&#8220;Print Layout<br>
&nbsp;or &#8220;Page Layout&#8221; or just &#8220;Layout&#8221; and the =
options
are 1 page, 2, pages, 4 pages, etc.&nbsp; Default is &#8220;1 =
page&#8221;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>G: For the values of<a name=3D"OLE_LINK4"></a><a
name=3D"OLE_LINK3"> &#8220;pages per side&#8221;</a>, the typical values =
are 1,
2, 3, 4, 6, 8, 9. Beyond 9, it is really hard to read the output. =
Printing 25
pages per side seem silly.&nbsp; If the intent is to print =
&#8220;thumbnails&#8221;
then that should be a value.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>H: If you allow &#8220;pages per side&#8221;, there =
should
be an option for &#8220;presentation direction&#8221;. =
&nbsp;&nbsp;Again, the
OpenPrinting JTAPI specification provides the values for this =
option.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I: I never heard of the option called =
&#8220;poster&#8221; in
a print dialog and if I understand it correctly, it is how to print a =
large content-page
on many printed-pages. &nbsp;This is not an option for the CPD.&nbsp; =
Again,
this a setup option and should be controlled by the application. =
&nbsp;&nbsp;This
is not a simple process (I know from experience).&nbsp;&nbsp; For =
example, does
each page have a set amount of content overlay for piecing the pages =
together
or are alignment-marks used. &nbsp;For non-borderless media, are =
cut-line
printed.&nbsp;&nbsp; So forth, and so =
forth.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>J: The label &#8220;both sides&#8221;, again, is =
strange.&nbsp;
&#8220;sides&#8221; would be better or use the word =
&#8220;duplex&#8221;. &nbsp;I
believe most people today are used to the term =
duplex.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>K: I believe &#8220;page turning&#8221; refers to =
&#8220;binding
edge&#8221; or just &#8220;binding&#8221;, which has values of top, =
left,
right.&nbsp; &nbsp;Introducing new terminology to print is just =
confusing.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>L: &#8220;page turning&#8221; has no =
&#8220;off&#8221;
state. &nbsp;When &#8220;sides&#8221; is set to one, then =
&#8220;page-turning&#8221;
is deactivated.&nbsp; When &#8220;sides&#8221; is set to two, then the =
default
for &#8220;page turning&#8221; has to be some real value (top, left, or =
right)
but not &#8220;off&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>M: It would be nice to have a &#8220;binding =
type&#8221; option
(again, see JTAPI specification for values) and to overlay the binding =
on the
print-page. &nbsp;For example, a 3-hole punch would print the location =
of the
holes on the final printed page.&nbsp; At a minimum, it needs to be in =
the
preview.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>N: One really nice addition would be to show the =
media size values
(width and height; both in inch and mm). &nbsp;Not every one knows the
dimensions of all the various paper sizes.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Section 3:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A: Sorry, but &#8220;resolution&#8221; is a numerical
specification.&nbsp; The correct label should be &#8220;print =
quality&#8221; or
just &#8220;quality&#8221;. &nbsp;&nbsp;&nbsp;Please look at the JTAPI
Specification.&nbsp; Also note, that many debates have been done in the
printing community on how to specify quality. &nbsp;The JTAPI =
specification
values are those agreed upon by the community. &nbsp;Please do not =
invent new
values that have no concrete meaning and, thus, are left open to =
interpretation
by all entities along the print chain. =
&nbsp;&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>B: Sorry, but &#8220;color settings&#8221; are not =
related
to &#8220;text and photo&#8221;. The correct label should be =
&#8220;print
content&#8221; or just &#8220;content&#8221;. &nbsp;You could even call =
this &#8220;print
intent&#8221; or just &#8220;intent&#8221;. &nbsp;Please look at the =
JTAPI
Specification.&nbsp; Also note, that many debates have been done in the
printing community on how to specify content. &nbsp;The JTAPI =
specification
values are those agreed upon by the community. &nbsp;Please do not =
invent new
values that have no concrete meaning and, thus, are left open to =
interpretation
by all entities along the print chain.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Section 4:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A:&nbsp; I would add the following =
options:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp; A1: For any, add =
orientation.&nbsp; (many
watermarks are placed at 45 degrees)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp; A2: For text , add color (unless =
that
will be in the &#8220;format text&#8221; =
option)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>&nbsp;&nbsp;&nbsp; A3: For any, add =
&#8220;placement&#8221;
label with values like &#8220;tile, scale-to-fit, top, =
bottom&#8221;.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p=
></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Section 5:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A:&nbsp; Please change the label &#8220;which =
way-up&#8221;
(not even good English). &nbsp;&nbsp;The JTAPI variable is &#8220;output
orientation&#8221;. Please look at the JTAPI =
Specification.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>B. &#8220;output order&#8221; option is missing. =
&nbsp;Please
look at the JTAPI Specification.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>C: &#8220;output bin&#8221; option is missing. =
&nbsp;Please
look at the JTAPI Specification.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>Other<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>A: There needs to be an option for a &#8220;cover =
sheet&#8221;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>B: A new issue arising in the print world is that of
security. &nbsp;For example, one the simplest security features for =
networked
printers is &#8220;print only when at printer&#8221;. &nbsp;The user =
must enter
a code to start the print process. &nbsp;This needs to be set in the
CPD.&nbsp;&nbsp; I know this out of scope right now but since we are in =
the design/conception
phase of this project; security needs to be =
addressed.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>C: I really don&#8217;t think that the preview is =
providing sufficient
information to the user. &nbsp;For example, for n-up, the preview should =
show
the n-up. &nbsp;For a binding edge, there should be a graphical =
indication of
which edge. &nbsp;&nbsp;For two-sided printing, the preview should show =
a
turned corner (the corner changes depending if the page being displayed =
is the
front or back page). &nbsp;And so forth and so =
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

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CA00B3.39BD83F8--
