Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_AdXB4R5xyV1gUiUhDFHpGw)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAHUm6-nBiqbF6yA+0GiDc=vAHe+-5sTM5sBgS87x+BvwE6rvXg@mail.gmail.com>
Date: Tue, 10 Dec 2013 19:54:35 -0500
Message-id: <6EC83F23-BB1E-417E-AA85-73E94261A820@apple.com>
References: <CAHUm6-nBiqbF6yA+0GiDc=vAHe+-5sTM5sBgS87x+BvwE6rvXg@mail.gmail.com>
Subject: Re: [Printing-architecture] Mainfeatures of cups 1.7.0
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: =?iso-8859-1?Q?Franz_Pf=F6rtsch?= <franz.pfoertsch@googlemail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Boundary_(ID_AdXB4R5xyV1gUiUhDFHpGw)
Content-type: text/plain; charset=iso-8859-1
Content-transfer-encoding: quoted-printable

Franz,

On Dec 10, 2013, at 5:32 PM, Franz Pf=F6rtsch =
<franz.pfoertsch@googlemail.com> wrote:
> Hello cups 1.7.0 is out since 24th of october,
>=20
> the mainfeatures should be paid, PIN, and release printing and =
automatic support for data compression.
>=20
> at www.cups.org there is no detailed information about this features.
>=20
> I am very interested on these.
>=20
> are there any printing machines available which uses the compression =
features?

Yes, absolutely.  Most recent HP and many Canon/Epson printers support =
compression via IPP and the CUPS 1.7 IPP backend will automatically use =
it when compression is supported. Compression was first supported in =
IPP/1.0 and started appearing in consumer/small office printers over the =
last couple years.

PIN printing is based on PWG 5100.11:

    PWG 5100.11-2010: IPP: Job and Printer Extensions - Set 2 (JPS2)
    =
ftp://ftp.pwg.org/pub/pwg/candidates/cs-ippjobprinterext10-20101030-5100.1=
1.pdf

Paid and release printing is based on PWG 5100.16:

    PWG 5100.16-2013: IPP Transaction-Based Printing Extensions
    =
http://ftp.pwg.org/pub/pwg/candidates/cs-ipptrans10-20131108-5100.16.pdf

There are some high-end office machines that already support the PIN =
(job-password) functionality.  Release and paid printing through IPP is =
new and I am not aware of any shipping printers/software solutions that =
implement it (yet).

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_AdXB4R5xyV1gUiUhDFHpGw)
Content-type: text/html; charset=iso-8859-1
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Franz,<div><br><div><div>On Dec 10, 2013, at 5:32 =
PM, Franz Pf=F6rtsch &lt;<a =
href=3D"mailto:franz.pfoertsch@googlemail.com">franz.pfoertsch@googlemail.=
com</a>&gt; wrote:</div><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><div><div><div><div>Hello cups 1.7.0 is out since =
24th of october,<br><br></div>the mainfeatures should be paid, PIN, and =
release printing and automatic support for data =
compression.<br><br></div>at <a =
href=3D"http://www.cups.org/">www.cups.org</a> there is no detailed =
information about this features.<br>
<br></div>I am very interested on these.<br><br></div>are there any =
printing machines available which uses the compression =
features?<br></div></div></div></blockquote><div><br></div>Yes, =
absolutely. &nbsp;Most recent HP and many Canon/Epson printers support =
compression via IPP and the CUPS 1.7 IPP backend will automatically use =
it when compression is supported. Compression was first supported in =
IPP/1.0 and started appearing in consumer/small office printers over the =
last couple years.</div><div><br></div><div>PIN printing is based on PWG =
5100.11:</div><div><br></div><div>&nbsp; &nbsp; PWG =
5100.11-2010:&nbsp;IPP: Job and Printer Extensions - Set 2 =
(JPS2)</div><div>&nbsp; &nbsp;&nbsp;<a =
href=3D"ftp://ftp.pwg.org/pub/pwg/candidates/cs-ippjobprinterext10-2010103=
0-5100.11.pdf">ftp://ftp.pwg.org/pub/pwg/candidates/cs-ippjobprinterext10-=
20101030-5100.11.pdf</a></div><div><br></div><div><div>Paid and release =
printing is based on PWG 5100.16:</div><div><br></div></div><div>&nbsp; =
&nbsp; PWG 5100.16-2013:&nbsp;IPP Transaction-Based Printing =
Extensions<br>&nbsp; &nbsp; <a =
href=3D"http://ftp.pwg.org/pub/pwg/candidates/cs-ipptrans10-20131108-5100.=
16.pdf">http://ftp.pwg.org/pub/pwg/candidates/cs-ipptrans10-20131108-5100.=
16.pdf</a></div><div><br></div><div>There are some high-end office =
machines that already support the PIN (job-password) functionality. =
&nbsp;Release and paid printing through IPP is new and I am not aware of =
any shipping printers/software solutions that implement it =
(yet).</div><div><br></div><div>
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">______________________________________________________=
_________<br>Michael Sweet, Senior Printing&nbsp;System Engineer, PWG =
Chair<br></div>

</div>
<br></div></body></html>=

--Boundary_(ID_AdXB4R5xyV1gUiUhDFHpGw)--
