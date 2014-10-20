Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=k5MP+Y2F6CkXCQZYoNQhTN+Bzf7SYiySIUs8eOW0VK4=;
	b=e3YnDYxCWaIUYkxVynaWXiDXTu9TsAiYCSPGw1aRQChyJFYiN0ghkalP/U9tGxtVJI
	66nx/VkMI2NrWnTmlCvFIWbjREGihFguIkndDH/1P4ffqGMKPUMm+e8Drmcq5kkM0MBF
	3kqmXNRPe7J7S5TcjWZamcHpZ38hWy5hBKBGMs6HDdAvXk4T0x9BYgYCRigD/wQfrx7t
	7gyw57oqPWQtPDeYQ0i76QgfOvVGyENC3VS8R+snsfRCLzs6Wrk26LqKXeLA0YM11Oea
	5t2/mm0cefO/uGiJO4bD6GxsZdxMHEQMkgm2U0ILXwrQL2Nw9Bkvy4Zj2XO4If997t+C
	LwTw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <544570E2.9060405@gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
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
	<CA+3RNfiGm6R0SL_VsBoLsocfL-AXQrbxw1zR98HWtBcBFygxGQ@mail.gmail.com>
	<5445384E.6030405@gmail.com>
	<CA+3RNfgLSifDG6sW1x=1yL=hveJ_=mrkVz6Qmf-VdXbkTtXCTg@mail.gmail.com>
	<544570E2.9060405@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 20 Oct 2014 17:18:45 -0400
Message-ID: <CA+3RNfj4r36Rn4=oJtRGPhHggWgT=qvEN8BpdfBUrzkX0SB5rQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013a15d0ce86480505e1439d
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

--089e013a15d0ce86480505e1439d
Content-Type: text/plain; charset=UTF-8

Thank you Till, it seems to be working.

2014-10-20 16:30 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:

> imagetopdf pushed as rev. 7301 to the BZR (patch also attached). Please
> test.
>
>    Till
>
> On 10/20/2014 07:28 PM, Alex Korobkin wrote:
> > Yes, pdftopdf works nicely!
> >
> > 2014-10-20 12:29 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com
> > <mailto:till.kamppeter@gmail.com>>:
> >
> >     On 10/20/2014 06:23 PM, Alex Korobkin wrote:
> >     > Thanks Till.
> >     > Will the same patch be added to imagetopdf?
> >     >
> >
> >     If this is all working for you now I will also add it to imagetopdf.
> >
> >        Till
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

--089e013a15d0ce86480505e1439d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Till, it seems to be working.=C2=A0</div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-20 16:30 GMT-04:=
00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter@gm=
ail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span>:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">imagetopdf pushed as rev. 7301 to the BZR (patch=
 also attached). Please<br>
test.<br>
<br>
=C2=A0 =C2=A0Till<br>
<span class=3D""><br>
On 10/20/2014 07:28 PM, Alex Korobkin wrote:<br>
&gt; Yes, pdftopdf works nicely!<br>
&gt;<br>
&gt; 2014-10-20 12:29 GMT-04:00 Till Kamppeter &lt;<a href=3D"mailto:till.k=
amppeter@gmail.com">till.kamppeter@gmail.com</a><br>
</span>&gt; &lt;mailto:<a href=3D"mailto:till.kamppeter@gmail.com">till.kam=
ppeter@gmail.com</a>&gt;&gt;:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 10/20/2014 06:23 PM, Alex Korobkin wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Thanks Till.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Will the same patch be added to imagetopdf?<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0If this is all working for you now I will also add =
it to imagetopdf.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 Till<br>
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

--089e013a15d0ce86480505e1439d--
