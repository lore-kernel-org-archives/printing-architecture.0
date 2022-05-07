Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 656F58207F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651934751;
 bh=6Ro6bRohtkKZRlYTmtSFeerkt1rXgjeszmw0ihs4or0=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=MisVgN1POV4MavWSyu00StED5QSFfMPAUXXnvzYcjbV4h7Xn3sx0MYr5CZNJU2vhp
 YNjx7kHUtf2+LJoUmdF9D8PqwlNL+NWyD7OIq2VdD+Lqlv2FEmVKbVIHfaJnSW8wIc
 s6b2gsHnWWvFmJGXrCVoAon7q3Iuc5gnMHN9+0IU=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_45E0C5F2-7301-4532-9765-6AD2860DD324";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
Date: Sat, 7 May 2022 10:45:49 -0400
Message-Id: <002EC5D2-B6B8-4D82-AD42-D84AABFD6D13@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
 <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
 <2613b8ae-3d3f-ed8d-dd9a-8e241976388a@gmail.com>
Subject: Re: [Printing-architecture] CUPS 3.x: How we make it converting job
	data formats?
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


--Apple-Mail=_45E0C5F2-7301-4532-9765-6AD2860DD324
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 7, 2022, at 10:07 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 07/05/2022 15:09, Michael Sweet wrote:
>> Till,
>>> On May 7, 2022, at 3:05 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>>>> Which sufficiently free PDF interpreter will you put at MuPDF's =
place?
>>>> Xpdf/Popper are GPL2, which fit the bill.
>>>>=20
>>>=20
>>> So GPL2 is OK and AGPL of Ghostscript/Artifex not? Why?
>> The GPL2 terms still allow companies, as well as individuals, to use =
and combine software freely.
>>=20
>=20
> Does the GPL2 not require them to then publish the source code of the =
combined software?

Only if the software is linked together as a single executable.

>> The AGPL terms are specifically written to prohibit combining of =
software without either providing the combined software under the =
GPL/AGPL or seeking alternative licensing from the developer. =
Unfortunately, what defines a combined work is somewhat ambiguous, so =
one could argue that making use of non-free Wi-Fi firmware on a system =
that accepts print jobs over Wi-Fi violates the AGPL of Ghostscript.  I =
doubt that Artifex would push for such a legal interpretation, but =
they've chosen the AGPL and do license Ghostscript commercially.
>=20
> OK, they want to sell their licenses, so for the users who want to use =
cups-filters in IoT, printers, ... it is better to use GPL2-ed Poppler =
then.
>=20
> So I will continue supporting both Poppler and Ghostscript. Poppler as =
the choice for embedded/IoT and Ghostscript as the choice for the Linux =
distributions.

Honestly, using it in a Linux distribution has the same risks since you =
are deploying cloud services (SaaS, etc.) using those distributions.  =
But that's far outside the scope of this group here and as long as it is =
possible to build without Ghostscript I am happy.

________________________
Michael Sweet




--Apple-Mail=_45E0C5F2-7301-4532-9765-6AD2860DD324
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJ2hh0ACgkQvmfHXsgf
MkS1dQ/9GvaI92cHZ+MpehWwZLWrz6cDk+pVDC/5lyCKxZNgj+RFdaXtXaRT/dlk
gpxo0YUE6PND1+FUnp010Axjx/9uMsEWDs/No5BiZP84jg7AwCay/4gRPzLs8Kin
a42B1HiMVKqexQ/GFXTDZugmKlFVo5DmnIPvAs+Pwq6x+70VsXR6AH5YgCz2TAS4
xi59REqHv174fHszVtrkV9jY9jJuSY9Q53FfcF095cCdfn+GnREsm6z+iYjUgGxD
e8t4mYNCbLgRioNlcQN7Etm58RSfa0FFVukHGlWmK2xyGn0yeVu01Xd5gX5jfWKo
mLen1mVYeYN3lW1k0peoVYJ0ap5I8yac02A+RlZzDcuwZI3EvJLhG92hOO8aj7yz
8u5iZRbQBkUmNnCjylluWa+XqwEIrYkLqEYWb2KOZG969gGffsiPqw94gq5sAxs0
x0ZZrSzdB4iRo5+jrD5+WVR9jQd1J5J/zTMeHQc47pQ2pCOML9+djiKDa4EvCTso
ib4TwqsMur/wtjsVGg/giU+z2oxPcfbgxwjB29b2KcxWoIplUfFUwQEmXJtqKnl3
+um8eB7NZw+OVj2oZ7VV3lCLT5Dh6COOOvNDABGTivCXuTr5eUdNq2kj+/+mZ0d9
NgnW5desRVAZzAARY0eH0iSjFlo7MgHZzrXgD7Xo7WJemVJutXg=
=li0i
-----END PGP SIGNATURE-----

--Apple-Mail=_45E0C5F2-7301-4532-9765-6AD2860DD324--
