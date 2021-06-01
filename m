Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <178e06de-ad94-ae37-3304-b20b85ccadf0@gmail.com>
Date: Mon, 31 May 2021 20:54:20 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <B25518D0-CE9A-4A60-8150-100C87646619@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
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
 <15F0BA1D-9205-4659-A1D7-EB41F9F6F110@msweet.org>
 <b9219a65-4bcd-2e7c-56e2-31a5c2c9be3e@gmail.com>
 <63629EAE-235A-4FB9-8721-884E9E163036@msweet.org>
 <8592364a-15e6-41c3-ab0e-757b3aedfed7@gmail.com>
 <BCD48324-66DA-4F55-8FCD-154C8FC0E49D@msweet.org>
 <d5082b23-8eb7-be84-db5c-42bdde3ba5ac@canonical.com>
 <41E99F46-2F6C-4368-A03F-D575EB838E8E@msweet.org>
 <056c7830-1a00-2111-9e9a-8f125a397de8@gmail.com>
 <F2D0FCD2-39B9-460F-B332-13319BF64BC9@msweet.org>
 <178e06de-ad94-ae37-3304-b20b85ccadf0@gmail.com>
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

> On May 31, 2021, at 3:38 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
>=20
>=20
> On 31/05/2021 20:13, Michael Sweet wrote:
>> Till,
>>> On May 31, 2021, at 11:03 AM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>> Do you know which Linux applications generate correct PDF files?
>> Sorry, I did some quick testing and wasn't able to find a single =
Linux application that does things properly...  Maybe we can fix that...
>=20
> How would you fix that in CUPS/cups-filters?

There isn't any way to fix it in CUPS/cups-filters.

> For me it looks like a bug in the PDF generators in the applications, =
meaning that one has to report this for every PDF generator. Cairo =
probably covers a lot of applications, but for example specialized photo =
applications (darktable, RawTherapee, ...) probably have their own PDF =
generators, and they all have this bug.

So we file bugs and provide a pointer to sample code that supports =
calibrated and ICC color spaces.

> It is really a bug as the applications send PDF files where the =
printing system cannot determine which is the color space actually used =
and so it cannot correctly reproduce the colors on a printer and use the =
most suitable of the color spaces which the printer offers.

At this point CUPS needs to treat the output color space as the device =
color space.  Typically sRGB, sometimes AdobeRGB, less commonly a =
different device RGB/CMYK color space.

________________________
Michael Sweet



