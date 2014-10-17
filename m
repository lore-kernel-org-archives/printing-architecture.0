Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=/hpnG85a3HmCqBeZ/Q3M6se8I7YiSVIzFcj+mV/NXO0=;
	b=ipm5LnybGlidehDbB3ReGP0kIRPQOyzRzhOTndwA0fSEDR0ioHECgcIxS9LegIVaEM
	onaqg/1hxlHnjLD3q4GusV5t6ZMaJ9LqpGyzMFEh/3nm/WGM6QkrchEvkVcoYnfYhjH9
	a0crK7Mdwl+tNobSwkECXxXu72z4S8FgiX0xblJ7894BWSWNVW/2+uMGRLJXcHNcu3Bk
	8y8a8jA35HTQvRrCkRfT1I3icX2SgKpVbLHgNkmaTLwiQyNLE56R0XiA2o9/KPy3L+lj
	is2AnaBTkqB3WOyULGUKrjrYVaZmruWXNMM/B//C0Hvdxg1PHlNLDsdBCSAm5Nk5lBe1
	z8Kg==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <544031BA.502@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
	<CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
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
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Fri, 17 Oct 2014 12:22:56 -0400
Message-ID: <CA+3RNfic7_2J2DZ9TKZWKAK_CEGQfiTQ7k1sMFoL23YCsyKHzQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e014950104ed5b50505a0c860
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
To: Tobias Hoffmann <lprint-list@thax.hardliners.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

--089e014950104ed5b50505a0c860
Content-Type: text/plain; charset=UTF-8

Works beautifully, thank you. And thanks for digging up the exact rules of
QTY and COPIES application.


2014-10-16 16:59 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

> On 16/10/14 18:52, Alex Korobkin wrote:
>
>> Turns out, there should be one additional line for collate to work with
>> multiple copies and multiple pages:
>> PJL SET QTY=X
>>
>> Could you please modify your patch to generate two lines at once: PJL SET
>> COPIES=X and PJL SET QTY=X?
>>
> The attached patch does that. It's based on BZR rev. 7299, which already
> includes the SET COPIES modifications (Till also posted the corresponding
> .patch, earlier).
>
> I did some research, though... and it seem that (only) "SET COPIES" should
> be used for non-collated and only(!) "SET QTY" should be used for collated
> duplicates.
> Please do try whether just SET QTY is enough:
>           if (param.deviceCollate) {
>             snprintf(ppd->jcl_ps, size, "@PJL SET QTY=%d\n%s",
>                    param.deviceCopies, attr->value);
>          } else {
>          [...]
>
>   Tobias
>
>
>
>


-- 
-Alex

--089e014950104ed5b50505a0c860
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Works beautifully, thank you. And thanks for digging up th=
e exact rules of QTY and COPIES application.=C2=A0<div><br></div></div><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-16 16:59 GMT-=
04:00 Tobias Hoffmann <span dir=3D"ltr">&lt;<a href=3D"mailto:lprint-list@t=
hax.hardliners.org" target=3D"_blank">lprint-list@thax.hardliners.org</a>&g=
t;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 16/10/14 1=
8:52, Alex Korobkin wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Turns out, there should be one additional line for collate to work with mul=
tiple copies and multiple pages:<br>
PJL SET QTY=3DX<br>
<br>
Could you please modify your patch to generate two lines at once: PJL SET C=
OPIES=3DX and PJL SET QTY=3DX?<br>
</blockquote></span>
The attached patch does that. It&#39;s based on BZR rev. 7299, which alread=
y includes the SET COPIES modifications (Till also posted the corresponding=
 .patch, earlier).<br>
<br>
I did some research, though... and it seem that (only) &quot;SET COPIES&quo=
t; should be used for non-collated and only(!) &quot;SET QTY&quot; should b=
e used for collated duplicates.<br>
Please do try whether just SET QTY is enough:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (param.deviceCollate) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 snprintf(ppd-&gt;jcl_ps, size, &q=
uot;@PJL SET QTY=3D%d\n%s&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0param.=
deviceCopies, attr-&gt;value);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<span class=3D"HOEnZb"><font color=
=3D"#888888"><br>
<br>
=C2=A0 Tobias<br>
<br>
<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr">-Alex</div>
</div>

--089e014950104ed5b50505a0c860--
