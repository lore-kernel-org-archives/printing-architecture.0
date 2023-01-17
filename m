Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81175404CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 768834051E
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org B928B803DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1673983638;
 bh=0mgAexnjxeAEPiGpk71GGbgsiKICPaSg4RWPdsS9O8c=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=VJ94sDoZDSlgUGODEZsT6fIGhov6EEwUA9CR3isonoQgTfkPUe3Jay6Fwmhj8EOAu
 I1ZhheKZWA8OLuE/MILHIVdL1Jw54qdx5wcqaTH+nxM3sYQv/fz8NsiF5AaEq28RZZ
 niNuUOIU2G5JtJTyMV46+66W6M9fjD2Qmq8Lvats=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_DABB95EE-C635-41A0-A951-B30A01C32564";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.42.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <60a37a80-7574-2b4e-7c40-2c65837c1b3c@gmail.com>
Date: Tue, 17 Jan 2023 14:27:00 -0500
Message-Id: <7F9BA7FA-BBE7-48E3-B70E-A806707F0928@msweet.org>
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
 <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
 <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
 <60a37a80-7574-2b4e-7c40-2c65837c1b3c@gmail.com>
Subject: Re: [Printing-architecture] Google Summer of Code 2023 - Project
 ideas page for the Linux Foundation online
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <basu.aveek@gmail.com>


--Apple-Mail=_DABB95EE-C635-41A0-A951-B30A01C32564
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Jan 16, 2023, at 6:06 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 16/01/2023 18:27, Michael Sweet wrote:
>>> Not like OAuth support where we decided on skipping working on its =
integration this year?
>> Um, I'm not aware of any such decision!  Certainly we haven't =
finalized things but our goal is to have IPP+OAuth prototyped this year =
(at least).
>>=20
>=20
> I meant here that we do not start GUI integration of the OAuth support =
of IPP this year, as important changes to make it really usable will =
only come somewhere later during this year.
>=20
>>> - Is there actual coding work to do to achieve this?
>> PAPPL should already have everything covered, but I'll do a final =
pass after the 5100.7 and 5100.13 updates are final/approved.
>=20
> Would other parts like CUPS or cups-filters need to get updated.

There is a new (OPTIONAL) "job-triggers-supported" attribute that can be =
used by a Printer to suggest presets based on selections, e.g., pick a =
photo media triggers using the photo preset.

There is also the new (OPTIONAL) "client-info" attribute to provide =
Client-side metadata (like OS, application, etc.) - that one will need =
some privacy controls for users to "opt in".

>>> CPDB backend for IPP Infrastructure/Cloud printing
>>> --------------------------------------------------
>>>=20
>>> Which software is the actual implementation of this standard and =
visible for the end user who wants to print from an application?
>> =46rom the client side you are just printing to a different server.
>=20
> So I only see it as an IPP printer, so CUPS and the CUPS CPDB backend =
are all I need?

Yes.

> ...
>> Honestly I don't have a good feel for how/whether this should be =
implemented and added to PAPPL, and the only printer application that =
really needs this functionality is Gutenprint.  Probably better to focus =
on getting Gutenprint ported and supporting its presets, then we can =
look at how those presets will work with the existing PAPPL.
>=20
> I think this project is not only for Gutenprint to benefit from. Any =
Printer Application with at least some vendor options benefits, =
especially the PostScript Printer Application. Typical print dialogs =
cannot access the vendor options of any PAPPL Printer Application. If =
the user can assign presets to a name which is accessible via a standard =
IPP option, they could make use of the vendor options more easily.

There are few PPD options that don't have a corresponding IPP attribute, =
and IPP presets don't get around the Client needing to know how to send =
arbitrary IPP attributes/values when a preset is chosen.

________________________
Michael Sweet


--Apple-Mail=_DABB95EE-C635-41A0-A951-B30A01C32564
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmPG9oQACgkQvmfHXsgf
MkQqfxAAqqsmqUzX/vQCaiy47GEW8ZfcY4GzuZ8m+9xXYsE0CFJvfakELHUoPDyE
vCaIcngwb2jjC/dcXjYo36fiiT/c2MMw6OeJBIyZUXVVFDHzyvLLZfr4Zd42Yhs5
BccpDmCJv2kFijFP1FqINAKK0TBkNPbndo0SsQi5QsftLJKRcnewi9DiGdvAxnrP
bCRR7EyP7kLa78yOZEbfIYwnlGbJXNlkTUhgDrtcPyB+sKaPvbc1193ceqQEHos8
zYXEbGjQxPpKQEF4CMC4xtI6TTz7Xm3P7ipDyS+WRI7KrZ/nCK+Vx1a/vAw3o/EF
UfNojvqmV5R7vDvj0JguBanbk5mp0EmD86kauH3yCwlnpXpqDdXiA/MAKH3bXzcf
lg7kHL6RIszI1GmB8Jqf94r1GR+rj67YMI4vgMYecLVGg0b5uK81UgZjwTEmLDGJ
wQDQfKyCQYb6hQnwTpg0w1ZQnAC7PstphLBxIrw4lVf42QBrRxgpeGd3qLKJ2qw8
6nHcHYExHtZDiMfVbJDn1pQXCu6RYB779TE//AL7Ek9KVCxiFq7Ch1dJOlKz4suU
7d9dtUiKVxUlVNONrcSAxEKxwwM3iUtBp+M3P4tSwkOgUS7EtRnSVDXC9xLYENas
V7T0gnW0mE8BebkINGQUzsena6iKCxL5PCZBPQEwaHeQj2kO+hU=
=do9Z
-----END PGP SIGNATURE-----

--Apple-Mail=_DABB95EE-C635-41A0-A951-B30A01C32564--
