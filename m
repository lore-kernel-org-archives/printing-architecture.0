Return-Path: <kurt.pfeifle@googlemail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:references:in-reply-to:reply-to:from:date:message-id
	:subject:to:cc;
	bh=mH/DTW/KIo4IHhTf9AI1jgI08s6xbD+QsiOnm4INLco=;
	b=QfafrzzC1CHULYDGdODXa831KarUEJ1nnHFlCTa4iv0roc3Nmagl5lKH5Tux4tKvna
	5NLiszlzDCMVBYzMBdsblA2cbfg3aNVQaCPQlB1Niq5CBGr68NNRmQv3Twz/jSKZyibo
	MQd8EqoStTHIKOVFaITebEYXZRF40VxEPrhZCDBCybncKp+ilt/9aQX2L13NHy7DPDuE
	f+pHJVynWID7VdGHrc51/VNcV5F0jB43MDhipUA7rRINkp9zXfXRLm6DA/Q5v4omi1fZ
	Qsp34hc4n3DBit6z3T0nCjnDt/tY/FTmn5bQFyd2R1YvQtBEASe0Jl75dGtKxFruShPJ
	DMtA==
MIME-Version: 1.0
References: <4dab880a-b033-0b58-7114-cb7af3e2a0a9@gmail.com>
	<B921DDE3-418B-4B32-8C83-1486476D31C1@apple.com>
	<aeeb7c9d-b8b9-ade7-88a3-7d9b1e3b87c7@gmail.com>
	<20190213235604.GE28869@shaftnet.org>
In-Reply-To: <20190213235604.GE28869@shaftnet.org>
Reply-To: kurt.pfeifle@gmail.com
From: Kurt Pfeifle <kurt.pfeifle@googlemail.com>
Date: Thu, 14 Feb 2019 18:49:51 +0100
Message-ID: <CAK+62whQu7X+PwS3RsZk__vY7q1deG-HwejpTTkqWV-4He-pow@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002edfed0581de4b06"
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Cc: Aveek Basu <aveek.basu@lexmark.com>, Till Kamppeter <till.kamppeter@gmail.com>

--0000000000002edfed0581de4b06
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 14, 2019 at 1:17 AM Solomon Peachy <pizza@shaftnet.org> wrote:

> On Wed, Feb 13, 2019 at 10:26:29PM +0100, Till Kamppeter wrote:
> > By the way, who is the original author of Avahi?
>
> None other than Lennart Pottering.  :)
>
>  - Solomon
>

This is not correct.

Avahi was initially created by Trend Lloyd in early 2004. He was certainly
inspired by Apple's Bonjour, which unfortunately was not Open Source
initially, so there as a strong motivation to implement a FOSS ZeroConf
stack, since all of the relevant specs (mDNS + DNS-SD) were already there
at IETF, and open.

Later that same year Lennart Poettering started a similar project to
implement mDNS/DNS-SD functionality called "FlexMDNS".

Both projects united and merged their code bases sometime in 2005. Though I
have no idea which of the two guys wrote more lines of code that still
exists in today's code base, Poettering surely had a heavy impact on
today's Avahi.

Apple released Bonjour as Open Source software under the Apache License
only in 2006.

Avahi's name certainly was Trend's decision, and he started his
implementation half a year before Poettering.

Poettering's last commit into Avahi's GitHub code was in Sept  2012.
Trend's last commit was 10 days ago. The last time Trend merged a major
pull request was in August 2018. See
https://github.com/lathiat/avahi/commits?author=lathiat.

 According to https://github.com/lathiat Trend works for Canonical.

--0000000000002edfed0581de4b06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Thu, Feb 14, 2019 at 1:17 AM Solomon Peachy &lt;<a href=3D"mai=
lto:pizza@shaftnet.org">pizza@shaftnet.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Wed, Feb 13, 2019 at 10:26:29P=
M +0100, Till Kamppeter wrote:<br>
&gt; By the way, who is the original author of Avahi?<br>
<br>
None other than Lennart Pottering.=C2=A0 :)<br>
<br>
=C2=A0- Solomon<br></blockquote><div><br></div><div>This is not correct.</d=
iv><div><br></div><div>Avahi was initially created by Trend Lloyd in early =
2004. He was certainly inspired by Apple&#39;s Bonjour, which unfortunately=
 was not Open Source initially, so there as a strong motivation to implemen=
t a FOSS ZeroConf stack, since all of the relevant specs (mDNS + DNS-SD) we=
re already there at IETF, and open.</div><div><br></div><div>Later that sam=
e year Lennart Poettering started a similar project to implement <span styl=
e=3D"font-family:sans-serif;font-size:13.125px">mDNS/DNS-SD functionality c=
alled &quot;FlexMDNS&quot;.</span></div><div><span style=3D"font-family:san=
s-serif;font-size:13.125px"><br></span></div><div><font face=3D"sans-serif"=
><span style=3D"font-size:13.125px">Both projects united and merged their c=
ode bases sometime in 2005.=C2=A0</span></font><span style=3D"font-family:s=
ans-serif;font-size:13.125px">Though I have no idea which of the two guys w=
rote more lines of code that still exists in today&#39;s code base, Poetter=
ing surely had a heavy impact on today&#39;s Avahi.</span></div><div><span =
style=3D"font-family:sans-serif;font-size:13.125px"><br></span></div><div><=
span style=3D"font-family:sans-serif;font-size:13.125px">Apple released Bon=
jour as Open Source software under the Apache License only in 2006.</span><=
/div><div><font face=3D"sans-serif"><span style=3D"font-size:13.125px"><br>=
</span></font></div><div><font face=3D"sans-serif"><span style=3D"font-size=
:13.125px">Avahi&#39;s name certainly was Trend&#39;s decision, and he star=
ted his implementation half a year before Poettering.=C2=A0</span></font></=
div><div><font face=3D"sans-serif"><span style=3D"font-size:13.125px"><br><=
/span></font></div><div><font face=3D"sans-serif"><span style=3D"font-size:=
13.125px">Poettering&#39;s last commit into Avahi&#39;s GitHub code was in =
Sept=C2=A0 2012. Trend&#39;s last commit was 10 days ago.=C2=A0</span></fon=
t><span style=3D"font-family:sans-serif;font-size:13.125px">The last time T=
rend merged a major pull request was in August 2018. See=C2=A0<a href=3D"ht=
tps://github.com/lathiat/avahi/commits?author=3Dlathiat">https://github.com=
/lathiat/avahi/commits?author=3Dlathiat</a>.</span></div><div><span style=
=3D"font-size:13.125px;font-family:sans-serif"><br></span></div><div><span =
style=3D"font-size:13.125px;font-family:sans-serif">=C2=A0According to=C2=
=A0<a href=3D"https://github.com/lathiat">https://github.com/lathiat</a> Tr=
end works for Canonical.</span></div><div><font face=3D"sans-serif"><span s=
tyle=3D"font-size:13.125px"><br></span></font></div></div></div></div></div=
></div>

--0000000000002edfed0581de4b06--
