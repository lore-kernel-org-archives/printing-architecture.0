Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC350E.5C31394B"
Date: Mon, 27 Jun 2011 14:08:27 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F805DCA@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: [Printing-architecture] Use of binary printer capabilities for
	mobile
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

------_=_NextPart_001_01CC350E.5C31394B
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

=20

I continue address the issues for mobile print in connection with
LF/OpenPrinting.   The current area-of-interest is printer capabilities.


Yes, I could simpley follow the PWG work that will use IPP (Everywhere);
and, through a series of Pascal/XML data exchanges, the printer
capabilities can be obtained.  This, however, causes a burden to the
mobile device and printer to understand and support the IPP and to
contain dictionary (string) parsers.   While the overhead may be
acceptable; it is still burdensome. =20

=20

The use of PPD files is possible but they have the same complexity as
above.

=20

My proposal, in an attempt to simplify matters, is encode printer
capabilities, using the JTAPI attributes and values, such that the
printer capabilities are binary state information (i.e. yes/no or
have/don't-have or etc).  While this method does not provide the
infinite (or at least a very large) number of possibilities for every
possible printer on the market today or will be on the market in the
future; it does provide sufficient information for 90+% (95+%) of
printing need from mobile devices.   There is no dictionary (string)
parsers required.  The binary state capability data can be retrieved
from numerous sources, including the printer, will minimal overhead and
is usable by the mobile device OS, application, print manager and print
dialog.

=20

I have created a couple of c code header files and following are
samples.

=20

Example:=20

    /************************************************************

     * StitchingType

     *

     * Whether or not to stitch and where to place the stitch.=20

     *=20

     ***********************************************************/

    typedef struct=20

    {

       GP_BIT32 FSGJT_ST_NOT_SUPPORTED  : 1;    /* bit 0        */

       GP_BIT32 FSGJT_ST_NONE           : 1;    /* bit 1        */

       GP_BIT32 FSGJT_ST_CORNER         : 1;    /* bit 2        */

       GP_BIT32 FSGJT_ST_SADDLE         : 1;    /* bit 3        */

       GP_BIT32 FSGJT_ST_SIDE           : 1;    /* bit 4        */

    } fsgjt_stitching_type_cap;

=20

In this example of a single attribute, the possible values are
translated into capability states.  Somewhere (Firmware, cloud, or etc)
the following is defined

=20

    /****************************************************************/

    /*** StitchingType                                              */

    /*** ---------------------------------------------------------- */

    ptrCap->stitchingTypeCap.FSGJT_ST_NOT_SUPPORTED =3D 0;/* bit 0    */

    ptrCap->stitchingTypeCap.FSGJT_ST_NONE          =3D 0;/* bit 1    */

    ptrCap->stitchingTypeCap.FSGJT_ST_CORNER        =3D 1;/* bit 2    */

    ptrCap->stitchingTypeCap.FSGJT_ST_SADDLE        =3D 1;/* bit 3    */

    ptrCap->stitchingTypeCap.FSGJT_ST_SIDE          =3D 0;/* bit 4    */

=20

Thus, this printer can support corner and saddle stitching.

=20

To make this concept work in general, the extensible feature of the
JTAPI attribute was removed.  Mobile needs to prints and not worry about
variations upon variations.  The LF/OpenPrinting should review the now
fixed list of values for the pervious extensible attributes to determine
if the list of values needs to be updated.

=20

To make this concept work, I also added MediaSizeCap.   This is a very,
very short list of the standard media size (A4, letter, legal and 4x6)
that represents 80% to 90% of printing needs.

=20

But I have also defined another media header file to provide more
detailed media support.  The first definition defines the size and print
modes (graphic, text, etc versus draft, normal, high quality).  The
second extents the media type with the existing JTAPI coating type
attributes.

=20

Finally, the proposed simplification allow for a much easy print dialog
and predefined job-ticket implementations.

=20

I will post my c files after I do some additional testing and clean up.

=20

Glen

=20


------_=_NextPart_001_01CC350E.5C31394B
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
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
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>All,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I continue address the issues for mobile print in
connection with LF/OpenPrinting.&nbsp;&nbsp; The current =
area-of-interest is
printer capabilities.&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Yes, I could simpley follow the PWG work that will =
use IPP
(Everywhere); and, through a series of Pascal/XML data exchanges, the =
printer
capabilities can be obtained.&nbsp; This, however, causes a burden to =
the
mobile device and printer to understand and support the IPP and to =
contain dictionary
(string) parsers.&nbsp;&nbsp; While the overhead may be acceptable; it =
is still
burdensome.&nbsp; <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>The use of PPD files is possible but they have the =
same
complexity as above.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>My proposal, in an attempt to simplify matters, is =
encode
printer capabilities, using the JTAPI attributes and values, such that =
the
printer capabilities are binary state information (i.e. yes/no or =
have/don&#8217;t-have
or etc).&nbsp; While this method does not provide the infinite (or at =
least a
very large) number of possibilities for every possible printer on the =
market
today or will be on the market in the future; it does provide sufficient
information for 90+% (95+%) of printing need from mobile devices. =
&nbsp;&nbsp;There
is no dictionary (string) parsers required.&nbsp; The binary state =
capability data
can be retrieved from numerous sources, including the printer, will =
minimal
overhead and is usable by the mobile device OS, application, print =
manager and
print dialog.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I have created a couple of c code header files and
following are samples.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Example: <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
/************************************************************<o:p></o:p><=
/span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; * =
StitchingType<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; =
*<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; * Whether or not to =
stitch
and where to place the stitch. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp; * =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;
***********************************************************/<o:p></o:p></=
span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; typedef struct =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; =
{<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GP_BIT32
FSGJT_ST_NOT_SUPPORTED&nbsp; : 1;&nbsp;&nbsp;&nbsp; /* bit
0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GP_BIT32
FSGJT_ST_NONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 :
1;&nbsp;&nbsp;&nbsp; /* bit 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GP_BIT32
FSGJT_ST_CORNER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
1;&nbsp;&nbsp;&nbsp; /* bit 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GP_BIT32
FSGJT_ST_SADDLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
1;&nbsp;&nbsp;&nbsp; /* bit 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GP_BIT32
FSGJT_ST_SIDE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 :
1;&nbsp;&nbsp;&nbsp; /* bit 4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; } =
fsgjt_stitching_type_cap;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>In this example of a single attribute, the possible =
values
are translated into capability states.&nbsp; Somewhere (Firmware, cloud, =
or
etc) the following is defined<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
/****************************************************************/<o:p></=
o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; /***
StitchingType&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; /***
---------------------------------------------------------- =
*/<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
ptrCap-&gt;stitchingTypeCap.FSGJT_ST_NOT_SUPPORTED =3D 0;/* bit
0&nbsp;&nbsp;&nbsp; */<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
ptrCap-&gt;stitchingTypeCap.FSGJT_ST_NONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;
=3D 0;/* bit 1&nbsp;&nbsp;&nbsp; */<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
ptrCap-&gt;stitchingTypeCap.FSGJT_ST_CORNER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;
=3D 1;/* bit 2&nbsp;&nbsp;&nbsp; */<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
ptrCap-&gt;stitchingTypeCap.FSGJT_ST_SADDLE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;
=3D 1;/* bit 3&nbsp;&nbsp;&nbsp; */<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D1 face=3D"Courier New"><span =
style=3D'font-size:9.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp;
ptrCap-&gt;stitchingTypeCap.FSGJT_ST_SIDE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;
=3D 0;/* bit 4&nbsp;&nbsp;&nbsp; */<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Thus, this printer can support corner and saddle
stitching.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>To make this concept work in general, the =
extensible feature
of the JTAPI attribute was removed.&nbsp; <st1:City =
w:st=3D"on"><st1:place w:st=3D"on">Mobile</st1:place></st1:City>
needs to prints and not worry about variations upon variations.&nbsp; =
The
LF/OpenPrinting should review the now fixed list of values for the =
pervious
extensible attributes to determine if the list of values needs to be =
updated.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>To make this concept work, I also added
MediaSizeCap.&nbsp;&nbsp; This is a very, very short list of the =
standard media
size (A4, letter, legal and 4x6) that represents 80% to 90% of printing =
needs.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>But I have also defined another media header file =
to
provide more detailed media support.&nbsp; The first definition defines =
the
size and print modes (graphic, text, etc versus draft, normal, high
quality).&nbsp; The second extents the media type with the existing =
JTAPI coating
type attributes.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>&nbsp;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Finally, the proposed simplification allow for a =
much easy
print dialog and predefined job-ticket =
implementations.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>I will post my c files after I do some additional =
testing
and clean up.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3DCambria><span =
style=3D'font-size:12.0pt;
font-family:Cambria'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CC350E.5C31394B--
