Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
Date: Sat, 29 May 2021 18:32:37 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <54eda145-936b-a920-b645-66a104b23ad4@gmail.com>
 <YJc9BYPyXoSyi8X/@shaftnet.org>
 <46c7d30c-b28d-1585-e4b6-49aa22b9efc2@gmail.com>
 <2427DA0B-9BB7-462B-A29E-0A3366E504A3@msweet.org>
 <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
 <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
 <320a8f00-338a-8ec8-8019-22f6ecd1d4ec@gmail.com>
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

> On May 29, 2021, at 3:19 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> So one can identify the picture as AdobeRGB in the ugly way you =
describe, but it seems that the EXIF standard does not actually support =
AdobeRGB, even that cameras have this sRGB/AdobeRGB switch in their =
menus for decades (probably from the beginning of digital photography, I =
think my Canon IXUS 400 of the early aughties had it already).

This "ugly" way is the standard method for JPEG, and is also used for =
Display P3 photos you might get from iOS.

> But there is still the question whether this works with the AdobeRGB =
pictures of all cameras or only of some of them. I really do not want to =
have an AdobeRGB-identification quirk list for digital cameras (and =
phones).

This is the standard method for JPEG.

> Only there is also one thing: If you print a JPEG picture right away =
from the command line, it does not get filtered at all, due to this line =
in the auto-generated PPD files:
>=20
> *cupsFilter2: "image/jpeg image/jpeg 0 -"

Right, and printers that support JPEG printing also support EXIF =
information (at least).  Beyond the primary chromacities, you can also =
embed an ICC profile in a JPEG file - only printers that advertise "icc" =
in their "jpeg-features-supported" attribute can properly print those =
files...

Longer term we'll need CUPS to convert JPEG files as needed and not just =
pass them through.

> So the printer takes care of however you set your camera in the hope =
to get the best image quality.
>=20
> So it seems to be more important to identify AdobeRGB in raster-only =
PDFs, for example if you print a photo from a photo manager or editor =
and here it probably depends on what the user sets in the print settings =
whether the PDF is AdobeRGB or sRGB. digikam allows turning on color =
management in the print dialog and the select from a long list of =
standard color spaces (includes sRGB and AdobeRGB) or with custom color =
profile, but one does not know whether a JPEG image in AdobeRGB gets out =
as a raster PDF in AdobeRGB without converting forth and back when one =
selects AdobeRGB for printing.

A PDF file (raster or otherwise) has color space information encoded as =
resources for the pages in the file. If an application actually supports =
different color spaces, then it should preserve the color space when =
printing and then the print pipeline needs to avoid doing extra =
conversions (Ghostscript does this, for example).

> It seems not to be easy to make use of the fact that a printer =
supports AdobeRGB as input (sRGB probably serves 99.9 % of all printing =
needs). Did you already try this out somehow? Do you really get better =
output quality by that? And if you tried it, how did you do so?

I have several printers that support 48-bit AdobeRGB, and there is a =
definite difference in output quality for wider-gamut files.  But for me =
it is only worthwhile when printing photos or other large gamut content.

________________________
Michael Sweet



