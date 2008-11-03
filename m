Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C93DEA.8EA61811"
Date: Mon, 3 Nov 2008 11:32:58 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A57@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Some Comments/ Feedback on CPDAPI
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


------_=_NextPart_001_01C93DEA.8EA61811
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have finally had some time to review the API for the

=20

org.openprinting.PrintDialog.Manager.*****

=20

1.	I am concerned how job/option/attributes of CPDAPI align to
JTAPI.
2.	Long term I would expect that API will grow/improve.  The "Show"
method seems to be a little to generic a method name and I could really
imagine a lot of additional "Show" methods.  Therefore, I would suggest
changing this method to "ShowDialog".  In fact, there can be a desire to
"ShowDialog" with a specific set of options/attributes being displayed
with specific option/attribute values.  So I would propose a new command
"ShowThisDialog" where the argument define the initial display state.
3.	The "SetNumberOfPages" was not initially clear to me of the
intent.  I would suggest "SetPagesToPrint" with an string argument such
that printed pages could be more complex.  I.e. SetPagesToPrint('s',
'1-3,5,7,9,10-21")  If the arguments is NULL or Negative it would print
all pages.
4.	For "AddOption": It is not clear that all vendor/application
additions can be called "options".  For pre-defined CPD
options/attributes (if there are any) how can you "AddValueToOption".
5.	For  "AddOption" and for "AddPreset": I would like to see and
strongly prompt that an initial set of options/attributes be those
defined by JTAPI.   Letting vendors/applications/developers set common
option/attribute names will result in various names for the same
option/attribute.   This will cause confusion to the end user - the last
thing Linux needs to do.
6.	I can see two major reasons for "SetOptionValue".  The first is
when the dialog is started to set the default values.  The second
reason, is the user setting of one option/attribute changes one or more
other options/attributes (coupled options/attributes).   I would like to
see an additional attribute added to the command that can be used to
highlight a "SetOptionValue".  So the "SetOptionValue('s' name, 'v'
value, ' b' highlight, out 'b' success);
7.	Many windowing system will provide a signal when a
option/attribute (actually is gui field/region/object) is selected or
deselected or moved-from.  So a signal called "OptionSelection('i'
selection); where selection takes on the values of "SELECTED",
"DESELECTED", "MOVED_FROM".  One could argue about the "MOVED_FROM".


------_=_NextPart_001_01C93DEA.8EA61811
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
 /* List Definitions */
 @list l0
	{mso-list-id:1918437901;
	mso-list-type:hybrid;
	mso-list-template-ids:-1570633096 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>I have finally had some time to review the API for =
the<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>org.openprinting.PrintDialog.Manager.*****<o:p></o:p><=
/span></font></p>

<p class=3DMsoNormal><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'><o:p>&nbsp;</o:p></span></font></p>

<ol style=3D'margin-top:0in' start=3D1 type=3D1>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>I am concerned how
     job/option/attributes of CPDAPI align to =
JTAPI.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Long term I would =
expect that
     API will grow/improve.&nbsp; The &#8220;Show&#8221; method seems to =
be a
     little to generic a method name and I could really imagine a lot of
     additional &#8220;Show&#8221; methods.&nbsp; Therefore, I would =
suggest
     changing this method to &#8220;ShowDialog&#8221;.&nbsp; In fact, =
there can
     be a desire to &#8220;ShowDialog&#8221; with a specific set of
     options/attributes being displayed with specific option/attribute
     values.&nbsp; So I would propose a new command =
&#8220;ShowThisDialog&#8221;
     where the argument define the initial display =
state.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>The =
&#8220;SetNumberOfPages&#8221;
     was not initially clear to me of the intent.&nbsp; I would suggest =
&#8220;SetPagesToPrint&#8221;
     with an string argument such that printed pages could be more
     complex.&nbsp; I.e. SetPagesToPrint(&#8216;s&#8217;, =
&#8216;1-3,5,7,9,10-21&#8221;)&nbsp;
     If the arguments is NULL or Negative it would print all =
pages.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>For =
&#8220;AddOption&#8221;: It
     is not clear that all vendor/application additions can be called =
&#8220;options&#8221;.&nbsp;
     For pre-defined CPD options/attributes (if there are any) how can =
you &#8220;AddValueToOption&#8221;.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>For =
&nbsp;&#8220;AddOption&#8221;
     and for &#8220;AddPreset&#8221;: I would like to see and strongly =
prompt
     that an initial set of options/attributes be those defined by
     JTAPI.&nbsp;&nbsp; Letting vendors/applications/developers set =
common
     option/attribute names will result in various names for the same
     option/attribute. &nbsp;&nbsp;This will cause confusion to the end =
user &#8211;
     the last thing Linux needs to do.<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>I can see two major =
reasons for
     &#8220;SetOptionValue&#8221;.&nbsp; The first is when the dialog is
     started to set the default values.&nbsp; The second reason, is the =
user setting
     of one option/attribute changes one or more other =
options/attributes
     (coupled options/attributes).&nbsp;&nbsp; I would like to see an =
additional
     attribute added to the command that can be used to highlight a =
&#8220;SetOptionValue&#8221;.&nbsp;
     So the &#8220;SetOptionValue(&#8216;s&#8217; name, &#8216;v&#8217; =
value, &#8216;
     b&#8217; highlight, out &#8216;b&#8217; =
success);<o:p></o:p></span></font></li>
 <li class=3DMsoNormal style=3D'mso-list:l0 level1 lfo1'><font size=3D2 =
face=3DArial><span
     style=3D'font-size:10.0pt;font-family:Arial'>Many windowing system =
will
     provide a signal when a option/attribute (actually is gui
     field/region/object) is selected or deselected or moved-from.&nbsp; =
So a
     signal called &#8220;OptionSelection(&#8216;i&#8217; selection); =
where
     selection takes on the values of &#8220;SELECTED&#8221;, =
&#8220;DESELECTED&#8221;,
     &#8220;MOVED_FROM&#8221;.&nbsp; One could argue about the =
&#8220;MOVED_FROM&#8221;.<o:p></o:p></span></font></li>
</ol>

</div>

</body>

</html>

------_=_NextPart_001_01C93DEA.8EA61811--
