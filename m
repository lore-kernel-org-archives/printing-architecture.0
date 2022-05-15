Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org C181480438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652653875;
 bh=yLnGjzf/UXm+e9eZqXn3IaJtdC70qBzWwvQlm4qVlEY=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=bQ6m2DENf8weLq+f0cpby4e92+2hLbBLpVwPQ16ER4EAynPmpvVxJ5oIXBUYvh7Dp
 J+z5/3ClFX6IWAqnaUg6yDceqzIc7OXG/6ousApGO/VZRVNEX3FpirYGc6PASTpxew
 HmRpsPBOFxeH5IhRlXfL84WPNfqh96W6MIPKQ5J0=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_CFB08ACA-E2DF-47CE-9720-C7E7F70A6657";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <099283be-d7a2-c81e-258a-3c90e89ab3ef@gmail.com>
Date: Sun, 15 May 2022 18:31:12 -0400
Message-Id: <A98D57DF-B7E9-4D8D-AEBA-061E1E6013A2@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
 <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
 <099283be-d7a2-c81e-258a-3c90e89ab3ef@gmail.com>
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


--Apple-Mail=_CFB08ACA-E2DF-47CE-9720-C7E7F70A6657
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 15, 2022, at 5:47 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> The answers with the SNMP URI take some seconds, with the DNS-SD URI =
they are instantaneous.

That's to be expected - SNMP name resolution is slow... :/

Have you implemented the status callback or added a call to =
papplDeviceGetSupplies anywhere in ps-printer-app?

________________________
Michael Sweet




--Apple-Mail=_CFB08ACA-E2DF-47CE-9720-C7E7F70A6657
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBfzAACgkQvmfHXsgf
MkRDDQ//UC+QQjIR1t1i+6tKZ1Ow1re8+s9RuwIM3wf9SWDEmLJLX3ZIB+g/5UDS
V17yBh0SFOQWHdxrCbOV10ETKMrMI9yzDcKYhZ/CjprDT3ErPu2r/v1/onppiZvu
vxWfxz5+dudOMtdUBvMJQ6S0vPXh/lZ1jBpPknW6VqC8pvvYoE5c1NBUp3ad7d/6
ghQenpzitdS7ZIVr9ola+9pvIuzUaUn0nEZil7Dmc0mz0lygc7zNyr6IJC8DZr9y
9N2zURDO3aTn5j13q59gPBv7KM5XwVKRmLe5n4TYQ6SGlJe0Mxf+8h+M0jAA5zJI
W1DnwP6lSrFU89euGxbV8x2mxYztQeGtZBKkMZbKFydd3lXD1oim3R72+6WfcKRd
kPBX1/6IlVqHFoB3uyOi4tOv5zQ1X8OiFfWBZMRoOYJNkygbldwhrCjz5O1SpCC9
afLnVI+l0vTcaTQ/XEPjeZWrUryDaQ5tsn/E9YkEf2TuPvbzjn7K12/18ou4lCTx
ugzQSnik7A8x4LwmGBYL39n4PBD861pQo1c0llflcgn4EaNvavF05ei3nth09zJT
HpZKkM9vQMsXlVMDZD+pbxml8fuu6xOV4B8v/GFkwnVJIQKPIEwXDMlu0UsawlyC
Cu3YJOZop+3e/5HpV0wDtGXK4HSykaOFKMiuM/CkBmaLDMke6z0=
=AjOL
-----END PGP SIGNATURE-----

--Apple-Mail=_CFB08ACA-E2DF-47CE-9720-C7E7F70A6657--
