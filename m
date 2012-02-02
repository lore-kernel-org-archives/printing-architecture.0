Return-Path: <glen.petrie@eitc.epson.com>
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CCE1D6.A4DF5068"
Date: Thu, 2 Feb 2012 10:15:28 -0800
Message-ID: <E8C3B9E653C80C48B0951F8494C049A92C819D@EEAEX02.us.epson.net>
References: <CAN40gSsVnwE43W2E8no3OaRJ1zUGV9eg2F5xp_a3O7YzbAVpzQ@mail.gmail.com>
	<CAGC3nLB9KwEU25sESOwuzp30EvhbO8uErH4bC9Dp84ztUdu34w@mail.gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] OP Monthly Minutes (1 February 2012)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Daniel Dressler <danieru.dressler@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01CCE1D6.A4DF5068
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Daniel,

=20

I might have some stuff related to JTAPI; if so, I will send to you.

=20

p.s.

=20

There have been endless debates on free, open, liberal, foo, xyz and any
other kind license you can think of.   To date, OpenPrinting has decided
to use either MIT or CPL (CPL has actually been replaced Eclipse Public
License (EPL)).

=20

Reason:  No printer vendor to date will use GPL and, in most cases, will
not use LGPL due the legal issues.   For example, my work practice is to
never examine or review any GPL code.   Therefore, since OpenPrinting
wants print vendors and others to use the code they develop, it was
decided that all code must be CPL/EPL or at least MIT or BSD.  As
always, there have been exceptions; but, again, printer vendors will not
use code with these exceptions (so what the use in putting such code
under non-useful licenses).

=20

Glen

=20

=20

________________________________

From: printing-architecture-bounces@lists.linux-foundation.org
[mailto:printing-architecture-bounces@lists.linux-foundation.org] On
Behalf Of Daniel Dressler
Sent: Thursday, February 02, 2012 10:02 AM
To: Ira McDonald
Cc: printing-architecture@lists.linux-foundation.org
Subject: Re: [Printing-architecture] OP Monthly Minutes (1 February
2012)

=20

Hello Everyone

I have good news! Last year I mentioned that I would like to implement
JTAPI this summer if no one else did it before then.=20

I still want to do that!

I might email the jtapi mailing list closer to the summer to ask for
suggestions, I've read the jtapi spec what else should I read?

PS:=20

Since there appeared to be some confusion arround open source terms I
feel compelled to give a summery.

Free software is a term forwarded by the Free Software Foundation (
Richard Stalman and GPL)
The Free Software Foundation argues that free software is a moral issue,
that it is wrong to not let a user control their computer.
The end game for the FSF is that people no longer keep code secret. As
one can imagine since the major point of BSD like licenses is to allow
things to be taken secret, Free Software proponents do *not* like BSD
licenses.

Open source is a term introduced by The Open Source Initiative ( Eric
Raymond )
The Open Source Initiative argues that open source is a better
development method and does not argue that it is a moral issue.
The term open source is supposed to be less confusing than Free ( as in
freedom) software.

Then there are Liberal Licenses (MIT/ three clause BSD) these are meant
to be more corporate friendly.=20

It is a complicated subject but we do have terms that can be
unambiguous.=20

PPS: foomatic uses libxml2 as well. Please do not write a new xml
parser. Here is a list of xml pasers and their licenses:
http://lars.ruoff.free.fr/xmlcpp/ It appears that "expat" would fit our
goals (small, written in C, and under MIT).

2012/2/1 Ira McDonald <blueroofmusic@gmail.com>

Hi,=20

Minutes from today's Open Printing monthly teleconference are posted at:

 ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20120201.htm

ACTION - All - Identify additional print/image filters for GSoC

Final agenda for joint PWG / OP Summit 24-27 April 2012 is listed in
these minutes.

Next OP teleconferences:
(1) March 2012 - US/Europe - OP Monthly Meeting
    - Wednesday 7 March 2012, Daytime
      - US
        9am in San Francisco - US PST (Pacific Standard Time)
        10am in Colorado - US MST (Mountain Standard Time)
        11am in Chicago - US CST (Central Standard Time)
        12pm in New York - US EST (Eastern Standard Time)
      - Europe
        6pm in Berlin - CET (Central European Time)

    * Main Number (Till Kamppeter, LF, leader)
      International: +1-218-936-7999 <tel:%2B1-218-936-7999>=20
      Access Code:   491659#

(2) April 2012 - US/Europe - OP Monthly Meeting - tentative
    - Note - US Daylight Savings Time starts 11 March 2012
    - Note - Europe Summer Time starts 25 March 2012

    - Wednesday 4 April 2012, Daytime
      - US
        9am in San Francisco - US PDT (Pacific Daylight Time)
        10am in Colorado - US MDT (Mountain Daylight Time)
        11am in Chicago - US CDT (Central Daylight Time)
        12pm in New York - US EDT (Eastern Daylight Time)
      - Europe
        6pm in Berlin - CEST (Central European Summer Time)

    * Main Number (Till Kamppeter, LF, leader)
      International: +1-218-936-7999 <tel:%2B1-218-936-7999>=20
      Access Code:   491659#

Cheers,
- Ira

Ira McDonald (Musician / Software Architect)
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG IPP WG
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - TCG Embedded Systems Hardcopy SG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music/High North Inc
http://sites.google.com/site/blueroofmusic
<http://sites.google.com/site/blueroofmusic>=20
http://sites.google.com/site/highnorthinc
<http://sites.google.com/site/highnorthinc>=20
mailto:blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434

=20


_______________________________________________
Printing-architecture mailing list
Printing-architecture@lists.linux-foundation.org
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

=20


------_=_NextPart_001_01CCE1D6.A4DF5068
Content-Type: text/html;
	charset="us-ascii"
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
 name=3D"PostalCode"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"State"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"Street"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"address"/>
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Mangal;
	panose-1:0 0 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	mso-list:l2 level1 lfo4;
	font-size:14.0pt;
	font-family:Cambria;}
h2
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:.3in;
	text-indent:-.3in;
	page-break-after:avoid;
	mso-list:l3 level2 lfo6;
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
p.StyleAppendix, li.StyleAppendix, div.StyleAppendix
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:6.0pt;
	margin-left:.25in;
	text-align:justify;
	text-indent:-.25in;
	page-break-after:avoid;
	mso-list:l3 level1 lfo6;
	font-size:14.0pt;
	font-family:Cambria;
	font-weight:bold;}
span.EmailStyle20
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
	mso-list-template-ids:-416383970;}
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
	{mso-level-suffix:space;
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
@list l3
	{mso-list-id:1691636573;
	mso-list-template-ids:1894306706;}
@list l3:level1
	{mso-level-style-link:StyleAppendix;
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
@list l3:level2
	{mso-level-style-link:"Heading 2";
	mso-level-suffix:space;
	mso-level-text:"%1\.%2\.";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.3in;
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
@list l3:level3
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
@list l3:level4
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
@list l3:level5
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
@list l3:level6
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
@list l3:level7
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
@list l3:level8
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
@list l3:level9
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
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Daniel,<o:p></o:p></span></font></=
p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>I might have some stuff related =
to
JTAPI; if so, I will send to you.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>p.s.<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>There have been endless debates =
on free,
open, liberal, foo, xyz and any other kind license you can think =
of.&nbsp;&nbsp; To date,
OpenPrinting has decided to use either MIT or CPL (CPL has actually been
replaced Eclipse Public License (EPL)).<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Reason:&nbsp; No printer vendor =
to date will
use GPL and, in most cases, will not use LGPL due the legal =
issues.&nbsp; &nbsp;For
example, my work practice is to never examine or review any GPL =
code.&nbsp; &nbsp;Therefore,
since OpenPrinting wants print vendors and others to use the code they =
develop,
it was decided that all code must be CPL/EPL or at least MIT or =
BSD.&nbsp; As
always, there have been exceptions; but, again, printer vendors will not =
use code
with these exceptions (so what the use in putting such code under =
non-useful
licenses).<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'><o:p>&nbsp;</o:p></span></font></p=
>

<p class=3DMsoNormal><font size=3D3 color=3Dblue face=3DCambria><span =
style=3D'font-size:
12.0pt;font-family:Cambria;color:blue'>Glen<o:p></o:p></span></font></p>

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
style=3D'font-weight:bold'>On Behalf Of </span></b>Daniel Dressler<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, February =
02, 2012
10:02 AM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> Ira McDonald<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b>
printing-architecture@lists.linux-foundation.org<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re:
[Printing-architecture] OP Monthly Minutes (1 February =
2012)</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>Hello =
Everyone<br>
<br>
I have good news! Last year I mentioned that I would like to implement =
JTAPI
this summer if no one else did it before then. <br>
<br>
I still want to do that!<br>
<br>
I might email the jtapi mailing list closer to the summer to ask for
suggestions, I've read the jtapi spec what else should I read?<br>
<br>
PS: <br>
<br>
Since there appeared to be some confusion arround open source terms I =
feel
compelled to give a summery.<br>
<br>
Free software is a term forwarded by the Free Software Foundation ( =
Richard
Stalman and GPL)<br>
The Free Software Foundation argues that free software is a moral issue, =
that
it is wrong to not let a user control their computer.<br>
The end game for the FSF is that people no longer keep code secret. As =
one can
imagine since the major point of BSD like licenses is to allow things to =
be
taken secret, Free Software proponents do *not* like BSD licenses.<br>
<br>
Open source is a term introduced by The Open Source Initiative ( Eric =
Raymond )<br>
The Open Source Initiative argues that open source is a better =
development
method and does not argue that it is a moral issue.<br>
The term open source is supposed to be less confusing than Free ( as in
freedom) software.<br>
<br>
Then there are Liberal Licenses (MIT/ three clause BSD) these are meant =
to be
more corporate friendly. <br>
<br>
It is a complicated subject but we do have terms that can be =
unambiguous. <br>
<br>
PPS: foomatic uses libxml2 as well. Please do not write a new xml =
parser. Here
is a list of xml pasers and their licenses: <a
href=3D"http://lars.ruoff.free.fr/xmlcpp/">http://lars.ruoff.free.fr/xmlc=
pp/</a>
It appears that &quot;expat&quot; would fit our goals (small, written in =
C, and
under MIT).<o:p></o:p></span></font></p>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>2012/2/1 Ira McDonald &lt;<a =
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;<o=
:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>Hi, <br>
<br>
Minutes from today's Open Printing monthly teleconference are posted =
at:<br>
<br>
&nbsp;<a =
href=3D"ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-20120201.htm"
target=3D"_blank">ftp://ftp.pwg.org/pub/pwg/fsg/minutes/OP-Minutes-201202=
01.htm</a><br>
<br>
ACTION - All - Identify additional print/image filters for GSoC<br>
<br>
Final agenda for joint PWG / OP Summit 24-27 April 2012 is listed in<br>
these minutes.<br>
<br>
Next OP teleconferences:<br>
(1) March 2012 - US/Europe - OP Monthly Meeting<br>
&nbsp;&nbsp;&nbsp; - Wednesday 7 March 2012, Daytime<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - US<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in <st1:City =
w:st=3D"on">San
 Francisco</st1:City> - <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
PST (Pacific Standard Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in <st1:State =
w:st=3D"on">Colorado</st1:State>
- <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
MST (Mountain Standard Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - =
<st1:country-region
w:st=3D"on"><st1:place w:st=3D"on">US</st1:place></st1:country-region> =
CST (Central
Standard Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in <st1:State =
w:st=3D"on">New
 York</st1:State> - <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
EST (Eastern Standard Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <st1:place =
w:st=3D"on">Europe</st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in <st1:State =
w:st=3D"on"><st1:place
 w:st=3D"on">Berlin</st1:place></st1:State> - CET (Central European =
Time)<br>
<br>
&nbsp;&nbsp;&nbsp; * Main Number (Till Kamppeter, LF, leader)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a =
href=3D"tel:%2B1-218-936-7999"
target=3D"_blank" value=3D"+12189367999">+1-218-936-7999</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; 491659#<br>
<br>
(2) April 2012 - US/Europe - OP Monthly Meeting - tentative<br>
&nbsp;&nbsp;&nbsp; - Note - US Daylight Savings Time starts 11 March =
2012<br>
&nbsp;&nbsp;&nbsp; - Note - Europe Summer Time starts 25 March 2012<br>
<br>
&nbsp;&nbsp;&nbsp; - Wednesday 4 April 2012, Daytime<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - US<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9am in <st1:City =
w:st=3D"on">San
 Francisco</st1:City> - <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
PDT (Pacific Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10am in <st1:State =
w:st=3D"on">Colorado</st1:State>
- <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
MDT (Mountain Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11am in Chicago - =
<st1:country-region
w:st=3D"on"><st1:place w:st=3D"on">US</st1:place></st1:country-region> =
CDT (Central
Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12pm in <st1:State =
w:st=3D"on">New
 York</st1:State> - <st1:country-region w:st=3D"on"><st1:place =
w:st=3D"on">US</st1:place></st1:country-region>
EDT (Eastern Daylight Time)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <st1:place =
w:st=3D"on">Europe</st1:place><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6pm in <st1:State =
w:st=3D"on"><st1:place
 w:st=3D"on">Berlin</st1:place></st1:State> - CEST (Central European =
Summer Time)<br>
<br>
&nbsp;&nbsp;&nbsp; * Main Number (Till Kamppeter, LF, leader)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; International: <a =
href=3D"tel:%2B1-218-936-7999"
target=3D"_blank" value=3D"+12189367999">+1-218-936-7999</a><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Access Code:&nbsp;&nbsp; 491659#<br>
<br>
Cheers,<br>
- Ira<br clear=3Dall>
<br>
Ira McDonald (Musician / Software Architect)<br>
Chair - Linux Foundation Open Printing WG<br>
Secretary - IEEE-ISTO Printer Working Group<br>
Co-Chair - IEEE-ISTO PWG IPP WG<br>
Co-Chair - TCG Trusted Mobility Solutions WG<br>
Chair - TCG Embedded Systems Hardcopy SG<br>
IETF Designated Expert - IPP &amp; Printer MIB<br>
Blue Roof Music/High North Inc<br>
<a href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank"><font
color=3D"#3333ff"><span =
style=3D'color:#3333FF'>http://sites.google.com/site/blueroofmusic</span>=
</font></a><br>
<a href=3D"http://sites.google.com/site/highnorthinc" =
target=3D"_blank"><font
color=3D"#6600cc"><span =
style=3D'color:#6600CC'>http://sites.google.com/site/highnorthinc</span><=
/font></a><br>
mailto:<a href=3D"mailto:blueroofmusic@gmail.com" =
target=3D"_blank">blueroofmusic@gmail.com</a><br>
Winter&nbsp; <st1:address w:st=3D"on"><st1:Street w:st=3D"on">579 Park =
Place</st1:Street>&nbsp;
 <st1:City w:st=3D"on">Saline</st1:City>, <st1:State =
w:st=3D"on">MI</st1:State>&nbsp;
 <st1:PostalCode w:st=3D"on">48176</st1:PostalCode></st1:address>&nbsp; =
<a
href=3D"tel:734-944-0094" target=3D"_blank" =
value=3D"+17349440094">734-944-0094</a><br>
Summer&nbsp; <st1:address w:st=3D"on"><st1:Street w:st=3D"on">PO =
Box</st1:Street>
 221</st1:address>&nbsp; Grand <st1:place w:st=3D"on"><st1:City =
w:st=3D"on">Marais</st1:City>,
 <st1:State w:st=3D"on">MI</st1:State> <st1:PostalCode =
w:st=3D"on">49839</st1:PostalCode></st1:place>&nbsp;
<a href=3D"tel:906-494-2434" target=3D"_blank" =
value=3D"+19064942434">906-494-2434</a><o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'><br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a =
href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printing=
-architecture@lists.linux-foundation.org</a><br>
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

------_=_NextPart_001_01CCE1D6.A4DF5068--
