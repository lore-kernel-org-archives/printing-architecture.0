Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=3P872dUpwyFWEG7+9B3wQd3M3OxwjNy8+vihqRM31bE=;
	b=vXm/b7oAfUb1wSBpv9lunBqe2L8Z08t2L57pA/53Od/6Oului+vhSA/JjykDgKwaTA
	4eO3RnahiK3N65Cque43qGFbPWFCHnFFsp7ZU8KKIHVfy+rW4GvWDVZDC8MvqEyitgTt
	qZNvwnpknC7gnSUiIGKS7HdgcRIrOEf5xLi5IdjJZanxW3sfQb6X+sfL+wu3s6Y9LeTg
	3q+xfz206o5ZT3mVSkiUVFH3e1lhTtpUrsXeg1abuOuDmph0aDcXFHPWD6rRA4gMpSkO
	gQ8I7m1zFoqTKeQBYFbMK8YMvmHYUHPZP3aqixBaKYsY2nbhcUiASjgixiZN7PugMb/0
	wbmg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <5441466D.8070003@gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<54344707.4080604@gmail.com>
	<CA+3RNfj8JFdQHekjs0gQ_z8_dxPFk-qL-dGzzJtp8ACBB0KhHg@mail.gmail.com>
	<54345EF9.5010405@thax.hardliners.org> <54350A8E.1010406@gmail.com>
	<54354CDA.50401@thax.hardliners.org>
	<CA+3RNfjSMOmxf89XPW2vMf2SBXo7aJE+CREG99ACd0Kz0LQ3tQ@mail.gmail.com>
	<5435A44F.7080504@thax.hardliners.org>
	<CA+3RNfiAna118VGc=zLoRsyNTc5oGcynhMNy3UJRG7dNrHmWWw@mail.gmail.com>
	<54383C34.6020108@thax.hardliners.org> <5438486E.9050201@gmail.com>
	<CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
	<543D9108.6050307@thax.hardliners.org>
	<543E5168.9010108@thax.hardliners.org>
	<543E72C7.3090603@gmail.com> <543E9E08.7080307@gmail.com>
	<543ECACE.7080108@thax.hardliners.org>
	<CA+3RNfiZRC5yh_shoCvKOCtz54kTXhL3zL8XCfHXMOXECx6qqw@mail.gmail.com>
	<544031BA.502@thax.hardliners.org>
	<CA+3RNfic7_2J2DZ9TKZWKAK_CEGQfiTQ7k1sMFoL23YCsyKHzQ@mail.gmail.com>
	<5441466D.8070003@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 20 Oct 2014 12:23:36 -0400
Message-ID: <CA+3RNfiGm6R0SL_VsBoLsocfL-AXQrbxw1zR98HWtBcBFygxGQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013a15d03a704e0505dd247f
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

--089e013a15d03a704e0505dd247f
Content-Type: text/plain; charset=UTF-8

Thanks Till.
Will the same patch be added to imagetopdf?

2014-10-17 12:40 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:

> Thank you very much.
>
> Pushed the attached additional patch to the BZR repo (rev. 7300).
>
>    Till
>
> On 10/17/2014 06:22 PM, Alex Korobkin wrote:
> > Works beautifully, thank you. And thanks for digging up the exact rules
> > of QTY and COPIES application.
> >
> >
> > 2014-10-16 16:59 GMT-04:00 Tobias Hoffmann
> > <lprint-list@thax.hardliners.org <mailto:lprint-list@thax.hardliners.org
> >>:
> >
> >     On 16/10/14 18:52, Alex Korobkin wrote:
> >
> >         Turns out, there should be one additional line for collate to
> >         work with multiple copies and multiple pages:
> >         PJL SET QTY=X
> >
> >         Could you please modify your patch to generate two lines at
> >         once: PJL SET COPIES=X and PJL SET QTY=X?
> >
> >     The attached patch does that. It's based on BZR rev. 7299, which
> >     already includes the SET COPIES modifications (Till also posted the
> >     corresponding .patch, earlier).
> >
> >     I did some research, though... and it seem that (only) "SET COPIES"
> >     should be used for non-collated and only(!) "SET QTY" should be used
> >     for collated duplicates.
> >     Please do try whether just SET QTY is enough:
> >               if (param.deviceCollate) {
> >                 snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
> >                        param.deviceCopies, attr->value);
> >              } else {
> >              [...]
> >
> >       Tobias
> >
> >
> >
> >
> >
> >
> > --
> > -Alex
>
>


-- 
-Alex

--089e013a15d03a704e0505dd247f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Till.=C2=A0<div>Will the same patch be added to ima=
getopdf?</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">2014-10-17 12:40 GMT-04:00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=
=3D"mailto:till.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail=
.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Thank you very much.=
<br>
<br>
Pushed the attached additional patch to the BZR repo (rev. 7300).<br>
<br>
=C2=A0 =C2=A0Till<br>
<span class=3D""><br>
On 10/17/2014 06:22 PM, Alex Korobkin wrote:<br>
&gt; Works beautifully, thank you. And thanks for digging up the exact rule=
s<br>
&gt; of QTY and COPIES application.<br>
&gt;<br>
&gt;<br>
&gt; 2014-10-16 16:59 GMT-04:00 Tobias Hoffmann<br>
</span>&gt; &lt;<a href=3D"mailto:lprint-list@thax.hardliners.org">lprint-l=
ist@thax.hardliners.org</a> &lt;mailto:<a href=3D"mailto:lprint-list@thax.h=
ardliners.org">lprint-list@thax.hardliners.org</a>&gt;&gt;:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 16/10/14 18:52, Alex Korobkin wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Turns out, there should be one additi=
onal line for collate to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0work with multiple copies and multipl=
e pages:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PJL SET QTY=3DX<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Could you please modify your patch to=
 generate two lines at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0once: PJL SET COPIES=3DX and PJL SET =
QTY=3DX?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0The attached patch does that. It&#39;s based on BZR=
 rev. 7299, which<br>
&gt;=C2=A0 =C2=A0 =C2=A0already includes the SET COPIES modifications (Till=
 also posted the<br>
&gt;=C2=A0 =C2=A0 =C2=A0corresponding .patch, earlier).<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I did some research, though... and it seem that (on=
ly) &quot;SET COPIES&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0should be used for non-collated and only(!) &quot;S=
ET QTY&quot; should be used<br>
&gt;=C2=A0 =C2=A0 =C2=A0for collated duplicates.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Please do try whether just SET QTY is enough:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (param.device=
Collate) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0snprintf(=
ppd-&gt;jcl_ps, size, &quot;@PJL SET QTY=3D%d\n%s&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 param.deviceCopies, attr-&gt;value);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [...]<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Tobias<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; -Alex<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">-Alex</div>
</div>

--089e013a15d03a704e0505dd247f--
