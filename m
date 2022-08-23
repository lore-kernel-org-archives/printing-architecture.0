Return-Path: <pizza@shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6CDD408E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D70AE408CA
DKIM-Filter: OpenDKIM Filter v2.11.0 pineapple.shaftnet.org 27NFKWta2829320
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1661268032;
 bh=Pt2V/AW7zopgJK/gqT0u/lqfip5vs1XWGuh63SfGiKI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vsa4vyII8f1lZ1KwAE+uzq+LXILbFEhsh8y4wUAbThi1xxMsQA4gcQZbD0Y/Upd4p
 VMllxhoPV5J8bIlQ2958P1IjjsLimevdjuK/fB7choZuCUnIHuJFnNwPyNpvQxdbCS
 ATCRB49RM/WRIfKJ1H7C23p7Y8S4Cdt/AyVxWN7Y=
Date: Tue, 23 Aug 2022 11:20:31 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YwTwPyIiP4Ptr0me@shaftnet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
 <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="AzD7qNS9UwQrclOf"
Content-Disposition: inline
In-Reply-To: <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
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
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>, Till Kamppeter <till.kamppeter@gmail.com>


--AzD7qNS9UwQrclOf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 23, 2022 at 07:23:18AM -0400, Michael Sweet via Printing-archit=
ecture wrote:
> Right now I have no plans to add explicit support for ICC profiles to=20
> PAPPL as the class of printer being supported won't get anything out=20
> of it - *no* open source driver provides ICC profiles at this time,=20
> label and B&W laser printers won't benefit, and Gutenprint's notion of=20
> color management makes using ICC profiles basically useless - too many=20
> knobs.

FWIW, the dye-sublimation printers that Gutenprint supports nearly all=20
have a manufacturer-supplied ICC profile, and putting aside the question=20
of redistributibility, I would very much like to have a gutenprint-based=20
printer application provide said profile to the application on demand,=20
and/or automagically apply it to whatever is printed.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Live Oak, FL                          speachy (libra.chat)

--AzD7qNS9UwQrclOf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmME8D0ACgkQrGLLO/XV
ulFPwg/+I4EKqhG3qH/LGT7j921GdE/YPyjqskeReDkwCILnwr7ap0+F9uDQUfCb
selPtvhzX9spHheq+FB3AfcnraHwV7HAVei1EaqVzqdEQ8Nl27VIBNiw3IVdd5FK
8aCqfGTDP/m6uXB8tyRqULCxzDP89f2PrJc/e7a82M+TUTGaKm/Dbq6IHZyVnfIb
wPC0lEwv/A/MGUcSgncH8oHJ65F4IPEK6hYGcYX3eLWLDgX1TYZvWhS+1d+Oy8kD
6rdkSgeITqzOhcHkFXFDQZ6F83hBN1ejjzxw5541zlppkzIfUtEjEYNcV3zdZ75H
XwvARrM1eKYJguh/EKjDy9hB3Mhpw/sOG0zpOoFoj/PA10Q9TCbHX098Y7h5w/aj
z9I6NTlW/BUno153j4MXwbPUgPUA1m9OiC3x/uqxCrRG8x3b3HB4IHoWFWMtHfJ1
VkzgfYutcnf/TA+ta08bW3vk99LHNGGz3PTQg8uZE5hbNs1l0P2ghcWgV8esOppG
7Em4e5x8iLsjDn35Lhs6DP8W5cWl63PtAkag7V/qMxQN2YODhN8F99M1htG7TkIJ
fLJY7oDn7WSPz2qkKw5uofVG1oTMQCEEQVxmPPDXeY/IGMdDKM/uz5EIk1t9x0Hl
g5VjQtJB1OP7OGDEkPuUhJVPFnfXUUEaaxOVyM2NWgNY9ngC08g=
=468N
-----END PGP SIGNATURE-----

--AzD7qNS9UwQrclOf--
