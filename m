Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1406162542; x=2270076142;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sAWoAC+AvWYrUA6PqfgHMwx7Ip41sKIQzI3W7h2qD3U=;
	b=2WBNQAnB7qPzQWnuKIm74PKqoAngVLq3fskLRgDPiBcrjGlLaio1NEk7ARx3Cmh2
	kAHEQ4lAQxpXZ55/xqAy+r0X1wh5WkLIGbTdYQkxKBHC+RX0SGb92dv7aij5u5vv
	54PBqIwV+oaklv2OUIHML5tid78v6lAc9fo78FuTjXlLQX6pnSeooQ3iU5ryorSY
	pYuy0+T8t6hUR2n6xLlzB2pGFCo/b5229zODV+3+/LJb4mD07GJwI2sJUhKiTYhv
	H2mJWG0esp7xbTDqps4TUpdqTlnPd39+xzHyk9ecAPVa/Nk2K1bcSY9u2COr8xs2
	+w4RTfINulMLdulydRvuEA==;
MIME-version: 1.0
Content-type: multipart/alternative;
	boundary="Boundary_(ID_mLEJNHNTB6dTQNkxcyH+rA)"
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
Date: Wed, 23 Jul 2014 20:42:18 -0400
Message-id: <E7CD87FB-A00C-4674-A2B6-D561388F3502@apple.com>
References: <53CFCE94.8060605@gmail.com>
	<F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
	<CAN40gStkAXa9Yi8n_csS5UMprEK28j7bH3L=PexbwTQi+ECDuA@mail.gmail.com>
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>, Pete Zannucci <pzaan@us.ibm.com>


--Boundary_(ID_mLEJNHNTB6dTQNkxcyH+rA)
Content-type: text/plain; CHARSET=US-ASCII
Content-transfer-encoding: 7BIT

Ira,

On Jul 23, 2014, at 4:36 PM, Ira McDonald <blueroofmusic@gmail.com> wrote:
> ...
> (1) find Printers via DNS-SD / Bonjour (though this might wake up
> the Printers - BAD idea).

Generally speaking, you only wake the printer if you resolve its address.

> ...
> Pete and Mike - does this seem like a viable middle ground to you,
> where the relevant network may not have an LDAP server?

SLP should not be used automatically.  Doing SLP without a DA is terrible for the network.

> PS - Mike, I've found SLP support to be common in network Printers 
> and also fairly common in small routers (like WiFi/ADSL ones).

None of the consumer routers I've used support SLP out of the box.  I'm sure you could use OpenWRT or one of its forks to do so, but that isn't something most users will do.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair


--Boundary_(ID_mLEJNHNTB6dTQNkxcyH+rA)
Content-type: text/html; CHARSET=US-ASCII
Content-transfer-encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;">Ira,<div><br><div><div>On Jul 23, 2014, at 4:36 PM, =
Ira McDonald &lt;<a =
href=3D"mailto:blueroofmusic@gmail.com">blueroofmusic@gmail.com</a>&gt; =
wrote:</div><blockquote type=3D"cite"><div =
dir=3D"ltr"><div><div><div><div><div><div>...</div></div></div></div></div=
></div></div></blockquote><blockquote type=3D"cite"><div =
dir=3D"ltr"><div>(1) find Printers via DNS-SD / Bonjour (though this =
might wake up<br>the Printers - BAD =
idea).<br></div></div></blockquote><div><br></div>Generally speaking, =
you only wake the printer if you resolve its =
address.</div><div><br><blockquote type=3D"cite"><div =
dir=3D"ltr"><div>...</div><div>Pete and Mike - does this seem like a =
viable middle ground to you,<br></div><div>where the relevant network =
may not have an LDAP =
server?<br></div></div></blockquote><div><br></div>SLP should not be =
used automatically. &nbsp;Doing SLP without a DA is terrible for the =
network.</div><div><br><blockquote type=3D"cite"><div dir=3D"ltr">

<div>PS - Mike, I've found SLP support to be common in network Printers =
<br>and also fairly common in small routers (like WiFi/ADSL =
ones).<br></div></div></blockquote><div><br></div>None of the consumer =
routers I've used support SLP out of the box. &nbsp;I'm sure you could =
use OpenWRT or one of its forks to do so, but that isn't something most =
users will do.</div><div><br></div><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Andale Mono'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-border-horizontal-spacing: 0px; =
-webkit-border-vertical-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Andale Mono'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px;  "><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space; =
">_________________________________________________________<br>Michael =
Sweet, Senior Printing System&nbsp;Engineer, PWG =
Chair</div></span></span>
</div>
<br></div></body></html>=

--Boundary_(ID_mLEJNHNTB6dTQNkxcyH+rA)--
