Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC166C.9788F67B"
Date: Thu, 19 May 2011 14:34:54 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805D70@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] CPD and the rest of the print system
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

------_=_NextPart_001_01CC166C.9788F67B
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

I want to start a dialog on the CPD and it interactions (or
dependencies) with other print system components.

=20

My first question is how to model the CPD in the systems.

=20

What are the other print components to consider:

A.	The Print Manager (think CUPS)

	a.	Can be a very, very thin manager for mobile devices

B.	The Printer Manager (this there really such a thing today).

	a.	Again, can be a very, very thin manager for mobile
devices

C.	The printers
D.	The printer capability data base (think Foomatic)
E.	(The User!!!!)

=20

1.	Should the CPD (an instance) be a direct connection between the
user and an App/Desktop/OS.
2.	Should the CPD directly connect to applications and then, the
applications to a Print Manager.
3.	Should the App/Desktop/OS have a direct connection to a "Print
Manager", the "Print Manager" directly connect to the CPD and the CPD
connects to the user.

=20

I believe (please correct me if wrong) that (2) is the current model or
approach for the CPD.

=20

I am in favor of (3).

1.	Do we want the CPD to know if a printer is on/off line

	a.	Status in general, out-of-ink, out-of-paper, busy

                                                               i.
Interesting idea of showing print load in the print dialog; that is, if
a job is submitted, how long will it take to get printed.

2.	Do we want the CPD to know how to get capabilities data=20

	a.	Don't think vendors will modify (all) PPD to support
CPD!
	b.	Is it a vendor specific module
	c.	Is it IPP
	d.	Is it foomatics
	e.	Is it a vendor web service/site

3.	Can a lot of responsibility be pushed to the Print Manager

	a.	One big item is internationalization.

                                                               i.
With the goal of "common", it is expected that the print dialog strings
will be well defined and, thus, internationalization could be managed in
one place.  No reason the CPD could not do it, but the print manager may
need the same information.

4.	What if the CPD is a web service (think cloud); it would be
easier to have the Print Manager worry about connectivity to the CPD

	a.	What if the Print manager is a web service (think cloud)
!!!

5.	In this model, the Print Manager can customize the CPD according
to the User's Rights (color/no-color, doc length < 50/ doc length > 50,
etc)

	a.	If the user (via the CPD) never sees an option they have
no rights for; then it is easier to control.

6.	Are some printers only available at curtain times?

	a.	Again, the Print Manager can only enumerate the printers
that are available at the time.

7.	And other reason I have not enumerated here.

=20

=20

I made a couple of slide depicting the three models above.   See=20

ftp://ftp.pwg.org/pub/pwg/fsg/cpd/discussion/CPD.In.the.System.2011.05.1
9.pdf  =20

=20

Glen

=20

           =20


------_=_NextPart_001_01CC166C.9788F67B
Content-Type: text/html;
	charset="US-ASCII"
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:Cambria;
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:411199966;
	mso-list-type:hybrid;
	mso-list-template-ids:-1465494656 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1
	{mso-list-id:848636682;
	mso-list-type:hybrid;
	mso-list-template-ids:1937421110 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:1658802009;
	mso-list-type:hybrid;
	mso-list-template-ids:-1275008794 67698709 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-number-format:alpha-upper;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3
	{mso-list-id:1763794560;
	mso-list-type:hybrid;
	mso-list-template-ids:235681252 67698709 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-number-format:alpha-upper;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l3:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:1.0in;
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

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Hi,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I want to start a dialog on the CPD and it =
interactions
(or dependencies) with other print system =
components.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>My first question is how to model the CPD in the =
systems.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>What are the other print components to =
consider:<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3DA>
 <li class=3DMsoNormal style=3D'mso-list:l3 level1 lfo2'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>The Print Manager =
(think
     CUPS)<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l3 level2 lfo2'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Can be a
      very, very thin manager for mobile =
devices<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l3 level1 lfo2'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>The Printer Manager =
(this
     there really such a thing today).<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l3 level2 lfo2'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Again, can
      be a very, very thin manager for mobile =
devices<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l3 level1 lfo2'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>The =
printers<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l3 level1 lfo2'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>The printer =
capability data
     base (think Foomatic)<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l3 level1 lfo2'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>(The =
User!!!!)<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Should the CPD (an =
instance) be
     a direct connection between the user and an =
App/Desktop/OS.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Should the CPD =
directly
     connect to applications and then, the applications to a Print =
Manager.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Should the =
App/Desktop/OS have
     a direct connection to a &#8220;Print Manager&#8221;, the =
&#8220;Print
     Manager&#8221; directly connect to the CPD and the CPD connects to =
the
     user.<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I believe (please correct me if wrong) that (2) is =
the current
model or approach for the CPD.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I am in favor of (3).<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Do we want the CPD =
to know if
     a printer is on/off line<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Status in
      general, out-of-ink, out-of-paper, =
busy<o:p></o:p></span></font></li>
 </ol>
</ol>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-1.5in;mso-text-indent-alt:
-9.0pt;mso-list:l1 level3 lfo4'><![if !supportLists]><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><span =
style=3D'mso-list:Ignore'><font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;
</span></font>i.<font size=3D1 face=3D"Times New Roman"><span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>Interesting idea of showing print load in =
the print
dialog; that is, if a job is submitted, how long will it take to get =
printed.<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D2 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Do we want the CPD =
to know
     how to get capabilities data <o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Don&#8217;t
      think vendors will modify (all) PPD to support =
CPD!<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Is it a
      vendor specific module<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Is it =
IPP<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Is it
      foomatics<o:p></o:p></span></font></li>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Is it a
      vendor web service/site<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Can a lot of =
responsibility be
     pushed to the Print Manager<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>One big
      item is internationalization.<o:p></o:p></span></font></li>
 </ol>
</ol>

<p class=3DMsoNormal =
style=3D'margin-left:1.5in;text-indent:-1.5in;mso-text-indent-alt:
-9.0pt;mso-list:l1 level3 lfo4'><![if !supportLists]><font size=3D3 =
face=3DCambria><span
style=3D'font-size:12.0pt;font-family:Cambria'><span =
style=3D'mso-list:Ignore'><font
size=3D1 face=3D"Times New Roman"><span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;
</span></font>i.<font size=3D1 face=3D"Times New Roman"><span =
style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></span></span></font><![endif]><font face=3DCambria><span
style=3D'font-family:Cambria'>With the goal of &#8220;common&#8221;, it =
is expected
that the print dialog strings will be well defined and, thus, =
internationalization
could be managed in one place.&nbsp; No reason the CPD could not do it, =
but the
print manager may need the same =
information.<o:p></o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D4 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>What if the CPD is a =
web
     service (think cloud); it would be easier to have the Print Manager =
worry about
     connectivity to the CPD<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>What if
      the Print manager is a web service (think cloud) =
!!!<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>In this model, the =
Print
     Manager can customize the CPD according to the User&#8217;s Rights =
(color/no-color,
     doc length &lt; 50/ doc length &gt; 50, =
etc)<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>If the user
      (via the CPD) never sees an option they have no rights for; then =
it is
      easier to control.<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>Are some printers =
only available
     at curtain times?<o:p></o:p></span></font></li>
 <ol style=3D'margin-top:0in' start=3D1 type=3Da>
  <li class=3DMsoNormal style=3D'mso-list:l1 level2 lfo4'><font size=3D3
      face=3DCambria><span =
style=3D'font-size:12.0pt;font-family:Cambria'>Again, the
      Print Manager can only enumerate the printers that are available =
at the time.<o:p></o:p></span></font></li>
 </ol>
 <li class=3DMsoNormal style=3D'mso-list:l1 level1 lfo4'><font size=3D3 =
face=3DCambria><span
     style=3D'font-size:12.0pt;font-family:Cambria'>And other reason I =
have not enumerated
     here.<o:p></o:p></span></font></li>
</ol>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I made a couple of slide depicting the three models =
above.&nbsp;
&nbsp;See <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><a
href=3D"ftp://ftp.pwg.org/pub/pwg/fsg/cpd/discussion/CPD.In.the.System.20=
11.05.19.pdf">ftp://ftp.pwg.org/pub/pwg/fsg/cpd/discussion/CPD.In.the.Sys=
tem.2011.05.19.pdf</a>
&nbsp;&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; <o:p></o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CC166C.9788F67B--
