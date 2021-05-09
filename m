Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 149E3nXu1823316
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1620569029;
 bh=EtSH5KTLfky08kXZLYjBi3QFXyLooHgFE0n5zxIOu98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WLxZP4+tG/+iZhsL0HJFGyZFxZuVtvC4vL4I2+h+cbAUQJeBwwtxjK4g1jxzTJAHP
 6WyX6x0AhVRLWyX/NXfh97cHNz+Y6xinPr2F0J4I9R5yOSL6lHI43Hr0tOX4eOkfDR
 LoL2XXot3wucsdmx+UVE8yLwBzUQAwNlviEpcu0Y=
Date: Sun, 9 May 2021 10:03:48 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YJfrxEMo+tL8hCDt@shaftnet.org>
References: <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
 <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
 <1a37c322-5ca3-727b-583f-2b6bc78e44e2@gmail.com>
 <663F1B36-C6A5-4261-8226-C659DC8DA871@msweet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="DxmUCYeDNmMqHaV/"
Content-Disposition: inline
In-Reply-To: <663F1B36-C6A5-4261-8226-C659DC8DA871@msweet.org>
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


--DxmUCYeDNmMqHaV/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 09, 2021 at 09:41:38AM -0400, Michael Sweet wrote:
> So printers that support device RGB and device gray also support the=20
> "printer-icc-profiles" attribute, which allows you to determine which=20
> profile to use for a particular combination of Job Template=20
> attributes.  In some cases a single profile is reported that=20
> represents the printer's internal working color space.

Forgive my ignorance here, but am I correct in my understanding that=20
this attribute provides a URI for clients to retrieve the profile?

So ideally, the client should retrieve the profile and transform the=20
colorspace into the appropriate DeviceXXX space, and tag the=20
raster/document as such?

Otherwise, the client should submit the document tagged with a standard=20
(eg sRGB or AdobeRGB) colorspace, and let the printer do any necessary
transforms?

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--DxmUCYeDNmMqHaV/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmCX68IACgkQrGLLO/XV
ulHuIA//VlCeeCxl5VZ/vweoUKHKL+8xIvdX89MlLV8e7CS8jKInyAJyo90mIG55
CnWPGZG3i8XvRo0qtibSSp1AuhponwbCaT+Ie1PgiSm0J0iMAPSAXWcZlFHhMFey
lkjDvT/obY8WjXXZcIEN+5YpY1zodwSWsAHA3E4b0g33HT4ZA2C79TF8xHe6gSxl
3MG3Wjx/alKbglNTtYB3nKwitnYcn2iTIgW540ukFTRMkUZWZfb3JJ9Kdd5pKyfh
/tpLg5D0QKmYBmPiEKFVVKJP7VtUjiqU+pI4Cwebp6+YNOa8gVmu8M5O7e7XCwDy
Oc+7l7kWca5f1VvLlhoJwKmC0b1POytVK963esUDhgvOElPTqSiurCJ9jGQvX/tR
Sjd2IieuqHwkCK7LbI/P2AuroIce/XhArdm2PbjST3fcQ8/00yJddEbYD9Z1adBM
So+SV/eyBitfzBjyg5v/dJMqhKvhIgv0q2k3+LGOSEhmv7E2Qvu/h/5OsMQQrD2+
q6Ru3BJ4+zyE7ghpYOusmChgwWM3ZXHLJg7A6/SubjZY3CkTq73Rd3VAYrTjaSXG
64IMGCJ2w452Z/jyEwDvHPa74tA1fLPxxOR0sUqosjf8/thh9BNFS8qFg4IBNRyd
CSP6/yFKm1Vl27qwyiD0S6XSKlLmah2FPesFtw/f0bh7sd/4A1E=
=hNxX
-----END PGP SIGNATURE-----

--DxmUCYeDNmMqHaV/--
