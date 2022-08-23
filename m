Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8C9D408DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0598C408C2
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org D0CF681012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661282947;
 bh=MzkGf/LBtQObkk4o48CTQEKD7V5J6VIQTI5zuK2B8mA=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=kffVDLyxqQ8ZPXg233+K3XFESQ5Z5YJqenq985IwBPDA3PyIp7TvsWvkP5pAXPW39
 kaG7Gk6g1w3VDllcqEo+aQoicdNzIF0jgrjjz2HibZYWajgo5tJ4xzpfe2msxGPWhS
 o9P6iWF2NHxr1VTxzX3yRo6rZxvfAL5GpVW5N7p4=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_ECC2D293-0F98-48A8-9072-9D60343FF5EF";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <YwTwPyIiP4Ptr0me@shaftnet.org>
Date: Tue, 23 Aug 2022 15:29:05 -0400
Message-Id: <CD20E662-9250-4105-B8E2-1653FD73692F@msweet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
 <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
 <YwTwPyIiP4Ptr0me@shaftnet.org>
Subject: Re: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles
 via IPP for soft proofing
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_ECC2D293-0F98-48A8-9072-9D60343FF5EF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Solomon,

> On Aug 23, 2022, at 11:20 AM, Solomon Peachy <pizza@shaftnet.org> =
wrote:
>=20
> On Tue, Aug 23, 2022 at 07:23:18AM -0400, Michael Sweet via =
Printing-architecture wrote:
>> Right now I have no plans to add explicit support for ICC profiles to
>> PAPPL as the class of printer being supported won't get anything out
>> of it - *no* open source driver provides ICC profiles at this time,
>> label and B&W laser printers won't benefit, and Gutenprint's notion =
of
>> color management makes using ICC profiles basically useless - too =
many
>> knobs.
>=20
> FWIW, the dye-sublimation printers that Gutenprint supports nearly all
> have a manufacturer-supplied ICC profile, and putting aside the =
question
> of redistributibility, I would very much like to have a =
gutenprint-based
> printer application provide said profile to the application on demand,
> and/or automagically apply it to whatever is printed.

Assuming that you could use/bundle the profile, I would rather see =
Gutenprint use it to convert sRGB or AdobeRGB to the printer's DeviceCMY =
color space, otherwise the number of clients that take advantage of it =
will be exceedingly small.

________________________
Michael Sweet


--Apple-Mail=_ECC2D293-0F98-48A8-9072-9D60343FF5EF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMFKoEACgkQvmfHXsgf
MkSvYg/+LqGzlmDbYFB1rUEa2K2kBBsixRKRFCFlJlSfB215tcgKiWa1NYJd0w6m
OYsrwt/yO+L9T5nKcEcMX2sTBqDBZsD640iYVqC1+sHqi2hqWhvT0U9cQp1xSnuN
utYdAlKejUkwxmwRtwJn0UIy4jGCK3k+NgmF2Kms6HCncjQCxHLQ2GH80utXOq9n
K9i5f77US8HtpIsi1HX1uvlWF0tjkpNBWTFgEnP6KA/nSCqYfgx1yrtTZP1Rk2uH
+fpy4X3ZOUBdaK9wCesp4VoII9yLPDR48Dbj84ejFF2unvuzN0H/CeFKVuM/4evB
NefKXcjmSraX1jyc0CTxfzZ5NSIhjUkwfselAluAKjtzFCEaMsPePXUsaR6f6Ggp
+RHviqaP3h678Qna3HaM62jg5DhC0wpp/6XHvfiffQJke+0OdUYRDuZn6vOwfT7C
GeN4AP2N+RNO/AGIpS6JR2diB/fGNxnhpbye98wQgHjVo5h9WqL1mP8b1hdR3B7V
szCMOiKSNIWjJ03Ec6spgeN7R66PeI63f7hp3vdga8Qr+KCOqPvsxSZZUnkMeHlq
LXIai5mx9/hId3xqFRZhe953Oj0OtcCJGhCTjSi1qCueyBwhBEI+rfLSTXpzzR/Q
Ml6wUrC1+MrDCKPpCfI58fHiFv2xLvgKulXhQHBpqoQdQnOjyN4=
=1d8Y
-----END PGP SIGNATURE-----

--Apple-Mail=_ECC2D293-0F98-48A8-9072-9D60343FF5EF--
