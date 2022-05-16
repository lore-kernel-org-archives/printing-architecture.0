Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 94D7D826FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652711703;
 bh=bSZSdX7Ml0cSoDDRDFHljchDagGA5LMwESq178+CgOU=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=jK/kPyhGQe++JaGtWPxZ23vpIJyyHdQuicpwGOcf9FBHZKQKOishdRjN04TFjAwfF
 XA2wF0+34ztgbMTDS8OwF0kJsaGGYAwJShVbVU08xNO4xSKLhZHNimz4uk46h3HjUn
 fDmwo59CPKtvAbifa3K4NwlaubpDPsXCBjHFBVls=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D6474BCE-B186-4625-BF42-62240863E692";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <7d62d52d-f7ac-5131-f51c-98a5ad286026@gmail.com>
Date: Mon, 16 May 2022 10:35:00 -0400
Message-Id: <B715B740-C6FA-48FC-8F95-3B92CAF273B7@msweet.org>
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
 <A98D57DF-B7E9-4D8D-AEBA-061E1E6013A2@msweet.org>
 <7d62d52d-f7ac-5131-f51c-98a5ad286026@gmail.com>
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


--Apple-Mail=_D6474BCE-B186-4625-BF42-62240863E692
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

The status callback is called as needed, so you basically need to open =
the printer device, query, and set the supplies from the response.  Look =
at the "pcl_status" code in my hp-printer-app for a complete example:

    https://github.com/michaelrsweet/hp-printer-app

You don't need the "dummy" sample values I include in hp-printer-app (it =
is still mostly sample code, even if people are apparently using it :) - =
if you don't get a response, just don't set the supplies.

> On May 16, 2022, at 3:05 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
>=20
>=20
> On 16/05/2022 00:31, Michael Sweet wrote:
>> Till,
>>> On May 15, 2022, at 5:47 PM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>> The answers with the SNMP URI take some seconds, with the DNS-SD URI =
they are instantaneous.
>> That's to be expected - SNMP name resolution is slow... :/
>> Have you implemented the status callback or added a call to =
papplDeviceGetSupplies anywhere in ps-printer-app?
>=20
> I have a status callback, but without papplDeviceGetSupplies() call. =
How do I call it in this case. As only example I see the code for =
"--get-supplies" in testsuite/testpappl.c. But how does the array with =
the output make it into the web interface page?
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_D6474BCE-B186-4625-BF42-62240863E692
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKCYRQACgkQvmfHXsgf
MkQSaQ/+MDtZAn6pJp7qVSJExtnuU2I3wH+vXr8dMuJBlXbRWMlSN8ohQ4WKxo3+
bH+PvN9f8BbUhC5+8+l47ee7h9lWuLDf4EvR2Epwh0gth2C1lk7LaFNnErS/3uBX
eDYr3iLCkCuBjMid5WrcT8qEyvT1Jf6AY1qXxW6rtpm9gwgWkh8vbfqoKA4HBkq4
uLnzlrTcEl5gIrbKauNgKPOO6jDqlS0J6Z3srwR9H2TzoK/nPq9kXRVEzVkEEy3u
WsbCLCothtjVJdtEbRSzlHeMbJ7RRTOuCvoTKYZpYFRdEPgRCg+Mk88ufOpZi7Sw
2M2EnNOeo5tesP6xa0x+GjojqFm0pZmwJFAjG2SjsBXuRDCFDeMSwD2CE3s5HHaR
KhNSRWIayU2sklhvijZmwl0gd8twrjGqSrvfjzapj7WWlaHrwxdOR9+37W+8Cnt1
7jiN9nkCGczZwWb+NbBrK+uq6OIcY86b19fBWIQleqXfEHEcMr/wcFfbOjoeC6go
1vOE/Nh9zgoexwKXGsMS7MEpl5kIJGN5NEmthfozPi9RZWxjZab+ifmW6TqIb1aK
H1oLMHNdTKFcsg1Mc2VM6RgiIya7wwlz6jS8AM91p1M0+gbJMOxhalHN+7K6buY6
w/+qLPw4ikv6PtRwrY5UujshmEwfmoCpDrYaZuzJfO9SlG9zbcE=
=H3kX
-----END PGP SIGNATURE-----

--Apple-Mail=_D6474BCE-B186-4625-BF42-62240863E692--
