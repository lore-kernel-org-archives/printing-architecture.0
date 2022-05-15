Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 1B61280438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652618147;
 bh=SeriVb6IiRvwNl3FN0XXu4T0uA1AFsqa3Nq0sbcIAmw=;
 h=From:Date:Subject:To:From;
 b=h02xLnodST7JV4OfyGe/OuKFSIXWoG4dKjfBC6cy4G2HNyjzzCocGGK7YIPQmmDgb
 pR7CrxTAXqQ4jtu+g0y/2fQ5t2r5KoVV5FqkOeQouKbaSX+fZqEwrNDGQ5escd62SC
 38/Y2o8JaVSK/b6bee4rl3hZas/WARcKHCNwGzl0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_FF97508F-8D64-4740-848F-618D2406BD9F";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Date: Sun, 15 May 2022 08:35:44 -0400
Message-Id: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2.0
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


--Apple-Mail=_FF97508F-8D64-4740-848F-618D2406BD9F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All,

PAPPL v1.2.0 is now available for download from:

	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.0

PAPPL v1.2 adds full localization, support for additional IPP features, =
and some other improvements.  Changes in 1.2.0 include:

- Added `papplMainloopShutdown` API to trigger a shutdown of the system =
that
  was started by `papplMainloop`.
- Fixed mapping of MIME media types to IEEE-1284 Command Set values.
- Fixed a crash bug when no printers are added.
- Fixed compatibility issues with libcups3.
- The macOS menu extra did not update the list of available printers.
- No longer try to show the macOS menu extra when running from a root =
launchd
  service (Issue #201)

Enjoy!

________________________
Michael Sweet




--Apple-Mail=_FF97508F-8D64-4740-848F-618D2406BD9F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKA86AACgkQvmfHXsgf
MkR4pw//WrKhT2BUAKWe1lYcpVSvwmCdEYMsyarJedO2Ql6Pk30Ps3b64PqnF6Kn
ywMV/nTCgQppxJP9dJLD43WdSSFz3i4MylxahRdZcTZftig+dqG0aYEw2fSXk570
m9lHld3TmZLhqQUpd07AX6Qm4oXRix+JRb2ftoqHLpOYETienPGhYTla44ZF+L7r
i9rl4GK/Af11ErAquD4432WGjNPwLhJGYIL214BzihKAtrx77yNiiRYDYoTISXQV
nDq669htZgMxJFkk15SXgwIBAoyupi1wbXeFjvJEkZfMPboPeccXscd9BQpzTIOZ
cFoHy0c6gcJhy0nssDBKz+iip9y51KvbQJM3DyChILilIOWtGUDNduHpPs3ZxvXQ
KUmL+9M9P9NpYqJPBf3KE3WHb4nGNmwfMePRzCow7Rz4BzGHnf8MINbVFRnQzq9/
lsmCvsfplPf7x/CMDrf/CrRUuvgMdhR1TETjiw+yPqljbyWXfU1XPX2XX+CPka/Z
29bSJuD43Z6bX7Uz5eiefRXFBxKNoUL+fH86kXbdaTGNnVXiinR94ji9bzEf/xqQ
gJTZdICT4Pevpu5aKVc6bALjVpmFMASUcpVG2kjUB0QIaUM1t7jM9pMui272Ysxd
IN7DSICxic5zry34/wLxIp5F1juP31Jb/6ZdO9If0pxNwwK0zUs=
=RvOr
-----END PGP SIGNATURE-----

--Apple-Mail=_FF97508F-8D64-4740-848F-618D2406BD9F--
