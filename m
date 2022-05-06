Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 00BE482005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651861339;
 bh=L0DhxcsMSxqo7SAFgImy2KZLmJy+DBbXrXI6rA5N3i8=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=rDKV9EJEIrD/JnkRHJnYpxGSm8uHnX6jWywntl6o0Zwa4Drot1h0il7HzF4DHZuzH
 4sdzsUhiIlqS4Fb5JJpnbt7fXweTorH4lnfg3vw/ghDUM4j+ALhOe4qXVDFBoJMR3h
 LUdjVG4m3iBH4Jz1ic65Eob/0bEdK2SEG2tZ25Og=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_1488F555-46B8-4D8A-B824-831D2A8A3DAC";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
Date: Fri, 6 May 2022 14:22:17 -0400
Message-Id: <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
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


--Apple-Mail=_1488F555-46B8-4D8A-B824-831D2A8A3DAC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 6, 2022, at 11:14 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Seems that your plans are to discontinue cups-filters and to include a =
new from-scratch filter approach in CUPS 3.x. Am I right?

I'm not sure at this point.  I *do* know that I'd like to see us focus =
out efforts on core file formats and a minimal set of dependencies for =
converting them - IMHO there are too many combinations to test and =
support properly.

> I think this is not a good idea. cups-filters contains 2 decades of =
hard work and even if we do not make use of its full functionality we =
should not throw it overboard.

I don't think I suggested that.

> First, to the formats we will need.
>=20
> PostScript and all these old, exotic image formats which older CUPS =
versions and cups-filters support we indeed do not need.

Well, certainly the PS printer application needs PostScript support.  =
The "exotic" image formats are already supported by desktop (Gimp, etc.) =
and command-line (Imagemagick, etc.) applications that can handle =
printing.

> PDF, JPEG, PNG, and text is good enough, especially as desktop =
applications usually send PDF. Output should be PDF, Apple Raster. PWG =
Raster, and PCLm. PCLm is also actually needed as there are PCLm-only =
printers which fulfill the driverless printing standards.

PCLm only satisfies Wi-Fi Direct and Mopria.  Can you name a single PCLm =
printer that also doesn't support AirPrint or IPP Everywhere?

> We discovered such printers recently. I really do not want to have to =
provide a Printer Application for printers which fulfill driverless =
printing standards.

Make and model please.

> Also there is some useful functionality compared to =
tools/ipptransform.c which I like to keep:

ippsample's prototyping tool?  That's effectively my model for the new =
3.0 filtering/transform front-end, although I will shortly be =
eliminating its usage of MuPDF - that library's API is far too unstable =
to depend on and uses an incompatible license for production.

> - Ghostscript is the PDF renderer best optimized for printing. The =
interpreter got recently converted to be completely written in C, =
improving its performance and resource usage. So calling Ghostscript as =
external executable (to not need to worry about license compatibility) =
could improve things compared to MuPDF (and AFAIR MuPDF and Ghostscript =
have the same license).

We CANNOT rely on Artifex software anymore.  AGPL3 makes it a =
non-starter for anyone using CUPS on embedded or cloud platforms - =
unlike GPL(2/3) you can't just pipe the output, since AGPL applies to =
the work as a whole (total overreach IMHO, but it's their software...)

I have no problem with Ghostscript being an option, but we need to make =
sure CUPS can be used freely by everyone, not just the True GNU.

> - Ghostscript produces all the 4 driverless printing output formats: =
PDF (not actually needed in our use case), Apple Raster (I have added it =
in 9.56.0), PWG Raster, and PCLm, so no post-filtering after Ghostscript =
needed, the output of Ghostscript can be directly passed on to the =
printer. For Snaps and other sandboxed packages or for IoT Ghostscript =
can be compiled with only the needed output devices (I do this in the =
Printer Application Snaps).

Ghostscript may be able to rasterize PDF content, but it doesn't handle =
the transform/imposition/watermarking functionality that is often used.

> - CUPS provides some extra functions in page management: N-up, =
even/odd, mirror, ... via the pdftopdf filter. We should conserve them.

Again, I wasn't suggesting that functionality would go away.

> - The pdftopdf filter flattens filled PDF forms and annotations, which =
assures that the filled in text actually gets printed by the printer, =
independent whether the printer prints PDF directly or when need to to =
convert incoming PDF to some raster format.

Right, but the current QPDF-based filtering seems to cause problems for =
some printers.

> - Thorough page geometry tests and fixes have been performed on all =
filters of cups-filters recently. All combinations of the print-scaling =
and number-up attributes should work, and with both standard portrait =
and also landscape-oriented (long-edge-first) paper size settings.

I'm glad to hear that.

________________________
Michael Sweet




--Apple-Mail=_1488F555-46B8-4D8A-B824-831D2A8A3DAC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJ1Z1kACgkQvmfHXsgf
MkQ8dxAAuAQzr5jdZ/68H61vvXOXcUxdZHgNDTc5I2DxKGqMgVqlX6ItsCNSBIo0
KhXGSw6UAJ1qTyCBYVjzFMW3SX8VpzIDB1BVikq4lZcKYxq6EktuIsxRZUre/f7+
riF63j9DQPy4rAfIJXTe9oBWtFG4Vg7YTvCJrTN0Y5G85wvu+YaGdmOBALaouWwu
574AP5tjof7CCzKY36x6pPN0sOdS6qdkM/0WY5w25CTbCYmtEnObSgr7EpcSUY+Z
tGE9i8LSWzUxj+lWpuh4OQdd8067pc5voLsvnHTFfDX64StlkwR7J2KXtFertMyy
Xk04bnozVlFTlGG8WSnp+2t/GNFnT/x/ZooL1ftDQUB3fFIyjkEZ56n9jcNc1U8P
ANr9J0q3lxLHS1yp6aKQ8uRWqRDiSl6OB+lrkcnekbTGHkECrX/watELRDbKYfpr
SM2XpASF5J078xHVffuYzVkUWXtedNUhMXSscydAtGtUeeIhhkz81EyainUekRg+
T9rkV3egcZZhy/uaZOLgzerOZv/uYb6TMYbEyWnG20zlFRib+gbTUO012Fh7N2+q
P9AhJRbqiJR8+7GUjuCFs9z5QopW9jIlmS836Rz9IqaC2oI6/xlu0MASSTnFk63H
6c1Wi35BGcIFJyJ13BUxlvUEyOKeo68U5sDqILhh0snKO7GyqEA=
=hfZl
-----END PGP SIGNATURE-----

--Apple-Mail=_1488F555-46B8-4D8A-B824-831D2A8A3DAC--
