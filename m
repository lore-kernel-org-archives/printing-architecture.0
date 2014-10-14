Return-Path: <korobkin@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qajzfert9s3FXM78McOL5GBXS9GKCZeZ/hC9abDJrY0=;
	b=PhCxvWX0A9f/TEpkzewYQcFmRy2pEPUE8ntavVZcvUlfphZwiwamYfAwvOWcZK/OCd
	+sCZfOClDwSxpAXS0DVigK3ZmtgB4C58HPWVMknyTLPm20yPrfweGkR0n0Q/c7VzZVpa
	dwnYTZ9P8IDoNzpRGvHhoyUKm59ESHQWOW92397v4Era1SU+uMx10tLK31nc7XkjKBOT
	FpOnkFaB4g0FtYTb828r4jhj3pMo4YrQdJJaUS3iN9x2bOpyC7u9bZ7RILE/KLkmHnBl
	TWP53XRAffsyZpMhlSrFLjULNIQnHEFwUUmLmY0RmKPGr/LYEF0Azvh7iPjve4/oG4YU
	lhBQ==
MIME-Version: 1.0
Sender: korobkin@gmail.com
In-Reply-To: <5438486E.9050201@gmail.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
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
From: Alex Korobkin <korobkin+op@gmail.com>
Date: Tue, 14 Oct 2014 15:17:55 -0400
Message-ID: <CA+3RNfgZtn64UZZEX5uYRK=CyDEoS3Ly+gvkQCL20TMys6XKnA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013a15d085d42b050566e0df
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

--089e013a15d085d42b050566e0df
Content-Type: text/plain; charset=UTF-8

Till,

2014-10-10 16:58 GMT-04:00 Till Kamppeter <till.kamppeter@gmail.com>:

> One must check whether modern GNOME/GTK/KDE/Qt/LibreOffice dialogs
> support the PPD extensions for numerical options,if so and if it is
> guaranteed that the print queue is not accessed from other platforms,
>

This PPD will be used by Cloud Print, command line, and other
non-Gnome/non-KDE apps, so having a custom Copies dialog is not the best
idea.

Shouldn't pdftopdf just insert PJL SET COPIES=X without any related code in
PPD? PJL SET COPIES seems to be a standard PJL command.

We should tell print dialog designers that if the PPD has an option
> named "Copies" to not show it but to send the selection of the normal
> copiews facility of the dialog as the choice for this option.



-- 
-Alex

--089e013a15d085d42b050566e0df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Till=
,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">2014=
-10-10 16:58 GMT-04:00 Till Kamppeter <span dir=3D"ltr">&lt;<a href=3D"mail=
to:till.kamppeter@gmail.com" target=3D"_blank">till.kamppeter@gmail.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex">One must check whether modern GNOME/GTK/KD=
E/Qt/LibreOffice dialogs<br>
support the PPD extensions for numerical options,if so and if it is<br>
guaranteed that the print queue is not accessed from other platforms,<br></=
blockquote><div><br></div><div>This PPD will be used by Cloud Print, comman=
d line, and other non-Gnome/non-KDE apps, so having a custom Copies dialog =
is not the best idea.=C2=A0</div><div><br></div><div>Shouldn&#39;t pdftopdf=
 just insert PJL SET COPIES=3DX without any related code in PPD?=C2=A0PJL S=
ET COPIES seems to be a standard PJL command.=C2=A0</div><div><br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex">We should tell print dialog designers that if the PPD has an =
option<br>
named &quot;Copies&quot; to not show it but to send the selection of the no=
rmal<br>
copiews facility of the dialog as the choice for this option.</blockquote><=
div><br></div></div><div><br></div>-- <br><div dir=3D"ltr">-Alex</div>
</div></div>

--089e013a15d085d42b050566e0df--
