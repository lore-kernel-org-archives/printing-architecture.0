Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB0C64013F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 336DD40017
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 02618803DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1672458145;
 bh=0v2tndC9/VjdugmbRsqBOd95dEheDA45dkAFJEmoU48=;
 h=From:Date:Subject:To:From;
 b=wVvNlx+mxlECMciYYktpPfmyh02ubZL+5d1OlaJS1HRxWZQWyCmj0LjSI5BDRz1pp
 JsWhx3m2QYN8ArHgb8cMEJaDvsuCldyUdxUYJ5yuR9bdXrXsWrjOacYLj/ax+FLB5r
 sC23LvjITmklnEFthAsUXXy9ZCKmM+AmNCQOV+iw=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_C89A7BE6-66E6-4925-A517-F0E39FD4BAEA";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.23\))
Date: Fri, 30 Dec 2022 22:42:13 -0500
Message-Id: <BB5416D5-3895-41B0-99F0-46E3208F3BBB@msweet.org>
Subject: [Printing-architecture] PAPPL 1.3.1
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


--Apple-Mail=_C89A7BE6-66E6-4925-A517-F0E39FD4BAEA
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.3.1 is now available for download and is a general bug fix release:

	https://github.com/michaelrsweet/pappl/releases/tag/v1.3.1

Changes in 1.3.1 include:

- Fixed auto-add of USB printers
- Updated "ipp-attribute-fidelity" support
- Reduced sleep interval for USB gadget initialization

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_C89A7BE6-66E6-4925-A517-F0E39FD4BAEA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmOvr5UACgkQvmfHXsgf
MkTKVBAAgnwVQIIX6vFERIoTZAKEXP9QWTCW5vOFVTBtaWZ5nqEIdZ3hMzjOUcjY
TatTpq2Pinh/pP4qfdWQsF5q8wrbAEUkSP/3qmz8Tp0A+nqwCvmdzPEgf2haYuOD
Vvsq5gv4KN3YHMTKhg7GVgN4XC15BFv2G+86oDyZ2TyPmMIpYIMwb6D80/aOhbAn
ESUqjUxt4IXqw9XwcbmGVAdnQCfSq8FlrbAxOb9A9O+VULFpMMKC+lNSEoR00e+0
mVrvs0CyRa+VGexaiWYemfTBQ+pQxe59a6TwO/wAkpZcktjDqzScoluNZ6WGt/oZ
A/wnzg7qXsj7/B8pwv/VfFwXYwYiyJ3KWCiTty00LwSTJi2BlfEJkHi5lvMtgIb3
NWuxvDbrj10Oq1uotUNw68ckLMTx+lEWBIDIyyG4x8bKhNTFbAz4MSOoinwXMwi7
zSAlueqcmlLPmugrnoVWJOHEN/O2MeaEYE8c3YtkJGaBBsTvjC9qN8r17UvIpPpI
lwyQc7LmjBYdyyZOdp2TEZIP6Mbr9WF1nWPSUnpWOVOqZ2fKcmv3hjV1Au6nWhGm
3kOoYHMKbY0DN/ihvjE/QQeam4xsyqN2yWzalGE/5TCTcrfsdPRoShInn1shO18X
n6JhR7ruEzQBLt7X6i/fAxrbekJwXy3TA+8rxBnpC0/+/vwW3/E=
=8taP
-----END PGP SIGNATURE-----

--Apple-Mail=_C89A7BE6-66E6-4925-A517-F0E39FD4BAEA--
