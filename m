Return-Path: <chunlinyao@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=lFhdTkOKrAyJAE1y+ht5J7XxWYeIR1Y1S9pq6M/vqdI=;
	b=cBgcQftdAsixUT6ev1MSoxKIgm42RRs13BLEjHe2b19V0FbTukHKflpPvxmHhviT6o
	ugTxBJdO/wao11HLqDMvmGl0XDHotfS4RUQQ4E8rpE8WElPYlcz/TXo1ybYzBSygDzhR
	+GLynwtf2t//HgeY/hRYjURiv5EkLhTp4M6alwJHMxXfkoAA5XHVLGgFx4aEYzH/+J2Y
	P6t6SF2H1q/ZUXZPtkThk7ARryjOMNUXjvzcB/J5+EhRDq1ZL3rF9EeJAfA/j6VZcCMe
	gPg7NmcOjNl5/d/8AI22MBUarr+4/AEoCA887+M+AUcKf+pfXqANrvEyCc7ym90u961B
	iqlA==
Content-Type: text/plain; charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: YaoCL <chunlinyao@gmail.com>
In-Reply-To: <m3vaz5oqpl.fsf@carbon.jhcloos.org>
Date: Sat, 13 Aug 2016 07:27:37 +0800
Content-Transfer-Encoding: quoted-printable
Message-Id: <882B54A8-FB8D-46BF-AB10-364BBBC487BE@gmail.com>
References: <F6B3A5F7-EFB6-4A0B-9927-C9FEB97D05EA@gmail.com>
	<ba613dc1-0c9e-8859-d77c-a8bcd0f173f8@gmail.com>
	<m3vaz5oqpl.fsf@carbon.jhcloos.org>
Subject: Re: [Printing-architecture] better support for 203dpi label printer
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


> =E5=9C=A8 2016=E5=B9=B48=E6=9C=8813=E6=97=A5=EF=BC=8C=E4=B8=8A=E5=8D=881=
:13=EF=BC=8CJames Cloos <cloos@jhcloos.com> =E5=86=99=E9=81=93=EF=BC=9A
>=20
> Adding 0 .setfilladjust to a postscript job should be done just like =
how
> the ps2ps filter adds snippets from ppd files.
>=20
> For rendering pdf w/ gs, I'd expect:
>=20
>    -c '0 .setfilladjust'
>=20
> is required.  Yes?

Yes, append this to gs command line is required. I tested with this =
method.
I created a pdf with 0.125mm width parallel lines, render in 203.2 dpi, =
with `-c =E2=80=980 .setfilladjust=E2=80=99`
It generate perfect result. 0.125mm is dot size in 203.2 dpi.=20

=E2=80=94
YaoCL

