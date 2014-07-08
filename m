Return-Path: <blueroofmusic@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hmJTivYpsDWOSJogFV0syULgMU4WRXuM6U0AL/jtGno=;
	b=pBYW7LU21f/k9SCBAhRFgUtmMNfqLkhV2BNbu+GwmO8cOPxhW/MXpeNNkDqlQot03H
	MjyVvRyASZgMxmRBZi349C3EbH7PGH0oqHmXjUKH/x2qyi5jKRGcOg5dpN+Yyq/AHSKT
	lCThAMEPjlrINF6Ce3xFBarMlKfabYuUKIl9TpcNxYPkTzuJVE5uNDHiu14v46Gwd9ML
	t1dIgBjinLzCtBH4+53ZT/WozIhs+YoNUm0CPhyCErE89fGBGLF1RZWY+LnT2wPYYZHd
	+uSCp63Q2AnWR+RNXMwejqCBXVLg2CM/QiIm9TcQxZwTKYo8d8TycDGVJZd+HiJE8DfN
	Of9Q==
MIME-Version: 1.0
In-Reply-To: <1404834680.9852.20.camel@pascal.home.net>
References: <1404748055.11220.7.camel@pascal.home.net>
	<CAN40gSuqu1=Y0jq6ZS+hiiJ=T4L0-Ui+JK7cBb93KjWpu9tG+Q@mail.gmail.com>
	<ABD15507-E7F6-484D-974C-BFC0B69CF5B8@apple.com>
	<CAN40gSs5nCeUkxQ6aOcpX--keVKhPMZGVnfnADoxGCyYbPX1Kg@mail.gmail.com>
	<1404834680.9852.20.camel@pascal.home.net>
From: Ira McDonald <blueroofmusic@gmail.com>
Date: Tue, 8 Jul 2014 12:05:15 -0400
Message-ID: <CAN40gSuwY2MArtg1v4MmLruwgosMgtfBy4iT5zodmv5k5CGDng@mail.gmail.com>
Content-Type: multipart/alternative; boundary=485b397dd03d0be40b04fdb0c3fa
Subject: Re: [Printing-architecture] CUPS and color management
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Pascal Obry <pascal@obry.net>, Joseph Simon <jsimon383@gmail.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--485b397dd03d0be40b04fdb0c3fa
Content-Type: text/plain; charset=UTF-8

Hi Joe,

Can you answer Pascal's question below, please?

Cheers,
- Ira



On Tue, Jul 8, 2014 at 11:51 AM, Pascal Obry <pascal@obry.net> wrote:

>
> Hi Ira,
> > Rev. 7225 of 'cups-filters' now replaces "no-color-management" with
> > "cm-calibration" for the bool option. So the following commands should
> > work without the added '=' symbol, and will disable ICC profile
> > management:
> >
> >
> > $ rastertopdf 1 foo bar 1 "cm-calibration" input.ras >>output.pdf
> >
> > $ foomatic-rip -p foo -o cm-calibration
> >
> >
> > Joe Simon
>
> Hum... I'm new to CUPS :) So how does that translate in terms of CUPS
> API?
>
> Is the cm-calibration just a regular option?
>
> So, should I just do:
>
>   num_options = cupsAddOption("cm-calibration",
>                               "false",
>                               num_options, &options);
>
> And pass num_optionss & options to cupsPrintFile()?
>
> Cheers,
> Pascal.
> --
>   Pascal Obry /  Magny Les Hameaux (78)
>
>   The best way to travel is by means of imagination
>
>   http://v2p.fr.eu.org
>   http://www.obry.net
>
>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
>
>

--485b397dd03d0be40b04fdb0c3fa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Joe,<br><br></div>Can you answer Pascal&=
#39;s question below, please?<br><br></div>Cheers,<br></div>- Ira<br><br><d=
iv class=3D"gmail_extra"><br clear=3D"all"><br><div class=3D"gmail_quote">O=
n Tue, Jul 8, 2014 at 11:51 AM, Pascal Obry <span dir=3D"ltr">&lt;<a href=
=3D"mailto:pascal@obry.net" target=3D"_blank">pascal@obry.net</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
Hi Ira,<br>
<div class=3D"">&gt; Rev. 7225 of &#39;cups-filters&#39; now replaces &quot=
;no-color-management&quot; with<br>
&gt; &quot;cm-calibration&quot; for the bool option. So the following comma=
nds should<br>
&gt; work without the added &#39;=3D&#39; symbol, and will disable ICC prof=
ile<br>
&gt; management:<br>
&gt;<br>
&gt;<br>
&gt; $ rastertopdf 1 foo bar 1 &quot;cm-calibration&quot; input.ras &gt;&gt=
;output.pdf<br>
&gt;<br>
&gt; $ foomatic-rip -p foo -o cm-calibration<br>
&gt;<br>
&gt;<br>
&gt; Joe Simon<br>
<br>
</div>Hum... I&#39;m new to CUPS :) So how does that translate in terms of =
CUPS<br>
API?<br>
<br>
Is the cm-calibration just a regular option?<br>
<br>
So, should I just do:<br>
<br>
=C2=A0 num_options =3D cupsAddOption(&quot;cm-calibration&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;false&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 num_options, &amp;options);<br>
<br>
And pass num_optionss &amp; options to cupsPrintFile()?<br>
<br>
Cheers,<br>
Pascal.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)<br>
<br>
=C2=A0 The best way to travel is by means of imagination<br>
<br>
=C2=A0 <a href=3D"http://v2p.fr.eu.org" target=3D"_blank">http://v2p.fr.eu.=
org</a><br>
=C2=A0 <a href=3D"http://www.obry.net" target=3D"_blank">http://www.obry.ne=
t</a><br>
<br>
=C2=A0 gpg --keyserver <a href=3D"http://keys.gnupg.net" target=3D"_blank">=
keys.gnupg.net</a> --recv-key F949BD3B<br>
<br>
</div></div></blockquote></div><br></div></div>

--485b397dd03d0be40b04fdb0c3fa--
