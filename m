Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28620821DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E60DD821DC
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org BB92F800B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1669993705;
 bh=Obxw6FhEDKg8LudtBFwOggnQhs5/8B4a3K2jGinC9hY=;
 h=From:Date:Subject:To:From;
 b=j4OmuYsciFSUo6k70gYh+76zKeRLBrMAzwvvJSsbu7hf+grDtz3Y3Z9uyfVaW21FT
 qgRgCjd4+tt8pKvlP/hSIpOXJ7LH9iaHXMHtOIkzwYZgGAkmgKhjiFd1faXFo0/Aiv
 94STdv+h4r3JqT0l0OycVv4zsSi1JvPUxTEHLkTI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_FC5AA3EC-4906-40A1-9B21-3790850EF565";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Date: Fri, 2 Dec 2022 10:08:13 -0500
Message-Id: <99FD3BD3-819E-43B3-AA7C-C254C398A1C6@msweet.org>
Subject: [Printing-architecture] PAPPL 1.3.0
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_FC5AA3EC-4906-40A1-9B21-3790850EF565
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

All,

PAPPL v1.3.0 is now available for download from:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.3.0

The new release adds new job management, image printing, localization, =
and
configuration features.  Changes in 1.3.0 include:

- Added debug logging for device management.
- Added support for job hold and release (Issue #15)
- Added support for PNG image scaling using embedded resolution =
information
  (Issue #65)
- Added `papplLocGetDefaultMediaSizeName` function to get the default =
media size
  for the current country (Issue #167)
- Added support for localized banners at the top of printer and system =
web pages
  (Issue #183)
- Added timer APIs to manage periodic tasks (Issue #208)
- Added support for network configuration via callbacks (Issue #217)
- Added APIs to limit the maximum size of JPEG/PNG images (Issue #224)
- Added support for the Clang/GCC ThreadSanitizer with the =
`--enable-tsanitizer`
  configure option.
- Added Norwegian Bokm=C3=A5l, Polish, and Turkish localizations.
- Added a password visibility button to the Wi-Fi password field.
- Changed names of PAPPL-specific attributes to use "smi55357" prefix.
- Updated USB device code to generate a 1284 device ID and use the =
manufacturer
  and product strings when necessary (Issue #234)
- Updated the USB gadget code to handle disconnections.
- Updated PAPPL to conform to the new prototype PWG 5100.13 =
specification
  (Issue #216)
- Fixed a device race condition with job processing.
- Fixed a initialization timing issue with USB gadgets on newer Linux =
kernels.
- Fixed a potential memory underflow with USB device IDs.
- Fixed web interface support for vendor text options (Issue #142)
- Fixed a potential value overflow when reading SNMP OIDs (Issue #210)
- Fixed more CUPS 2.2.x compatibility issues (Issue #212)
- Fixed a 100% CPU usage bug when cleaning the job history (Issue #218)
- Fixed the default values of `--with-papplstatedir` and =
`--with-papplsockdir`
  to use the `localstatedir` value (Issue #219)
- Fixed storage of label offsets for printers that implement them.
- Fixed some thread access issues on ARM.
- Fixed when the kernel USB printer driver is unloaded on Linux (Issue =
#233)
- Fixed `papplDevicePrintf` to allow the "%c" character to be 0.

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_FC5AA3EC-4906-40A1-9B21-3790850EF565
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmOKFN0ACgkQvmfHXsgf
MkS2OA//cZUsnHANqpw90YyQNpQYmAmGLZuswAOwdYViF5JzMlbgHm1d/izNqLLs
ZKTCYXwuj4h4gJiwtsQoiYXkKXGNt2Zr4U80vZ88jwuBs20D2xSqbXBe9Q/8L3oZ
OnumyKOs29+coAghhE1736nXJEENCVjRb6cLiMGVkN7eIi8N1fAPc8L9JoP4AaB/
LiPFNn84rLCqez/C9R8bXHD9yyKplLeKI0ZeypKqIE5tc/WdAU3uBwLAHp+Qqmfx
FxhYYITfx9+sAgz0rCD4bLOqh4VmFMwuccLa2VQuBNPdtySEMrS9lT/GddMQYbF1
wwbvfxmhJfLnRuKQDCew7OH8/q4sSnEK2MwMboiAOi0AUVHUdIy1Qn/PT6FJl8EV
CX36cVx3nK3wGYn21HqKeQmdeM05s5kVqyknPUtkUGSJnKiI5Y9aEaiVpY1RDRs3
VM8gVViAvKnqx/iFnZg/G3FmCs93STOdeY2lRE6E0yLcYcvRr5UEaFDnbkmYgjYQ
CidYD3McEFRX771n2MfBKfrQT6qZa+MRVelDNchUn4/+lJP8XW0pXN9Z40dhrV1R
eHnVfLzQPiLcxWPyMLt3F4R8t56eRfqHyVtC3WJY6izWXeB1Wa61TNJZ84c6tY1k
CHIUxrd+mt4oVTt9SBVeBjlR8LfmIFrP17om0zZIDSHPg+wuFlU=
=TIIq
-----END PGP SIGNATURE-----

--Apple-Mail=_FC5AA3EC-4906-40A1-9B21-3790850EF565--
