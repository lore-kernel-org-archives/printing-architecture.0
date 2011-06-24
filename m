Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC3276.4CDD9DF7"
Date: Fri, 24 Jun 2011 06:54:56 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805DC1@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F805DBE@EEAEX03.us.epson.net>
	<4E033025.1080502@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] OpenPrinting Mobile Behavior Guidelines
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.

------_=_NextPart_001_01CC3276.4CDD9DF7
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Till,

=20

Thanks for the feed back.  I believe we have a similar understanding of
the problem and what should be in the guideline.   I have noted your
comments below and will make sure to capture them as part of the
development of the guideline.=20

=20

I hope to hear from other on guideline.   Once I get some more comments
I will try to capture all of the ideas and comments.

=20

Have some other ideas related to this guideline that I will try to send
out today or next week.

=20

Glen

=20

=20

> For item 4 and 5, I can go through the various combinations to
determine

> the determinable constraints and relationships.

>=20

=20

Constraints and relationships often depend on the particular printer,=20

some can do duplex on envelopes, others no. For that the client (the=20

mobile device) needs to be able to poll this info from the=20

printer/server before displaying a printing dialog.

=20

[gwp] My idea for mobile print is that we would limit the options like
"duplex on envelopes".  The guideline we only recommend support for the
90% (95% or 99%) print intents.  Thus, I am hoping that the constraints
and relationships are definable up front and, thus, can be
predetermined.   For mobile, this predetermined constraints and
relationships would greatly reduced complexities.=20

=20

> I can go through the various combinations and create a set of
predefined

> print mode (photo, web page, etc) that mobile devices (clients) can

> specify and will be understood by the print services or printer.

>=20

=20

Presets are a good idea on mobile as the limited space cannot hold lots=20

of fine-tune options and most users want to select a simple document=20

type instead of lots of settings. By the way, Apple AirPrint also uses=20

presets.

=20

[gwp] same comment as above.=20

=20

> What would the simplest print-architecture look like and various
levels

> of complexity. That is can a mobile device include CUPS or another,
and

> simpler, print manager (management) solution. How thin can a print

> manger (management) module be? We would specific (as part of the

> guideline) what was the minimum support and the ordering for adding
more

> complex capabilities.

>=20

=20

One important thing is that on mobile we do not need a=20

RIP/filters/backends and also not the CUPS web interface. A pure=20

CUPS/IPP client with a simple printing dialog would be enough. Then we=20

can print onm AirPrint (PDF files via IPP) and on IPP Everywhere.

=20

[gwp] I would like to initially determine (review) the requirements of
the "Print Manager" versus specify an implementation at this time.
Then, the guideline would recommend components.=20

[gwp] The "simple printing dialog" is what the guideline is about along
with what components it takes to support it.   I am hoping the printing
dialog (no matter was interface type or what level of complexity) can be
coherent as perceived the user.

=20

> For the various combinations of interface types shown below, I can

> create proposed "values" (names or iconics or keystroke or whatever)
to

> support each interface type.

>=20

> *a dialog box? (how big?, how many pixels)

>=20

=20

Mobile screen sizes vary, especially as there are conventional phones,=20

smartphones, and tablets/netbooks. So we need flexibility. Tablets and=20

netbooks can even show the desktop dialog.

=20

[gwp]  Yes; this is challenge.  While we also way think of the printer
supplying capabilities; now the display will have to provide
capabilities (physical size, pixel size, aspect ratio, color (how many
levels), interface type (touch, stylus, etc).   Printing will not be the
only application that will need this capability information.  Virtually,
any post-hosted application would need this information. =20

=20

> *pull down menus?

>=20

> *hierarchical menus? (same as display on a printer)

>=20

> *one or more iconic?

>=20

=20

Depends on how well it works on a touch screen.

=20

[gwp] Agreed.  But the guideline would provide a recommendation based on
the display capabilities.

=20

> *keystroke commands?

>=20

=20

Not suitable for touch but useful for netbooks.

=20

[gwp] Agreed.  But the guideline would provide a recommendation based on
the device capabilities.

=20

=20

> *gesturing (double tap to print)?

>=20

=20

Nice for touch, but should not interfere with existing gestures and=20

should not print without confirmation.

=20

[gwp] Sorry, I meant double tapping on a printer iconic to initiate
printing.  Whether this will actually prints or just bring up the print
dialog is something we need to examine and explore.=20

[gwp] I am not sure that a print-confirmation is always needed.  I
believe we need to examine the interface solutions and make a
recommendation (as part of the guideline) on whether print-confirmation
is necessary.

=20

=20

> *a physical button action?

>=20

> *combinations of the above?

>=20

> The guideline would need a conformance section (include what not to
do).

>=20

> The guideline conformance should define the level of print "dialog"

> (interface) support is required for a mobile device with specific

> display size and computing power. (think of phone to iPad to netbook
to

> laptop)

>=20

=20

This is a good idea, priinting dialog guideline by screen size class.

=20

[gwp] This is the key concept for the mobile print guideline.  We need
to take care in developing this part of the guideline.

=20

> The guideline needs to define how applications can """extent""" mobile

> printing and mobile dialogs. The same would be true for print vendor

> extension.

>=20

> The guideline would need a complete glossary. (I suspect that this
would

> be used by people with various levels of print interface development

> experience.)

>=20

> The guideline would need a sample implementation (?) of each interface

> type (?)

=20

=20

    Till


------_=_NextPart_001_01CC3276.4CDD9DF7
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:p=3D"urn:schemas-microsoft-com:office:powerpoint" =
xmlns:oa=3D"urn:schemas-microsoft-com:office:activation" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<style>
<!--
 /* Font Definitions */
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:Cambria;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 85.55pt 1.0in 85.55pt;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>Till,<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>Thanks for the feed back.&nbsp; I =
believe we
have a similar understanding of the problem and what should be in the
guideline.&nbsp;&nbsp; I have noted your comments below and will make =
sure to
capture them as part of the development of the guideline. =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>I hope to hear from other on =
guideline.&nbsp;&nbsp;
Once I get some more comments I will try to capture all of the ideas and
comments.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>Have some other ideas related to =
this
guideline that I will try to send out today or next =
week.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
For item 4 and 5, I can go through the various combinations to =
determine<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
the determinable constraints and =
relationships.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Constraints
and relationships often depend on the particular printer, =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>some
can do duplex on envelopes, others no. For that the client (the =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>mobile
device) needs to be able to poll this info from the =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>printer/server
before displaying a printing dialog.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'>[</span></font><font =
color=3Dblue><span
style=3D'color:blue'>gwp] My idea for mobile print is that we would =
limit the
options like &#8220;duplex on envelopes&#8221;.&nbsp; The guideline we =
only
recommend support for the 90% (95% or 99%) print intents.&nbsp; Thus, I =
am
hoping that the constraints and relationships are definable up front =
and, thus,
can be predetermined.&nbsp;&nbsp; For mobile, this predetermined =
constraints
and relationships would greatly reduced complexities. =
</span></font><font
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
I can go through the various combinations and create a set of =
predefined<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
print mode (photo, web page, etc) that mobile devices (clients) =
can<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
specify and will be understood by the print services or =
printer.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Presets
are a good idea on mobile as the limited space cannot hold lots =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>of
fine-tune options and most users want to select a simple document =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>type
instead of lots of settings. By the way, Apple AirPrint also uses =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>presets.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] same comment as above. =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
What would the simplest print-architecture look like and various =
levels<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
of complexity. That is can a mobile device include CUPS or another, =
and<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
simpler, print manager (management) solution. How thin can a =
print<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
manger (management) module be? We would specific (as part of =
the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
guideline) what was the minimum support and the ordering for adding =
more<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
complex capabilities.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>One
important thing is that on mobile we do not need a =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>RIP/filters/backends
and also not the CUPS web interface. A pure =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>CUPS/IPP
client with a simple printing dialog would be enough. Then we =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>can
print onm AirPrint (PDF files via IPP) and on IPP =
Everywhere.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] I would like to initially =
determine
(review) the requirements of the &#8220;Print Manager&#8221; versus =
specify an
implementation at this time.&nbsp; Then, the guideline would recommend
components. <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] The &#8220;simple printing =
dialog&#8221;
is what the guideline is about along with what components it takes to =
support
it.&nbsp;&nbsp; I am hoping the printing dialog (no matter was interface =
type
or what level of complexity) can be coherent as perceived the =
user.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
For the various combinations of interface types shown below, I =
can<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
create proposed &#8220;values&#8221; (names or iconics or keystroke or
whatever) to<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
support each interface type.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;a dialog box? (how big?, how many =
pixels)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Mobile
screen sizes vary, especially as there are conventional phones, =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>smartphones,
and tablets/netbooks. So we need flexibility. Tablets and =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>netbooks
can even show the desktop dialog.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'><o:p>&nbsp;</o:p></span></font></p>=


<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp]&nbsp; Yes; this is =
challenge.&nbsp; While
we also way think of the printer supplying capabilities; now the display =
will
have to provide capabilities (physical size, pixel size, aspect ratio, =
color
(how many levels), interface type (touch, stylus, etc).&nbsp;&nbsp; =
Printing
will not be the only application that will need this capability =
information.&nbsp;
Virtually, any post-hosted application would need this =
information.</span></font><font
color=3Dblack><span style=3D'color:black'> =
&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;pull down menus?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;hierarchical menus? (same as display on a =
printer)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;one or more iconic?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Depends
on how well it works on a touch screen.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] Agreed.&nbsp; But the =
guideline would
provide a recommendation based on the display =
capabilities.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;keystroke commands?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Not
suitable for touch but useful for netbooks.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] Agreed.&nbsp; But the =
guideline would
provide a recommendation based on the device =
capabilities.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;gesturing (double tap to print)?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>Nice
for touch, but should not interfere with existing gestures and =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>should
not print without confirmation.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] Sorry, I meant double =
tapping on a
printer iconic to initiate printing.&nbsp; Whether this will actually =
prints or
just bring up the print dialog is something we need to examine and =
explore. <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] I am not sure that a
print-confirmation is always needed.&nbsp; I believe we need to examine =
the
interface solutions and make a recommendation (as part of the guideline) =
on
whether print-confirmation is necessary.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;a physical button action?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
&#8226;combinations of the above?<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
The guideline would need a conformance section (include what not to =
do).<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
The guideline conformance should define the level of print =
&#8220;dialog&#8221;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
(interface) support is required for a mobile device with =
specific<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
display size and computing power. (think of phone to iPad to netbook =
to<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
laptop)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>This
is a good idea, priinting dialog guideline by screen size =
class.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 color=3Dblack =
face=3DCambria><span
style=3D'font-size:12.0pt;color:black'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoPlainText><font size=3D3 color=3Dblue face=3DCambria><span
style=3D'font-size:12.0pt;color:blue'>[gwp] This is the key concept for =
the
mobile print guideline.&nbsp; We need to take care in developing this =
part of
the guideline.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
The guideline needs to define how applications can
&#8220;&#8221;&#8221;extent&#8221;&#8221;&#8221; =
mobile<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
printing and mobile dialogs. The same would be true for print =
vendor<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
extension.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
The guideline would need a complete glossary. (I suspect that this =
would<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
be used by people with various levels of print interface =
development<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
experience.)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;<o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
The guideline would need a sample implementation (?) of each =
interface<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&gt;
type (?)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt'>&nbsp;&nbsp;&nbsp;
Till<o:p></o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CC3276.4CDD9DF7--
