Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ieWw+p8vb7QeXAf22zHQim/AYDv1iDWBLYqORQy3VVQ=;
	b=ryOFNEwaDKGBdIhC+WPzUOuEOGI6p3lTc8Gb/y3Ytnv+RhGOss2Bc2dIthFQxuN1XO
	stoIC1jXYvhiIJoGMJIXk612TteTtt1SOLkb2srqTm9skCFZ+RyjUV98Ac7zp9VYJDhY
	le9doc6m/cXnF+iGTK18OLxPQ8MfJ93TheJh2cMDKDYLO+H4B4No5pbVtxuBd349Obxq
	M8K2B4tp7976joABS70AeMel8dnLnSxJ8/qt7yCMYuZw0qUIuINT9E/gTJvXGCU/NhrB
	iMIVyEyL8PDiKMJj+8hHW67NTfWYFRks6qkP9khXsUSokmhVZLwP3xMo07anOM6gO6V9
	59kA==
MIME-Version: 1.0
References: <CAKu2CsVOvPKh11ibUVP48MnO8jaBYiaeEpv-OD2xhkbsEb2yrA@mail.gmail.com>
In-Reply-To: <CAKu2CsVOvPKh11ibUVP48MnO8jaBYiaeEpv-OD2xhkbsEb2yrA@mail.gmail.com>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Wed, 19 Jun 2019 10:56:05 -0400
Message-ID: <CAN40gSsDJ7NFqC-dHrGM3wmEFMgSf0Wjg9y4X5=2jR0EmSrX1g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000075c787058bae6e41"
Subject: [Printing-architecture] Fwd: raw socket Linux kernel panic
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Danny Brennan <brennand@us.ibm.com>, Ira McDonald <blueroofmusic@gmail.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--00000000000075c787058bae6e41
Content-Type: text/plain; charset="UTF-8"

Hi,

Of course, we don't encourage people to use Port 9100 (for example)
for printing, but this raw socket kernel panic looks like a serious issue.

Cheers,
- Ira


---------- Forwarded message ---------
From: Dave New <dave.new@fcagroup.com>
Date: Wed, Jun 19, 2019 at 10:46 AM
Subject: raw socket Linux kernel panic
To: Ira McDonald <blueroofmusic@gmail.com>


Ira,

Heard on the security now podcast this morning, there is a raw socket Linux
kernel panic that goes back about ten years.  I noticed that you are
involved with the printing stuff, and I recall that includes raw sockets,
which might be likely exposed to the Internet (purposefully or
accidentally).

What I understand is that the issue is in the kernel TCP stack, so there
may be little that can be done from the printer driver level, except maybe
close off the raw socket access until the kernels can be patched.

Steve Gibson expects that by next week, an attack in the wild against
unpatched kernels will be featured front-and-center for his podcast.

Thanks,

--  DaveN


Dave New

Advanced Senior Engineer

E/E Wireless & Security


FCA US LLC

CIMS 484-10-01

800 Chrysler Dr, Auburn Hills, MI USA 48326-2757

USA


Telephone: +1 (248) 576 1591

Mobile: +1 (248) 705 8701

FAX: +1 (248) 576 8398

Email: dave.new@fcagroup.com

--00000000000075c787058bae6e41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Of course, we don&#39;t =
encourage people to use Port 9100 (for example)</div><div>for printing, but=
 this raw socket kernel panic looks like a serious issue.</div><div><br></d=
iv><div>Cheers,</div><div>- Ira<br></div><div><br><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message --=
-------<br>From: <b class=3D"gmail_sendername" dir=3D"auto">Dave New</b> <s=
pan dir=3D"auto">&lt;<a href=3D"mailto:dave.new@fcagroup.com">dave.new@fcag=
roup.com</a>&gt;</span><br>Date: Wed, Jun 19, 2019 at 10:46 AM<br>Subject: =
raw socket Linux kernel panic<br>To: Ira McDonald &lt;<a href=3D"mailto:blu=
eroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt;<br></div><br><br><div=
 dir=3D"ltr">Ira,<div><br></div><div>Heard on the security now podcast this=
 morning, there is a raw socket Linux kernel panic that goes back about ten=
 years.=C2=A0 I noticed that you are involved with the printing stuff, and =
I recall that includes raw sockets, which might be likely exposed to the In=
ternet (purposefully or accidentally).</div><div><br></div><div>What I unde=
rstand is that the issue is in the kernel TCP stack, so there may be little=
 that can be done from the printer driver level, except maybe close off the=
 raw socket access until the kernels can be patched.</div><div><br></div><d=
iv>Steve Gibson expects that by next week, an attack in the wild against un=
patched kernels will be featured front-and-center for his podcast.</div><di=
v><br></div><div>Thanks,</div><div><div><br></div>--=C2=A0 DaveN</div><div>=
<br><div dir=3D"ltr" class=3D"m_-268728224400279173gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><p class=
=3D"MsoNormal"><span><span style=3D"font-size:11pt;font-family:Arial;color:=
rgb(0,0,0);background-color:transparent;vertical-align:baseline;white-space=
:pre-wrap"><img src=3D"https://lh5.googleusercontent.com/_Xg52jBFhXv0-IeC__=
QZ5vRR0yv-Wq2m06gwj-pnwlwWVe6Z0pMsSMwEdpTH5s9PUOLZbOSB_5RbNqfzJQySVU1UF-79X=
WMYTeWn2Il_lqwzLcz4xpl-P0imra0Pha0rj7YyN_-W" style=3D"border:none" width=3D=
"101" height=3D"37"></span></span></p><p class=3D"MsoNormal"><span><span st=
yle=3D"font-size:11pt;font-family:Arial;color:rgb(0,0,0);background-color:t=
ransparent;vertical-align:baseline;white-space:pre-wrap"><br></span></span>=
</p>

<p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt">=
<span style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background=
-color:transparent;font-weight:700;font-style:normal;font-variant:normal;te=
xt-decoration:none;vertical-align:baseline;white-space:pre-wrap">Dave New</=
span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);b=
ackground-color:transparent;font-weight:400;font-style:normal;font-variant:=
normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">A=
dvanced Senior Engineer</span></p><p dir=3D"ltr" style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-family=
:Arial;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-s=
tyle:normal;font-variant:normal;text-decoration:none;vertical-align:baselin=
e;white-space:pre-wrap">E/E Wireless &amp; Security</span></p><p dir=3D"ltr=
" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><br></p><p di=
r=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span=
 style=3D"font-size:10pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-weight:700;font-style:normal;font-variant:normal;text-de=
coration:none;vertical-align:baseline;white-space:pre-wrap">FCA US LLC</spa=
n></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);backg=
round-color:transparent;font-weight:400;font-style:normal;font-variant:norm=
al;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">CIMS =
484-10-01</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt=
;margin-bottom:0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rg=
b(0,0,0);background-color:transparent;font-weight:400;font-style:normal;fon=
t-variant:normal;text-decoration:none;vertical-align:baseline;white-space:p=
re-wrap">800 Chrysler Dr, Auburn Hills, MI USA 48326-2757</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-color:=
transparent;font-weight:400;font-style:normal;font-variant:normal;text-deco=
ration:none;vertical-align:baseline;white-space:pre-wrap">USA</span></p><p =
dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><br=
></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">Teleph=
one: +1 (248) 576 1591</span></p><p dir=3D"ltr" style=3D"line-height:1.38;m=
argin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:9pt;font-family:A=
rial;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-sty=
le:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;=
white-space:pre-wrap">Mobile: +1 (248) 705 8701</span></p><p dir=3D"ltr" st=
yle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fo=
nt-size:9pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none=
;vertical-align:baseline;white-space:pre-wrap">FAX: +1 (248) 576 8398</span=
></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt"><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);backgr=
ound-color:transparent;font-weight:400;font-style:normal;font-variant:norma=
l;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">Email:=
</span><span style=3D"font-size:9pt;font-family:Arial;color:rgb(255,0,0);ba=
ckground-color:transparent;font-weight:400;font-style:normal;font-variant:n=
ormal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"> <=
/span><span style=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,255);bac=
kground-color:transparent;font-weight:400;font-style:normal;font-variant:no=
rmal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"><a =
href=3D"mailto:dave.new@fcagroup.com" target=3D"_blank">dave.new@fcagroup.c=
om</a></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><br></p></div></div></div></div></div></div>
</div></div></div>

--00000000000075c787058bae6e41--
