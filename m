Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7DCCE803B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1650544498;
 bh=3awoozdBKRpMYam3l1VK/Msh0FsYAktrW+VM3MjYYvs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=oEoOiiaXmMeyUULnfIDPn/qA2H9kEZiCcoNBL9DD7KK7S1ldjvLucCyJIkOgnWG/r
 soHcpxaDD2hbncR1eJPN8JqkCjjGvqYS2Aeti9Wa7+Iao8tJh+dAwZmg6aVY8W2SdI
 kAFJ7SgPEYDU5DZwALsgMP/+2Hrm5ECjZUI5kKy8=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_5A4D15AA-4560-4E2F-903F-A29541CC721B";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <c7a9a948-14fc-b9d3-375f-183f27db3a85@tnonline.net>
Date: Thu, 21 Apr 2022 08:34:55 -0400
Message-Id: <6B974AF9-F1C4-4027-9BE0-487CEBC57DD2@msweet.org>
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <48896244878cd00c9e15e77fbd636696@suse.de>
 <38cd3cb1-5e0a-6735-5857-090cf6172c71@tnonline.net>
 <c40a92532e9a57ce6d6bb7cd55b152e3@suse.de>
 <c7a9a948-14fc-b9d3-375f-183f27db3a85@tnonline.net>
Subject: Re: [Printing-architecture] What windows driver to use with a CUPS
 IPP server?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Forza <forza@tnonline.net>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_5A4D15AA-4560-4E2F-903F-A29541CC721B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Forza,

> On Apr 21, 2022, at 1:14 AM, Forza <forza@tnonline.net> wrote:
> ...
> I wonder how Windows is handling IPP Everywhere (driverless) printers =
in general though? Does Windows have some method to detect options and =
toner/ink levels from IPP Everywhere printers without a native driver?

Yes, Windows 10 and higher has an "IPP Class Driver" that works with IPP =
printers.  Aside from some media size and resolution support issues =
(which Microsoft is actively working on) the basic driver works quite =
well and is part of their Azure-based Universal Printing solution (which =
also uses IPP).

________________________
Michael Sweet




--Apple-Mail=_5A4D15AA-4560-4E2F-903F-A29541CC721B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJhT28ACgkQvmfHXsgf
MkQ8BA//bsHQUOlzwiEibSscH53avH5DFn6+XVYdt0LWhx+E3TlZ0jss0LHJTGwt
98yRbscPI6wETspjqGBwX3SZDiJfoSy1youZIqOtIaODcLbuZy6Tm7NOWlCqbKJ/
Plj46YRJRJ4vHeoTj16wrTVNHBUfDPhIuoq5ooJ2OY5Tx9gR41aRQGUxUtm6coPV
4ktNTZjH83nPG0hKzWppJ5B2OjUwxEK5LbsNYC3HioWt51T4//kXdAqGCH+mpx5u
NvrbT+M47zY/PpPFELO1WNA4Jmr4eD6QJ95vIgf0bx5S31Iv08agI15HRG9bIfIb
Oe/964KIQB0hNPaIK0EVuTQ2F3/AQQmQwLfpBpvESMgbYTRgisoX4WY4FsGpZms+
1cnB0fn6IVc22q6ClxUNnS/egi0ZayMpP286BM8o2umDvsH7OjHfWTI9/+7uX3UX
s7TiayzwfCqh/rE3jMJEU4rKDghIlMZobzvF5e802xQuzDzA9ntt/wTik/5zjeub
aCuLiSkRwsMwYP8fUY/nfLq2YUQIzMdHCPL2U4oyK6kVmVTFuOUDOtYAvmCVHeQB
A993xp2B9qPVij4nmVSwytXRw48vprxpevJVFvWcC1kFTiDCJV3DR/TK/6lXVqEf
k9rplEIb1UlVJatkRuQTCSoyP+pAhiQlIOEL5JWS9dookRlQF/k=
=U7lq
-----END PGP SIGNATURE-----

--Apple-Mail=_5A4D15AA-4560-4E2F-903F-A29541CC721B--
