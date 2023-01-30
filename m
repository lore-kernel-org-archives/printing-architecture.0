Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B104813F0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 924AD813EC
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0B9DB803A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1675043260;
 bh=HURYwIGnEezMuDdaPSshWfdIr7GlDG+YoExztwrVVUk=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=B4C8qn6Y5Y1PQydm68HqnAi98TR6aG2c0JS2Rhbg77D9hJYiel5mU4Q+Qoo5KV4oJ
 u6LqGQ/z7BWZo7D4ppx7U5SS5sD1Fp2N5JIfnlqiy0K+nAfB72ga/ZylxISwZM8gk9
 bqRp1CS+Z6N/GTKmQeSO3v6l1QbNtBsHHXk9Tof0=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_7515F95B-9629-4056-9C57-5C6815F00187";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <1ea9f7d3-e1c0-2e7c-64fb-7ce18a5202b7@gmail.com>
Date: Sun, 29 Jan 2023 20:47:28 -0500
Message-Id: <E6D91613-2ADB-40BE-BE4A-3AA462D4E0E1@msweet.org>
References: <1ea9f7d3-e1c0-2e7c-64fb-7ce18a5202b7@gmail.com>
Subject: Re: [Printing-architecture] New issue on GitHub:
	Bug/Feature/Security selection screen
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


--Apple-Mail=_7515F95B-9629-4056-9C57-5C6815F00187
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

The SECURITY.md file can easily provide a link.  Not sure the bug =
templates can, though... :/

But absolutely file an enhancement request to Github to make this more =
discoverable.


> On Jan 29, 2023, at 5:48 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> now I have activated the functionality of reporting security bugs =
privately on all repositories of OpenPrinting, but unfortunately, in the =
web UI of GitHub it is not intuitive to find the way to the place for =
reporting a security issue privately.
>=20
> When I am on your private GitHub, usually on PAPPL, and click the "New =
Issue" button on the Issues page, there appears a selection screen, to =
tell whether my report is about a bug, a feature request, or a security =
bug. The normal GitHub interface is that if I click on "New Issue" I am =
immediately in the form for a public issue report. The private one is =
hidden in the "Security" section ...
>=20
> Other bug trackers, like good old Bugzilla or Launchpad allow you to =
choose between public and private in the bug input form.
>=20
> How can I add such a selection page to the GitHub repos of =
OpenPrinting? Or could you add this feature?
>=20
>   Till
>=20

________________________
Michael Sweet


--Apple-Mail=_7515F95B-9629-4056-9C57-5C6815F00187
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmPXIbAACgkQvmfHXsgf
MkQdUg/8CKWfOw9SL3Y5bp6wSHReCZUj1cdTTs01V88u1Hkrhl1O8zyZnd4RpkG9
UyHB9/MgaiL4uzsztffZvRDgNkfqorNrj+i4LgqPrLfVVqTFKlV6vnizmkQ3zY85
NCJ9JQbAsHJPRBvR3XluaPAWovHEwYLEClkXKVyy48cVjs827CdIQsVYMKEf7cUb
lHizLAAAZckue1vAb5epProhSUNz+m2wXC8OHEYI/FTvFZdh7agZGC1LKDXY4nCq
OIsohKOTFcvOeOipL/MAFkdJslJV0MXaeinFD6OnclLuKUeMZ0KtApZOCL2WmeLt
PC1G0oZelq7e5aOld2WN7H/ZQVLjgtrnDDaYpsWqBnFD/LsOSXRuKx2TOTltRgfF
1+/auRBqHtZc+7I45jRMYqqh3jzvqRGoasI644Vp1wE3I9ku6V1xlzwBaqS/WvIc
hQg7MHJ4b6I7CkbNIwR9hJ9zcDcqJSo9hyO4CONAidecZWuNFPZTxf9lb1BknU5X
mz765eibThMoJKQqeVTYZqmY+dm80xsE9AkUW4RFbl3APXnecfH/dikN5iaH0VTw
dxJ2/b7yQgpzjJLCOB9YlLRlNIWlbBGXZG/XeLbp1nlcxvi3pciBQdK1rt+NwIEd
AZ3uQdW01V4piKEikRrkiyz6cL2H0SggwA2gFhZ9abTlLJw9I98=
=5IW0
-----END PGP SIGNATURE-----

--Apple-Mail=_7515F95B-9629-4056-9C57-5C6815F00187--
