Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
	h=mime-version :
	content-type : sender : subject : from : in-reply-to : date : cc :
	content-transfer-encoding : message-id : references : to; s=20180706;
	bh=PaZubDEX82CJ7sce43G6UAyQL+MjmBFRrjFqprV4SU4=;
	b=tHgNNgTsPY3nX3R5bxUuX2uDaFEtvcY0/WRcmijj6dGFGSoJGyZx8rs3iN8KkfIs6hr5
	kdyQH8FkCXCU/yfmm+xq1hVUJFL+vWlLgKT1+YtRFUddKIyjUph+Z26gx97VTcOa6QzV
	P+7ICAlZiEQ9jYM5NciGZZT92pKqYrdpBP4MAo/kGU6ZU9OZ7FlKKwhjjjn8Qsm8aDAC
	RkddOpJCqlrp3gcRVtJjprr+MDAlxOy0MbporVxTCCCB5MBkFX0KLwZmftQKSRKr3MdP
	0kDoPgH09ORN9OZeG87fF6WcoIonNKy+I/DBl1rjWb+m9AFiMrusD6vQS+DthTBhmnOU
	IA== 
MIME-version: 1.0
Content-type: text/plain; charset=utf-8
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <CA+9ZNidZz3EaiQ-FSVyHKeNzoJwavEmYU-LPxfwE_khXzrm43g@mail.gmail.com>
Date: Wed, 28 Nov 2018 13:37:59 -0500
Content-transfer-encoding: quoted-printable
Message-id: <621F4463-5A0B-4C55-837F-940FFA00E92E@apple.com>
References: <CA+9ZNifwCYYZn0Fe2JNBSRenfb8iK6q_E_Vigh6rFgWy2viyXQ@mail.gmail.com>
	<CA+9ZNidZz3EaiQ-FSVyHKeNzoJwavEmYU-LPxfwE_khXzrm43g@mail.gmail.com>
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
To: Pascal Obry <pascal@obry.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Pascal,

Last week was a holiday for most US employees (Thanksgiving), so please =
be patient for replies - I know *I* am swamped catching up...


> On Nov 28, 2018, at 1:25 PM, Pascal Obry <pascal@obry.net> wrote:
>=20
>=20
> Hello,
>=20
> Still looking for an answer to this or hint to be on the right track. =
With PPD API being deprecated I just can't imagine that there is no =
solution to this?
>=20
> Thanks!
>=20
>=20
> Le jeu. 22 nov. 2018 =C3=A0 14:19, Pascal Obry <pascal@obry.net> a =
=C3=A9crit :
> Hello !
>=20
> I have contacted you about this issue on year ago! Made no progress =
and waited for a new CUPS version to be out. With 2.2.9 on Debian the =
PPD API is deprecated for good! So I'm back on this issue.
>=20
> With the following attached program I get:
>=20
> $ gcc -g -o cupsmed cupsmed.c -lcups && ./cupsmed Epson3880
> **** PRINTER [Epson3880]    URI:[ipp://localhost/printers/Epson3880]
> count: 20
> localized option: media-type
>=20
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
>=20
> The first column if the media-type reported by ippGetString(attr, i, =
NULL) and the second column is a try to get the human-readable localized =
value using cupsLocalizeDestValue(). As you can see, in both case I have =
the same value.
>=20
> On my Debian box using CUPS local server (http://localhost:631) I get =
20 media-type too, but the names are human readable:
>=20
> - Plain Paper
> - Postcard
> - Glossy Film
> ...
> - Premium Glossy Photo Paper
> - Premium Semigloss Photo Paper
> ...
> - ColorLife Paper
> - Others
>=20
> And up to now, with everything I tried I have not found the way to get =
those names.
>=20
> Can someone help? Put me on the right track? I must be missing =
something but I see nothing in the CUPS API to do so.
>=20
> Thanks in advance,
>=20
> --=20
>   Pascal Obry /  Magny Les Hameaux (78)
>=20
>   The best way to travel is by means of imagination
>=20
>   http://photos.obry.net
>   http://www.obry.net
>=20
>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
>=20
>=20
> --=20
>   Pascal Obry /  Magny Les Hameaux (78)
>=20
>   The best way to travel is by means of imagination
>=20
>   http://photos.obry.net
>   http://www.obry.net
>=20
>   gpg --keyserver keys.gnupg.net --recv-key F949BD3B
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> =
https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

