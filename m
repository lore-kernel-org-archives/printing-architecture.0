Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DCAC841E6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A4B841E3
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 92D7B803D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1684320766;
 bh=IsehnifLvChjY8JuTDb1YAY/+yaqxKKCYRCshS53KqE=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=tYRn2lyHfOVw6bQsi1dZ6vu9u5JQRRqc32iYuCVkU2dIn8d2wLYKll7LPFM2iBIBf
 6Zhh3PP4QiWAXvouezp2N1qeDXgTlCQXuWKSJ5ccT9slitliQjPYyJ9XReoRI3cGnp
 QFLwKTUEOBsEanfvY/Q2vBF/zm3hbH5DmQKcJ5G8=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_414E14B3-708A-4EB9-982A-47C764EB4F54";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
Date: Wed, 17 May 2023 06:52:34 -0400
Message-Id: <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
Subject: Re: [Printing-architecture] names of paper sizes
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Mignon Pelletier <code@funwithsoftware.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_414E14B3-708A-4EB9-982A-47C764EB4F54
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Mignon,

> On May 14, 2023, at 6:04 PM, Mignon Pelletier =
<code@funwithsoftware.org> wrote:
>=20
> I'm confused about the many names that a paper size can have.
>=20
> If I query my DYMO LabelWriter 450 Turbo with code like this:
>=20
>         ipp_attribute_t *media =3D
>             cupsFindDestSupported(CUPS_HTTP_DEFAULT, dest, info,
>                                   CUPS_MEDIA);
>         int i, count =3D ippGetCount(media);
>=20
>         puts("media supported:");
>         for (i =3D 0; i < count; i ++)
>             printf("  %s\n", ippGetString(media, i, NULL));
>=20
> Then I get names like this:
>=20
>   custom_54.19x22.27mm_54.19x22.27mm
>   custom_25.4x54.02mm_25.4x54.02mm
>   custom_1x1in_1x1in
>   custom_2.25x1.25in_2.25x1.25in
>   custom_0.75x2in_0.75x2in
>   custom_41.32x88.9mm_41.32x88.9mm
>=20
> However, if I run "lpoptions -p LabelWriter-450-Turbo -l", I get names =
like this:
>=20
> PageSize/Media Size: w154h64 w72h154 w72h72 w162h90 w54h144 w118h252
> w167h188 w79h252 w167h252 *w167h288 w154h198 w82h248 w154h64.1
> w79h252.1 w102h252 w154h286 w154h198.1 w54h424 w131h221 w57h248

Correct.  The names you get via IPP are PWG self-describing media size =
names, while the names reported by lpoptions are the Adobe PPD media =
size names (a much older "standard").  Both are accepted by the current =
version of CUPS but going forward only PWG media size names will work.

> ...
> 1) Where are the names reported by cupsFindDestSupported() coming =
from?

=46rom cupsd, which converts the PPD names to PWG names.  Localization =
information is placed in a separate .strings file for the queue that can =
be queried by the application.

> 2) How can I obtain the human-readable names, such as "30330 Return =
Address", preferably without using any deprecated APIs?

The cupsLocalizeDestMedia function is provided for this since CUPS 2.0.

________________________
Michael Sweet


--Apple-Mail=_414E14B3-708A-4EB9-982A-47C764EB4F54
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmRksfIACgkQvmfHXsgf
MkSW+xAAp60Sxrz6jlqcMcS/efu+oHmc8rbFHddeCIy28Hoh7OgRfTepEOOt2VTF
zAHxHt8hxA0gtEgARdVv0HMUnpjKoKTfpY+E7dAr9GM0dKduanHb4rl7jPr9BPFm
BBZdzkgd3bNQfC3yZdBsdSkVzbVCFBxxUQ/2kMvixdCLkz69JTUQENkkdP8P0rvi
mnw5gJaDOk7H0YseCgj3HpwU0u0QnyFFyBLrtfIvBRQ6G2pygUnnyPCsaERbStof
L79fRbBitOuhJ49FXHxKOuuuWbGPVWVFn8m94HIlr2OyCJGOBSLswx0IoOWhnkSd
vV3AL1yLNmTNbj7VESzBzgHf1rL1qahEyNNgghv3h8wpBwY9dP73pbHfDOogvodZ
W/unYPW+NYVAMKzN4I5mDl0VbjPEiimuU4lke/BQ7O7t5Gn60IM04oSLNiwsG6Tl
jfmBJPiD/Ve8jRMVzVqjIOa7djXB2nxFoA8nYSpSVRSrUJ7gJXMdtxkwOnckA6Mz
f7tLi9TBe3Xb4KBdZGNWflYIsRlG2llfNLGGywPh106JB7FB1Uwd3QmbWXkmS5NE
JsDoBarg9U78JJXOegfH4P8pLwcno2Kezcq5ccPHF/zsc+Qsj/oLCRhWB2ok/Qrm
WICnLg9QWZjKJqY8STav1FCq76gWZUdZqL7FDPwT/5jg02Dw7PM=
=YzL2
-----END PGP SIGNATURE-----

--Apple-Mail=_414E14B3-708A-4EB9-982A-47C764EB4F54--
