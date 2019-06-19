Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=pVWZ6Z8bkfIMGQ1YDZDjba9i5u+iLouc8fQ+GK6xMfY=;
	b=QqAaIZBoeZfzq/GdRti/W7XTDk7C5rNLHQ+JRj5/OWmEZ4+PFtLiJnJBml9sIoL3u2
	qfscU4sqvOWj2+S8CRVvRmDM4F0aCtQ8zEf1UVo5sFWUYovgkyZg+mzzNGGRcUuWsG9e
	IKMQJQVQlhh/uC3g/9Geli5+2al3nR54r0P6Y80H3dUcfRZ3KrJMt6oZw0Vdgap1gpQt
	37AQ1WO2t5VHZJjVnTScabLIHdD9K2R3Bp6vH4TH/digzNjEq2V5VYDJdE6uudQ/R5Hc
	NVzieaH4FQ5XtdepEeItVIDggkf9oJpRS5faHNDSILSBywaPf06y3KLNDvQ5YrMXhPDs
	7MAQ==
MIME-Version: 1.0
References: <CAKu2CsVOvPKh11ibUVP48MnO8jaBYiaeEpv-OD2xhkbsEb2yrA@mail.gmail.com>
	<CAN40gSsDJ7NFqC-dHrGM3wmEFMgSf0Wjg9y4X5=2jR0EmSrX1g@mail.gmail.com>
	<9b5ef31f-b7d6-17c9-29dc-012c862ca4dd@gmail.com>
In-Reply-To: <9b5ef31f-b7d6-17c9-29dc-012c862ca4dd@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 19 Jun 2019 13:12:04 -0400
Message-ID: <CAN40gStMycrOp8CyDc5JQFE38UyOo_Sp=WsPg-BO8_vWxWjY9g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fedfbd058bb0543d"
Subject: Re: [Printing-architecture] Fwd: raw socket Linux kernel panic
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Aveek Basu <basu.aveek@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--000000000000fedfbd058bb0543d
Content-Type: text/plain; charset="UTF-8"

Hi,

Here's the SANS Institute info on this Linux kernel bug:

https://isc.sans.edu/forums/diary/What+You+Need+To+Know+About+TCP+SACK+Panic/25046/

Note that a print server that is forwarding from end print clients to
downstream printers could be open to this kernel panic bug, if it
supports Port 9100 printing.

Cheers,
- Ira


Ira McDonald (Musician / Software Architect)
Co-Chair - TCG Trusted Mobility Solutions WG
Co-Chair - TCG Metadata Access Protocol SG
Chair - Linux Foundation Open Printing WG
Secretary - IEEE-ISTO Printer Working Group
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG
IETF Designated Expert - IPP & Printer MIB
Blue Roof Music / High North Inc
http://sites.google.com/site/blueroofmusic
http://sites.google.com/site/highnorthinc
mailto: blueroofmusic@gmail.com
PO Box 221  Grand Marais, MI 49839  906-494-2434



On Wed, Jun 19, 2019 at 11:10 AM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Only the printers open port 9100 to receive jobs, a computer does never
> open this port for printer sharing. So is this secyrity issue about
> breaking into the printer then?
>
>     Till
>
>
> On 19/06/2019 16:56, Ira McDonald wrote:
> > Hi,
> >
> > Of course, we don't encourage people to use Port 9100 (for example)
> > for printing, but this raw socket kernel panic looks like a serious
> issue.
> >
> > Cheers,
> > - Ira
> >
> >
> > ---------- Forwarded message ---------
> > From: *Dave New* <dave.new@fcagroup.com <mailto:dave.new@fcagroup.com>>
> > Date: Wed, Jun 19, 2019 at 10:46 AM
> > Subject: raw socket Linux kernel panic
> > To: Ira McDonald <blueroofmusic@gmail.com <mailto:
> blueroofmusic@gmail.com>>
> >
> >
> > Ira,
> >
> > Heard on the security now podcast this morning, there is a raw socket
> > Linux kernel panic that goes back about ten years.  I noticed that you
> > are involved with the printing stuff, and I recall that includes raw
> > sockets, which might be likely exposed to the Internet (purposefully or
> > accidentally).
> >
> > What I understand is that the issue is in the kernel TCP stack, so there
> > may be little that can be done from the printer driver level, except
> > maybe close off the raw socket access until the kernels can be patched.
> >
> > Steve Gibson expects that by next week, an attack in the wild against
> > unpatched kernels will be featured front-and-center for his podcast.
> >
> > Thanks,
> >
> > --  DaveN
> >
> >
> > Dave New
> >
> > Advanced Senior Engineer
> >
> > E/E Wireless & Security
> >
> >
> > FCA US LLC
> >
> > CIMS 484-10-01
> >
> > 800 Chrysler Dr, Auburn Hills, MI USA 48326-2757
> >
> > USA
> >
> >
> > Telephone: +1 (248) 576 1591
> >
> > Mobile: +1 (248) 705 8701
> >
> > FAX: +1 (248) 576 8398
> >
> > Email:dave.new@fcagroup.com <mailto:dave.new@fcagroup.com>
> >
> >
>
>

--000000000000fedfbd058bb0543d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Here&#39;s the SANS Inst=
itute info on this Linux kernel bug:</div><div><br></div><div><a href=3D"ht=
tps://isc.sans.edu/forums/diary/What+You+Need+To+Know+About+TCP+SACK+Panic/=
25046/">https://isc.sans.edu/forums/diary/What+You+Need+To+Know+About+TCP+S=
ACK+Panic/25046/</a></div><div><br></div><div>Note that a print server that=
 is forwarding from end print clients to</div><div>downstream printers coul=
d be open to this kernel panic bug, if it</div><div>supports Port 9100 prin=
ting.</div><div><br></div><div>Cheers,</div><div>- Ira</div><div><br></div>=
<div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr">Ira McDonald (Musician / Software Archi=
tect)<br>Co-Chair - TCG Trusted Mobility Solutions WG</div><div>Co-Chair - =
TCG Metadata Access Protocol SG<br></div><div dir=3D"ltr">Chair - Linux Fou=
ndation Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>=
Co-Chair - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated E=
xpert - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a sty=
le=3D"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmu=
sic" target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a=
 style=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highno=
rthinc" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>=
mailto: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">bluero=
ofmusic@gmail.com</a><br>PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-=
494-2434<br><br><div style=3D"display:inline"></div><div style=3D"display:i=
nline"></div><div style=3D"display:inline"></div><div></div><div></div><div=
></div><div></div></div></div></div></div></div></div></div></div></div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jun 19, 2019 at 11:10 AM Till Kamppeter &lt;<a href=3D"mailt=
o:till.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Only the printers open =
port 9100 to receive jobs, a computer does never <br>
open this port for printer sharing. So is this secyrity issue about <br>
breaking into the printer then?<br>
<br>
=C2=A0 =C2=A0 Till<br>
<br>
<br>
On 19/06/2019 16:56, Ira McDonald wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; Of course, we don&#39;t encourage people to use Port 9100 (for example=
)<br>
&gt; for printing, but this raw socket kernel panic looks like a serious is=
sue.<br>
&gt; <br>
&gt; Cheers,<br>
&gt; - Ira<br>
&gt; <br>
&gt; <br>
&gt; ---------- Forwarded message ---------<br>
&gt; From: *Dave New* &lt;<a href=3D"mailto:dave.new@fcagroup.com" target=
=3D"_blank">dave.new@fcagroup.com</a> &lt;mailto:<a href=3D"mailto:dave.new=
@fcagroup.com" target=3D"_blank">dave.new@fcagroup.com</a>&gt;&gt;<br>
&gt; Date: Wed, Jun 19, 2019 at 10:46 AM<br>
&gt; Subject: raw socket Linux kernel panic<br>
&gt; To: Ira McDonald &lt;<a href=3D"mailto:blueroofmusic@gmail.com" target=
=3D"_blank">blueroofmusic@gmail.com</a> &lt;mailto:<a href=3D"mailto:bluero=
ofmusic@gmail.com" target=3D"_blank">blueroofmusic@gmail.com</a>&gt;&gt;<br=
>
&gt; <br>
&gt; <br>
&gt; Ira,<br>
&gt; <br>
&gt; Heard on the security now podcast this morning, there is a raw socket =
<br>
&gt; Linux kernel panic that goes back about ten years.=C2=A0 I noticed tha=
t you <br>
&gt; are involved with the printing stuff, and I recall that includes raw <=
br>
&gt; sockets, which might be likely exposed to the Internet (purposefully o=
r <br>
&gt; accidentally).<br>
&gt; <br>
&gt; What I understand is that the issue is in the kernel TCP stack, so the=
re <br>
&gt; may be little that can be done from the printer driver level, except <=
br>
&gt; maybe close off the raw socket access until the kernels can be patched=
.<br>
&gt; <br>
&gt; Steve Gibson expects that by next week, an attack in the wild against =
<br>
&gt; unpatched kernels will be featured front-and-center for his podcast.<b=
r>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; --=C2=A0 DaveN<br>
&gt; <br>
&gt; <br>
&gt; Dave New<br>
&gt; <br>
&gt; Advanced Senior Engineer<br>
&gt; <br>
&gt; E/E Wireless &amp; Security<br>
&gt; <br>
&gt; <br>
&gt; FCA US LLC<br>
&gt; <br>
&gt; CIMS 484-10-01<br>
&gt; <br>
&gt; 800 Chrysler Dr, Auburn Hills, MI USA 48326-2757<br>
&gt; <br>
&gt; USA<br>
&gt; <br>
&gt; <br>
&gt; Telephone: +1 (248) 576 1591<br>
&gt; <br>
&gt; Mobile: +1 (248) 705 8701<br>
&gt; <br>
&gt; FAX: +1 (248) 576 8398<br>
&gt; <br>
&gt; <a href=3D"mailto:Email%3Adave.new@fcagroup.com" target=3D"_blank">Ema=
il:dave.new@fcagroup.com</a> &lt;mailto:<a href=3D"mailto:dave.new@fcagroup=
.com" target=3D"_blank">dave.new@fcagroup.com</a>&gt;<br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--000000000000fedfbd058bb0543d--
