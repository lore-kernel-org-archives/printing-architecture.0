Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A647A60C20
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CABF660AFA
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org C7FBE81012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661256794;
 bh=N02CiafDKSKLa6+v+s6OdVCS0Y7UpioprdoH+HQfVOs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=JHCHYVyJ5/zu2++TciefmCLcZV3pw1X1kTB3KqRly9MYOPFDpWxMK7I/9b6T2ffdf
 sse0phxPd2//a/9XdJhES6mRXuqo3FhZrB6OZIeU6olG8sVzmW56wrvH0JrN3uzpAw
 LrbC3cyIrQUv55+NnbTluxxoNMR7f78IlLzS6yKI=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D6A8C4E1-032C-46A3-B3D9-AC8EEAE7334D";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <9c5a7d55b9bb9bdcb9c23d772bbb5bc3@sebastianwick.net>
Date: Tue, 23 Aug 2022 08:13:12 -0400
Message-Id: <7F1853F5-8BA6-4037-BAB9-139924C2F9A2@msweet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
 <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
 <9c5a7d55b9bb9bdcb9c23d772bbb5bc3@sebastianwick.net>
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
To: Sebastian Wick <sebastian@sebastianwick.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_D6A8C4E1-032C-46A3-B3D9-AC8EEAE7334D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Sebastian,

> On Aug 23, 2022, at 7:48 AM, Sebastian Wick =
<sebastian@sebastianwick.net> wrote:
> ...
> When you say associate a profile with a print queue, what exactly does
> that mean?

I mean "when doing a soft-proof of this document for this printer, use =
this profile". It could just be implemented as a history/most recently =
used chooser in the soft-proofing UI, where there can be a "Printer =
Profile" submenu/section (populated from "printer-icc-profiles") and =
"Other..." to pick a file from disk.

> That all images in the queue have color characteristics
> described by that profile?

No, given the current CUPS print pipeline we are best served by sticking =
with standard color spaces (sRGB, sGray, and AdobeRGB) and only using =
printer profiles for soft-proofing.  Longer term we should probably have =
CUPS use printer-specific profiles (as supplied by the printer) to =
produce DeviceK/RGB/CMYK raster data for non-PDF printers, but since the =
number of printers supporting that is very small we shouldn't try to =
optimize that case yet.

> That the printer converts the images which
> are tagged by possibly other profiles to that profile? Can you =
associate
> any profile with a print queue or only ones the printer supports? Do =
all
> printers support certain color spaces?

So IPP Everywhere and AirPrint require sRGB/sGray raster support, and =
most photo printers also support AdobeRGB.  A few large format (raster) =
printers (currently) support printer-icc-profiles, and any PDF printer =
will support embedded ICC source profiles that get chained with the =
internal ICC profiles to produce correct DeviceN color on the printer =
itself.

> Is this kind of information documented somewhere?

Yes, in the IPP Everywhere specification:

	https://www.pwg.org/ipp/everywhere.html

________________________
Michael Sweet


--Apple-Mail=_D6A8C4E1-032C-46A3-B3D9-AC8EEAE7334D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMExFgACgkQvmfHXsgf
MkRnNBAAp4cwklK//SjR7rrigU4ohL2WIgY7Rs2eJ3Yse7LAFeORHTEcTYXhSEA4
OpzllBSlmKgNBBSioPENJLLWcstu2y19hZ504EZMyb7zcqY39SASFUpHGbPgjzWA
onxsM6+2sWaTVqNqH2mwYNBZfT2SGmw68gJ55ympS9e5EbmLdkSgZkD3qjnkHn5v
FiEwO6k4tdweCPL7r/M0IyO8fgU9pL5gHiz8g5a9T8JKSTjPCPY56QW1+SPqFjvw
ad3loXZ8CKeDaaukxQGiqljVaR71g1yssVYTDQ8klZdw+IcVhMbDmXSeraw8M9Bk
xuwr9CWNRg6pdWD56qqwN/4dgXq5MoFCn2jwF12uwCtH+kIKWqMgKzuRicFSq8/X
SzscIOq3ZL+Ij0pG1cpLwozVGF0Dh0vlszN/dh2/nV+HvNMY55QaMqzJiy2RLEav
rEwIko5LpBDhR2XeZdREe0V5H0c9fKuy6671KZw3yIp6P5jstXneSTiI1dSmQyLC
qfwJIk+5to8tf1SBa2RLcRzOBUuqnkRfE/AwDAR60cFvfxJBv/BLP/OW06GsmiWk
zXYBf943biiNpQgYMBdqqF92sH73Kwp66CtFhX20N8H5wK+C4PSCDO2FsjmVhoE9
yG8uiz28G0RCwQ4EB1vH6fzTIKlqzTprWKb4CQdOH4r+SZIm9mo=
=foIr
-----END PGP SIGNATURE-----

--Apple-Mail=_D6A8C4E1-032C-46A3-B3D9-AC8EEAE7334D--
