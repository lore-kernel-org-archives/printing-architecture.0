Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0AE7580438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1652623048;
 bh=OoQ2hMwFZLT+/oDjvrErRu/QZdG3v4fR+1P5+ER7oSo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=FkqSBEh88wwE53KD6gu45iwpzkeSwXEbr3mEpWFFa467r0DHe84JpdBtTmkcRAPs0
 /7JDKseJ15ycHZNLE4cYH2FWUZjw/1+4gTWuZ91+HPV14k+QX4B3eJf41sHJGexCYL
 oZfUXcuN8itq90HhFxdKsMDxZ8aWFosPKC/hqruY=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_7EAB1A35-945F-49A2-8695-B61D3B5895B5";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
Date: Sun, 15 May 2022 09:57:26 -0400
Message-Id: <917E2E0A-E1BA-4219-8C96-E0A31808BA11@msweet.org>
References: <8FA81456-F65C-47A7-927D-50B4FE05E6D7@msweet.org>
 <0a8a483f-edec-212b-c4b7-029833de0d84@gmail.com>
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


--Apple-Mail=_7EAB1A35-945F-49A2-8695-B61D3B5895B5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

You need to create a .strings file of the form:

    "optionname" =3D "localized text";
    "optionname.choicename" =3D "localized text";

Add these resources in your system callback with =
papplSystemAddStringsData/File.

More information is available in the manual at:

    https://www.msweet.org/pappl/pappl.html#localization


> On May 15, 2022, at 9:44 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 15/05/2022 14:35, Michael Sweet via Printing-architecture wrote:
>> All,
>> PAPPL v1.2.0 is now available for download from:
>> 	https://github.com/michaelrsweet/pappl/releases/tag/v1.2.0
>> PAPPL v1.2 adds full localization, support for additional IPP =
features, and some other improvements.  Changes in 1.2.0 include:
>=20
> Is there any documentation or example how to get human-readable =
strings for the vendor options/attributes on the "Printer Defaults" web =
interface page?
>=20
> For pappl-retrofit I would like to show the same human-readable =
strings as one sees them in the PPD files.
>=20
>   Till
>=20

________________________
Michael Sweet




--Apple-Mail=_7EAB1A35-945F-49A2-8695-B61D3B5895B5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmKBBsYACgkQvmfHXsgf
MkR/NBAAmjlepvHBIxJaKiHt28BQ6wBiic87+elbrRNOoes9KL3kVRWKBofO7kwR
aWtkNWuNDU2CHSAZEufYn8TXA4yy5EiUYFB3fV2FcP8sEmSc8mj/YoRiD/DJ3VFA
uvIOi1BMjGNU4YbRavEQAioPT/Ng4NhrG/CTfCN1p14g4tlGgW2G98pMzwU7LtKl
ljHUUaFfsPWVDMldz5bYmSMxvGQwQVYvJ67x7VKVrN9yDyenss9/S0P/IvdB0zPI
evNU4+psSD9H+67Ya/QsBstRtgtb9v10F77FA5Irp+HI1kGGZVOPw1dCI9cdnlJJ
fo1kwayCMG6sSC7ZksMpWLeOZF88VgdfxlOinCS9o8kpT6JxpLL42t/eKKMZ+I0c
jreiiaa4Zc2gdVsBh4mWHWg2z0wMnfccWDNyYq/oGBZqWmVvGFKP5/2SFAoQLajl
8wkrzFVSaEGFYVW9whLkgBnwusSVGarcX+OVzpy1dYQBV+eSc25ShImZ1vH68Ghg
wT/fOXbylsjB5cm8WcrMIW/zAuqX/wEMbrqIAK9WrIkYknlAUuMDux77BPi7Mm27
vEXGgyY2CUB0XYuL7fn5FlrWkh4YyZu4wGsNkd99bsq0LcwKNt0hum1AdiT5z1Ig
N4MBu0M7LQZSufkHERfa+bErToA+EDrwnDF4XOmHO9TJzhCCTec=
=VWnm
-----END PGP SIGNATURE-----

--Apple-Mail=_7EAB1A35-945F-49A2-8695-B61D3B5895B5--
