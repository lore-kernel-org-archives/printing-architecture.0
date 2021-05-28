Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <aae2e939-01a4-bdee-ddc7-940e93351eec@gmail.com>
Date: Fri, 28 May 2021 08:59:13 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <4FDD96B5-A0D7-4CF7-A0E4-4D116FE73607@msweet.org>
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

> On May 27, 2021, at 2:04 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> If I look into the source code of the pclmtoraster filter of =
cups-filters (cupsfilters/pclmtoraster.cxx) I see that when readin the =
embedded bitmaps from a PDF file there only occur /DeviceGray, =
/DeviceRGB, and /DeviceCMYK color spaces. How do I determine whether I =
have sRGB or AdobeRGB? Vikrant?Ans what is the default/IPP/PWG-standard =
color space of /DeviceCMYK?

Assume sRGB/sGray - pclm was intended as a format for entry-level HP =
laser printers. DeviceCMYK is CUPS_CSPACE_CMYK (no associated profile, =
always a device color space).

> Also, if I have images (JPEG, TIFF, PNG, ...) how do I know which =
coloe space they are? imagetoraster seems not to determin whether images =
are sRGB or AdobeRGB.

EXIF (used for both JPEG and TIFF) includes several tags related to =
color space, starting with ColorSpace (sRGB or "other") and then using =
PrimaryChromaticities (sic) for the "other" color space to match it with =
the AdobeRGB primaries.

	=
https://www.jeita.or.jp/cgi-bin/standard_e/list.cgi?cateid=3D1&subcateid=3D=
4

For PNG you need to look at the cHRM chunk to compare primaries:

	https://datatracker.ietf.org/doc/html/rfc2083#page-20

If the file doesn't have this chunk, assume sRGB.

________________________
Michael Sweet



