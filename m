Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 51A4D80D33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1650749261;
 bh=kpZYS9B6ONILfKGn5cZJ1hFoQGHvOjyPa6P1BpCrrsU=;
 h=From:Date:Subject:To:From;
 b=hCOV/CtGHXLHzD3eJ0SJxb6ISUfyPuNVvjnC3rCEAnuBmBn7cvSo9w19P4w0hrQbQ
 1Ozuzle3xS7AaXVwe6igDMycDZwFvg+FOhHsezrgxFuB1FL1INjYuDd1sGIx8/GBem
 NAyyuO/3DZDIRQnCzOtL2AqbUuEf6ChOUNhLTLr0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_5052E775-E483-4F90-BDFC-A682BA09E814";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.11\))
Date: Sat, 23 Apr 2022 17:27:39 -0400
Message-Id: <FD6CF40C-51E8-42C8-9980-1EC5F1123C1B@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2b1
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


--Apple-Mail=_5052E775-E483-4F90-BDFC-A682BA09E814
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.2b1 is now available for download from:

    https://www.msweet.org/pappl

PAPPL v1.2 adds full localization, support for additional IPP features, =
and some other improvements.  Changes include:

- Added macOS menubar icon/menu (Issue #27)
- Added support for localization, with base localizations for English, =
French, German, Italian, Japanese, and Spanish (Issue #58)
- Added interpolation when printing JPEG images or when using the =
`papplJobFilterImage` function with smoothing enabled (Issue #64)
- Added `papplDeviceGetSupplies` API to query supply levels via SNMP =
(Issue #83)
- Added support for custom media sizes in millimeters (Issue #118)
- Added `papplPrinterGet/SetMaxPreservedJobs` API and reprint web =
interface (Issue #189)
- Added IPP notifications support with `papplSystemAddEvent` and =
`papplSubscriptionXxx` functions (Issue #191)
- Added `papplPrinterDisable` and `papplPrinterEnable` functions and =
proper support for the IPP "printer-is-accepting-jobs" attribute.
- Added OpenSSL/LibreSSL support (Issue #195)
- Added `papplSystemGet/SetMaxClients` API (Issue #198)
- Updated `papplPrinterSetReadyMedia` to support up to =
`PAPPL_MAX_SOURCE` media entries, regardless of the number of sources.

Enjoy!

________________________
Michael Sweet




--Apple-Mail=_5052E775-E483-4F90-BDFC-A682BA09E814
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJkb0sACgkQvmfHXsgf
MkTsKhAAgbFzP3lSIRW6zPdY18bWfzT57CVOA/v2lLxBkW5ewLaj2J0hHfTK0P0G
S8qEDmc4qXGeVpqM1wlbvuapEYbvmy50CrOyGAUKdAwHASA9KbN7ZJ+NJx5ptFVz
kvuGFWNVM+fM+vPvwgxNhOcP//ViCTK5cWACRTB9DJ1lcmyj+mC3nPJKUZrP2D+W
ygY52LLUhQhj51VauZPTEPb5KQxvHeBx4OVz9C6tNGlks1WEsoKLpFlwTnd3XN+u
oFJhdILYpO2NxCQ5VAkhdERn5JyLE4GARKAzsN9/9iK0DRlj4yKeo34xh6zrTyPf
X+7lnEJfkWZUwc9FH/xl3rYnLsOeGwMYFRFPnzUcU7RXXP9AeQu9UwejiJk886+m
MoD91U9ApoyFJPeF/o8ero1F5DFLhU/zwSUfiX47i71rT81MVHgZgUNuCHp/rhA1
5cBHGHv0S0qlR+68LATC7z8rfWQpVW8BabWFwnWoqp/EcmkiYwdJi5Qwo6h0nWZM
5VCqorkH2XpAJ1oUZkrka0N3qluOqygwMlrZRgx0RyfD3ZwPsUtVFHm6LRkyapE4
X+l5le8fS6NdQUoIMjqit9lw8vD8Py9c0yD+FQ1JBwiznYS3ZQCfpt27oh/EHZ0S
Mb1zDFO/13NoAWqGXNPfGDwpODYEewFRH076MPZYxv5cZTHezcw=
=lP1D
-----END PGP SIGNATURE-----

--Apple-Mail=_5052E775-E483-4F90-BDFC-A682BA09E814--
