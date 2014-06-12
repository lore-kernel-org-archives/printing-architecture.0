Return-Path: <jsimon383@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5Rxm9THsK3b26rPMpjcr3EfU9iadRM+P8W4APTz5J50=;
	b=JrWzXrzIL+At53nNKNsK2N84u6NkCo010vw97HzdP1C4y7xgVZdup77iHJcBHvTwGU
	3wxhVyPNzh2EdPEi5fq7phdrUkHDocc+srYcdEVdXB6HJ0cZqfaKdJWtJhAi4FcVwHgJ
	ZRZm0O+IYscMwN4OxgCu0mIegvAe2lil5lCGIlpfxJ6vt8s3DkTliDqg+HutLM2h0rvc
	RxmVJkBQKZWjZekC3pxcQDIpuybDbIg+aZGgGRHXLJwCrDFAWZ0A7+f2B426bkAwfpxs
	99EsLO5rSVBwKDxjGfmWQsx5gJbOXGMjIsHwmafSZFqvW5x8yBaMPBF15qiRl0xyZbZH
	Ahkw==
MIME-Version: 1.0
In-Reply-To: <53997D3F.2060803@gmail.com>
References: <53997D3F.2060803@gmail.com>
Date: Thu, 12 Jun 2014 11:15:04 -0700
Message-ID: <CAERbVPTANK7nmPN0MBZiJQ-cAVZwL2-xQsZLhTKNtR+fiwpRGQ@mail.gmail.com>
From: Joseph Simon <jsimon383@gmail.com>
Content-Type: multipart/alternative; boundary=047d7bea31744787f504fba78a0e
Subject: Re: [Printing-architecture] "no-color-management" not a good idea
 for a name of a boolean CUPS option
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

--047d7bea31744787f504fba78a0e
Content-Type: text/plain; charset=UTF-8

Hi Till,

I agree on the name change for the CUPs bool option.
The name "cm-calibration" seems to make the most sense, and I will make the
change in the filters.

Joe Simon
On Jun 12, 2014 3:12 AM, "Till Kamppeter" <till.kamppeter@gmail.com> wrote:

> Hi,
>
> I have encountered a problem with the "no-color-management" and
> cupsGetOption() not be able to recognize that the user has supplied "-o
> no-color-management" on the command line.
>
> If you have an arbitrary boolean option in CUPS filters or backends,
> like "xxx" the variants
>
>    -o xxx
>    -o xxx=1
>    -o xxx=on
>    -o xxx=yes
>    -o xxx=true
>
> are supposed to let it be interpreted as set and
>
>    -o noxxx
>    -o xxx=0
>    -o xxx=off
>    -o xxx=no
>    -o xxx=false
>
> let it be interpreted as not set. To support the "-o noxxx" case
> cupsGetOption() seems to split a "no" in the beginning of the name off
> if there is no '='. Therefore "no-color-management=" works but
> "no-color-management" not. The latter is probably interpreted as
> "-color-management=false".
>
> Mike, am I right with this?
>
> So I suggest something like "calibration-mode", "cm-calibration-mode",
> "cm-calibration", or similar.
>
> WDYT?
>
>    Till
>

--047d7bea31744787f504fba78a0e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Till,</p>
<p dir=3D"ltr">I agree on the name change for the CUPs bool option.<br>
The name &quot;cm-calibration&quot; seems to make the most sense, and I wil=
l make the change in the filters.</p>
<p dir=3D"ltr">Joe Simon</p>
<div class=3D"gmail_quote">On Jun 12, 2014 3:12 AM, &quot;Till Kamppeter&qu=
ot; &lt;<a href=3D"mailto:till.kamppeter@gmail.com">till.kamppeter@gmail.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I have encountered a problem with the &quot;no-color-management&quot; and<b=
r>
cupsGetOption() not be able to recognize that the user has supplied &quot;-=
o<br>
no-color-management&quot; on the command line.<br>
<br>
If you have an arbitrary boolean option in CUPS filters or backends,<br>
like &quot;xxx&quot; the variants<br>
<br>
=C2=A0 =C2=A0-o xxx<br>
=C2=A0 =C2=A0-o xxx=3D1<br>
=C2=A0 =C2=A0-o xxx=3Don<br>
=C2=A0 =C2=A0-o xxx=3Dyes<br>
=C2=A0 =C2=A0-o xxx=3Dtrue<br>
<br>
are supposed to let it be interpreted as set and<br>
<br>
=C2=A0 =C2=A0-o noxxx<br>
=C2=A0 =C2=A0-o xxx=3D0<br>
=C2=A0 =C2=A0-o xxx=3Doff<br>
=C2=A0 =C2=A0-o xxx=3Dno<br>
=C2=A0 =C2=A0-o xxx=3Dfalse<br>
<br>
let it be interpreted as not set. To support the &quot;-o noxxx&quot; case<=
br>
cupsGetOption() seems to split a &quot;no&quot; in the beginning of the nam=
e off<br>
if there is no &#39;=3D&#39;. Therefore &quot;no-color-management=3D&quot; =
works but<br>
&quot;no-color-management&quot; not. The latter is probably interpreted as<=
br>
&quot;-color-management=3Dfalse&quot;.<br>
<br>
Mike, am I right with this?<br>
<br>
So I suggest something like &quot;calibration-mode&quot;, &quot;cm-calibrat=
ion-mode&quot;,<br>
&quot;cm-calibration&quot;, or similar.<br>
<br>
WDYT?<br>
<br>
=C2=A0 =C2=A0Till<br>
</blockquote></div>

--047d7bea31744787f504fba78a0e--
