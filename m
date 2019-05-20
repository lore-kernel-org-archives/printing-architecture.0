Return-Path: <zdohnal@redhat.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
Date: Mon, 20 May 2019 12:43:41 +0200
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="F4x8RmYQx4Ooqaowm52XJjZeiAUSQkWwG"
Subject: [Printing-architecture] RHEL 8 and system-config-printer GUI removal
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
--F4x8RmYQx4Ooqaowm52XJjZeiAUSQkWwG
Content-Type: multipart/mixed; boundary="929h1l6sPJlaPzUegHBcQCrtcGi1pBcCz";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
Message-ID: <a6b09ce3-c0ef-c273-7887-0daa4ec52edc@redhat.com>
Subject: RHEL 8 and system-config-printer GUI removal

--929h1l6sPJlaPzUegHBcQCrtcGi1pBcCz
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi all,

Red Hat released new RHEL major version, 8, where desktop team and
cockpit team led initiative for removal of GUIs system-config-* projects
like system-config-printer.

These teams decided that GNOME control center for clients and CUPS web
interface (or cockpit using CUPS web interface) for servers are valid
alternatives, so system-config-printer GUI is not needed. The library
for dbus methods used by control-center, scp-dbus-service and udev
subpackage (tools for automatic printer installation) stay in the release=
=2E

Because of that development (work priorities were shifted) I would like
to ask if someone would be interested in working in cooperation as
system-config-printer upstream - for GUI part especially, where there is
request for IPP everywhere support. I'm trying to at least maintain the
project, but unfortunately I cannot find much time to implement new
features in the present.

Have a nice day,

Zdenek

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--929h1l6sPJlaPzUegHBcQCrtcGi1pBcCz--

--F4x8RmYQx4Ooqaowm52XJjZeiAUSQkWwG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEettYIDyl8EbygCWyFapqf01CJ9cFAlzihN4ACgkQFapqf01C
J9c2RwgAwEultRWha1Da3AY4pGFgQkbvmrJ9y+fdn57vlSEq2yOgDRaMQ/u1ZJc+
KfB+QFA/Zv+Toa2SDSJM63b3sbZegZiyx9/hl+uIScfSMxAdJH2aiZ9fjbiS5hXd
EjtaWC7kbSNvMOmu546jJtch8cjOr+5iEjogOCseJjYJdk1WS6czI7MAIKbY0wSW
Eyglg1/XHY4qvDogs0P/iJjgIkOuzP6PexqK2ldvpK52R2nqQLLTAOTp2RtLKOKL
PeqxYn3sHeZRsJ4oUFf7Uzl4aw3BzeBhciOSYpBQtgOKgHZGGYxovf9rYRKP4iLt
Y6bPvVLDXpiH3xz2kN7Ai1ChPFtGHw==
=PiR0
-----END PGP SIGNATURE-----

--F4x8RmYQx4Ooqaowm52XJjZeiAUSQkWwG--
