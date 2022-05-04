Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org EBA4D8238B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651625394;
 bh=CMOjWy3MmrDcXBxLL8LKeEFUsnrPcp7+WQhcp5UKJX4=;
 h=From:Date:Subject:To:From;
 b=v3kFRCsGfS7zzcEHgKlh7eEXJzMhJAzBtG1mlOo1UGpA7BzOjDjh9XgjKXgsYQjYq
 LHIrAEZhcOImn/hyrIbrtgRFnw+Uvhb6sr21kWayVT3k6Jc6JAmpTmkq2otjFcQsg2
 lv0NQ3t3PWi5+pz07KId/h8jJZMwcti0PiDYCKVI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_97D09943-2A1F-4F48-A60C-4A2254BE2E0F";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.21\))
Date: Tue, 3 May 2022 20:49:52 -0400
Message-Id: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
Subject: [Printing-architecture] PAPPL 1.2rc1
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


--Apple-Mail=_97D09943-2A1F-4F48-A60C-4A2254BE2E0F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.2rc1 is now available for download from:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.2rc1

PAPPL v1.2 adds full localization, support for additional IPP features, =
and some other improvements.  Changes in 1.2rc1 include:

- Added explicit support for running macOS printer applications as a =
server.
- Added unit test support for the new SNMP-based supply level and status =
monitoring code.
- Updated USB gadget code to not enable gadget until system is started =
or USB options are set.
- Updated default spool directory to use a persistent, per-user =
location.
- Fixed DNS-SD advertising when adding a printer from the web interface.
- Fixed double "Supplies" buttons in the web interface.
- Fixed human-readable location fields in web interfaces.
- Fixed an issue with the default system callback for `papplMainloop`.
- Fixed an issue with `papplDeviceList` and DNS-SD discovery when there =
was no active system.
- Fixed printer compatibility issues with the new =
`papplDeviceGetSupplies` API.
- Fixed some locking issues with the macOS menubar icon.

Enjoy!

________________________
Michael Sweet




--Apple-Mail=_97D09943-2A1F-4F48-A60C-4A2254BE2E0F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJxzbAACgkQvmfHXsgf
MkQYCw/9EJDiskRc9HkSpGUbt2afhKnhrXM3gRQQsFeKdycS0bBuBSEq9RKNE/+4
pCIahqnzLNeskm9RSRla/FMXCC8Aelc2wL0N1EAqUzDUB89sFWIJ1741ReeLjaDg
WDx691KjhiXGnRIm6VFEG0etUDOf6pLiQe9IBB03eDkhPrf5KlvRN9hCn8EfYYuy
oJe3aa5rK9ZIpbhLOPTOr6yqLBVtbvIT9yo0blySKKPs/mTZ7tv0i3FgBisZPjXP
H3ePT4iXwJFKlOt553slzoMl0t6L0S32N3abyHuPz5WlIVx3p7xjCu6GM23WsshK
DPGbSPU5dYS0BA5eIlHDdip4oRaLvj5kBiN5mm2XEPqraDZBjLpatAsNld1klS6/
RngJTYeGizzQeXUfMEnC6RZUS8qrivKyFnHDynzXZ1BQRn5YLTBlcFXibjK+Dx2A
EOBxLFPKlJh9x+myQ8ICH1x8m7o9iWjOR3nRFO3cr9dg0MOyrNhWn0fAKhvI8PbO
UuawgP8OrGDeaO+2f49xZg4nhmE+g/AF7TSCFJRYr/jdFW2vuNOslRaeOpxgKcl6
aeLkcN9Bb4kBhu5xPala7fvkVibe+RhKU+eSJZVwHSCn7t9T0Ba//OwZiHh576a3
K1hcdUtk/QwwXPEizQCnSHUR5SaVypuNPTxjrprkWfjgBFfL2FQ=
=W6/B
-----END PGP SIGNATURE-----

--Apple-Mail=_97D09943-2A1F-4F48-A60C-4A2254BE2E0F--
