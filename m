Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0B3658207F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651928992;
 bh=BGSTS9hhqR+VfZt2UkXuwUBF7K/l8S48Z4C2LgPepCs=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=eUjoU97ugELz4DkBD8ighMVGVkwZF+KRdexhWWiA6zhVML6exnHmweSm4lqvRVa13
 s+MsKoloyPdmUTZB5dK/JjC+PSlHRkU4c3gMeHISvIIpDeZlITwoH1cl0PFhlGiq2J
 eK48jc1aDOVEeVG/T4WWTfHSgMq39LrsaYJ6WMDE=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_74E02BFE-F99C-4772-A518-6E195586FF66";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
Date: Sat, 7 May 2022 09:09:50 -0400
Message-Id: <4426FC74-ADD1-4BC5-B96C-A0F3A755F2EE@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
 <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
 <2fc86159-d585-d454-8d73-04419073be34@gmail.com>
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


--Apple-Mail=_74E02BFE-F99C-4772-A518-6E195586FF66
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 7, 2022, at 3:05 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
>>> Which sufficiently free PDF interpreter will you put at MuPDF's =
place?
>> Xpdf/Popper are GPL2, which fit the bill.
>>=20
>=20
> So GPL2 is OK and AGPL of Ghostscript/Artifex not? Why?

The GPL2 terms still allow companies, as well as individuals, to use and =
combine software freely.

The AGPL terms are specifically written to prohibit combining of =
software without either providing the combined software under the =
GPL/AGPL or seeking alternative licensing from the developer. =
Unfortunately, what defines a combined work is somewhat ambiguous, so =
one could argue that making use of non-free Wi-Fi firmware on a system =
that accepts print jobs over Wi-Fi violates the AGPL of Ghostscript.  I =
doubt that Artifex would push for such a legal interpretation, but =
they've chosen the AGPL and do license Ghostscript commercially.

As an organization under the Linux Foundation, I believe OpenPrinting =
has a responsibility to ensure that all users, including businesses, can =
use our work freely.  Unfortunately, the AGPL goes beyond *software* =
freedom and community (sharing) by explicitly limiting what you can do =
do with the software and effectively declaring that "all your base are =
belong to us."

(FWIW, I feel similarly about using GPL3 in OpenPrinting - its use is =
toxic to commercial distribution of OSS...)

> ...
>> It would be better to preprocess the PDF so that the PDF interpreter =
only has to rasterize content.
>>=20
>=20
> Sop something pdftopdf-alike?

Correct.

> ...
> By the way, we have seen some printers which do not like PDF output of =
QPDF (I got one bug report in the last days). Are there many more? =
Should we report a bug on QPDF? Or has it some general fault making =
reporting a bug on it not worthwhile?

Definitely need to report a bug, but it will be good to determine what =
the problem is...

> Note that PDF interpreters in printers can have quirks like PostScript =
interpreters. They also do not necessarily only hit QPDF output, but can =
also hit the ourput of Ghostscript, GTK, Qt, even PDFio.

Of course.

> So in my opinion we should not necessarily rush on getting rid of QPDF =
(we report bugs on QPDF compatibility issues to QPDF though) but better =
make sure that if a driverless printer is not able to print a PDF file =
that we smoothly fall back to raster, what you are currently fixing/have =
already fixed.

Right, and the support for raster fallback was designed into IPP =
Everywhere/AirPrint from the beginning, specifically because of our =
experiences with buggy interpreters.

(FWIW, I don't know whether Mopria talks about this at all, and Wi-Fi =
Direct doesn't address this...)

> I agree with replacing of QPDF by PDFio for sake of simplicity and =
getting rid of C++ though. As you probably I am much more comfortable =
with regular C.

Personally I'm fine with C++ code/syntax, but I also know that libstdc++ =
and the ABI/name mangling algorithms have gone through a number of =
incompatible changes over the years that has made distribution of =
compiled printer drivers/applications very difficult.  C just doesn't =
have those issues...

________________________
Michael Sweet




--Apple-Mail=_74E02BFE-F99C-4772-A518-6E195586FF66
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJ2b54ACgkQvmfHXsgf
MkQqaxAAmGBjNW2QvdeoiK0a6gOxeIO6/aLzWdSACJzLhMfwL6sChCSAJ9RAP5Wq
cU0hAhhv3p23MEo6AUqwKE1fVS1PLLFJK205zrkb331+bewdfsF78M8lK3CVEiG0
Ntrfp3NdkhOiypaPTj+ws20WUn8sQLdM1mAZtFhr+NKzcsWi7mDPD63s6mVXKvF5
JGFm1CJNpC9dJM7YrJUTyvfvHnRL7EGjBM08HwDVtDI0hiHOBOpJpPNnyTRHP574
wcyC4+TmkZmONYhVylNj0mJNdSE08HCeBcskA/gs1rCj3xsinSv2W/TgvYqbwDuC
R6fiORDzvavtUpP1c7v2K7IlfDcB5otZz4pwkFuACRCblh+vIkkjtOFkW99p0y3i
7j8dLT1AT6VShqyDhhVdbVIX89IqYLdamSncXxa++8EBqlveKu/fFPA+h9Dxhz/q
35PlAh3fSvIPnWztn1V5dbWv+T06TxkKWTxJAPTq3QAJJr7rfyxjMYbRDN4+A4GE
Uof5GxjJSy7YwntvmwMre4iRgga3hw9VsYwFJO1rCvq6KWgKGlqlVh9gCAuuji21
RU/MqbaCrCtl7Teq2zzlTCLhRywtxtpknPhh5Jd616ZgsST3Wux0YsREmsoZctOi
lZR4kclWa4Iw4aF9v5DpBP7nAMFnJQTCX5tggU7OFZIq2cyIWrE=
=TgkT
-----END PGP SIGNATURE-----

--Apple-Mail=_74E02BFE-F99C-4772-A518-6E195586FF66--
