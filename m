Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
Date: Fri, 7 May 2021 15:53:44 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
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

Till,

> On May 7, 2021, at 2:52 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
>=20
> TL;DR: Some doubts about supporting extended color depth and color =
spaces:
> - How to discover if a page in a PDF is 8/16-bit color/grayscale
>   sRGB/Adobe RGB?

So there are ways to do this, but none are pretty... :/

> - How important is Adobe RGB for printing? If a printer advertises =
that
>   it supports it, is it worthwhile for us to support jobs in Adobe =
RGB?

Very important, since a lot of cameras use AdobeRGB (or provide an =
option for it) for an expanded color gamut.  And if you are going from =
Display P3 (which is another one you'll see a lot of from iPhones/iPads) =
it is even more important since sRGB is a really small color space.

> - How is all this influenced by the "print-content-optimize" setting?

Two different things - certainly the 'photo' value might be hint that =
AdobeRGB/deep color is useful/important, but I'd also say that =
"print-quality" can also feature in this decision, e.g., 'high' (5) =
print quality might indicate deep color is preferred.

> I want to make it possible to make use of the support for extended =
color spaces of driverless IPP printers (or Printer Applications).
>=20
> IPP allows the user to only select from the following color modes for =
a job (list taken from PAPPL, actually available modes advertised in the
> "print-color-mode-supported" IPP attribute):
>=20
>  'auto'               - Automatic color/monochrome print mode
>  'auto-monochrome'    - Automatic monochrome/process mono print mode
>  'bi-level'           - B&W (threshold) print mode
>  'color'              - Full color print mode
>  'monochrome'         - Grayscale print mode using 1 color
>  'process-monochrome' - Grayscale print mode using multiple colors
>=20
> On mono/grayscale printers there is no 'auto-monochrome' and 'color'
>=20
> Printers support some extended color space modes, at least for raster =
input, as advertised in the "urf-supported" attribute for Apple Raster, =
and the "pwg-raster-document-type-supported" attribute for PWG Raster. =
The extensions are:
>=20
> - 16 bit per color instead of 8 bit per color in color or grayscale
> - Adobe RGB instead of sRGB in color

So print-color-mode and pwg-raster-document-type-supported/urf-support =
do two different things.  "print-color-mode" is a rendering intent =
(color, grayscale, bi-level, etc.) while the others list the actual =
color spaces and bit depths that are supported.

________________________
Michael Sweet



