Return-Path: <pascal@obry.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=obry-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=FW62zXquTRGd6CmlThoHWmEkRje0GoNobrwqvqbAUHw=;
	b=s5NfnthSlFUdkNJMrJdFUEwm4gG+YUJgv6khbqy/cfWgd1Qr9IaBECfnSVO/kz8qo5
	IUHB63gRUeXY24pQlk8RbtDIm28AZu7ExmDh9vM3bw7bLrxXGKwpvqp2Ze+fo2IfhoEB
	QvK9lJtKzu2kJFplZ17ZrHyjVkIxNT9/tOFMFelYCeq1qu7C7/Vx4jxYztqGHSQ84I4u
	rfIYc/wlknc5M2aL2yj7wGpYzVKjrB56BWmdVXls3Du+XhTPnI5uRx55OIQ7twv6PnoV
	rBQpnb+rIPQpDlVNMZRzptwhVs05vyYLsZiAXAEbVnhzjx4SLdR7a9UYst9cp1KHtUu0
	z6ZQ==
MIME-Version: 1.0
References: <CA+9ZNifwCYYZn0Fe2JNBSRenfb8iK6q_E_Vigh6rFgWy2viyXQ@mail.gmail.com>
In-Reply-To: <CA+9ZNifwCYYZn0Fe2JNBSRenfb8iK6q_E_Vigh6rFgWy2viyXQ@mail.gmail.com>
From: Pascal Obry <pascal@obry.net>
Date: Wed, 28 Nov 2018 19:25:15 +0100
Message-ID: <CA+9ZNidZz3EaiQ-FSVyHKeNzoJwavEmYU-LPxfwE_khXzrm43g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b1771d057bbdb066"
Subject: Re: [Printing-architecture] human readable media-type
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

--000000000000b1771d057bbdb066
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Still looking for an answer to this or hint to be on the right track. With
PPD API being deprecated I just can't imagine that there is no solution to
this?

Thanks!


Le jeu. 22 nov. 2018 =C3=A0 14:19, Pascal Obry <pascal@obry.net> a =C3=A9cr=
it :

> Hello !
>
> I have contacted you about this issue on year ago! Made no progress and
> waited for a new CUPS version to be out. With 2.2.9 on Debian the PPD API
> is deprecated for good! So I'm back on this issue.
>
> With the following attached program I get:
>
> $ gcc -g -o cupsmed cupsmed.c -lcups && ./cupsmed Epson3880
> **** PRINTER [Epson3880]    URI:[ipp://localhost/printers/Epson3880]
> count: 20
> localized option: media-type
>
>    format:           stationery      stationery
>    format:             postcard      postcard
>    format:  photographic-glossy      photographic-glossy
>    format:         transparency      transparency
>    format:             envelope      envelope
>    format:            back-film      back-film
>    format:   photographic-matte      photographic-matte
>    format:          matte-heavy      matte-heavy
>    format:    stationery-inkjet      stationery-inkjet
>    format:    stationery-coated      stationery-coated
>    format:                photo      photo
>    format:  photographic-glossy      photographic-glossy
>    format:            semigloss      semigloss
>    format:               luster      luster
>    format:       archival-matte      archival-matte
>    format:  water-color-radiant      water-color-radiant
>    format:  photographic-glossy      photographic-glossy
>    format:               ilford      ilford
>    format:           color-life      color-life
>    format:                other      other
>
> The first column if the media-type reported by ippGetString(attr, i, NULL=
)
> and the second column is a try to get the human-readable localized value
> using cupsLocalizeDestValue(). As you can see, in both case I have the sa=
me
> value.
>
> On my Debian box using CUPS local server (http://localhost:631) I get 20
> media-type too, but the names are human readable:
>
> - Plain Paper
> - Postcard
> - Glossy Film
> ...
> - Premium Glossy Photo Paper
> - Premium Semigloss Photo Paper
> ...
> - ColorLife Paper
> - Others
>
> And up to now, with everything I tried I have not found the way to get
> those names.
>
> Can someone help? Put me on the right track? I must be missing something
> but I see nothing in the CUPS API to do so.
>
> Thanks in advance,
>
> --
>   Pascal Obry /  Magny Les Hameaux (78)
>
>   The best way to travel is by means of imagination
>
>   http://photos.obry.net
>   http://www.obry.net
>
>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
>


--=20
  Pascal Obry /  Magny Les Hameaux (78)

  The best way to travel is by means of imagination

  http://photos.obry.net
  http://www.obry.net

  gpg --keyserver keys.gnupg.net --recv-key F949BD3B

--000000000000b1771d057bbdb066
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello,</div><div><br></div><div>Still =
looking for an answer to this or hint to be on the right track. With PPD AP=
I being deprecated I just can&#39;t imagine that there is no solution to th=
is?</div><div><br></div><div>Thanks!</div><br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr">Le=C2=A0jeu. 22 nov. 2018 =C3=A0=C2=A014:19, Pasca=
l Obry &lt;<a href=3D"mailto:pascal@obry.net" target=3D"_blank">pascal@obry=
.net</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello !<b=
r><div><br></div><div>I have contacted you about this issue on year ago! Ma=
de no progress and waited for a new CUPS version to be out. With 2.2.9 on D=
ebian the PPD API is deprecated for good! So I&#39;m back on this issue.<br=
></div><div> <br></div><div>With the following attached program I get:</div=
><div><br></div><div><span style=3D"font-family:monospace,monospace">$ gcc =
-g -o cupsmed cupsmed.c -lcups &amp;&amp; ./cupsmed Epson3880<br>**** PRINT=
ER [Epson3880]=C2=A0=C2=A0=C2=A0 URI:[ipp://localhost/printers/Epson3880]<b=
r>count: 20<br>localized option: media-type<br><br>=C2=A0=C2=A0 format:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 stationery =C2=A0=
=C2=A0=C2=A0 =C2=A0stationery<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 postcard =C2=A0=C2=A0=
=C2=A0 =C2=A0postcard<br>=C2=A0=C2=A0 format:=C2=A0 photographic-glossy =C2=
=A0=C2=A0=C2=A0 =C2=A0photographic-glossy<br>=C2=A0=C2=A0 format:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 transparency =C2=A0=C2=A0=C2=A0 =C2=
=A0transparency<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 envelope =C2=A0=C2=A0=C2=A0 =C2=A0enve=
lope<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 back-film =C2=A0=C2=A0=C2=A0 =C2=A0back-film<br>=C2=
=A0=C2=A0 format:=C2=A0=C2=A0 photographic-matte =C2=A0=C2=A0=C2=A0 =C2=A0p=
hotographic-matte<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 matte-heavy =C2=A0=C2=A0=C2=A0 =C2=A0matte-heavy<br>=
=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0 stationery-inkjet =C2=A0=C2=A0=C2=A0=
 =C2=A0stationery-inkjet<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0 statione=
ry-coated =C2=A0=C2=A0=C2=A0 =C2=A0stationery-coated<br>=C2=A0=C2=A0 format=
:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 photo =C2=A0=C2=A0=C2=A0 =C2=A0photo<br>=C2=A0=C2=A0 for=
mat:=C2=A0 photographic-glossy =C2=A0=C2=A0=C2=A0 =C2=A0photographic-glossy=
<br>=C2=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 semigloss =C2=A0=C2=A0=C2=A0 =C2=A0semigloss<br>=C2=A0=C2=
=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 luster =C2=A0=C2=A0=C2=A0 =C2=A0luster<br>=C2=A0=C2=
=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 archival-matte =C2=A0=C2=A0=
=C2=A0 =C2=A0archival-matte<br>=C2=A0=C2=A0 format:=C2=A0 water-color-radia=
nt =C2=A0=C2=A0=C2=A0 =C2=A0water-color-radiant<br>=C2=A0=C2=A0 format:=C2=
=A0 photographic-glossy =C2=A0=C2=A0=C2=A0 =C2=A0photographic-glossy<br>=C2=
=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ilford =C2=A0=C2=A0=C2=A0 =C2=A0ilford<br>=C2=
=A0=C2=A0 format:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 color-life =C2=A0=C2=A0=C2=A0 =C2=A0color-life<br>=C2=A0=C2=A0 format:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 other =C2=A0=C2=A0=C2=A0 =C2=A0other</span><br><br></div>Th=
e first column if the media-type reported by ippGetString(attr, i, NULL) an=
d the second column is a try to get the human-readable localized value usin=
g cupsLocalizeDestValue(). As you can see, in both case I have the same val=
ue.</div><div dir=3D"ltr"><br></div><div>On my Debian box using CUPS local =
server (<a href=3D"http://localhost:631" target=3D"_blank">http://localhost=
:631</a>) I get 20 media-type too, but the names are human readable:</div><=
div><br></div><div>- Plain Paper</div><div>- Postcard</div><div>- Glossy Fi=
lm</div><div>...</div><div>- Premium Glossy Photo Paper</div><div><div>- Pr=
emium  Semigloss Photo Paper</div><div>...</div><div>- ColorLife Paper</div=
><div>- Others</div><div><br></div><div>And up to now, with everything I tr=
ied I have not found the way to get those names.</div><div><br></div><div>C=
an someone help? Put me on the right track? I must be missing something but=
 I see nothing in the CUPS API to do so.</div><div><br></div><div>Thanks in=
 advance,<br></div><div><br></div></div><div dir=3D"ltr">-- <br><div dir=3D=
"ltr" class=3D"m_-3398105130442564194m_-2473468997247728907gmail_signature"=
>=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)<br><br>=C2=A0 The best w=
ay to travel is by means of imagination<br><br>=C2=A0 <a href=3D"http://pho=
tos.obry.net" target=3D"_blank">http://photos.obry.net</a><br>=C2=A0 <a hre=
f=3D"http://www.obry.net" target=3D"_blank">http://www.obry.net</a><br><br>=
=C2=A0 gpg --keyserver <a href=3D"http://keys.gnupg.net" target=3D"_blank">=
keys.gnupg.net</a> --recv-key F949BD3B</div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"m=
_-3398105130442564194gmail_signature" data-smartmail=3D"gmail_signature">=
=C2=A0 Pascal Obry / =C2=A0Magny Les Hameaux (78)<br><br>=C2=A0 The best wa=
y to travel is by means of imagination<br><br>=C2=A0 <a href=3D"http://phot=
os.obry.net" target=3D"_blank">http://photos.obry.net</a><br>=C2=A0 <a href=
=3D"http://www.obry.net" target=3D"_blank">http://www.obry.net</a><br><br>=
=C2=A0 gpg --keyserver <a href=3D"http://keys.gnupg.net" target=3D"_blank">=
keys.gnupg.net</a> --recv-key F949BD3B</div>

--000000000000b1771d057bbdb066--
