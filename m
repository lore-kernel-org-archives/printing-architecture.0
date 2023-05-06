Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BF3460BBC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 767B160ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 9C5B6807B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1683377051;
 bh=ERpZVPIeUkuU8yFNL94jBEgNFCeHTtFTbLPHELoLqRo=;
 h=From:Date:Subject:To:From;
 b=nIQ0a4JkdrfYvsWndqprrOFacD/K/TxnozqvxD3O5Ue7rmN5XIj0SHlgMlp/mSBy9
 j+MIcIwv02slI6OWMtbO0Lc66IVlyEkWvgXJJxw35XQnFKD5TGEBLCpT0OdT1d5q3q
 o4B2gynrH/1G/ne/QTiZiNIwicXilp1V9ci7bMgo=
From: Michael Sweet <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_3698B16F-8444-49B9-8CB3-C4E7822E989A";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Date: Sat, 6 May 2023 08:44:00 -0400
Message-Id: <7BD2D5A0-444E-4D9F-B363-2299B74ED54A@msweet.org>
Subject: [Printing-architecture] PAPPL 1.3.2
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


--Apple-Mail=_3698B16F-8444-49B9-8CB3-C4E7822E989A
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

PAPPL v1.3.2 is now available for download and is a general bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.3.2

Changes in 1.3.2 include:

- Fixed PWG ImageBox values in raster page header
- Fixed a bug in the "ipp-attribute-fidelity" support
- Fixed printing of 1/2/4-bit grayscale PNG images (Issue #267)
- Fixed a potential buffer overflow in the logging code (Issue #272)
- Fixed reporting of "xxx-k-octet-supported" attributes.
- Updated the Wi-Fi configuration page to support hidden networks.
- Updated the Wi-Fi configuration page reload time to 30 seconds.

Enjoy!

________________________
Michael Sweet


--Apple-Mail=_3698B16F-8444-49B9-8CB3-C4E7822E989A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmRWS5AACgkQvmfHXsgf
MkTvaA//ZpxTOIG4f2euQM/HSrXdcS0ULW4atTpCFIPctvRdlezecmvgj+jCbxTt
03Lg3P9XcFSCajSnWB9e5doVooukmRBeQWiWaIMqSIFArlGnivZaBF0TmDqw4IB3
ltYFsEFtKcPqSEe9NZlBw16V5nwz1GvP/7a3LMAD4PJa4MXzezz7jotP+VEImMZc
2+uRQZ7u/8XLnP1mIskjqM2jr7On00C58evvn5AUQkQMZLC1cZyA636xttTlMAjU
SuDIXDTDt8GPN+FgeW72l2huG/7peUo3QKi/uiKZEKdohzAVvne1o8IyXfdTrNdh
aSoS24bm81HISqiaUQ01N4sf7LduEYCtJqDgce8L7HQhlDoXtetVRd3VBAiINmLs
/g4e9eoQaMb9PorEXHP/b4T2Uxd3LfvrHY9V6sXPe98mBhNg+n1uBePV3kNT+Y3O
+1chpjoYXo+RaH2eASPqvggsfyg8ihbScGCN+E4M06O90YoqlYypj4j3L4WraRBd
4ZUQF1dRfbE2IgymBfT4lZ4LNvC9nTEyEiEUSnIGQ5tjI37QBu6eTYg6ExUSk99L
sP8iGcMzN1BaVOZDUk77MVd8G79MIpIxeamhjLIXSV4kwGKnuXOX9bU8jCpN6Ql1
MezSGKD9aHQw/bgtD6WZYWXLIWr7w8nx3XABP6kzilSVSOyZ97w=
=Ly31
-----END PGP SIGNATURE-----

--Apple-Mail=_3698B16F-8444-49B9-8CB3-C4E7822E989A--
