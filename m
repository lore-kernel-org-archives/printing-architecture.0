Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 5822782543
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652722763;
 bh=Q9r4B9kTnfekEv1h2SoC08F1NFrUqyS4hI8xV4nDjz4=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=dI0hdcmhLglt9qlDvLggMxkGnB1CpQlYfSwgPCz4Ayi2oicUe7L3w1XG7ifIOxWtl
 CtXKrT9PWufmKs5XQ15XCdgI+5txoaXNi1S4IQvBWh9HLMGipm3IeUxE5+rzE1h4aZ
 VfoGaAMmUQA3MOEDn6UT80uFK75HwROZWdpsO7i4=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_7C0D559F-8377-4D84-87AB-67E4E0E16D92";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <m3sfp9o0xu.fsf@carbon.jhcloos.org>
Date: Mon, 16 May 2022 13:39:21 -0400
Message-Id: <E70BA899-B53D-454A-851C-9A182ADE0FCC@msweet.org>
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <m3y1z1o89y.fsf@carbon.jhcloos.org>
 <FB549E97-8B2E-45A1-9550-684DC2A499B7@msweet.org>
 <m3sfp9o0xu.fsf@carbon.jhcloos.org>
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
To: James Cloos <cloos@jhcloos.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_7C0D559F-8377-4D84-87AB-67E4E0E16D92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

James,

It looks like the change was made in CUPS 2.2.7 to use the new name.  =
I've pushed a workaround to the PAPPL repository - please let me know =
whether that fixes things for you.


> On May 16, 2022, at 1:13 PM, James Cloos <cloos@jhcloos.com> wrote:
>=20
> the failing box still had 2.2.6 on it.
>=20
> i'm in the process of trying to update that, but a simple emerge cups
> failed.....
>=20
> -JimC
> --
> James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
>=20

________________________
Michael Sweet




--Apple-Mail=_7C0D559F-8377-4D84-87AB-67E4E0E16D92
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKCjEkACgkQvmfHXsgf
MkR1RA//dlJ21OzScqI7xmcJWhN2ecJOPJeYcxNqLAVkCDL8J+PMCcJvhIx0X/2p
7+o7o7CnkzfzI7t33vZRl1adPNDXr5R+mVwEFSGz58wSV3U/PaRzZA2yyXFpBgKj
O4IhXGJr4b8+rx1i3WdmuuMHSHiKk3nMlcWCnLVddqxFLcLtpiCuzW/wc27FIIBJ
EBS87ulID2e0welqT9TFt8l8XQLUiXHg1AFQyFNDgU21KC9jIF/xCiiOWa5G34qE
4L2pkblFpVsj9LCkY1Dk7EUw10mMFVRDeYf2wXY18fQ0r6fVSlmf5vMv4vBVovNT
Pj7Hkls8OeFkwWobi/xxaFiTBXI9FpUzwNyF4mWmyBugZ1WZ1caMjignq/tPE2NN
puYVJjNl9PYcITWUt9xq03M9KP3c7wmlfnM0/xIJj+JxON2UvZTZqvVIgPX8AcL/
Pd3NhbS9+wVdSaZcoOwCaZivdzFQRnJe0eURxehxHiSb5FkNKeSw9NItbjkyuY/j
mQuFBlnqN9LUlacdwj/Rzf+P36wUOEFZqVy+3w5GRMpmJrdyP0V/NuAVmyMszQSJ
STADiZovFrc15wMGrOIq6oZBNGCSaZ8rEfcqIkCcOMPIjJrOnruMHF5JRusQVR4e
uvs16ccA8kzdNvKxYrBQokUdyCB/zSzdEF+gEbQpCSIjkyVTtI8=
=cus4
-----END PGP SIGNATURE-----

--Apple-Mail=_7C0D559F-8377-4D84-87AB-67E4E0E16D92--
