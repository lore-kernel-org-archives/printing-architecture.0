Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
Date: Fri, 7 May 2021 20:04:09 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <6A076C50-6E8E-4500-9168-BE96842B4226@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
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

> On May 7, 2021, at 6:11 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 07/05/2021 21:53, Michael Sweet wrote:
>>> TL;DR: Some doubts about supporting extended color depth and color =
spaces:
>>> - How to discover if a page in a PDF is 8/16-bit color/grayscale
>>>   sRGB/Adobe RGB?
>> So there are ways to do this, but none are pretty... :/
>>=20
>=20
> Are they somewhere documented? Is there sample code? Is it worthwhile =
to implement it? Does implementing it take less new lines in =
cups-filters than cups-filters already has?

You have to parse the PDF file and look at the images.

> If it is too complicated, I think the most intuitive solution, at =
least for the high color depth is to trigger it by print-quality=3Dhigh.
>=20
> WDYT, would it also make sense to also switch to Adobe RGB (if =
available on the printer) if the user sets print-quality=3Dhigh?

That would be a reasonable approach.

>>> - How important is Adobe RGB for printing? If a printer advertises =
that
>>>   it supports it, is it worthwhile for us to support jobs in Adobe =
RGB?
>> Very important, since a lot of cameras use AdobeRGB (or provide an =
option for it) for an expanded color gamut.  And if you are going from =
Display P3 (which is another one you'll see a lot of from iPhones/iPads) =
it is even more important since sRGB is a really small color space.
>=20
> For printing photos from photo applications the incoming PDF is =
probably raster-only and could be treated with pclmtoraster and so an =
easy way to determine whether it is AdobeRGB, but if it is an actual =
vector PDF it gets more difficult. And what does one do with Display P3? =
Is it mentioned in PWG/IPP/Apple Raster/PWG Raster/Mopria? Is it well =
known, is there a free solution to convert it to Adobe RGB?

It is a standard colorspace backed by an ICC profile.

>>> - How is all this influenced by the "print-content-optimize" =
setting?
>> Two different things - certainly the 'photo' value might be hint that =
AdobeRGB/deep color is useful/important, but I'd also say that =
"print-quality" can also feature in this decision, e.g., 'high' (5) =
print quality might indicate deep color is preferred.
>=20
> OK, probably I will trigger it by the high quality setting. Important =
is to know whether I can simply switch to Adobe RGB (only if printer has =
Adobe RGB) regardless of the incoming job and the printer does always =
the right thing (and not try to print sRGB unconverted as Adobe RGB or =
uses a conversion with significant quality loss).
>=20
>> So print-color-mode and =
pwg-raster-document-type-supported/urf-support do two different things.  =
"print-color-mode" is a rendering intent (color, grayscale, bi-level, =
etc.) while the others list the actual color spaces and bit depths that =
are supported.
>=20
> OK.
>=20
>   Till
>=20

________________________
Michael Sweet



