Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <9bbc006e-da7a-26a8-bb8c-58e928ec2424@gmail.com>
Date: Sun, 9 May 2021 21:08:31 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <A7E0C108-41F6-40F8-96B5-677389C44389@msweet.org>
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
 <22E3C15E-13D2-42B5-9384-4637E8033E93@msweet.org>
 <9bbc006e-da7a-26a8-bb8c-58e928ec2424@gmail.com>
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

TIll,

> On May 9, 2021, at 5:31 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
> ...
> be specified/approximated (e.g. "CalRGB" is approximately sRGB and =
"CalGray" is approximately sGray).
>>=20
>=20
> Are their more "variants" of sRGB and AdobeRGB? Is this documented =
somewhere? I hope this does not get arbitrarily complicated to rasterize =
a vector PDF into the desired color space.

No, just that sRGB is approximated with RGB primaries and a 2.2 gamma =
curve vs. the official ICC profile, or using the CalRGB/CalGray =
colorspace.  Similarly, AdobeRGB can be approximated using its primaries =
and the 2.2 gamma curve vs. the official ICC profile.  And then there =
are multiple sRGB and AdobeRGB profiles for different ICC versions...

________________________
Michael Sweet



