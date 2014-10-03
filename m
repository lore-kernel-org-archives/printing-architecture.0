Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Asl+PDlaFWfO2uwQVBejcJTF/uNsglv16a0+kaD9V+w=;
	b=lXX2+IFK6lXmup7zs5jQG6luBtgln2rgX0wSTGTAx13J4dY4ehbOnXrZlYl3myxSO4
	AQx3TBJwA/wNcNmR9/PMeMXxb4vNhEOJIRE9M8kNAAvU8fUkkpL/LZ6Q+ZBXnsmB6t2I
	yjaEIa+x14KvG589Ar9Vclu5s+13DfJvofY18uC+PXEhT4pbTH+4eUwH+MSZMJMwS89H
	5LMTesJ532PuxgsjXfFxHVS5p+6cZHMzqFar4C2RjTUTrosGNsyMVTdlG6nziDzeukQh
	odX5OkH0fXLDq9bcbevx5yTRgVzIyt+9p2dvS+A8XAivXQQm728nSW0EUj5G6MkK1g/t
	NDmw==
MIME-Version: 1.0
In-Reply-To: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Fri, 3 Oct 2014 15:49:00 -0400
Message-ID: <CAN40gStuDx9p+x0oxMuuNmC6d-it_1Gos-p1WFFX7OHAEfookw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3b2f481436205048a0700
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Alex Korobkin <korobkin+op@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>, Michael R Sweet <msweet@apple.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--001a11c3b2f481436205048a0700
Content-Type: text/plain; charset=UTF-8

Hi Alex,

Processing instructions (such as copies) should never be embedded in PDF
files anymore.
On the wire, they should be in the IPP PrintJob or CreateJob request (i.e.,
job ticket).

CUPS or other client should send "copies" through the CUPS filter chain.(so
that client-side
copies can be done, if the target printer does not support multiple copies).

Mike Sweet - can you answer why cupsManualCopies PPD attribute is always
set to "true"?

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
Winter  579 Park Place  Saline, MI  48176  734-944-0094
Summer  PO Box 221  Grand Marais, MI 49839  906-494-2434


On Fri, Oct 3, 2014 at 3:28 PM, Alex Korobkin <korobkin+op@gmail.com> wrote:

> Hi all,
>
> I'm looking at example PPDs for pure PDF workflow, and all of them have
> cupsManualCopies: true
>
> Why is that? Is it impossible to tell printer to print a number of copies
> with pure PDF workflow?
> Maybe pdftopdf can inject @PJL SET COPIES=X into the file?
>
> --
> -Alex
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>
>

--001a11c3b2f481436205048a0700
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Alex,<br><br></div>Processing instructio=
ns (such as copies) should never be embedded in PDF files anymore.=C2=A0 <b=
r>On the wire, they should be in the IPP PrintJob or CreateJob request (i.e=
., job ticket).<br><br>CUPS or other client should send &quot;copies&quot; =
through the CUPS filter chain.(so that client-side <br>copies can be done, =
if the target printer does not support multiple copies).<br><br></div><div>=
Mike Sweet - can you answer why cupsManualCopies PPD attribute is always se=
t to &quot;true&quot;?<br><br></div><div>Cheers,<br></div><div>- Ira<br><br=
></div></div></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div d=
ir=3D"ltr">Ira McDonald (Musician / Software Architect)<br>Co-Chair - TCG T=
rusted Mobility Solutions WG<br>Chair - Linux Foundation Open Printing WG<b=
r>Secretary - IEEE-ISTO Printer Working Group<br>Co-Chair - IEEE-ISTO PWG I=
nternet Printing Protocol WG<br>IETF Designated Expert - IPP &amp; Printer =
MIB<br>Blue Roof Music / High North Inc<br><a style=3D"color:rgb(51,51,255)=
" href=3D"http://sites.google.com/site/blueroofmusic" target=3D"_blank">htt=
p://sites.google.com/site/blueroofmusic</a><br><a style=3D"color:rgb(102,0,=
204)" href=3D"http://sites.google.com/site/highnorthinc" target=3D"_blank">=
http://sites.google.com/site/highnorthinc</a><br>mailto: <a href=3D"mailto:=
blueroofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a><br>W=
inter=C2=A0 579 Park Place=C2=A0 Saline, MI=C2=A0 48176=C2=A0 734-944-0094<=
br>Summer=C2=A0 PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2434<=
br><br><div style=3D"display:inline"></div><div style=3D"display:inline"></=
div><div style=3D"display:inline"></div><div></div><div></div><div></div><d=
iv></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Oct 3, 2014 at 3:28 PM, Alex Korobki=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:korobkin+op@gmail.com" target=3D"=
_blank">korobkin+op@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">Hi all,=C2=A0<div><br></div><div>I&#39;m lookin=
g at example PPDs for pure PDF workflow, and all of them have=C2=A0</div><d=
iv>cupsManualCopies: true</div><div><br></div><div>Why is that? Is it impos=
sible to tell printer to print a number of copies with pure PDF workflow?=
=C2=A0</div><div>Maybe pdftopdf can inject @PJL SET COPIES=3DX into the fil=
e?=C2=A0</div><span class=3D"HOEnZb"><font color=3D"#888888"><div><div><br>=
</div>-- <br><div dir=3D"ltr">-Alex</div>
</div></font></span></div>
<br>_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
<br></blockquote></div><br></div>

--001a11c3b2f481436205048a0700--
