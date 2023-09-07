Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F155941BD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABE7541BD4
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3952B803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1694096745;
 bh=5KEBH2MjM0OMQHskZfMNNCfAnqUl09BAezstSYpj4fQ=;
 h=From:Date:Subject:To:From;
 b=UVLDM2+fdQ90zZMFV3fEOV88UU25prXM268eAkvfk7RVaShNFR4gElH1D2RqaEXUh
 UAHGAEP2CF48iKSnBzPYu/8R9v5yff21iF0H40hNZrcs/taba/Gs7KTWC/uqmPNkpm
 C5xA12ZhMAmY5QUownLVtA2jArGqRvHza0FXqugo=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_665B49CD-BEEB-442C-9A75-30BF54FE21F8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Thu, 7 Sep 2023 10:25:33 -0400
Message-Id: <7055C646-3E97-4DC5-B643-B56E79A04530@msweet.org>
Subject: [Printing-architecture] PAPPL 1.3.3
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


--Apple-Mail=_665B49CD-BEEB-442C-9A75-30BF54FE21F8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.3.3 is now available for download and is a general bug fix =
release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.3.3

Changes in 1.3.3 include:

- Fixed USB serial number for DYMO printers (Issue #271)
- Fixed DNS-SD advertisements when the server name is set to "localhost"
  (Issue #274)
- Fixed hostname change detection when using mDNSResponder (Issue #282)
- Fixed authentication cookie comparisons for simple password mode.
- Fixed a potential time-of-use issue with PAPPL-created directories.
- Fixed handling of trailing '%' in log format strings.
- Updated TLS certificate generation to support more types of =
certificates and
  to use modern OpenSSL/GNU TLS APIs.

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_665B49CD-BEEB-442C-9A75-30BF54FE21F8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmT53V0ACgkQvmfHXsgf
MkQ8eg//c8sMPMi/D8P/fGkKvD+FreoJR5jcIwvKN59Z11fi//fvEtEjfv1fhTNB
TL0Q1IwPzILMxpU2OpftP3v+eviHxyDK+dyW5bcqt9pWTj/7Y+4k8PczqsWu0Igh
nXT6DJY9io+RyC2CL7hoalmab3ZwKS/URVS/iLkZap775S9v0jXWRYJ+U0TxkXbW
GyB/gXPRZ622OJ9aw5NIws1wrPoSH4g+6sXwmmWsyijWal5aRSKeXKBjZ2lINOhN
robpZlhVfBEF1N5e0UFLyZE78bgeE/kzpHh2HeCA8xLmfJvj1Yn/d/UemPem5942
sGw63Ddd7c8ZQwJ33PyKipQafPb7Zw4f6fQfQTvAZEJyKxpJP36usJXbTpuGp3Xn
ma7F+yy/hJ39J0KpDtg3AyU9cSvC9Fd0YU5N5FS1hV+S/P937zzspSMKzF1teZbW
IIjFsVf7MxNg9IeSV6FAjdYu1pSIuvXWPaWe1eG/AYVnBHiSCfETJykgBSf8KcfS
I/b3kVHmIhEIFKGf5gySKPbfz37mUTmMoh3x2/lpgR8wOI6y66KCwgqPVTGANohu
VcCBpg1IwyvztKxE6yYkoS294LnVctnAtJGUiB1hIIbmmCtKKbuVt9rmGGRwDCdD
tyU/0t3hB9QUQpyj2r3K0oe09EQf9kZoaXD1vDHYFL5LqDdxkFE=
=VVYH
-----END PGP SIGNATURE-----

--Apple-Mail=_665B49CD-BEEB-442C-9A75-30BF54FE21F8--
