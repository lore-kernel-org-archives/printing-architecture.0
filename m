Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 11PEseBo1589794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1614264880;
 bh=Wvbdmu9YNtO+ffsOQL9UuHmChPHme64VuUPBJjyEBcI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J2g6FXxeUf12emlIG9oYvlC8tl3XoEpiVo0uAfHz/D+jKtdVW9nJw5oWbEyiVg70A
 V7ggqaKaIjNjegMSgEEDfmkv1p2DXMnHSIobLy86YU4WeIJVXiqqvwzcaM+rIv3jyy
 x4TadJpXLxFkbAxxYfBi43zC7MpyqU5BZXaLJN1w=
Date: Thu, 25 Feb 2021 09:54:39 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YDe6L+I0u65ncSXP@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="/IbP4U1VN2ntrUMo"
Content-Disposition: inline
In-Reply-To: <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>, Till Kamppeter <till.kamppeter@gmail.com>


--/IbP4U1VN2ntrUMo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 25, 2021 at 09:28:47AM +0100, Zdenek Dohnal wrote:
> Solomon, I'm sorry if it is an obvious fact, but I don't know it - would
> you mind me asking why IEEE1284 IDs aren't used so much in drivers?

I can't comment on manufacturer-supplied/supported drivers, but speaking=20
of my own experience with Gutenprint we can't use what we don't know=20
about.  The tooling that could take advantage of those IDs to=20
provide automagic printer setup didn't exist until relatively [1]=20
recently, and by then it was a bit too late..

And much like we've seen multiple distinct models with identical USB=20
VID/PIDs, I've also seen distinct models that share identical IEEE1284=20
IDs. [2] And then there's the iManufacturer/iModel/iSerial strings that=20
may or may not match what's in the 1284 data or what's silkscreened onto=20
the printer itself..

=2E..Like everything else involving printing, it's a complete mess.

(Of the stuff in Gutenprint, about a quarter of the IEEE1284 IDs, and=20
 all of the USB VID/PIDs, were added by myself.)

[1] ie about a decade ago.=20
[2] They are in the same family, but the PDL is barely incompatible..

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--/IbP4U1VN2ntrUMo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmA3ui0ACgkQrGLLO/XV
ulEjfBAAopt+ehDK+rNSuL2n1R4myUy/xt6q1CK9B+Sn8mgVhT6toTOEOquPGE5w
sfmvfEAEQNeMW69vXeJD2Mz7mJYwWpqVjhO2hwDjthR1DabS0Te4UlEDxjoMO07I
NrvS7nkIv6aaRVzeJr8V+FE6O3MESRR215yQycuoa0rSM16oR9yAe2T/zpvFuU+i
dDKP2YY+bveKKKoVuZIgjkz1pKUsdTVDUiLlisPk4u1rYrhCUMOVqKWTAwFwhy87
DImrfZAiPH+QX2I4lwcFylLYdD/1pf5o9s10nsRolHYsZmm1lb7Li1hL+n4Z23rQ
t4Fz5O7HO3f6ceK+Wfya39LTqy175leyO1pcC1XKCj1taLrwhhHySpWld8g3iEm2
UB+saQJu7Oa21xP7ATqwdZtNf6NeMck1Ed/TamQoRxyVN4PA5Q9z5l/AaMtVvNnS
fNqW7EB1zIzIX1l8pRn47S4mmof1RqIYWvrhUK4cR/bH3F0kokDXaeE9A6jAmMvV
sJSGPzwltMjn0a0BT/k7JlyZq6HipZ3UceOeUa63AviHshEmkvwCvL1nLEKp9Kmh
eeWlaKnEij4OFYm82xBV9+w9AUIKltkG3C+i4UKy9Jou6n6EdjVYGqP1nrxCwFLP
PkabQDdLFlelqy+S5Oui5cbgIYv+g7EdS6a8hNUVOCdv9qdulZc=
=32Lz
-----END PGP SIGNATURE-----

--/IbP4U1VN2ntrUMo--
