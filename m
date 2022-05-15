Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org B92E280438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652629344;
 bh=2GtHnfygKaZKwJ1WyKPtae+wcnk5JuOsACs87fMwjqk=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=wJVqUWBoe7Qy2z2MhM6pWxMEPxD4wEkfTTnI/oG9kR2AOO6xkVM7NPThwDDw3K2ed
 QAQh78tK38tPQnMeOUQQIKzaxiMQz1QqoS7qYg20pHb6cAZoUmULphWQBpeJSEpSiW
 8ctI1aRy0hzsQT/oR20X+ppSMkaS3/OuEJWnTjxk=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_C19912B4-038A-442F-AF5C-12D1AA379217";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <8db7ade3-a098-5ca1-d3b4-f1d2df02a8e6@gmail.com>
Date: Sun, 15 May 2022 11:42:22 -0400
Message-Id: <F24F1B74-BA5F-44F5-A083-4E8A925A3B6F@msweet.org>
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
 <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
 <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
 <8db7ade3-a098-5ca1-d3b4-f1d2df02a8e6@gmail.com>
Subject: Re: [Printing-architecture] PAPPL 1.2.0
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


--Apple-Mail=_C19912B4-038A-442F-AF5C-12D1AA379217
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

You will need to maintain a single strings file for each language that =
is localized, among all of the added printers.  Then make sure to remove =
any existing resource file before re-adding it, otherwise the resource =
will not be added:

    // Update LOCALE.strings file
    papplSystemRemoveResource(system, "/LOCALE.strings");
    papplSystemAddStringsData/File(system, "/LOCALE.strings", "LOCALE", =
...);

I've been working on a new StringsUtil library and utility project that =
can be used to manipulate .strings files more easily - it's what I've =
used to localize PAPPL and will be using for libcups3 as well:

    https://github.com/michaelrsweet/stringsutil

I'm in the process of moving the .strings file save functionality out of =
the utility and into the library, at which point it should do everything =
you need it to do to dynamically maintain a set of .strings files.


> On May 15, 2022, at 10:40 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 15/05/2022 15:57, Michael Sweet wrote:
>> Till,
>> You need to create a .strings file of the form:
>>     "optionname" =3D "localized text";
>>     "optionname.choicename" =3D "localized text";
>> Add these resources in your system callback with =
papplSystemAddStringsData/File.
>=20
> Can I set this dynamically while the Printer Application is running? =
This way I can create it when I set up a printer and read the PPD file I =
have assigned to it. I do not want to have to pre-build this for ~4000 =
PPD files and this way blow up the size of the Snap. And there is also =
the function for users to load their own PostScript PPD files.
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_C19912B4-038A-442F-AF5C-12D1AA379217
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBH14ACgkQvmfHXsgf
MkTnNBAAnfa0kIEY3HByaG64E0/eADyJvhCzNDsIe/BLtKln8v6PMbEk8M6PHPI/
FOGg5rMYXERorDbRAJa4px/ve3QD8Jh7DNGabQaxHibL/SkuOU/W/NH+mKWYHpws
4xeXSV58f95XAU7zVG66mI7ApHHxPioNndlKzcSoJsLDHfjtNU74dJb8TxlGP+4P
cjudWjvvXYbQOdhnrqR5RJaTCZ1SN1jZNUu3ZFggiBmh3QSsij8sOb/BLs4wj9tZ
ve9fTRZcMAgfi9sWRB6iag8PJCahi5Hy8JbmvuTROPEM6VUn8WjlnuhsRljlXALX
9YdBNLWgdS7KUGB/UmbBNo/tjzOfRRxCLE8rVaeZGRWqoFBLtX4sy+BS0nciej6v
u2vYsIfIDTIqZwLmPa+flvRChoiptlUCVSQUg5H0Fs885n1NX/w5rW3n2Z9SLrxI
K1aPFZpXa1lGHWhmygkrHfnEd/7iYIKhgfDzSCDb0XkTuxRNbvwZ5GsXOah8qEP1
qzIonyY31f4/1wDPGxuCiDGJtyJ9yEyKo4Rb0Ch+Gk9lHjWRed3B1Gw+1mtt5sFG
jsQ0QxBex2mW6y0ZqiDk8lp0J5yhO3mDSQkLDY49Z/xDN95hUGzKmizTLKLaORvv
V6F79AZG/xMmavR+BXhryk39PRxZGiFriRUIrRlIWTOzw2iryfM=
=n/8v
-----END PGP SIGNATURE-----

--Apple-Mail=_C19912B4-038A-442F-AF5C-12D1AA379217--
