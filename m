Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <d98786f1-b8ce-4530-715d-d507b2110baa@gmail.com>
Date: Sun, 9 May 2021 16:55:01 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <22E3C15E-13D2-42B5-9384-4637E8033E93@msweet.org>
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
 <d98786f1-b8ce-4530-715d-d507b2110baa@gmail.com>
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

> On May 9, 2021, at 4:14 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> But this would be the task of the renderer then. Does Ghostscript do =
this?

It might, but certainly not with the current CUPS driver.

>> ...
>> Therefore, you can examine the embedded image objects (all of the =
current tools provide utilities for extracting them) as a hint to what =
color space might be best if you have to choose between AdobeRGB and =
sRGB.
>=20
> Yes, it is not a big problem to find all image objects, pclmtoraster =
does it for example. One could perhaps add a mode to this filter in =
which, instead of producing output, it tells hwther the input file is =
sRGB, AdobeRGB, or whatever.
>=20
> My questions:
>=20
> 1. Let us in the second use case assume that the t-Online logo is =
complete represented as vector graphics, like an SVG, but not =
necessarily in any standard format. How is its color defined then? An =
how the color space?

So there you would need to look at the PDF content stream or the page's =
dictionary (and its Resources array).  Any resource object that has an =
array value with "/ICCBased" is an ICC color space, and the referenced =
object after the "/ICCBased" is the ICC profile.  There are other ways =
that common profiles can be specified/approximated (e.g. "CalRGB" is =
approximately sRGB and "CalGray" is approximately sGray).

> 2. And how about a PDF with a mix of sRGB and AdobeRGB images? Should =
we produce the resulting (raster) page
>  in AdobeRGB then as this has the wider gammut?

In general, yes.  If there is also device RGB support and you have a =
profile, then *that* is your best color space.

>> That said, if you have a printer ICC profile and the printer supports =
device RGB (or device gray), then *that* is the best color space for the =
"last mile" to the printer.
>=20
> Then I could simply let Ghostscript apply it for the rasterization?

Yes, if you have a profile.

________________________
Michael Sweet



