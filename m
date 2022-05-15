Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 8D93680438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652643437;
 bh=2EC85xNtNAhuK4rXYq800iOeAQW649CwbXVQ/xZiMLo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=HBR/mfuwP861EJZWFX+4dTn80H3RZqoKnX2LmhWsRRPOH3TX3DEMf/zeapL1ZS4S+
 GRnlWfwPTXPkt9rSMrIErE12RDs/TjDTFoNcexAmCV4LrEtNCt8n/rmnwYMJNVxUba
 Nh9N8Dd07Ucvno72b1vtRNI4UKOF+VnmhZ6Z7bHM=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_B93263C9-3A80-4905-82C6-6E6F9DFBA2BA";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
Date: Sun, 15 May 2022 15:37:15 -0400
Message-Id: <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
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


--Apple-Mail=_B93263C9-3A80-4905-82C6-6E6F9DFBA2BA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 15, 2022, at 2:57 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 15/05/2022 17:30, Michael Sweet wrote:
>> Till,
>> You can set it unconditionally; ideally I'd at least look at the =
device URI and only do it for network printers.
>=20
> Set it unconditionally in pappl-retrofit, file =
pappl-retrofit/pappl-retrofit.c:
> ...
> Now I get a "Supplies" button for each network printer setup.
>=20
> But clicking it does not show any ink levels, only a gauge as it would =
appear above the ink level diagram (when comparing to what I see in the =
test app of PAPPL where the ink levels are totally artificial).
>=20
> Printer is the HP OfficeJet Pro 8730.
>=20
> Can it be that the printer does not supply sufficient info? How can I =
do a simple test on the printer?

The "testpappl" program provided with PAPPL can be used to test the SNMP =
stuff:

    git clone https://github.com/michaelrsweet/pappl.git
    cd pappl
    ./configure
    make
    testsuite/testpappl --get-id socket://IP-ADDRESS
    testsuite/testpappl --get-status socket://IP-ADDRESS
    testsuite/testpappl --get-supplies socket://IP-ADDRESS

________________________
Michael Sweet




--Apple-Mail=_B93263C9-3A80-4905-82C6-6E6F9DFBA2BA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBVmsACgkQvmfHXsgf
MkSZ/hAAsnMHWIys2oqiqwPG95MbHAjyOEFXLEYemJGS9MP9DiHZ8SKV484zd6l3
yZKTHzKgpi6SsbMVE24nw46makyAfCePRsDjldE7GVOKbEvOtiZBtT2RxM4C9Uwf
bWa5IbK1uwMEy2gvMBLVoMV1Fnl20IwfU7AN0+8S3V51YwYwJjGPjEqz2Mkn/C7h
yQcU32SOfyHBawaDXrHlEwNwzF1cWx3h/ZUw/QK5flg9UGrT04QgxxQj4IjR5MSl
3qA5R1vSgaXt3AScZpxqG0/wAFHPkrbLsP2zmZryG+A9obY+v9vx2XS8rASgr+y9
2Ro3muvLMdrIgyNwniuPRprGfpHYCXKAcoVXSfTzYBcjZx3HwLOqAAHxDzBTYwVM
wQ0spjKIoay4/KZdjjbgiFsx8b3bWyHbOQosrULw2IkZdFGkAchsHv67Lqf/1IZW
AVsZwvfhdQTM6JifPcxPQORqdzeSL42kE454UCNC+/qLLB+BVDTmiAz0zdp/CG+k
2z1i2Ae43qAvOQwwm6hsRcw96PVSV7QhqJdyUSMZQbfOBJKtSWHnxOxW6py+3Lxi
0mpjWRLa+qjF2jwFXSCIMeoiNuJtpapAYSUWnqvU85epoYxMg+/aC2MaB51hp9zG
oY6g0KFeEcoSZ239hcsMwDKfxcKVLiUucdZYhDilkhPI0lkz2AA=
=XYNV
-----END PGP SIGNATURE-----

--Apple-Mail=_B93263C9-3A80-4905-82C6-6E6F9DFBA2BA--
