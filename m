Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=+zgVdxWP+wqimTjmV3FZjXewrPazC62QTH92Nc6Srzk=;
	b=KRSgMaLzhrm43kMsETfHRIjmdoQ9F/eLIlRDi9bQObaCzuxFvSv7G7eRLV8G1GWQDQ
	9Wp49R4ylQWAHhruEBgdgvvzbv1jRHZ0+d3qQCD0YwRqzlpD81a6vbfD9puu2EKReOY6
	5hU1kwWYwUTK59PIwpreLbEXcNxZyIKI579lrPjZ2KhAtbjW9Kbj1L4X7PAx/7H2KDob
	OfAe9l3t/iQmpt0g0+qbRTpiZ4rhNq9+DjuiXmfyU7RBYVgFfgqRhvdD8Hp01GAD2Kpl
	O5iUsETszRu6e7pEVuS5AkTbysB4fWH1qt+ZC0/MWlCh5zplUCh0qFCeGcYq30iMmJvm
	dKhw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <543ECACE.7080108@thax.hardliners.org>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
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
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Thu, 16 Oct 2014 12:52:47 -0400
Message-ID: <CA+3RNfiZRC5yh_shoCvKOCtz54kTXhL3zL8XCfHXMOXECx6qqw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cde843717b605058d1513
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

--001a113cde843717b605058d1513
Content-Type: text/plain; charset=UTF-8

Tobias,

Thanks for your attention to details. I was testing your patch this morning
and found out one additional thing.
If multiple pages are printed, they will come out non-collated. However,
when collate is on, just one copy is printed.

Turns out, there should be one additional line for collate to work with
multiple copies and multiple pages:
PJL SET QTY=X

Could you please modify your patch to generate two lines at once: PJL SET
COPIES=X and PJL SET QTY=X?

2014-10-15 15:28 GMT-04:00 Tobias Hoffmann <lprint-list@thax.hardliners.org>
:

> On 15/10/14 18:17, Till Kamppeter wrote:
>
>> And anyone reading this, please tell whether the patch is OK or can cause
>> problems in certain situations.
>>
>
> One more thing I forgot:
> In case imagetopdf is called as the last filter, and pdftopdf is not used,
> it will have to be patched, too.
> (imagetops containes explicit code for hardware copies in PS, because it
> could be the last filter -- not sure if that's still the case for PDF).
>
> And a minor correction to my earlier mail:
>
>> 2) will only insert @PCL SET COPIES, when jcl_begin uses the known PJL
>> begin sequence (copied from what pstops does wrt. to PCL).
>>
> To be more precise: Copied from cups/emit.c (which is what pstops uses).
>
>   Tobias
>
>
>


-- 
-Alex

--001a113cde843717b605058d1513
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tobias,=C2=A0<div><br></div><div>Thanks for your attention=
 to details. I was testing your patch this morning and found out one additi=
onal thing.=C2=A0</div><div>If multiple pages are printed, they will come o=
ut non-collated. However, when collate is on, just one copy is printed.=C2=
=A0</div><div><br></div><div>Turns out, there should be one additional line=
 for collate to work with multiple copies and multiple pages:</div><div>PJL=
 SET QTY=3DX</div><div><br></div><div>Could you please modify your patch to=
 generate two lines at once: PJL SET COPIES=3DX and PJL SET QTY=3DX?</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-15 1=
5:28 GMT-04:00 Tobias Hoffmann <span dir=3D"ltr">&lt;<a href=3D"mailto:lpri=
nt-list@thax.hardliners.org" target=3D"_blank">lprint-list@thax.hardliners.=
org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 1=
5/10/14 18:17, Till Kamppeter wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
And anyone reading this, please tell whether the patch is OK or can cause p=
roblems in certain situations.<br>
</blockquote>
<br></span>
One more thing I forgot:<br>
In case imagetopdf is called as the last filter, and pdftopdf is not used, =
it will have to be patched, too.<br>
(imagetops containes explicit code for hardware copies in PS, because it co=
uld be the last filter -- not sure if that&#39;s still the case for PDF).<b=
r>
<br>
And a minor correction to my earlier mail:<span class=3D""><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
2) will only insert @PCL SET COPIES, when jcl_begin uses the known PJL begi=
n sequence (copied from what pstops does wrt. to PCL). <br>
</blockquote></span>
To be more precise: Copied from cups/emit.c (which is what pstops uses).<sp=
an class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
=C2=A0 Tobias<br>
<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr">-Alex</div>
</div>

--001a113cde843717b605058d1513--
