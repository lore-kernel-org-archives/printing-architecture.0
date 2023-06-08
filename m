Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 967C3611C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 021FD611C2
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org D3FBA803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1686246554;
 bh=90JwfpRUAmruj8H2FUNJB9YG/eXS2GwOW5kRM7Q0sBk=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=kTkd+ODCY0Vgt6wmPSVkCqwjJNLNrh0tiYlz7wMPeeqHUydWaempxcEhR0SkoYlHg
 jbMrInWfxjR0i+cNktPDA+StOxypiKUF2YpOpmjMIe7215B5+KDdsqNmv37Vu3mK6u
 L2c389diD136d0+QVIGrGI+GIbqAZQufJ9Hdsawk=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_908679D8-0520-47D8-A077-3A93BDDEBB86";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <9bdf27a0-7775-ced7-4c6e-7f45cc2a1a0b@funwithsoftware.org>
Date: Thu, 8 Jun 2023 13:49:02 -0400
Message-Id: <A8CCBB6D-9949-49EB-9046-A61CB0C951D3@msweet.org>
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
 <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
 <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
 <604876BD-9FBF-489C-B1C5-15675BEF188D@msweet.org>
 <9bdf27a0-7775-ced7-4c6e-7f45cc2a1a0b@funwithsoftware.org>
Subject: Re: [Printing-architecture] names of paper sizes
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Mignon Pelletier <code@funwithsoftware.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_908679D8-0520-47D8-A077-3A93BDDEBB86
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Mignon,

Sorry for the delay, I've been doing some testing with CUPS 2.4.x and am =
getting the localized sizes.  On Ubuntu 20.04 I get dimensional names =
(8.5 x 11 " for US Letter, etc.) but the names *are* getting =
localized...


> On May 17, 2023, at 6:27 PM, Mignon Pelletier =
<code@funwithsoftware.org> wrote:
>=20
> On 5/17/23 2:59 PM, Michael Sweet wrote:
>> It might help to know what version of CUPS and what OS/Linux =
distribution you are using?
>=20
> Oh, yes, sorry.  I'm on Ubuntu 20.04.6 LTS, which has CUPS 2.3.1.
>=20
> --Mignon
>=20

________________________
Michael Sweet


--Apple-Mail=_908679D8-0520-47D8-A077-3A93BDDEBB86
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmSCFI4ACgkQvmfHXsgf
MkQgHhAAhz5tK6hIJ0UbefGBsItJJBbql6QW01QST3jlSRT4HZEK6xLMjiab0KLW
gT93thDXyl6xjJ2yIInUTbVb+NpzTTFc+NZpZwZGNsZWzxXUdE7nFUWrqtUXdXhS
mbyt6iW2WGTei6g56faETUidG62F2ubb3Dg4ym0Q4Sxlh1F7d4j5B5LPGKN9cyTS
DqAE68zcNoAbbjyz3YAT1f3sbB71TM0dgXCwtBmJ2Oihfj3MlH6ts3bS/k3mzhnc
U1tVkljSKlqK0OHyB5rDmbbqem4hMBiWJKoxElf/TlAfVT5XAQIy0apS0xICufeS
QsP6TThAjq/MX2KS2Ka90UrlpokuckK/pbuXxs1InnSOimtxlN6JTr4beGFEo9um
6hWmkkdJbcPNfW0fKg2XMTB1anaC0HXSle7eCfxN29LXheVPROfouU38XP5LCnf0
sog5miO4B/jXnZCUFGtTTmhXK6xmZaeZB1wqdd230bupYQ649eUNQa/+c20sRGax
l9uIc8JisOBdYyCaiK1WQj+xCA6z4lLeIxBEx7klUW8t4QVaXdfeSN+KQTpGIzEP
854ef4WQvQVgAnCMad4Ri8bmrZMHSKZOQvBE8+GjByCaepUkfXELoBX9V7MuPOD3
ySucnNBkMCUqkep4xu8lsgDWC/1FtEasvAl7y9VbPVzi1vkTYUE=
=L9cS
-----END PGP SIGNATURE-----

--Apple-Mail=_908679D8-0520-47D8-A077-3A93BDDEBB86--
