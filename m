Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=e5Grv14roxj42v19udkFQaS9d0LgXbZV2Uuc1xF67IY=;
	b=epc7av4Mb6kl2+IxwIBUnMhy+1rkpq2li5G0k4RR0qCt3VASXsgrGd225auVzhKogA
	V3unrVbsC5gt1Q72ABPoH62LJJuHlvoIBMLS0mfw3exULAQDTMq4HyJTyHfSGxuhw6Fp
	Ot58cn7YfcTt6eBT1HkJRTKCgoBP2trGzP0WdgKr2Ck6m8OHdmU06XKti9hAQAQeTnrw
	Bb2WnMXEu2xzmBG9FIVoR2oY370OPXeVdMFDP5DgtplNr+/IkM84HnNcKrs6W9qz9Zfi
	s7qQKCw86ZJYE6djc8RzJupOofKSNyW1ODMaXOkvxSB1uMW1zp1BvdniCvf1DMuoJ+fY
	5uTw==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <5432910A.4030500@gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<5432910A.4030500@gmail.com>
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Mon, 6 Oct 2014 10:06:42 -0400
Message-ID: <CA+3RNfj6twoEN9y0k+dfxeQ+14jVyE_Tz9Fe5fdQSmOKcbg=_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=20cf300e5071d5816b0504c1983b
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

--20cf300e5071d5816b0504c1983b
Content-Type: text/plain; charset=UTF-8

Hi Till,

You're right, JCLToPDFInterpreter is already set in the example PPDs
shipped with cups-filters [1].
But what needs to be added to those PPDs to have printers make copies in
hardware instead of cupsManualCopies?
There seem to be some code for it in pdftopdf [2], but it is unclear what
exactly needs to be in the PPD for it to work.

[1]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd
[2]
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35


2014-10-06 8:54 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:

> On 10/04/2014 09:48 PM, Michael Sweet wrote:
> > Alex,
> >
> > You'll have to confirm with Till, but AFAIK the pdftopdf filter doesn't
> support PJL options.
> >
>
> pdftopdf adds PJL if the printer is a PDF printer. The printer is
> considered a PDF printer if there is a "*JCLToPDFInterpreter:" line in
> the PPD file.
>
>    Till
>
>
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>



-- 
-Alex

--20cf300e5071d5816b0504c1983b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Till,=C2=A0<div><br></div><div>You&#39;re right,=C2=A0J=
CLToPDFInterpreter is already set in the example PPDs shipped with cups-fil=
ters [1].=C2=A0</div><div>But what needs to be added to those PPDs to have =
printers make copies in hardware instead of cupsManualCopies?=C2=A0</div><d=
iv>There seem to be some code for it in pdftopdf [2], but it is unclear wha=
t exactly needs to be in the PPD for it to work.=C2=A0</div><div><br></div>=
<div>[1]=C2=A0<a href=3D"http://bzr.linuxfoundation.org/loggerhead/openprin=
ting/cups-filters/annotate/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd">=
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotat=
e/head:/ppd/HP-Color_LaserJet_CM3530_MFP-PDF.ppd</a></div><div><div dir=3D"=
ltr" style=3D"font-family:arial,sans-serif;font-size:13px">[2]=C2=A0<a href=
=3D"http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/ann=
otate/head:/filter/pdftopdf/pdftopdf_jcl.cc#L35" target=3D"_blank">http://b=
zr.linuxfoundation.org/loggerhead/openprinting/cups-filters/annotate/head:/=
filter/pdftopdf/pdftopdf_jcl.cc#L35</a></div></div><div><br></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">2014-10-06 8:54 GMT-=
04:00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D"mailto:till.kamppeter=
@gmail.com" target=3D"_blank">till.kamppeter@gmail.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><span class=3D"">On 10/04/2014 09:48 PM, Mich=
ael Sweet wrote:<br>
&gt; Alex,<br>
&gt;<br>
&gt; You&#39;ll have to confirm with Till, but AFAIK the pdftopdf filter do=
esn&#39;t support PJL options.<br>
&gt;<br>
<br>
</span>pdftopdf adds PJL if the printer is a PDF printer. The printer is<br=
>
considered a PDF printer if there is a &quot;*JCLToPDFInterpreter:&quot; li=
ne in<br>
the PPD file.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
=C2=A0 =C2=A0Till<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
_______________________________________________<br>
Printing-architecture mailing list<br>
<a href=3D"mailto:Printing-architecture@lists.linux-foundation.org">Printin=
g-architecture@lists.linux-foundation.org</a><br>
<a href=3D"https://lists.linuxfoundation.org/mailman/listinfo/printing-arch=
itecture" target=3D"_blank">https://lists.linuxfoundation.org/mailman/listi=
nfo/printing-architecture</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr">-Alex</div>
</div>

--20cf300e5071d5816b0504c1983b--
