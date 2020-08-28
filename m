Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598590287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:autocrypt:autocrypt;
 bh=z6VCv2aAhzTb1Yek7f4qW288fWttbqtW4YEgQRScSso=;
 b=WL4qpNL0+Fiv6SK2UdjJcL9uYEy16IO6HvNNbzXXTgko6iG8At1K1eHTghkoOzmNF2opJ5
 XBEmaxUWuRUW6y3m0Rzqk90X+rK0DTKvq1R2pzE9mDGBrfRZB/d/Qs7M/aRHYk68dSroZb
 DFzdzwViQgGK3DlNXu7b+7pvScXCY50=
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <347c59d7-1adf-c4c0-5eee-9b279b66793a@redhat.com>
Date: Fri, 28 Aug 2020 06:51:21 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="XAs5NUnXr84becjEMmFKBif8DZaihAo1P"
Subject: [Printing-architecture] lprint shipped in Fedora 32+
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--XAs5NUnXr84becjEMmFKBif8DZaihAo1P
Content-Type: multipart/mixed; boundary="adWodTHggTXhJFuFY1JjzYTLXykMBcNop"

--adWodTHggTXhJFuFY1JjzYTLXykMBcNop
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,

since packaging sane-airscan in Fedora made into monthly status, I would
like to announce lprint project is now available in Fedora 32 and later.

I'm planning to package goipp, ipp-usb and pappl in the near future and
investigate how CUPS snap works on Fedora+look into flatpack possibilities.

Have a nice day and stay safe,


Zdenek

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--adWodTHggTXhJFuFY1JjzYTLXykMBcNop--

--XAs5NUnXr84becjEMmFKBif8DZaihAo1P
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAl9IjUkACgkQFapqf01C
J9d84Qf/YbYV6Ty5pnyl743I3R/6q65uZT3jAgzUyJ1+ftl1FvldTltnEBEtU2t+
TA5rx6LEJt8u+mHfiEH1X13kXUtkGTzWbbbm68D7y00HZfwjHNkHBFaWaVpKj6hS
WOEabS8s95rYtave+UxjAjXcr8aoN2s0w/G1c1xpJ60WHBh0O3KdUrATkSPuKOJs
G9URQjtv6XGuTlE0GbBAxi4s58avT1vdACwJAZLa9fb4YhzNtMM67pN7mdbbQQL/
W4PdtltmT4ZEY5+yxrQuPCWLOR0FLwMP8+1ojnTtNlCBX2tvn/aJ1X44NVllWDWi
yHHVDhb2QlNox/wbRGSRqQIiNQgNVA==
=QF0n
-----END PGP SIGNATURE-----

--XAs5NUnXr84becjEMmFKBif8DZaihAo1P--

