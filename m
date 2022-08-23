Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 201E340570
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E294A401F8
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org CE73C81012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661253800;
 bh=49GS7hvYSzHXz+3+jvtZZyXs8NJa68kZSEDArZDi9cs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=UMysp+tQTd3ZhtbObAquIGbkB+w78WLPjCSvU8J3G4ae94M7XlY2tEhInvidNRJ7w
 11G3nUb6IHZ6y853HQiiWFX69ZTvOggROqZ2wrJd7Bov/FKGd5fLQCO9a3OQv784l7
 jeolvDUa3SjTMyQo0KDYxX6HBSpEuDOzCxkT4FlM=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_F2B95DE5-E6F4-4400-8835-70DD52B1C1BB";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
Date: Tue, 23 Aug 2022 07:23:18 -0400
Message-Id: <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>


--Apple-Mail=_F2B95DE5-E6F4-4400-8835-70DD52B1C1BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Aug 22, 2022, at 9:04 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> Does this mean that in a colord-free world we proceed as follows:
>=20
> If the printer does not provide built-in, downloadable profiles via =
the "printer-icc-profiles" printer IPP attribute, we have to get the =
profiles separately from the manufacturer's web site (printer is not =
self-contained, not really actually "driverless" ...) and upload them to =
the printer using HTTP PUT and registering them with the =
Set-Printer-Attributes IPP operation, so that they are available for all =
users of this printer. Am I right? And, after the upload, will the newly =
uploaded profiles be listed in the "printer-icc-profiles" IPP attribute, =
so that every user knows which profiles are available?

No.

Most printers don't host ICC profiles and don't support HTTP PUT or =
Set-Printer-Attributes.

You need to still have a way to associate ICC profiles with a print =
queue (temporary or otherwise), assuming of course you want to offer =
soft proofing.

> Now, with profiles listed by the "printer-icc-profiles" printer IPP =
attribute, could the soft-proofing software simply download and use =
these profiles?

For the class of printers that supports it, yes.  But I'd treat this as =
a source of profiles that can be downloaded on demand and associated =
with the local queue (alongside any profiles the user has installed =
manually).

> In case of a legacy printer the Printer Application should be able to =
hold color profiles, ideally both in the Snap's static file system image =
for the profiles which come with the Printer Application and in the =
variable/state file system for user-added profiles. Ideally such =
functionality should get added to PAPPL.

Right now I have no plans to add explicit support for ICC profiles to =
PAPPL as the class of printer being supported won't get anything out of =
it - *no* open source driver provides ICC profiles at this time, label =
and B&W laser printers won't benefit, and Gutenprint's notion of color =
management makes using ICC profiles basically useless - too many knobs.

(FWIW, PAPPL *does* know about ICC resource files and will assign the =
correct MIME media type for them, there just isn't a way to associate a =
profile with a Printer or the Job Template options that will select =
it...)

________________________
Michael Sweet


--Apple-Mail=_F2B95DE5-E6F4-4400-8835-70DD52B1C1BB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMEuKYACgkQvmfHXsgf
MkRZMw/9GS7Vs0jk7aOU2TpcBthFvBtJePss/WcVNm0+C/dHx7URFHYZEvSuTL86
QqDenet6e+bJEJvYzICXZHlayPkG57Bbghbkja8H84WdDlQjTYa5ivUk8zmAFp6S
NPQLlHfgT61tE8yoXR/QVECsvlmlKY6bIxGdu905KKxdANdyTf1RSFIo5Yhvw/iK
ay6Z+4C2tQbr+l2uZhUPhl1ZhRsGqm5y7l9kg87q3IXwtAKgvJThU9olLhcbsWPX
lz+TqJEkfLHwxMoN917oCZn0LUe4hLWacJxjHBhz3Fzy9WDdYIcA/IJKZY3ILU87
2cN5FzxDBwnVekmELEkGe/simmUMz1Q/gG6ewDHZczkrFVMhmsadit8BnwfQu3eD
Z2ipI6Ni02ZxcnAF08ULxOmt91LEhNJ7qpB0xIdj5fNPv2Ie7h4b/8vbGlY1HJc6
wkBA24MRXkxo2pL6H8VvvQtgJ42cNbtg+DSjbeuhbsXHAcqW9XVcdSYTcZYg3Cz2
s18R/Z9auwhflDh6y9p+q1NWf/mNLMWAnk0+zPsquAtm2w5pmKoBoqNbUj1KbFXg
SuihCwoQpNY7Ah4IZCGqcYYFBd0hqmkZrokmdA3BDoKcYhNH7IsrlmrRZyxVtP2p
WK5wFeDQteNn99yUcO1ggags8wtNcicQbAAE67cYDOsNOcFUEV0=
=cAA+
-----END PGP SIGNATURE-----

--Apple-Mail=_F2B95DE5-E6F4-4400-8835-70DD52B1C1BB--
