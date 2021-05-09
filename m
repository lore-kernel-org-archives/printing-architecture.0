Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 1491cDoe781755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1620524294;
 bh=7XDGGktDR5QhZscDY3iGN+GdI0/AuiaOWuoqqLaR/fg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oWZq6/4+k4s72b0U4ZbeTMEFTprMspfQcPgmwojn+XMhcvygAL7j6uwlRfq9l6Oll
 stgwVCMFK4Cu3hGLeQTPfhm2AEKKzaQ6aTZ8qT/BIfaWTTb8X4SQowsPtzP3u+9U9t
 MIgIODiaAanYQa5Mbsob4bpeFMSUuNeFMICcqb7w=
Date: Sat, 8 May 2021 21:38:13 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YJc9BYPyXoSyi8X/@shaftnet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="GiKNaFB/EPZ++LiO"
Content-Disposition: inline
In-Reply-To: <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>


--GiKNaFB/EPZ++LiO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 09, 2021 at 12:45:53AM +0200, Till Kamppeter wrote:
> 5. In filters where the input is raster or an image, pass it on in ts
> original color depth and color space, only convert if the printer does not
> support the color depth/space or the user wants to print in grayscale.
> Especially we also do not want to convert 8-bit input to 16-bit (if the
> printer supports both) or sRGB input to AdobeRGB as this does not improve
> the output quality.

It's worth considering that using 16bpp has benefits if any intermediate=20
processing is done due to stacked quantization errors, even if the final=20
sent-to-the-printer output is only 8bpp.  As for colorspace... that's=20
more complicated.

> 7. As the PPD generator does not add choices for the extended color modes=
 to
> the ColorModel option (see (1)) we need to somehow add the info of how to
> upgrade the color depth and color space for print-quality=3Dhigh in (3) a=
nd
> which is the highest color depth/space supported by the printer for (5). =
So
> we let the PPD generator add a line like "*cupsHighQuality: 16bit,AdobeRG=
B"
> (exact content depends on what the printer supports).

It is is mistake to think about colorspace conversions in terms of=20
"print quality" and as such something that can be "upgraded". Instead,=20
one should think about it in terms of "correctness".

For example, the "T-Mobile Magenta" color is [226,0,116] in 8-bit sRGB,=20
but might be [215,0,123] in 8-bit AdobeRGB, or [200,10,135] on the=20
GruntMaster6000 printer on my desk.

If we're not absolutely sure [1] about the source colorspace (and the=20
destination colorspace) it is logically impossible to "correctly"=20
transform it.  The only sane thing to do is leave it completely alone.

If we _do_ know the source and destination colorspaces, we can (must?)=20
transform from one to the other to ensure the colors are as correct as=20
possible. I say "as possible" because this conversion is nearly always=20
lossy: (1) there may be colors that the destination cannot represent,=20
and (2) quantization step differences mean you might not be able to=20
represent the exact shade you want.

Additionally, if the data is transformed from one colorspace to another,=20
all associated metadata/attributes/etc *must* be updated correctly to=20
reflect this.  Gotta keep ourselves internally consistent...

Anyway..

[1] Typically this means the source has been _explicitly_ tagged with=20
    its corresponding ICC profile. In the case of PWG raster, this=20
    means only "sRGB" and "AdobeRGB", as the others are device-dependent=20
    and as such are meaningless without an ICC profile to tell us how to=20
    interpret the values.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--GiKNaFB/EPZ++LiO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmCXPQMACgkQrGLLO/XV
ulHZlw/+PX0grXVB2dHZywpzOqyN3diVTGn46gnaNKR+RDqL9na/z5cXSsVVRw1x
fLgeJwYFXiBySqridzm++gMCXj81danx80CUnnEmaRAEHOxO4/6HEMS6pfft527f
lrOimUSLc9bmVmV/B0h33rGGJbPP3yIdNDMza+vaW26Zdkxey/iyf+x62KjV6RDE
urFrN8XZUry1B5S0sDcrgLkKd8NmXGORUATKLIPEQ2VfCfU/bFH7QOE+qYAfgwMc
PKSb0qvpuID7/IR0kuI2O1MKoba5X777sf7O+vDIJj/Nvj2hr7NGFk82R45Pg3Nu
yA9etkuDTtRjSioiqjYrlVEve4o6iAYr6fRMQeFkwtjKXdu00NRFOFW/K+xg85kO
CeOrB1BXRn2BMqjvqRGV1Z2ZB8Lu+oWo0BTvJUsTS2aEnosrgwGiYCLaqLRfrkZo
b33gPO8jpLV7dZIzJKbx/z+o3hyiV5WyOtX8FvsxBZJAJUuyEsctqLIUHIgTuRrT
ExRpFPvDFNjMj8InB/xRnwludVNNiqO2w6SGoozNX2m/iOboQztNMPwbXU9Hk1uY
7UGHtZzRi6UFqNF9i143liz3+RZiyaj8q+UQIpAIhG6INkJOaCklNGV2S8fnns+X
rBSWk709pDq+WBORY5aJvQwxfGM/ulHQH0q3vEZjLqIKCAVAaGg=
=5rwj
-----END PGP SIGNATURE-----

--GiKNaFB/EPZ++LiO--
