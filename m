Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 09D5382005
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1651876380;
 bh=hxfvN+qIELmadOvZoRw5Fy2ww82g8cC5V1y1reeVaJE=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=l32N+1ow64wAp7sD0l/Pw+IWCjMf3u8MdVa2ik8Qi7NQqdDuqvmrioWqv+adjxlX7
 BWS1DIRW9Mf5Ykmc1aX6yotV09QgVD2FAp3Bi6XfHiVrBeWtxwtjTF/3Xdr3IjCfHA
 q8VkfX4hkaekCgb173R05a4HtkJmG4Olhu7c/x98=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_71A33ADC-C50B-4C16-91FE-D4A7EBEDBC0C";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
Date: Fri, 6 May 2022 18:32:57 -0400
Message-Id: <45E96DFD-D08D-4742-8BE1-2D36650652AD@msweet.org>
References: <0aa65341-6244-d76e-2751-75dd02413568@gmail.com>
 <8172806B-108A-4857-95F3-F5749789ED36@msweet.org>
 <89dde39d-560b-f74b-9999-5644ffb38fce@gmail.com>
 <E1514B68-CA63-46AD-B2C7-806A83021006@msweet.org>
 <20db2ac3-f93f-1aa7-60f8-b7eca5a00cc3@gmail.com>
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


--Apple-Mail=_71A33ADC-C50B-4C16-91FE-D4A7EBEDBC0C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On May 6, 2022, at 3:18 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> and then will all build libcupsfilters with PostScript support. So =
perhaps better move the PostScript support code into the PostScript =
Printer Application. WDYT?

Long term that is probably the best approach.  But I suspect CUPS 2.x =
will be around for a while yet so I wouldn't jump at moving things =
around until we are done supporting cups-filters.

>> The "exotic" image formats are already supported by desktop (Gimp, =
etc.) and command-line (Imagemagick, etc.) applications that can handle =
printing.
>>=20
>=20
> The support for them is still lurking around in libcupsfilters 2.x. =
Probably they will never get used. I could remove them now, making use =
that we are starting a new generation (2). WDYT?

Up to you, but it would make sense.

>>> PDF, JPEG, PNG, and text is good enough, especially as desktop =
applications usually send PDF. Output should be PDF, Apple Raster. PWG =
Raster, and PCLm. PCLm is also actually needed as there are PCLm-only =
printers which fulfill the driverless printing standards.
>> PCLm only satisfies Wi-Fi Direct and Mopria.  Can you name a single =
PCLm printer that also doesn't support AirPrint or IPP Everywhere?
>=20
> See this issue: https://github.com/apple/cups/issues/6022
>=20
>>> We discovered such printers recently. I really do not want to have =
to provide a Printer Application for printers which fulfill driverless =
printing standards.
>> Make and model please.
>=20
> The printers are the HP LaserJet M14, M15, M16, M17

LaserJet *Pro* M14-M17, and they do not appear to be manufactured =
anymore (looks like there are few still available from Amazon, just not =
from HP directly that I can see) and have been replaced by the M110 =
series which *does* support AirPrint and Apple Raster.

Anyways, if that is the extent of the PCLm-only printers we need to =
support, I am not convinced we need to add the complexity of supporting =
PCLm - it's not just a matter of the format, you also have to support =
the banding, etc. attributes and values.

> ...
>>> Also there is some useful functionality compared to =
tools/ipptransform.c which I like to keep:
>> ippsample's prototyping tool?  That's effectively my model for the =
new 3.0 filtering/transform front-end, although I will shortly be =
eliminating its usage of MuPDF - that library's API is far too unstable =
to depend on and uses an incompatible license for production.
>=20
> Which sufficiently free PDF interpreter will you put at MuPDF's place?

Xpdf/Popper are GPL2, which fit the bill.

> ...
> Which is the PDF rasterizer which should be used then? Or do we need a =
PDF pre-processor like pdftopdf for that?

It would be better to preprocess the PDF so that the PDF interpreter =
only has to rasterize content.

>>> - CUPS provides some extra functions in page management: N-up, =
even/odd, mirror, ... via the pdftopdf filter. We should conserve them.
>> Again, I wasn't suggesting that functionality would go away.
>=20
> How is it planned to get implemented in CUPS 3.x.

In the transform program.

>>> - The pdftopdf filter flattens filled PDF forms and annotations, =
which assures that the filled in text actually gets printed by the =
printer, independent whether the printer prints PDF directly or when =
need to to convert incoming PDF to some raster format.
>> Right, but the current QPDF-based filtering seems to cause problems =
for some printers.
>=20
> OK, what is your alternative?

PDFio.

> ...
> So I need to know whether it is still worthwhile to invest in =
cups-filters or whether I should perhaps put it into maintenance mode =
and move to for example working on PDFio to make it flatten forms and do =
other things to replace the pdftopdf filter?

You'll need to support cups-filters for a while yet, obviously, and it =
would be useful (even for cups-filters) to use PDFio instead of QPDF for =
PDF filtering...

________________________
Michael Sweet




--Apple-Mail=_71A33ADC-C50B-4C16-91FE-D4A7EBEDBC0C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmJ1ohkACgkQvmfHXsgf
MkTZ/g/7B7k9PXe4Pu0LvvfP7Frwe/P7zMXmAU4ULRP9B55k1zbmsme+0hIvsjPh
w6VjU96Q7LmuPdt7Q1MPxfEIbSVwaCSGcAChfNzuGUQs4RwvB/atmaYRTaMEt8Oy
zaQTMI279occk3q7GotC+fAo2X8Nao8BjCOcDSZx1u0AKwI5zMiRMIAt/z6wix+V
4OSh7U8ciUi3Cy/fJr2T/8aCFZMiQQclH9p8w05QISCBRytQ/YDIKmEPhVGWVin4
BmPo20M9hyYLVe1UkXbF0IJlsPm8qQcVDtYR72DkG5RIGKtgYsIe3QZewmfqcD7A
ll604U/Oip5N8YkklrCg/r6GEQNyaIDiCj+bWgDTiY3ys6EWdYNbcND+awSlstiF
qeEEfvfxCo3dipzKghqmvkdX6YfFXB4TN3nwY79d9yD6WEDfAJIuynvpNjdqy8b+
AXOkFkwEWSfqCAuGUeNETcayedNmKSdlBZc9TYN3y1+Q80+2xtbmgJrKjXcUy/eB
lZoDxd7FnWEEBntUM4+ecL7jA9ya8VfJRWOoBvvJVZPRBIk0JH1LEIwANsUgEMds
has/FYPiEg+cuksYQeeMPdwDzSU40rdtxWiuOMKqpdKlFyxJekV+y7CyI+Lnm/eB
floNk8oUyWbQSGXAL7DkZ66FYyRrd39bqSMS6Txq4ETl9Gg8n88=
=6I7I
-----END PGP SIGNATURE-----

--Apple-Mail=_71A33ADC-C50B-4C16-91FE-D4A7EBEDBC0C--
