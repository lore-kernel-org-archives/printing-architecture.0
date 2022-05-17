Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 23F0480B71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652791527;
 bh=ZCxBuQ/mjWRqC7IE9hiGoorBuxRIGIHlLsHv1/MteaM=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=FrgphyxCF7ouYLJt1fo8Fru3XPu9jzFp5/Eo3HKhr7QF6OtcO5D1EbwxASF3NBDE/
 RkIF6WedjeTOrjQX3fPtUcIETEEUTab+j1SLlObs+YDRtxj6xF6eKjpWoES93Zqn0Y
 DB5bGMn0i8olO0vS8/TvbTfDxGEoO+fmyV6oeB3Y=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_3E5897AC-4E6C-4A7A-B2B9-6A0D16BE4F0A";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <m3ilq5nt3h.fsf@carbon.jhcloos.org>
Date: Tue, 17 May 2022 08:45:25 -0400
Message-Id: <CB76AAD0-BDAD-4E7C-9CB6-1DBE92D5A055@msweet.org>
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
 <E70BA899-B53D-454A-851C-9A182ADE0FCC@msweet.org>
 <m3ilq5nt3h.fsf@carbon.jhcloos.org>
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


--Apple-Mail=_3E5897AC-4E6C-4A7A-B2B9-6A0D16BE4F0A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

James,

So "socket://ip-or-hostname" works but "snmp://name" doesn't?

Can you send me (privately) a wireshark or tcpdump capture showing the =
runs?  The SNMP "backend" in PAPPL is using the Host MIB to find the =
named printer and use the response address as the printer's local IP =
address.  It is a pitiful backup to DNS-SD and mDNS discovery, but a =
somewhat necessary one given that certain popular label printers from a =
vendor whose name starts with the last letter of the alphabet doesn't =
implement mDNS nor do they provide an easy way to configure a static IP =
for their network interfaces... :(



> On May 16, 2022, at 4:02 PM, James Cloos <cloos@jhcloos.com> wrote:
>=20
>>>>>> "MS" =3D=3D Michael Sweet via Printing-architecture =
<printing-architecture@lists.linux-foundation.org> writes:
>=20
> MS> It looks like the change was made in CUPS 2.2.7 to use the new =
name.
> MS> I've pushed a workaround to the PAPPL repository - please let me =
know
> MS> whether that fixes things for you.
>=20
> cups 2.4.0_pre refused to emergem but 2.3.3_p2-r3 succeeded.
>=20
> before that, there was still another failure due to the older cups.
>=20
> but pappl compiles fine with 2.3.3_p2-r3 installed.
>=20
> on all of the boxen snmp:// fails even though socket:// uses snmp to =
get
> its data.
>=20
> strace shoes that it succeeds in gettig snmp date, but it prints
> nothing.
>=20
> the strace output ends with:
>=20
> recvfrom(3, =
"00\2\1\0\4\6public\242#\2\1\4\2\1\0\2\1\0000\0300\26\6\20+\6\1\4\1\225\v\=
1\2\1\3\1\1\6\1\1\2\2\2\3", 1472, 0, {sa_family=3DAF_INET, =
sin_port=3Dhtons(161), sin_addr=3Dinet_addr("192.168.1.5")}, [256 =3D> =
16]) =3D 50
> pselect6(4, [3], NULL, NULL, {tv_sec=3D2, tv_nsec=3D0}, NULL) =3D 1 =
(in [3], left {tv_sec=3D1, tv_nsec=3D990743222})
> recvfrom(3, =
"0+\2\1\0\4\6public\242\36\2\1\4\2\1\2\2\1\0010\0230\21\6\r+\6\1\4\1\205+\=
6\3\1\4\21\0\5\0", 1472, 0, {sa_family=3DAF_INET, sin_port=3Dhtons(161), =
sin_addr=3Dinet_addr("192.168.1.5")}, [256 =3D> 16]) =3D 45
> pselect6(4, [3], NULL, NULL, {tv_sec=3D2, tv_nsec=3D0}, NULL) =3D 0 =
(Timeout)
> pselect6(4, [3], NULL, NULL, {tv_sec=3D2, tv_nsec=3D0}, NULL) =3D 0 =
(Timeout)
> close(3)                                =3D 0
> exit_group(1)                           =3D ?
> +++ exited with 1 +++
>=20
> (that trace is from my magicolor.  my cheap inkjet shows a similar =
end.)
>=20
> -JimC
> --
> James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
>=20

________________________
Michael Sweet




--Apple-Mail=_3E5897AC-4E6C-4A7A-B2B9-6A0D16BE4F0A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKDmOUACgkQvmfHXsgf
MkQW0RAAqG2hovYAgIVfz9AZEHFBMcM+/gIIdJ+7Zygxs0FYcI6u3rLsFOVeTMS/
ZMh4Gcu98hDizLaGIAw/1H7YOo04A7vY1KADZTnn6UHk/kbNQAvLrsAt0apPgeu1
q/ZB8edZdppSIf4Gka6KdegEHUCP/EDnZYxms3IvFu6YL2h4lHckHmwJi5rD0eGc
vhu6i++5IbCEx1JE0f2oNoFp602QIu75qkeIPYCkfvDrJKoHdGOi6JzLnt/cxkpG
Bqjiz5wHCLU7hffME5T8M/tqUBP6lPEecd2JJuRQxRd5mnNtHS4RU1avAfHAH+t+
aPPmC5yKeK+q1YAzSeXVxQetN/g22JNTMnh3mxFWe1Sd7xeqW2OUB1eUk2+0pugh
dHpBtZENv7mEX0xWyCTn/J2DBzcB+ldM+a1dn4TQgbB2LDhsC0Up4vGGSXYbvgu8
W3r2BMdFNeeIc7S9OfU5lm3rGPiS8V3sY3EK6Y0DNi9ywytV0iNJbm2IB4lyvsX9
0qEy1+wueFewHnebsIc4YsYMfiuTjlBpXrSfKdJhGUM9b/hFez8Z1O0IfS206JL8
ExCCPUGJ3bRG4QCSspekrk23M4P9C7AHr8oiTrPrkQqOKsDYKxh7B+buqqeDqXf9
Eeulx2CIxK60dIDB5XntAobc2iHByYaRWSIk6XvdS8whL+4FIsc=
=2G2E
-----END PGP SIGNATURE-----

--Apple-Mail=_3E5897AC-4E6C-4A7A-B2B9-6A0D16BE4F0A--
