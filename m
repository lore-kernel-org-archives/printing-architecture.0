Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC9581.F0C40922"
Date: Fri, 28 Oct 2011 07:57:40 -0700
Message-ID: <E8C3B9E653C80C48B0951F8494C049A9026783@EEAEX02.us.epson.net>
References: <4EA99DFF.3080801@gmail.com><CAGC3nLAF-dT=wiaSS=yUSgDvcHRSrBoBf_ZMtEhKtWoXhtrpgA@mail.gmail.com>
	<E8C3B9E653C80C48B0951F8494C049A9026782@EEAEX02.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Moving CUPS filters to OpenPrinting
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Daniel Dressler <danieru.dressler@gmail.com>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

This is a multi-part message in MIME format.

------_=_NextPart_001_01CC9581.F0C40922
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There may be some confusion on my comments at the end of my last email.
The "dropped filters" are not the one's CUPS will drop but the one Till
would like to drop.  After reviewing the web site again, I see the
number of filters may be small overall; so it now becomes of question if
Till (or others helping Till) have sufficient time to maintain the
filters.  Perhaps Till should make the decision, since it will more
directly affects him.

=20

Glen

=20

=20

=20

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Petrie, Glen
Sent: Friday, October 28, 2011 7:45 AM
To: Daniel Dressler; Till Kamppeter
Cc: Open Printing
Subject: Re: [Printing-architecture] Moving CUPS filters to OpenPrinting

=20

Hi,

=20

I agree with Daniel comment on foomatic-*

=20

While "openprinting-cups-filters" is descriptive; wouldn't
"op-cups-filters" be sufficient?

=20

For the "other name" discussion, I am not sure they are really "common";
they are really just the set supported by OpenPrinting.   You say are
""""extra"""" or """"extended"""".=20

=20

Some other ideas

CEFS =3D CUPS Extended Filter Set

OCFS =3D OpenPrinting CUPS Filter Set=20

COFS=3D CUPS OpenPrinting Filter Set

         =3D Common OpenPrinting Filter Set

=20

But I am ok with "op-cups-filters"

=20

For the discussion of "dropping filters" -

1.  Is the intent is stop supporting?  If so, then there should one
filter set that contains all of "abandoned" filters.  At least someone
would have access to the filter; even though reasonability for ensuring
the work with the latest CUPS is up to the person downloading this set
of filters and not any other entity.

2.  How many filters would suggest dropping?  If the number is small (<
10 say), then the burden to continue to support them may be low;
however, if the larger, can a list be generated of the suggested filters
to be dropped.  The list is then distributed on printing email lists, so
that people can provide a feedback on the candidate filters to be
dropped.=20

=20

glen

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Daniel Dressler
Sent: Thursday, October 27, 2011 11:38 AM
To: Till Kamppeter
Cc: Open Printing
Subject: Re: [Printing-architecture] Moving CUPS filters to OpenPrinting

=20

Hello

I think we should keep foomatic-* as is, if only to avoid user
confusion.=20

Overall openprinting-cups-filters is a good name and can be extended to
an optional package easily, e.g. openprinting-cups-filters-extra, cannot
really go wrong with it.

The only downsides I can think of is that it is verbose and just a bit,
plain.

There is another source of options, in line with CUPS, CPD, CMPD we
could call it CFS* ( Common Filter Set ) or CPF ( Common Printing
Filters ) or CCUPSFS (Common Common Unix Printing Spooler Filter Set).

But perhaps my favourite: CUFS ( Common Unix Filter Set), it may not
mention the cups specific nature of the filters but what we lose in
description we make up for in branding, it is a pronounceable word!**

Daniel

*Already taken =3D\
**In English at least.



2011/10/27 Till Kamppeter <till.kamppeter@gmail.com>

Hi,

Mike Sweet intends to remove the filters which are not used by Mac OS X
from the CUPS upstream package:

http://www.cups.org/str.php?L3930

We have agreed on this on the last OpenPrinting Summit and the filters
will be continued and hosted by OpenPrinting. In addition, the filters
for the PDF printing workflow will not be adopted by CUPS but joined
with the CUPS filters we overtake.

All Linux distributions would have to include this new CUPS filters
package then to get CUPS continuing to work and have the same feature
set as before.

Due to the fact that this package will use the PDF workflow by default
and that all major desktop applications send their print jobs already in
PDF, this will complete the implementation of PDF as standard print job
format. See also my updated web page:

https://www.linuxfoundation.org/collaborate/workgroups/openprinting/pdfa
sstandardprintjobformat

By this, we also do not need to get a copyright/license agreement
between the developers of the PDF filters and Apple.

We can start hosting the CUPS filters as soon as our BZR repositories
for OpenPrinting will be back. In the CUPS project these filters are
already separated into their own branch, we only need to import them
from their SVN into our BZR.

We also need a name for the package. Should we call it simply
"cups-filters"? Or "op-cups-filters"? Or do we rename Foomatic to
openprinting and have the packages

- openprinting-db
- openprinting-db-nonfree
- openprinting-db-engine
- openprinting-rip
- openprinting-cups-filters

Note that we keep foomatic-rip/openprinting-rip separate from the CUPS
filters as this filter is a universal filter which also works with many
other printing systems.

Another decision to make is whether we really should maintain all the
filters which get over to us from CUPS or whether we should discontinue
some. The filter set will contain "imageto..." and "textto..." filters
which are not made use of by the usual desktop applications, they send
all PDF (and some send PostScript). Alternatively, these filters could
be made optional.

  Till
_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

=20


------_=_NextPart_001_01CC9581.F0C40922
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
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
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
h1
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l2 level1 lfo7;
	font-size:14.0pt;
	font-family:Cambria;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l1 level2 lfo9;
	font-size:14.0pt;
	font-family:Cambria;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;}
p.StyleHeading1NotBoldBlack, li.StyleHeading1NotBoldBlack, =
div.StyleHeading1NotBoldBlack
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l2 level2 lfo4;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
p.styleheading1notboldblack0, li.styleheading1notboldblack0, =
div.styleheading1notboldblack0
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.55in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l2 level2 lfo7;
	font-size:14.0pt;
	font-family:Cambria;
	color:black;
	font-weight:bold;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:Cambria;
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:Cambria;
	color:blue;
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
	{mso-list-id:1;
	mso-list-template-ids:1767813390;}
@list l0:level1
	{mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level2
	{mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:.55in;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level3
	{mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level4
	{mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l0:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1
	{mso-list-id:232006760;
	mso-list-template-ids:9729752;}
@list l1:level1
	{mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level2
	{mso-level-style-link:"Heading 2";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level3
	{mso-level-reset-level:level1;
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level4
	{mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:1.25in;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level5
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:1.75in;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level6
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level7
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l1:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2
	{mso-list-id:675117133;
	mso-list-template-ids:-319017128;}
@list l2:level1
	{mso-level-style-link:"Heading 1";
	mso-level-suffix:space;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.25in;
	text-indent:-.25in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level2
	{mso-level-style-link:"Style Heading 1 + Not Bold Black";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.55in;
	text-indent:-.3in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level3
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.85in;
	text-indent:-.35in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level4
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.2in;
	text-indent:-.45in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level5
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.55in;
	text-indent:-.55in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level6
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.9in;
	text-indent:-.65in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level7
	{mso-level-suffix:space;
	mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.75in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level8
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.";
	mso-level-tab-stop:2.75in;
	mso-level-number-position:left;
	margin-left:2.6in;
	text-indent:-.85in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
@list l2:level9
	{mso-level-text:"%1\.%2\.%3\.%4\.%5\.%6\.%7\.%8\.%9\.";
	mso-level-tab-stop:3.25in;
	mso-level-number-position:left;
	margin-left:3.0in;
	text-indent:-1.0in;
	mso-ansi-font-size:14.0pt;
	mso-bidi-font-size:14.0pt;
	font-family:Cambria;
	font-variant:normal !important;
	color:black;
	text-transform:none;
	letter-spacing:0pt;
	mso-ansi-font-weight:normal;
	mso-bidi-font-weight:normal;
	mso-ansi-font-style:normal;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>There may be some confusion on my =
comments
at the end of my last email.&nbsp; The &#8220;dropped filters&#8221; are =
not the one&#8217;s
CUPS will drop but the one Till would like to drop.&nbsp; After =
reviewing the web
site again, I see the number of filters may be small overall; so it now =
becomes
of question if Till (or others helping Till) have sufficient time to =
maintain
the filters.&nbsp; Perhaps Till should make the decision, since it will =
more
directly affects him.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Glen<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;<o:p></o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

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
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'>
printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] =
<b><span
style=3D'font-weight:bold'>On Behalf Of </span></b>Petrie, Glen<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Friday, October 28, =
2011
7:45 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Daniel Dressler; Till
Kamppeter<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> Open Printing<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: =
[Printing-architecture]
Moving CUPS filters to OpenPrinting</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Hi,<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>I agree with Daniel comment on
foomatic-*<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>While
&#8220;openprinting-cups-filters&#8221; is descriptive; wouldn&#8217;t
&#8220;op-cups-filters&#8221; be =
sufficient?<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>For the &#8220;other name&#8221;
discussion, I am not sure they are really &#8220;common&#8221;; they are =
really
just the set supported by OpenPrinting. &nbsp;&nbsp;You say are
&#8220;&#8221;&#8221;&#8221;extra&#8221;&#8221;&#8221;&#8221; or
&#8220;&#8221;&#8221;&#8221;extended&#8221;&#8221;&#8221;&#8221;. =
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Some other =
ideas<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>CEFS =3D CUPS Extended Filter =
Set<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>OCFS =3D OpenPrinting CUPS Filter =
Set <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>COFS=3D CUPS OpenPrinting Filter =
Set<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;
=3D Common OpenPrinting Filter Set<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>But I am ok with
&#8220;op-cups-filters&#8221;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>For the discussion of =
&#8220;dropping
filters&#8221; &#8211;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>1.&nbsp; Is the intent is stop
supporting?&nbsp; If so, then there should one filter set that contains =
all of
&#8220;abandoned&#8221; filters.&nbsp; At least someone would have =
access to
the filter; even though reasonability for ensuring the work with the =
latest
CUPS is up to the person downloading this set of filters and not any =
other
entity.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>2. &nbsp;How many filters would =
suggest
dropping?&nbsp; If the number is small (&lt; 10 say), then the burden to
continue to support them may be low; however, if the larger, can a list =
be
generated of the suggested filters to be dropped.&nbsp; The list is then
distributed on printing email lists, so that people can provide a =
feedback on
the candidate filters to be dropped. <o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>glen<o:p></o:p></span></font></p>

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
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'>
printing-architecture-bounces@lists.linux-foundation.org =
[mailto:printing-architecture-bounces@lists.linux-foundation.org]
<b><span style=3D'font-weight:bold'>On Behalf Of </span></b>Daniel =
Dressler<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, October =
27, 2011
11:38 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Till Kamppeter<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> Open Printing<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] Moving CUPS filters to =
OpenPrinting</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>Hello<br>
<br>
I think we should keep foomatic-* as is, if only to avoid user =
confusion. <br>
<br>
Overall openprinting-cups-filters is a good name and can be extended to =
an
optional package easily, e.g. openprinting-cups-filters-extra, cannot =
really go
wrong with it.<br>
<br>
The only downsides I can think of is that it is verbose and just a bit, =
plain.<br>
<br>
There is another source of options, in line with CUPS, CPD, CMPD we =
could call
it CFS* ( Common Filter Set ) or CPF ( Common Printing Filters ) or =
CCUPSFS
(Common Common Unix Printing Spooler Filter Set).<br>
<br>
But perhaps my favourite: CUFS ( Common Unix Filter Set), it may not =
mention
the cups specific nature of the filters but what we lose in description =
we make
up for in branding, it is a pronounceable word!**<br>
<br>
Daniel<br>
<br>
*Already taken =3D\<br>
**In English at least.<br>
<br>
<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>2011/10/27 Till Kamppeter &lt;<a =
href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt;=
<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Hi,<br>
<br>
Mike Sweet intends to remove the filters which are not used by Mac OS X =
from
the CUPS upstream package:<br>
<br>
<a href=3D"http://www.cups.org/str.php?L3930" =
target=3D"_blank">http://www.cups.org/str.php?L3930</a><br>
<br>
We have agreed on this on the last OpenPrinting Summit and the filters =
will be
continued and hosted by OpenPrinting. In addition, the filters for the =
PDF
printing workflow will not be adopted by CUPS but joined with the CUPS =
filters
we overtake.<br>
<br>
All Linux distributions would have to include this new CUPS filters =
package
then to get CUPS continuing to work and have the same feature set as =
before.<br>
<br>
Due to the fact that this package will use the PDF workflow by default =
and that
all major desktop applications send their print jobs already in PDF, =
this will
complete the implementation of PDF as standard print job format. See =
also my
updated web page:<br>
<br>
<a
href=3D"https://www.linuxfoundation.org/collaborate/workgroups/openprinti=
ng/pdfasstandardprintjobformat"
target=3D"_blank">https://www.linuxfoundation.org/collaborate/workgroups/=
openprinting/pdfasstandardprintjobformat</a><br>
<br>
By this, we also do not need to get a copyright/license agreement =
between the
developers of the PDF filters and Apple.<br>
<br>
We can start hosting the CUPS filters as soon as our BZR repositories =
for
OpenPrinting will be back. In the CUPS project these filters are already
separated into their own branch, we only need to import them from their =
SVN
into our BZR.<br>
<br>
We also need a name for the package. Should we call it simply
&quot;cups-filters&quot;? Or &quot;op-cups-filters&quot;? Or do we =
rename
Foomatic to openprinting and have the packages<br>
<br>
- openprinting-db<br>
- openprinting-db-nonfree<br>
- openprinting-db-engine<br>
- openprinting-rip<br>
- openprinting-cups-filters<br>
<br>
Note that we keep foomatic-rip/openprinting-rip separate from the CUPS =
filters
as this filter is a universal filter which also works with many other =
printing
systems.<br>
<br>
Another decision to make is whether we really should maintain all the =
filters
which get over to us from CUPS or whether we should discontinue some. =
The
filter set will contain &quot;imageto...&quot; and &quot;textto...&quot;
filters which are not made use of by the usual desktop applications, =
they send
all PDF (and some send PostScript). Alternatively, these filters could =
be made
optional.<br>
<br>
&nbsp; Till<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org"
target=3D"_blank">Printing-architecture@lists.linux-foundation.org</a><br=
>
<a
href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-archi=
tecture"
target=3D"_blank">https://lists.linuxfoundation.org/mailman/listinfo/prin=
ting-architecture</a><o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

</div>

</body>

</html>

------_=_NextPart_001_01CC9581.F0C40922--
