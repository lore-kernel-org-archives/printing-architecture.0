Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BCB1405BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09545400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 866B080431
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1663802027;
 bh=r5Z68xJSjnjKT5FWwv0i4/C5gq60T2URmU5xCikbIAI=;
 h=From:Date:Subject:To:From;
 b=VCRdJVKXsve20aJzz5JC5uoicYCdw1cJWV/09wUkXKNiW/4vOim9jhcqugyUg/l45
 SMg/Tn2Dvh24FuyhWCLbuPu3ifc1/toUrKHYGqXE+Mbh72B73Vg3VFfO5U15a92ARo
 NrezjjK5MHQLUOD/vy/E1WKzV3Aj+uZv2LpPYxBM=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D2B74625-0F86-47C2-BE72-91E8096FE9F5";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Date: Wed, 21 Sep 2022 19:13:45 -0400
Message-Id: <2EA8FD28-1299-4012-834B-F4DB6099F760@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2.2
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


--Apple-Mail=_D2B74625-0F86-47C2-BE72-91E8096FE9F5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.2.2 is now available for download and is a general bug fix =
release:

	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.2

Changes in 1.2.2 include:

- Added debug logging for device management.
- Fixed a device race condition with job processing.
- Fixed a potential value overflow when reading SNMP OIDs (Issue #210)
- Fixed more CUPS 2.2.x compatibility issues (Issue #212)
- Fixed a 100% CPU usage bug when cleaning the job history (Issue #218)
- Fixed the default values of `--with-papplstatedir` and =
`--with-papplsockdir`
  to use the `localstatedir` value (Issue #219)
- Fixed a initialization timing issue with USB gadgets on newer Linux =
kernels.

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_D2B74625-0F86-47C2-BE72-91E8096FE9F5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMrmqkACgkQvmfHXsgf
MkRgJhAAjn41xgB00wrIDKykSgCgsNl5AQye575XA327jzXARndgYCIPw/a8QTUB
OtAmta+Lh/lSmMe0RByaNeQoJxNHXfgxlKkzGg01lkzX4ROHz7X3qnc6JJE7om7y
MIRNt2iYpSrDPBS5Hu9fKuG1dbjFjYwbRKMLPKnFoXnXhFnvpvL5C3xuvO55h+Dj
nQtNn77DDmSQiJGkVwrTESRMI4PBPqG8YNXwxH4x8aKYuE8UNqcOvBHXKqODWEuT
y3drDx0M8I/fho1KEoH5SKMHIZzRnfsVFYNG5qx+yvfNeW8II0jzExs39MZtJA/m
YN8lC5Khhcl7hstWjnNymsL43hFuKDNSOMLgSgmkB6ZntrOi6Z5TXxY8dqbcpkiN
QsIGLwblBgECFVRS+3NrzXUogS49elbU4tBq5h0fJqbD1ROJOF81HENERASobuOL
JDJaSeRtMrpgykLgvw0rLSeIhHKpKdCz4fvq6IqBy+5EW12gSynV+7sGbuGg5kra
uC2HB7ADihSc1tir0yj9TBzGDR3OWCQwPkLzInI8mrG41NRSyB+WaB39KQqLtfa5
JhOdIPlQ3R4KsgYnxkScckWS/re4bcU/euaJxv1EFhRmFTtMdR+/j8o14oS5GQ7L
iOu9WPDobaSCSrlgkiG/lSnkrnE120n7+R4XUczTHveySdkHjKk=
=y4qI
-----END PGP SIGNATURE-----

--Apple-Mail=_D2B74625-0F86-47C2-BE72-91E8096FE9F5--
