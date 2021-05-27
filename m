Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 14RJ4vaP2909617
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1622142297;
 bh=bB0QVdK40CXK9QYuGw9JK2yZHSJr4BWMa9eLzdB4GMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Guw/jx0H3+GgzEMydrQ+NRZndyDwDeYB0mEEcj1Vm9QztFiSMKqsR2t24Vh/SWlrH
 jINIm/ku0k+Q4Kw7e92Kb3pMPHdy1bdJXXG5XwLs7tLRLIZtmXnf0Khf0D7iTIeL7W
 QNvR8YewCQjS2A/YWqzMr3XkpHkm10IVtnZTXRtI=
Date: Thu, 27 May 2021 15:04:56 -0400
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YK/tWMaqQzwHk7GM@shaftnet.org>
References: <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
 <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="x7GJhAZqlKeaAxPZ"
Content-Disposition: inline
In-Reply-To: <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
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


--x7GJhAZqlKeaAxPZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 27, 2021 at 08:04:30PM +0200, Till Kamppeter wrote:
> Also, if I have images (JPEG, TIFF, PNG, ...) how do I know which coloe
> space they are? imagetoraster seems not to determin whether images are sR=
GB
> or AdobeRGB.

TIFF, JPEG [1], and PNGs have standard ways to embed an ICC profile, and=20
you'd have to parse that profile's description and search for 'AdobeRGB'=20
(or sRGB).  Anything other than those two and you can probably just=20
assume the file is DeviceRGB (or DeviceCMY[K] for CMY[K] TIFFs)

I think it's safe to assume that if there's no embedded profile in a=20
file of those formats, it will be sRGB.  Where things get messier are=20
formats [2] that don't support embedded profiles.

As for how to extract this, I routinely use exiftool on the command=20
line, but libexiv2 is commonly used to do this (See [3] for an example)=20
Once you have the profile, liblcms2 (already used by cups-filters) can=20
parse it.

Incidently, my personal photo print flow submits DeviceRGB ppm files via=20
lpr.  I don't care if the system defaults to assuming sRGB for=20
everything, but IMO there needs to be a way to override that default via=20
a runtime option...

[1] Plus jpeg2k, jpegxr, heif, webp, and undoubtedly others..
[2] gif, bmp, tga, and many, many others
[3] https://github.com/Exiv2/exiv2/blob/main/samples/toexv.cpp#L137

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--x7GJhAZqlKeaAxPZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmCv7VYACgkQrGLLO/XV
ulEj2g//WJpKcWQQWlZ+HPmXuenniJzMQlfe2Wu5ceOZ3luTJ2UBaq8zxPZJVCRb
8afM81wrEFSwNhHeczRXius59jbulCPxUY6GP0cCLVf18I2uh8DavTcGtr8zzNO+
+aYLqoQ+Ll6b8PuBNTdkYcXXJvaRTx5yYNNKemebXGPZb7uZgPjKwnnGOXM8h1MZ
ScZOeXisaLffJJF7DfbKMRaJdPB9GtMXw0gAp5W3SWJpxM+0IrN398j7o37/aF8i
aeeTW00GS7LJSsQmx7gmkOchjO13Uey/JccyPchatl/q+Tqnv1GrSIJYwBWCIgM4
qWHNrcFg3a/5ejANHm0bZIXSGdxUhYBckPqDBBV5ARX7K4ba/SZmCNIwvIiGiooC
jASntBvYHaN3TWizL736PnoKoUBCu5NdrjNhNZW8Clb7LNEU6g49HtFgxEyhD8qo
xdsQNhLXnE28m6N9kipZ5J36rSB5AmeqpeagKHUMBbAvjtjex06N9rXLmZU3xLhg
kc+fdoHt+Xe2FB19bOtuZtlmMGzuNAkhPX3XEjiZOBVSSgwH6hpyeik1cq6/kODQ
RETBry4tXerT5D7x0CZWhyToa+bgl4NBOGKs/mzWVdiTonPxgAWJf7jbyiln8K3x
xeeAHCiKHGbW9VuYZ5J1sARy1fSyGBavKhG6w3GqOXlEQdeLUwg=
=Hm+E
-----END PGP SIGNATURE-----

--x7GJhAZqlKeaAxPZ--
