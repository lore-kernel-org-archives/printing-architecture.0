Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 22EE58207F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1640285320;
 bh=VttzMLEOm1APSJMDw7igX2pLhh2RnL8TQr/G2WGaZ5Y=;
 h=From:Date:Subject:To:From;
 b=k1d+OpkjHfR22cGaXL8Nu5Hz+Rz7OlpYsfIcgqUen15OTOB1ERMC+Z5BY4B+A45Rr
 BOeYHHMCHTz42XdaJP6OhJSoQWjPK88Xj4JaqZpttlsq31W3+HxS2LiCWJOyUdD7Fv
 vqbs1gpGVlDPeygSBoMEy6ncZ5nffN0rY/hk8h8s=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_A6846397-F06D-4611-97C5-A47EF08566D8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Date: Thu, 23 Dec 2021 13:48:38 -0500
Message-Id: <2F7E187F-3045-4562-9959-15C2E07333FA@msweet.org>
Subject: [Printing-architecture] LPrint v1.1.0
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


--Apple-Mail=_A6846397-F06D-4611-97C5-A47EF08566D8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All,

LPrint v1.1.0 adds support for EPL and 600dpi ZPL label printers, adds =
status reporting and automatic label configuration for ZPL label =
printers, adds auto-setup and test labels for printers, adds system =
service files for macOS and Linux, and fixes all known bugs in the =
previous release.  Changes include:

- Switched to PAPPL (Issue #20, #35)
- Fixed `lprint default` and `lprint delete` not working (Issue #17, =
Issue #40)
- Fixed server crashes on `SIGINT` (Issue #18)
- Fixed the reported date and time information when no printers were =
added (Issue #26)
- Fixed a startup bug on macOS (Issue #34)
- Now support auto-detection of printer drivers and auto-add USB =
printers the first time LPrint is run.
- Added the missing macOS binary package (Issue #33)
- Added launchd and systemd service files for running lprint as a =
service.
- Added support for Zebra/Eltron EPL2 printers (Issue #38)
- Added support for 600dpi ZPL thermal transfer printers.
- Added support for ZPL status/ready media updates.
- Added support for test pages.
- Temporarily removed support for DYMO LabelWriter Wireless printer =
(Issue #23)

Enjoy!

Download: https://github.com/michaelrsweet/lprint/releases/tag/v1.1.0
Snap: https://snapcraft.io/lprint
Home Page: https://www.msweet.org/lprint

________________________
Michael Sweet




--Apple-Mail=_A6846397-F06D-4611-97C5-A47EF08566D8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmHExIYACgkQvmfHXsgf
MkQWRQ/+KZFX917olUsvD1LJD9K/9W/ylG/7ARl5tmSgHt0r4BYvyPSrInMqT1EU
KXVSYdzJdQ4TdsnNslI6avciuG6c8R5+3u/nsEkoAygMsPQZ4dJEkYyMWag4QOUn
mIcPkiYvMDKRvu/kKf9Q++PGZkpk4MEFaBcFIV9JLb8G/75qDgyxmykpi2siWcTE
PSibOitI2v3TB5DSw7aYdXc0IH+EWU7Sf/i3n3jOoyQ+66PGrjbIAUxnnMMFBsSN
G3l9pVv+hJ6PM3ooisxv+U5wK12Diy0AiIKCu2Dr6+gdUVczS97mnb2GmfFChE6u
xIoip1lZyR/Kdnrt2Mp5PYiqSoQCmievl37L7uuIZKARX+nzUY6oWO3uBT8YTcSU
0qHyzAoIyU2QS6NL0Cmr2od1LbAIYD+HRhjsOdKiOoR/9oUEeYxtuTzGDdnsBp0r
joyw/AHDuMluYxg8LuIgXmt3xmI83ZHrJ8/PE5Wg52GZ6ilXDJxQUsxkqJzR9ckO
HNVs0N08FKEGWWe9IGHowdn4wTgEjR41Kz9KWnPV8vFMk27NRB3IWh+oD2MZvykT
x2kK1Que+cVmtAgA8VBQ8UN7iScY1+rXI9Lts2VgzILVQbo14uvFkq5Y2EGICIyL
rUXOF8BEniV8IaaMQQv49qi2ZUmVXcUrADXidOwl+uqYpFaXEZA=
=ivr3
-----END PGP SIGNATURE-----

--Apple-Mail=_A6846397-F06D-4611-97C5-A47EF08566D8--
