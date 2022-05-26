Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 4E48F826DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1653593649;
 bh=TcMzwkqdd+RSpppL2fSW41S+RF/2pl+xgs71IHUG/Mo=;
 h=From:Date:Subject:To:From;
 b=jFz0bZTPLSpFFCtgYRErrCo2IBHz1XeGkIkkF8ThwCO3XGuSyk866BLpag/OuQmrK
 cV3HDy6EuQH1rsn6sLaPjybKo/3rn265qLuRbfOSLnIHIqG6q35I+GUf9argGemgOy
 Wr/DHkHhmZ3cWe+6J44jKoMq6APzGPDGxPC8xoVE=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_BB902CFE-FC07-4344-A0D8-E6E11A9BE2E3";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Date: Thu, 26 May 2022 15:34:07 -0400
Message-Id: <9A85AB78-7678-4735-B304-361A4DCA3EAD@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2.1
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


--Apple-Mail=_BB902CFE-FC07-4344-A0D8-E6E11A9BE2E3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All,

PAPPL v1.2.1 is now available for download from:

	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.1

The new release fixes some key issues with localization, client limits, =
and compiling against older versions of CUPS. Changes include:

- Fixed a bug in the max-clients support code (Issue #205)
- Fixed compiler warnings (Issue #206, Issue #207)
- Fixed corruption in the English localization file.
- PAPPL didn't compile against CUPS 2.2.6 and earlier.

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_BB902CFE-FC07-4344-A0D8-E6E11A9BE2E3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKP1i8ACgkQvmfHXsgf
MkTQig//Ryw66XfkjIOjRTr2eLrkFgPcoZujOXM5JpdDB91u5hsfKIvyjGbD6R/o
SRGsvsnz2KmAl8iwX9nngubXFYKxmMWnOepL9kj0F5ZFoPxdqQJ7IY5GTWiNR/df
ak7xe24lm5IG9mrY4f/bEcTKUY+U91FCmjEb9DOCEFP2MAz0wb50oTD/nJv2ssqX
weLBW/SlXZPSIP9NcXYbG+ySKD7S0CpTFuQS8CJFl0peL0sa4oZG4M6+RvGm8NT2
FIWU1gRqWAEcryEk9S7wsgm/fW5HrqpXN6YGI3VXrgk+qLjvodQM3+xNbCjXa0Hn
8q6WBQZVdv7x51Q/0YtcTJNd0k7ZS0a8BiDbYDwfkPRHMvW/lwHYS3G3geLk9us3
ZLKrI0H4rUZH6b3chTbSHJ6xalV8fJJToFQE+ngGVwZwZ1yLQvWORSDCk5IfM/wc
Hn6eJNUW8PuVuqZfForOB0mBj2GW6o5qWTAHNIfWzu44bJrWEFKUXMOhlVUMCg3m
ShrpnvyBcQUDH01SbjJ4X2r0xhBnwiOJoG3jYji/GnMNoFBc4/LdSDStMxrStEAN
/8QfE6wZ5AfS/YlI70NvQbnu1w+ruhXlUP2kPwhu8HyBld8fVohFCHJDYd0TTHir
ADLnTbO/i/4vt3I7QJaica1sDC78iMG+ML3gE3TSU7ov35AVJME=
=eTGC
-----END PGP SIGNATURE-----

--Apple-Mail=_BB902CFE-FC07-4344-A0D8-E6E11A9BE2E3--
