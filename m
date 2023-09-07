Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBA7883EFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B865183EFA
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 30617803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1694101506;
 bh=Wc/CTaBMIlSIUb69pQkj/f0SwrpKxpliMoFSmOLNUVs=;
 h=From:Date:Subject:To:From;
 b=aFZDfit2v2Sksx1qukVGY6/FGe0HdEOpQYUbhJfdWcaacfKg5TieToP2RNdBudn9G
 VE+mbjSl5BMrfbuulGLHOOMeSaF6Wh7NagxeIu4EM8vlGzY8nrgcUsETFPKGrLguv/
 44plI5BEFqttyjiRqWzg+HqW39iB9ivse1iJnBtI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_87513A61-994C-42DC-AA20-7FB2AA1FF952";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Thu, 7 Sep 2023 11:44:26 -0400
Message-Id: <2D3452DC-E5F1-49E1-83B0-97FF45BB56A3@msweet.org>
Subject: [Printing-architecture] PAPPL 1.3.4
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


--Apple-Mail=_87513A61-994C-42DC-AA20-7FB2AA1FF952
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

[Apologies for the churn; apparently my CI testing didn't catch a =
problem with the GNU TLS support code, and I also got a separate bug =
report on a HTML error in the network config page...]


PAPPL v1.3.4 is now available for download and is a general bug fix =
release.

    https://github.com/michaelrsweet/pappl/releases/tag/v1.3.4

Changes in 1.3.4 include:

- Fixed builds with GNU TLS (Issue #292)
- Fixed a HTML error on the network configuration page.

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


--Apple-Mail=_87513A61-994C-42DC-AA20-7FB2AA1FF952
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmT579oACgkQvmfHXsgf
MkQ7tA//TTzQD8CyJfDypMSrQb/kZMZUsrFrbaBT16KQdOGQX7RmB3ZOowj5hGR6
ExqSnUNZOpu0MQXoM5HLVRjmoaZ/BvMuo9ZHLBeimyyNbSNxNLXcB5eaRbUa6oYG
ZVBtBL9cCD9eqc91aDatnJpd5fkOWVb0NQYa46z60vfdcNxCI2WmXPGxu74mph1u
vavrohSRdtbh4tEWA0D8uusugizWbPMbZ9dMulz4jHLvbdk1YjP3l8t0hJmZBoPk
q6eHeAyBbhjAe6XfQEzWsEAmJ7yToJgf44zKKoftHu6Tx9qW3tgI+FL0ASJ8DWQw
n1tWD0cQLy5hN60EAfzODx0lssCruwuuJBFqkDQdMjc0ddLu/CM6WjQfFp7pHhS9
pLyHqYDKwsV7Orqb+6XOtrF5+co8yziCiiik4W78RUsfrVoAtAPQukwgIUl0jIN7
6naP/HJy1xuS06FlMA/HCduLFutxRIzb2xBoBs3ywf3XzRVwAiocV95w6FUVslAG
mI6txA/+3F9TCcaN61X+tP3KTCht0v303DrgNXk25r9VLon+DnXLjog13gIJ+kmO
oaHOR+0v+iqIOOvNFoOLp3uGPQkL2O2Sb5aP05nUWQd+bgWtYWAzUKaO+Y6sFNOo
ediBDLS4lviEiEw6twoExU3CncpbRwgrPPU0dxWNzM1CZLDimgo=
=qttn
-----END PGP SIGNATURE-----

--Apple-Mail=_87513A61-994C-42DC-AA20-7FB2AA1FF952--
