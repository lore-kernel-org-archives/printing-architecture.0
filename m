Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 743CA80438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652622813;
 bh=l37aGfsav87ZW2aLqpWdpxJrcAsYaZGvZaz1KfMlt88=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=jg5O8Z7zCjHrETIYUQWvjvRVhyte5fDNixun2IJsmLQyA1ooLTRg07Izl11YNsWaW
 oj+3B1XY/I25cf91/7PX6l//6ePr3x+q6hPXr8IS5IecLA/17BaN9z2SikItM7z2i2
 syg4xwqbYVzznP+nV58IjxWWxoYWSLz1CGIeSqUU=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_1FAD5F1D-039D-40E8-B67C-3644195ADB30";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
Date: Sun, 15 May 2022 09:53:31 -0400
Message-Id: <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_1FAD5F1D-039D-40E8-B67C-3644195ADB30
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

You need to set the "have_supplies" member of the pappl_pr_driver_data_t =
structure to 'true'.


> On May 15, 2022, at 9:47 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 04/05/2022 02:49, Michael Sweet via Printing-architecture wrote:
>> PAPPL v1.2rc1 is now available for download from:
>=20
> [...]
>=20
>> - Added unit test support for the new SNMP-based supply level and =
status monitoring code.
>=20
> [...]
>=20
>> - Fixed double "Supplies" buttons in the web interface.
>=20
> [...]
>=20
>> - Fixed printer compatibility issues with the new =
`papplDeviceGetSupplies` API.
>=20
> [...]
>=20
> Is there any documentation/example for how to get a "Supplies" button =
(or permanent display on printer page) to display the supply levels =
obtained from the printer via SNMP? I would like to add such =
functionality to pappl-retrofit.
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_1FAD5F1D-039D-40E8-B67C-3644195ADB30
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBBdsACgkQvmfHXsgf
MkTMWA/+LT258g1Y6v7GuxWo/YHKSpDD+WCRFtSqYJbIWJtFq4t6aZmGdHbNesU1
uYomcIt0uCHPtokffFyJMmKGrF5dVO0HJjf6RtGIX285Lg5xYCRZBTbeJ4V27nFz
qdIavpGKr8vHSAK0kMoil7+2jbmvowjlYzM/NzdAgNBrkbZXbKwJlqvEzdAPD2TR
VBRyB8zjpXYM767eEWiKoRJUWOj3nYfqMqcNGsZP5MEsLGxA8DRg1+b3hFVchk9x
qHKBd2ejuxkIFcitaL7T7z616mzE4BX3Pr71KUhD9q1+f99MHiSojaM/2zyX5DS6
wwagG6l3L6I8E+bq65zG8wa9IBxeI+dgU4QU5Nyt1ZSMsdqlh5p7GTjpv/u2mMGA
JUOm0y6HrzisbNB4foLAMz80x0isUD8f7mLi+TYvt3NloxIbsmmUj/7m4WB2PITR
/BHYq+DVgHh41CdYSv9IEBKNMqRgL49cxDf0oPQ4Vd3m1GAHp7HaSWAAKVlolpRq
pZYoO/zWPiV9JakHt7dKphxF07MkOfv1LUjM/9X3Rp0z3D+yZEJZUsiu1BSLU7u3
Ss/nmbOqOKPoA/QkIUtnD85SXejKumc9HqTf3y9CyISDmrFNk2NhZrXpILJ3mXAh
cHCgz+rIxeGECPqj9CB8/H1w6p8DShk6w6cM0GWNY1sP6XiCEP0=
=DH2I
-----END PGP SIGNATURE-----

--Apple-Mail=_1FAD5F1D-039D-40E8-B67C-3644195ADB30--
