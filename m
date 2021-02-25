Return-Path: <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_263AEF45-48BD-4D65-94B4-934A57B479E6";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
Date: Thu, 25 Feb 2021 08:43:20 -0500
Message-Id: <10CF8536-388D-4202-AD36-D93D64574F54@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
 <4c554835-e8f7-3399-098d-11718beb020c@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>


--Apple-Mail=_263AEF45-48BD-4D65-94B4-934A57B479E6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Feb 25, 2021, at 4:24 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> Central repositories, like the Snap Store would need some =
hardware-signature-based search, see
>=20
> =
https://forum.snapcraft.io/t/hardware-associated-snaps-snap-store-search-b=
y-hardware-signature/

That is certainly one approach, and if Canonical is going to provide =
some general support for finding snaps that support particular hardware =
(not just printers) then it makes sense.

That said, the number of printer applications is not likely to be huge =
(LPrint, hp-printer-app, and ps-printer-app make 3, and potential future =
HP-LIP and Gutenprint printer applications make 5), so even if you just =
maintained files with the latest "app-name drivers" output you'd be able =
to do a good job of mapping printers to printer applications.

Remember, Printer Applications are addressing a short term (~10 year?) =
need to support legacy printers, at which point the primary users will =
be "experts" that wouldn't use the default printer application/IPP =
Everywhere support anyways.  New printers almost universally support IPP =
(the outliers being for "experts").

________________________
Michael Sweet




--Apple-Mail=_263AEF45-48BD-4D65-94B4-934A57B479E6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmA3qXgACgkQvmfHXsgf
MkQdUhAAk2mI4CcOQEynwzx3UcYeCfDrwZl/2tOL+I3RZzVpZDlfcI0WkRA+Gt76
yEvL/A0BV+aMI6C5o2rA1tJJsqRQEzpoqXz9GnXroSqici16pnANoDjt6kPoOiQG
S1suFo3ecOlhOi5SlGaTblse+alCl4a9U7y4r8ig9X9NhH6DNX6Xl+Ow0i6DFfF9
B4OY3ANOGq7IOmgPV6dgAsMkqSZf0IOe0KS9A5jWA2AsjFZ0F2ZlI9Y6WPBnEOzU
F5ByWxJ8Iq9zXeysJrRxZuZmgfSYMUB4YMWjG7jXVlUIL6XuE6zow79wrPwEuFVk
mX3ZQ1/Dd3lRcMxLOsdvtwl/q7/AGiKCyixGfrmIBpOD5OUDDn7QKUPljsdAagy8
WOL0tw/s+yR1zgmStStXoAiIYpgFJ3FoIUX0fK5g2R2yRSIXiNG3UKIeIU8PgWsT
xyPYz1+s4/ImjtWPertw2k4e3d/5LFixGRKsJULwphPULH3MZvwDYAwVieyDd13h
UHQVFZlbTvQmX4yRu9yQyarBc2ZtDTQKbv1OX8Kl4XiHqqEP3K9Vw/oSBYekHv+v
hwTHZzFY0JTX4FeYsS1bRf718PNV6QFg4FploOt5iGx1r/1FsSZuQCrkakI9sGVF
VtmW7lxygEsPhQBTuJWibhYMI3wo+weRoDEFqSrLrBPzoKh5Aj0=
=sq9l
-----END PGP SIGNATURE-----

--Apple-Mail=_263AEF45-48BD-4D65-94B4-934A57B479E6--
