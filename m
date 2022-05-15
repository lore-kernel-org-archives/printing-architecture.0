Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org F030D80438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652649741;
 bh=sdp5w2End9POTJ2GyeDzGXekNHD0IQwBzQk6AryTvEc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=IUq57X3gXglwCx7NlG0lNXibsIs69FZjZ8fmLUwpKMfbNlV1SCQj2+GiLcDomIG1B
 ywZ8qfsTqHBBJo+hdZsDkRrzLCd0MHf3yQRxDn6Z2tjWhYdsipjjPu3lLK2PL1PWvK
 0IM+9QIKX9TVZfYka7Vk6AptIJm2bGRy2/iyu+JY=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_73FA237B-7DD1-439B-991C-196830B73B26";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
Date: Sun, 15 May 2022 17:22:18 -0400
Message-Id: <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
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


--Apple-Mail=_73FA237B-7DD1-439B-991C-196830B73B26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

Try the dnssd and snmp URIs with these commands and post the results.


> On May 15, 2022, at 3:46 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Seems that ink level query on my printer is supported:
>=20
> ----------
> $ testsuite/testpappl --get-id socket://192.168.68.101
>=20
> MFG:HP;MDL:HP OfficeJet Pro 8730;
>=20
> $ testsuite/testpappl --get-status socket://192.168.68.101
>=20
> none
>=20
> $ testsuite/testpappl --get-supplies socket://192.168.68.101
>=20
>                      cyan ink HP N9H71A: 54% (ink, cyan)
>=20
>                   magenta ink HP N9H75A: 58% (ink, magenta)
>=20
>                    yellow ink HP N9H79A: 60% (ink, yellow)
>=20
>                     black ink HP N9H83A: 79% (ink, black)
>=20
> $
> ----------
>=20
> What else could go wrong here?
>=20
> I have tested with the original network backends (schemes, devices) of =
PAPPL, both the one with DNS-Sd discovery and the one with SNMP =
discovery, and even with them I get only the gauge.
>=20
>   Till
>=20
>=20
> On 15/05/2022 21:37, Michael Sweet wrote:
>> The "testpappl" program provided with PAPPL can be used to test the =
SNMP stuff:
>>     git clone https://github.com/michaelrsweet/pappl.git
>>     cd pappl
>>     ./configure
>>     make
>>     testsuite/testpappl --get-id socket://IP-ADDRESS
>>     testsuite/testpappl --get-status socket://IP-ADDRESS
>>     testsuite/testpappl --get-supplies socket://IP-ADDRESS
>=20

________________________
Michael Sweet




--Apple-Mail=_73FA237B-7DD1-439B-991C-196830B73B26
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBbwoACgkQvmfHXsgf
MkSmhA/8D59mjFtUsECWPpzSGIBGzIycK/2Y5z++eJ/sxDQa3r/LkDRJwY2fyMSR
VVHiOUID8vMfYv+jjD+CFQPG2gxiBfpi8bqvg5UFLoKWbko+x878PTLMrWAtTyPq
RvitiN3aSEsoFfd+SiZmblyJYOLhgALn4Uiw4PbrG+2S+2VtDuR4N3meKH7ret8a
x8rHsVbyEZbRHUAPlrtQebh97YvphRaKARX8v2DUWtDpmQehnP2jNo7eu8L4oe0G
PU3fZUawnTRdU9rXCOcXUntbfv2KeXeBVzIweKQIfj5MhQ9LJxNRN7uskL0dQRcV
AIuBeH8r7GtTHiZxUGUe2/b6d0jKQ1nP8rwBomO1Sd/2Wl5xAq1cPqXxTSqtwlz9
kWDsADih7tVYT/YybaBFWmDcsQGDvq1e9iFjqxFUS7GJthlbMY1dMGpOqKrzmk1y
I8/W1jL52ydG+6K/kRoj5dHH+eatX9Sdvg/Kn7fWrcBwP/r1P7WdjRcDIx1Bayru
cwThsVcsdw7y6DouAKlEuajLLPOOi9rhljRBDzb1tr+WdF7ak4w88mvV9kBMqmdX
6tdqeXe/tuLAXvkEDvGd6djfH+AFuTQQldaCZMKViPjoxlYtGd/zblmP2KdSdA/t
VNvLCXknAOnvDe+bXYaddV7DszOKbSqPjaJohe4dFo2giXW5q+Q=
=S1OK
-----END PGP SIGNATURE-----

--Apple-Mail=_73FA237B-7DD1-439B-991C-196830B73B26--
