Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 747EA81AC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5938881AAB
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 4FFF381C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1697468324;
 bh=cC4Shrj3IjCzwF0q/IzhAeYulhS4DEPrtSYZeHDEq8Y=;
 h=From:Date:Subject:To:From;
 b=ZYpHI68oVBISD1jkkifGOkAydZL6XHnGZK08/pz4/NbvUVz8EQY8Gs+nuuWXGWZ2S
 IRiBX5zoPY8GNZE4cb7dfz481AuEAK9JwP0XTKZi/49zJMGXK/8bofaaSMcE/x6wR1
 xx+dtpMD9pyuZb9fa5FB978i8MGOlfOMioUzO1AA=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_970E4113-33DA-49C6-A32B-11CBD1E01417";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Mon, 16 Oct 2023 10:58:32 -0400
Message-Id: <BAD453E2-749F-4A20-83CF-9FAF6FBB10E9@msweet.org>
Subject: [Printing-architecture] PAPPL 1.4.2
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


--Apple-Mail=_970E4113-33DA-49C6-A32B-11CBD1E01417
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.4.2 is now available for download and is a bug fix release.

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.2

Changes include:

- Fixed potential crash while listing devices (Issue #296)
- Fixed potential deadlock issue (Issue #297)
- Fixed loading of previous state (Issue #298)

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_970E4113-33DA-49C6-A32B-11CBD1E01417
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmUtT5gACgkQvmfHXsgf
MkT4fhAAjeCLXSk3tffV8wu4C9BWobNyiL9Ze8gU0Cqd6x7BUi3NoyPOITCBvyoW
okFajODHUCj6MpKzyc5jVJYnRXZsX2c//ARrcMCEysjilm5r0Zn669pprt3lESnh
r/C3kVH/WFYjfY86Oe77tBN073MlVKYRQuBX63AxA4jwCbxNY7WR7DxfcvQgpYWP
Zb1zyTgE23/ImU8Sb69LR+Mw4GETrupwVdNAe1u/jGZYQGqMtDWJXRR4lGB91iRa
fLshFkF2n7IwYGefKPotyWRNG0unIATHJArnkO2mmN9VCmtj+gnv5GCvJQx6IYF7
mzcQ/45wXGhGiFKydeXsjpnoyB0PUMFfUdQrkw0UVmOzwdNoD9CSch2K8NwGwIeY
u6rFnGhXzQqR2T36GmrhjUZxjJJdvvH4Kl/tCGub45c34M969vK1D/y/g9mlYIwD
K6x9VBzADqbhKfRE5L7hpXcmNHoAn3sWsplHBRfv+uu72BbRtpCc6PxwTwsKh0QZ
82ZY2GOnXuYwIvlYDbczWB9zsxlqC5sgGnLRn0Fs1Bi0uhQmTV3rZVvw7svUDNeb
cOxfC1eEEuGryBtFSs3GbZt/jmiTujA/j4oQAnJuSFfsLpXCJKtOOLoTcCL57iZN
ax2I/zSyQK7Ev0bsudWw00QzzlkYYWpxUfXOiDFme71lZlibIBQ=
=Oe9G
-----END PGP SIGNATURE-----

--Apple-Mail=_970E4113-33DA-49C6-A32B-11CBD1E01417--
