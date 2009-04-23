Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01C9C3B7.F9B055A9"
Date: Wed, 22 Apr 2009 19:05:29 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F0270A2@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
	<49EFC5A8.6020205@the-axe-effect.de>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit]
	Print	Dialog:PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tobias Hoffmann <lprint-list@the-axe-effect.de>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

This is a multi-part message in MIME format.

------_=_NextPart_001_01C9C3B7.F9B055A9
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


> n       Removes bi-directional communication between the application
> and print dialog; that is, printing is handed off operation to print
> dialog.
>
If the CPD will be extensible by the application, bi-directional
communication has to be there, anyway.
In my understanding, e.g. for Thunderbird, essentially all the "Page
Setup..." will move into the CPD (?)
=20
[gwp] I did not know this was an intent; I typically don't think of =
application page setup related to printing other than the application =
typically needs to know the minimum margins.
          So, in this case the dialog will change any "PRINT" button to =
"OK" and return to applicatoins
=20

So don't forget about the "Portrait / Landscape"-Option, which requires
the application to generate a new preview.
=20
[gwp] Yes, all apps typically have a landscape/portrait.  But when =
printing n-up within the dialog this has the meaning of orientation of =
the n-pages on the printed-page and really not done by the application.=20
=20


  Tobias


------_=_NextPart_001_01C9C3B7.F9B055A9
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML dir=3Dltr><HEAD><TITLE>Re: [Printing-architecture] =
[Printing-summit] Print Dialog:PreviewProcessing: Only A Question</TITLE>=0A=
<META http-equiv=3DContent-Type content=3D"text/html; charset=3Dunicode">=0A=
<META content=3D"MSHTML 6.00.6001.18226" name=3DGENERATOR></HEAD>=0A=
<BODY>=0A=
<DIV id=3DidOWAReplyText29815 dir=3Dltr><FONT size=3D2>=0A=
<DIV dir=3Dltr><BR>&gt; n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Removes =
bi-directional communication between the application<BR>&gt; and print =
dialog; that is, printing is handed off operation to print<BR>&gt; =
dialog.<BR>&gt;<BR>If the CPD will be extensible by the application, =
bi-directional<BR>communication has to be there, anyway.<BR>In my =
understanding, e.g. for Thunderbird, essentially all the =
"Page<BR>Setup..." will move into the CPD (?)</DIV>=0A=
<DIV dir=3Dltr>&nbsp;</DIV>=0A=
<DIV dir=3Dltr>[gwp] I did not know&nbsp;this was an intent; I typically =
don't think of application page setup related to printing other than the =
application typically needs to know the minimum margins.</DIV>=0A=
<DIV =
dir=3Dltr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;So,=
 in this case the dialog&nbsp;will change any "PRINT" button to "OK" and =
return to applicatoins</DIV>=0A=
<DIV dir=3Dltr>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><BR>So don't forget about the "Portrait / =
Landscape"-Option, which requires<BR>the application to generate a new =
preview.</DIV>=0A=
<DIV dir=3Dltr>&nbsp;</DIV>=0A=
<DIV dir=3Dltr>[gwp] Yes, all apps typically&nbsp;have a =
landscape/portrait.&nbsp; But when printing n-up within the dialog this =
has the meaning of orientation of the n-pages&nbsp;on the printed-page =
and really not done by the application. </DIV>=0A=
<DIV dir=3Dltr>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><BR><BR>&nbsp; Tobias<BR></DIV></FONT></DIV></BODY></HTML>
------_=_NextPart_001_01C9C3B7.F9B055A9--
