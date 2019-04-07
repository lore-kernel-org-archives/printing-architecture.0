Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Xi36wK+mbEtx0QaD5VTjzR9MKy4oHOVF6Bud4hesOw4=;
	b=dcDUQeBizwtJMb1t2VrEEFcjUXu+6G0A5ZUf65UzUUSdRNqMQrlq+U6wV0Io4cnred
	qfA41ujAeASNZzS+y6J0KRkGKnp3emH2O2M3ZIDvN5WTZqxj8NQz4xXkjU0NpRIs1xCJ
	FGGHxwCmNhHjnl6YOqc9rswV5oAvQJ8gfJMJIVYcslo1quJN77S/MHw8GbPlNzZvkYi5
	yW3E75VsZGnqrw0ID1TiwKs4QNb51BLkFhoBnZshn8slBUWP2cL3PBN4OMnOtkfaydrX
	d/xHsUCjSYqI9GbXX5fbyXhZL1G/zmtTvh8hiXAxKRU11MJJp9QY4O+JNrTXp96isuTC
	wTbQ==
MIME-Version: 1.0
References: <33d66248-6dd2-5e8b-9068-4232eeeb2b8a@gmail.com>
	<b97db957-34e8-bd93-25b4-fd547e40e509@gmail.com>
	<a23c30b0-1456-993e-ecb4-65e9b1835f0c@gmail.com>
In-Reply-To: <a23c30b0-1456-993e-ecb4-65e9b1835f0c@gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Sun, 7 Apr 2019 11:28:34 -0400
Message-ID: <CAN40gSvv9m3XUMFBAnevHuR5HV9yweftd=eNrKuNZOyZjroP3A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001b9e5e0585f26081"
Subject: Re: [Printing-architecture] OpenPrinting News
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
Cc: Aveek Basu <aveek.basu@lexmark.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

--0000000000001b9e5e0585f26081
Content-Type: text/plain; charset="UTF-8"

Hi Till,

Thanks.  I'll get the OP Monthly minutes out today or tomorrow.  Just
finished my ESCAR USA
paper review submissions (deadline was today).  Busy weekend.

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



On Sun, Apr 7, 2019 at 11:21 AM Till Kamppeter <till.kamppeter@gmail.com>
wrote:

> Another UPDATE: I have released cups-filters 1.22.5 now, due to an
> incompatibility of foomatic-rip with the new Ghostscript 9.27.
>
>     Till
>
> ----------
>
> 1.22.5: Bug fix release, to make foomatic-rip working with Ghostscript
> 9.27 and later.
>
> 1.22.4: Bug fix release, to fix various bugs in cups-browsed and in the
> filters.
>
> CHANGES IN V1.22.5
>
>         - foomatic-rip: Changed Ghostscript call to count pages in a
>           PDF file to use "runpdfbegin" and not the undocumented
>           Ghostscript internal "pdfdict", so that it works with
>           Ghostscript 9.27 and later (Debian bug #926576, Arch Linux
>           bug #62251).
>
> CHANGES IN V1.22.4
>
>         - cups-browsed: Fix broken trailing space removal on
>           "NickName" (Pull request #103).
>         - pdftops: Emit PostScript Level 2 instead of Level 3 for
>           Brother PostScript printers as at least some of them
>           report to support level 3 but ontly work with Level 2
>           (Ubuntu bug #1306849, comment #42).
>         - bannertopdf: When multiplying the page for N-up or Duplex
>           printing one page too much was generated (Issue #102).
>
>
>
> On 05/04/2019 21:20, Till Kamppeter wrote:
> > UPDATE: I have released cups-filters 1.22.4 now.
> >
> >     Till
> >
> > On 05/04/2019 17:10, Till Kamppeter wrote:
> >> cups-filters
> >> ------------
> >>
> >> Note that due to the fact that we have given GitHub issues of
> >> cups-filters to students as assignments for the GSoC 2019 student
> >> selection process I have checked through the issues and (together with
> >> issues which I have closed and which I have fixed by myself) reduced
> >> the number of issues from 26 to 18.
> >>
> >> I will release 1.22.4 still for Ubuntu 19.04.
> >>
> >> Currently released is 1.22.3.
> >>
> >
> > [...]
>
>

--0000000000001b9e5e0585f26081
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Till,</div><div><br></div><div>Thanks.=C2=A0 I&#39=
;ll get the OP Monthly minutes out today or tomorrow.=C2=A0 Just finished m=
y ESCAR USA</div><div>paper review submissions (deadline was today).=C2=A0 =
Busy weekend.</div><div><br></div><div>Cheers,</div><div>- Ira</div><div><b=
r></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr">Ira McDonald (Musician / Software Architect)=
<br>Co-Chair - TCG Trusted Mobility Solutions WG</div><div>Co-Chair - TCG M=
etadata Access Protocol SG<br></div><div dir=3D"ltr">Chair - Linux Foundati=
on Open Printing WG<br>Secretary - IEEE-ISTO Printer Working Group<br>Co-Ch=
air - IEEE-ISTO PWG Internet Printing Protocol WG<br>IETF Designated Expert=
 - IPP &amp; Printer MIB<br>Blue Roof Music / High North Inc<br><a style=3D=
"color:rgb(51,51,255)" href=3D"http://sites.google.com/site/blueroofmusic" =
target=3D"_blank">http://sites.google.com/site/blueroofmusic</a><br><a styl=
e=3D"color:rgb(102,0,204)" href=3D"http://sites.google.com/site/highnorthin=
c" target=3D"_blank">http://sites.google.com/site/highnorthinc</a><br>mailt=
o: <a href=3D"mailto:blueroofmusic@gmail.com" target=3D"_blank">blueroofmus=
ic@gmail.com</a><br>PO Box 221=C2=A0 Grand Marais, MI 49839=C2=A0 906-494-2=
434<br><br><div style=3D"display:inline"></div><div style=3D"display:inline=
"></div><div style=3D"display:inline"></div><div></div><div></div><div></di=
v><div></div></div></div></div></div></div></div></div></div></div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Sun, Apr 7, 2019 at 11:21 AM Till Kamppeter &lt;<a href=3D"mailto:till=
.kamppeter@gmail.com">till.kamppeter@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Another UPDATE: I have releas=
ed cups-filters 1.22.5 now, due to an <br>
incompatibility of foomatic-rip with the new Ghostscript 9.27.<br>
<br>
=C2=A0 =C2=A0 Till<br>
<br>
----------<br>
<br>
1.22.5: Bug fix release, to make foomatic-rip working with Ghostscript <br>
9.27 and later.<br>
<br>
1.22.4: Bug fix release, to fix various bugs in cups-browsed and in the <br=
>
filters.<br>
<br>
CHANGES IN V1.22.5<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - foomatic-rip: Changed Ghostscript call to cou=
nt pages in a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PDF file to use &quot;runpdfbegin&quot; =
and not the undocumented<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ghostscript internal &quot;pdfdict&quot;=
, so that it works with<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ghostscript 9.27 and later (Debian bug #=
926576, Arch Linux<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bug #62251).<br>
<br>
CHANGES IN V1.22.4<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - cups-browsed: Fix broken trailing space remov=
al on<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;NickName&quot; (Pull request #103)=
.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - pdftops: Emit PostScript Level 2 instead of L=
evel 3 for<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Brother PostScript printers as at least =
some of them<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 report to support level 3 but ontly work=
 with Level 2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (Ubuntu bug #1306849, comment #42).<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 - bannertopdf: When multiplying the page for N-=
up or Duplex<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printing one page too much was generated=
 (Issue #102).<br>
<br>
<br>
<br>
On 05/04/2019 21:20, Till Kamppeter wrote:<br>
&gt; UPDATE: I have released cups-filters 1.22.4 now.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0=C2=A0 Till<br>
&gt; <br>
&gt; On 05/04/2019 17:10, Till Kamppeter wrote:<br>
&gt;&gt; cups-filters<br>
&gt;&gt; ------------<br>
&gt;&gt;<br>
&gt;&gt; Note that due to the fact that we have given GitHub issues of <br>
&gt;&gt; cups-filters to students as assignments for the GSoC 2019 student =
<br>
&gt;&gt; selection process I have checked through the issues and (together =
with <br>
&gt;&gt; issues which I have closed and which I have fixed by myself) reduc=
ed <br>
&gt;&gt; the number of issues from 26 to 18.<br>
&gt;&gt;<br>
&gt;&gt; I will release 1.22.4 still for Ubuntu 19.04.<br>
&gt;&gt;<br>
&gt;&gt; Currently released is 1.22.3.<br>
&gt;&gt;<br>
&gt; <br>
&gt; [...]<br>
<br>
</blockquote></div>

--0000000000001b9e5e0585f26081--
