Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5D167410AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09F90410A1
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 6830D800B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1673904466;
 bh=xdDh2gqnBAqlESoxO8Sjx/TXwKdivfLFkACsYs8yXTU=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=TYI0wFQi5/lF0kLeKIEI0y3KxvKRa+5wePPh+qH8/PyXS0oXTO4EK+euRv2zBnNmP
 KO/L5h/Z2xHokPC7SrYQ/fpg6KlDC9hD0p0UijAhyTlkKCEsI+SK4GE+Z1E8jlduJg
 GQGhQs9GdVA5vAMbxjhq57I0KgDqFQ4x+SxESZ+w=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_C640C94C-736D-4499-A673-7F2497C92CF2";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.42.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
Date: Mon, 16 Jan 2023 16:27:34 -0500
Message-Id: <09B091BC-0273-42EC-8F3B-C01AF9761048@msweet.org>
References: <7ed5b062-73bc-0002-14c8-bda32c5f7866@gmail.com>
 <63ED10FD-8152-401C-92A8-F5B89CCA1F68@msweet.org>
 <8b095d8c-f33a-5686-72e9-70ab9ad4e2cd@gmail.com>
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


--Apple-Mail=_C640C94C-736D-4499-A673-7F2497C92CF2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Jan 16, 2023, at 3:06 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 16/01/2023 16:17, Michael Sweet wrote:
>> Till,
>> FWIW, some of the PAPPL project ideas aren't a good fit for GSoC, =
particularly the IPP Everywhere 2.0 stuff (still in flux, and something =
I am already working on) and presets.  The scan stuff is "nice to have" =
but we are still a long ways away from having anything that can be =
merged and supported.
>=20
> OpenPrinting project ideas on
>=20
> =
https://wiki.linuxfoundation.org/gsoc/google-summer-code-2023-openprinting=
-projects
>=20
> Michael,
>=20
> I was also in doubt about some ideas when I tried to create a =
description for them:
>=20
> Update of OpenPrinting software to IPP Everywhere 2.0
> -----------------------------------------------------
>=20
> - What are the exact differences between 1.1 and 2.0? Is it written =
somewhere to easily check?

The current draft of the 2.0 spec is at:

    https://www.pwg.org/ipp

The main changes are to make certain optional 1.1 things required in =
2.0.  It will also depend on newer versions of several dependent =
specifications (PWG 5100.7 and 5100.13, in particular, have been updated =
since 1.1 and are in the final approval phase...)

> - Is 2.0 stable and complete enough for working towards it and is it =
also no subject of a quick replacement (by 2.1?)?

2.0 is marked as a prototype draft, which means it is ready for =
prototyping and is not expected to have significant technical changes.

WRT 2.1, we haven't even published 2.0 yet, but a 2.1 errata release =
MUST be backwards-compatible with 2.0 (conformance-wise) so I wouldn't =
worry about that.  Even 2.0 is just an incremental change from 1.1...

> Not like OAuth support where we decided on skipping working on its =
integration this year?

Um, I'm not aware of any such decision!  Certainly we haven't finalized =
things but our goal is to have IPP+OAuth prototyped this year (at =
least).

> - Is there actual coding work to do to achieve this?

PAPPL should already have everything covered, but I'll do a final pass =
after the 5100.7 and 5100.13 updates are final/approved.

> CPDB backend for IPP Infrastructure/Cloud printing
> --------------------------------------------------
>=20
> Which software is the actual implementation of this standard and =
visible for the end user who wants to print from an application?

=46rom the client side you are just printing to a different server.

> These two looked rather viable for me:
>=20
> PAPPL Scanning support
> ----------------------
>=20
> PAPPL scanning support was already planned and worked on in GSoC 2022, =
but one of the two contributors has failed, and therefore we did not =
complete it. Therefore I have opened one project idea for its =
completion. There is even already a candidate investigating on what =
needs to get done.
>=20
> What do you mean with
>=20
>    but we are still a long ways away from having anything that can be
>    merged and supported

I mean that the current work has laid the foundation but we haven't =
actually implemented everything needed to handle IPP and/or eSCL =
requests, route them through the scanner driver, get the scan data from =
the scanner, and feed it back to the client.

> ...
> Should I better snap AirSANE to make scanner drivers snappable (but it =
will be confusing for users if an MF device has 2 daemons, one for =
printing and one for scanning)?

Honestly that is the simplest way since ALL of the scanners we planned =
on supporting via PAPPL printer applications are already supported by =
SANE.

> PAPPL presets
> -------------
>=20
> Is my idea in the feature request
>=20
> https://github.com/michaelrsweet/pappl/issues/244
>=20
> wrong? Or not implementable with current IPP? Or do you prefer to =
implement this by yourself.

Honestly I don't have a good feel for how/whether this should be =
implemented and added to PAPPL, and the only printer application that =
really needs this functionality is Gutenprint.  Probably better to focus =
on getting Gutenprint ported and supporting its presets, then we can =
look at how those presets will work with the existing PAPPL.

________________________
Michael Sweet


--Apple-Mail=_C640C94C-736D-4499-A673-7F2497C92CF2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmPFwUYACgkQvmfHXsgf
MkT54g//Wb0zymC6Erpyp0oyyhEd+XhvF93nAvrbeS5dSou1c/1jryQjl+fD6I/f
1JmfL8/Q4sA6bCxxIhg0ifneUkhIHA46E3Sm2RRKYqY82XUBJPcgDua37sosjA5u
BYzSce/7KZuNTRsu/4Wmxs5U2w4WnyobpmJhdDKqmseKRUd+vwSQQpXCrp2GA/ZC
4EcZVlXpBEWugCG+U7l2ue5RCDT9rqZowj0vPJUSQqoOq4Ru2UUO7ud2dPpmseEn
yfXQhJuOL4gAg2jcZtpLD8Z5JPzhD52HF1Tpooxv9h+syo6xDXfC92W0dzuTA0HY
eWpfo+semhDRiL9R+hm/oh3a7ZlCMBXp2oJybNvvHuG/6uW2to01NzMLTU+wjMgY
3NoOz7KWEeyOGxsZOBKLPJgNznNme7c0KiYEjtJ0YwQTpwjWYmL8Y7bsGzpTf6m2
H00gqnnqlNzubwTAgqhg/ib4SRoY2zoOhVCKRSAZ1gyFXJ1WWaqOtqzDxs5EnKqv
u+2BhPcreYfGqPeynyaDPPH8xyhhpOfYHXonRuEe5j0FHUBOVkgWn61+9fwpDeSJ
keL3lPqOAHjrfYoe35HFvxDbL9oOw45xn4hH4qD0mbeXjdkAhcN/bZjX1EXVqAnj
4J8FcenG8tKiYq6Aaxri2P0Ul5PF2MxfmoJBfuC+joUHOX/cMtw=
=MULq
-----END PGP SIGNATURE-----

--Apple-Mail=_C640C94C-736D-4499-A673-7F2497C92CF2--
