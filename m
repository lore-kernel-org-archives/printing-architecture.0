Return-Path: <twaugh@redhat.com>
Message-ID: <1387213857.12274.26.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 16 Dec 2013 17:10:57 +0000
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-1ZYp95pSP4w7NhbSKJu1"
Mime-Version: 1.0
Subject: [Printing-architecture] Useful utility: cups-filter-check
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


--=-1ZYp95pSP4w7NhbSKJu1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Last week I put together a small program to simply display the filter
pipelines that would be used for each configured input format and each
likely output format (CUPS raster, PostScript, PDF).

This is useful for sanity-checking changes to CUPS filter costs, to
check whether changes to pipelines are intentional or accidental.

It's based on testmime.c and is very simple. See what you think:
  https://gitorious.org/cups-filter-check

Tim.
*/


--=-1ZYp95pSP4w7NhbSKJu1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUq80IXlVEo2joavTAQKMKAf/XGXKJYA5Js5EE0IfaVvEw4qX4sKIVJ/2
F+qMX0USRsZbIsS5khns2dNhOAmxlAkhL2UCAIj6f9S5flNwOLclklG3X0ymREXV
XehqXDtDb1iBBZ1MLfmUEnwR0wAaCLQYg/YFZsj5/5XQBJyOR5ZaK3U+rMXiR9gr
W2NIIJHgl3pTpuUAV7/6C+aWcBVez1g0Wn1XGtxbyuUSL5PbIsMNhmi9gl8vIzQm
LfnB30UxMfW36Z+1a/DzAxin1RgPNDQEHrcnfl1HJtl2pdoAHgbT20pl+hXuaQoA
YsMWLSooYRnLaaa1SU6jpSUozw5uT2GZBumnyVysYc30LEdVxThFsQ==
=Mm5p
-----END PGP SIGNATURE-----

--=-1ZYp95pSP4w7NhbSKJu1--

