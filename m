Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org B1E8981012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1648737141;
 bh=0g9agtrfQ2fLBHumkxVy3jmavf8/AyqZ+BpTlNU63xU=;
 h=From:Date:Subject:To:From;
 b=do+UwMriLa0uD8WzYCzIEa58J61I+wfjV+8qXosd38w4Ynfk3Zj1XQMP/g8DszeHL
 aFPpEXTllOe/bQxtHbVuqUNqjuz8/PH/KtQnYF0iFOj4y6tTCCBZLayFJK+IU/KQf1
 OscLKu2LLFx6jy871GCq+4WZe4V504MdLdvZdVKo=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_122C88E4-4F20-4D1F-99BD-BE6478DD4E39";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
Date: Thu, 31 Mar 2022 10:32:20 -0400
Message-Id: <FCF5E769-F94E-4B0C-83FA-3DF618749621@msweet.org>
Subject: [Printing-architecture] OpenSSL/LibreSSL support now back in CUPS,
	soon to be in PAPPL...
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


--Apple-Mail=_122C88E4-4F20-4D1F-99BD-BE6478DD4E39
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All,

Starting with CUPS 2.4.2, you'll now be able to build CUPS using OpenSSL =
or LibreSSL instead of GNU TLS.  I've restricted the OpenSSL API usage =
to functions that are common to OpenSSL 1.0.x and LibreSSL 3.x, with a =
very small amount of conditional code concerning TLS 1.3 support.

I will also be adding OpenSSL/LibreSSL support to PAPPL, where it =
provides support for managing certificates and certificate requests for =
printer applications...

________________________
Michael Sweet


--Apple-Mail=_122C88E4-4F20-4D1F-99BD-BE6478DD4E39
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJFu3QACgkQvmfHXsgf
MkRJLxAAsDLJtA9jlSFusa4Vzcr9nW3WvPsf2X3KHYXmCYJ/JxpH5PrCt+xyTIGF
pom/5Vha3CPtmcG/8ZtgtR2up9qm/1EkIf2xdeaTeojByx7+QbpIUy/X4CYpyXTy
l32QSmHpMY9cRjq38KyIPaqilW5lST8ISjsvCTbbNUwt16oBigeRBFOYgxNyVRo9
PNpD89O1T4hkfmzl2z8AlL/15qNNhte4NGKGigN+XEG3rnz3Lw9Sz0kXW8DPs2T7
8ZFf2EJ6MEzOERtlB1377s0BnLwAJLXT6unUj+DBl/PRfp+Y96fb5CIL2lDFiZ36
rP7OQo2UH6Lva3yNLLPwZusyWme15gkY7f0hxI811xura8Poq2QhHCNtJPYkYNwP
2KyHrWLEDOGli/Ya1cVwlsteetuBvoqsjozSuLsuE8fsPmZ5xAACRSHF/C1ddwYq
JjxZdHDddTzJpokaTmRn8xnQMs3Oh7oRc5+mJVUJCNDkpm/4FapxgHdvgiaV7lVW
4e7iSmOW6K50dUQUDKgQOtDkxr0j1Ll2zZO9LndE9oSDHW9FQPgo8Y6NpFms2OzL
x0Ai0ofME589FngFAUKh1oFD+hFTFhlh2394JTEUDu8kQyM0W8yhgNFMRb2X3/Z0
lcYRZYzGVlBWwsINfvGudQHvGHtTmTbvkUogsc8OqLMRbMdrdtc=
=IE0t
-----END PGP SIGNATURE-----

--Apple-Mail=_122C88E4-4F20-4D1F-99BD-BE6478DD4E39--
