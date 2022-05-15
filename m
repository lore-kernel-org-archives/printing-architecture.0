Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 992FD80438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652643251;
 bh=/bYcy2UXyqo5vI+AMJHK9rUKT4KUzyNRGrmTujOOyBE=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=OmE/zbtgQBJfze+ZeREVZX+9Z54PYt3ZMAwN5u3W40iZRcINJEKTcVuTDehn42alY
 Tf0xtdrgE0cXvVtrBix4p+1yiGV9nKMwbt/rrm+xuhbl74fwfJs0ap0w6SQ+M5vzHW
 mJZOsgjV9c51ZC4yBWjKweqPQ3WI+EL2xeJ2ACHc=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_02B99CFD-FE1E-41E1-9729-203FE71B17DC";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <34366be2-d1fd-6ac8-2a60-3f091d5f596c@gmail.com>
Date: Sun, 15 May 2022 15:34:08 -0400
Message-Id: <9EFF5924-7325-4FD2-B04A-0B08112C48E4@msweet.org>
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
 <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
 <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
 <8db7ade3-a098-5ca1-d3b4-f1d2df02a8e6@gmail.com>
 <F24F1B74-BA5F-44F5-A083-4E8A925A3B6F@msweet.org>
 <34366be2-d1fd-6ac8-2a60-3f091d5f596c@gmail.com>
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


--Apple-Mail=_02B99CFD-FE1E-41E1-9729-203FE71B17DC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 15, 2022, at 3:01 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 15/05/2022 17:42, Michael Sweet wrote:
>> Till,
>> You will need to maintain a single strings file for each language =
that is localized, among all of the added printers.  Then make sure to =
remove any existing resource file before re-adding it, otherwise the =
resource will not be added:
>>     // Update LOCALE.strings file
>>     papplSystemRemoveResource(system, "/LOCALE.strings");
>>     papplSystemAddStringsData/File(system, "/LOCALE.strings", =
"LOCALE", ...);
>=20
> So it needs to be a single file for all printers set up? Or can it be =
one per printer and per language (4 printers, each printer's PPD has 3 =
languages -> 12 files)?

A single file for all printers.

Normally a printer application has a closed set of drivers, options, and =
choices, but in your case the PPD files work against that assumption.  I =
don't know that I want to change PAPPL just to accommodate =
ps-printer-app when there is an easy enough workaround.

> And the localization for PAPPL's UI has to be in the same file as the =
localization for the vendor options?

Yes, though most of that (if not all) is options/attributes and values =
anyways.

Anything provided by PAPPL is localized for you, you just provide =
strings for anything specific/unique to your application.  Right now =
PAPPL has built-in localizations for English, French, German, Italian, =
Japanese, and Spanish.  I want to add more, obviously, but that will =
depend on contributions...

________________________
Michael Sweet




--Apple-Mail=_02B99CFD-FE1E-41E1-9729-203FE71B17DC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBVbAACgkQvmfHXsgf
MkSqTBAAuwotyPrhTznhZdKLkdPgfWtwSaAl/0yUb6vvIRvYwMcPs9g4pLMXRxID
A3gbX9Rvk1j2M82IJgsVknEdjpb5a0Oax0/2jqbHzcd3E+7OnARkXAnurfFuhMRu
huu7Y35bnvVw/ZpmKU89wAHzU9NoleA8Gu8E1rRMdyustMMIL7d/O1whsw27DhoD
ATYK5jUBtzDYfkoTpvdzEf4ojJwmEf31VRaKrhc3SbSembC70wAALfnYI4vJeaJA
5s1DUXurdZK+rqpU0QGCJlua9OBedZP5G2upjkOPQdqETE+kdw2FFM/2V+nBeIOo
ZbQUeWfBE8qYQaXhwazr7QEx5sC5aaYVB12YAZqz/zmClFUKUjBkIVNvk7F8w295
tRt0Ay7D4+l+QOAHEu+Y0Mw/8WvuoEPhkD/AiSL2hVtevmC2TaMOU3OBh9fF/K0L
3jmRKbB5j/pkqEGG63d4b8zVLik4x71nhdeoT0DFx4A2mzAkB0gTtc0VqW4EAibo
860j5gwhGRFUf+FJmERrgZdSY4ULKG4KGc8NOAzAv48UDD+XCko1+t1AJ7O1yts1
o12jqP35p9H6Y6tyjxTPftbnypxq4A7cCs6VizD94xHIHyRre19xke0y//OjvSME
MNLoAqoRjSZeclkrMNBoS0q4C2XH5PEWgVB/TN90WXm8l26jKdk=
=ICh1
-----END PGP SIGNATURE-----

--Apple-Mail=_02B99CFD-FE1E-41E1-9729-203FE71B17DC--
