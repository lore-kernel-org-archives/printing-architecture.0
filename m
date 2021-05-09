Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 1492OioQ786695
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1620527084;
 bh=17XMsXBd8rw8/T+61yLGCLA05oDKISL24tBtT+uGNYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HdRjGc90Mba93HJHIltzEw2ci9kGeLVkdKg2yF7cj8MyUnDW7+nJ7dk8FphMrAEFM
 iaa0qVz5mNwt2UAiBQPBFYP4KPzUxcz9xXdWS8J/vXHm3ha3fjS9w9yplUhN6xeUjG
 klY7CSf8zupoGuslaAS/Q+jtnsPWhzh/glQ3evJI=
Date: Sat, 8 May 2021 22:24:42 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YJdH6p4ePqKSATLL@shaftnet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="/7WndpO2umQGPoy1"
Content-Disposition: inline
In-Reply-To: <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
Subject: Re: [Printing-architecture] Make use of extended color spaces on
 IPP printers
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>, Till Kamppeter <till.kamppeter@gmail.com>


--/7WndpO2umQGPoy1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 08, 2021 at 09:24:27PM -0400, Michael Sweet wrote:
> >    its native/preferred colorspace.  (It's called various things in=20
> >    UIs, such as "disable color correction" or "host-managed color")
> > 2) The job *must* support embedding an arbitrary ICC profile
>=20
> Not the Job.  The *Document*.

Thanks for the correction -- I'm not as familiar with the IPP=20
terminology as I should be.

> > handful of colorspaces via ColorSpaceEnum; eg DeviceRGB, sRGB, and=20
> > AdobeRGB.  This is a weakness vs JPEG or PDF (which allows arbitrary=20
> > profiles.  Can we rely on that ColorSpace field being set correctly?
>=20
> First, yes.  We've been doing so for years, even with Ghostscript=20
> (which typically converts everything to sRGB).

Excellent.  But I'm thinking more of folks trying to print something=20
=66rom a random app on their their iOS or Android devices.  Having a rich=
=20
standard doesn't help when the client implementations are all=20
differently brain-dead. :)

> Second, it isn't a weakness to support well-known RGB color spaces=20
> along with a device RGB color space.=20

I'm sorry, that's not what I was trying to say.

The "weakness" is that the PWG raster format doesn't have a way to=20
self-describe what "Device RGB" means, unlike more standalone image=20
formats (eg jpeg, png, tiff) that have a standard method to embed ICC=20
profiles.

Now if PWG raster data can only exist (or be submitted) within a=20
"Document" that explicitly supports embedding an ICC profile, that's=20
another matter, but that goes back to my worry about brain-damaged=20
clients that don't do the right thing.

(And trying to accomodate those brainead clients possibly breaking stuff=20
 that does properly adhere to the spec..)

> Printers that only support PWG/Apple raster really don't offer much in=20
> the way of color management.=20

True.

(But PWG raster is mandatory, lossless, and a lot less complicated to=20
 implment than PDF or the TIFF abombination..)

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--/7WndpO2umQGPoy1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmCXR+gACgkQrGLLO/XV
ulFX5xAApXtP+d9fiapCAcXEBL1uhgGfRFDIijqNHLxuXW9BJggud5tL6hcFKsT9
62hAuc5w5z8qT3P92Jq6bjOZI+iarCtmfeyTm2b8ILLj3Iu1BaSTYXwuB1UFkpGm
YR3AGeW6bp7XQyOufqGj4dbmMyzctXENfMZu8Brkkj9yskmsT9o+YE0pJ0b1W3N0
LmIBgiEQT/bp+AXU7Ik0n0sXyJgwesNGWa07ABxWgTswPiegpyle6P5sW/FjtpWt
x+lBcEcwWBsrNLWv7x1FwvEqo5xCwEvo1b5KPfPNH4/awUctSFrcAKRuFeObeOcH
ebvDpy0xvfnVKADAgz4T7QDNNAF6hBH3wDFsa6o/cShUvClqulOcrV5NT7RgRwAb
rZfGroUUuKRLsDe0xESMFe8w72u3R+br4+sFsqCTxZq0OHhUz8pJtk8NbTj+JZjs
UManbIBZpVogSE61EJ+kZ6+Hxwgkv3vAYG93Pjydz2cmTmtjg6cKwCARL6tvJJTG
a3EYudyaf0N3TZCUSIi3XR49aS+ebeag5b9731Tzn31G3nQf0jerIUM2nCpZuojH
B8nDykcAMlpzOy6rYx8O2ubeBL5HrOuflyiFgdTubElKWwqaiNAIkMvb3Mw88gg9
CA1RXhhOwCrjFP9xV5UwJw3pO1MVvDThifW4U52rGCX0XAD1QPQ=
=VvtE
-----END PGP SIGNATURE-----

--/7WndpO2umQGPoy1--
