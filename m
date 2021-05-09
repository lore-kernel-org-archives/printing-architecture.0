Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <YJckMlum0aC3moQO@shaftnet.org>
Date: Sat, 8 May 2021 21:24:27 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
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
To: Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jay Berkenbilt <ejb@ql.org>, Vikrant Malik <vikrant@iitk.ac.in>, Till Kamppeter <till.kamppeter@gmail.com>

Solomon,

> On May 8, 2021, at 7:52 PM, Solomon Peachy <pizza@shaftnet.org> wrote:
> ...
> 1) It must be possible to tell the printer that the job is already in=20=

>    its native/preferred colorspace.  (It's called various things in=20
>    UIs, such as "disable color correction" or "host-managed color")
> 2) The job *must* support embedding an arbitrary ICC profile

Not the Job.  The *Document*.

> ...
> With respect to (2), It seems the PWG raster format only defines a=20
> handful of colorspaces via ColorSpaceEnum; eg DeviceRGB, sRGB, and=20
> AdobeRGB.  This is a weakness vs JPEG or PDF (which allows arbitrary=20=

> profiles.  Can we rely on that ColorSpace field being set correctly?

First, yes.  We've been doing so for years, even with Ghostscript (which =
typically converts everything to sRGB).

Second, it isn't a weakness to support well-known RGB color spaces along =
with a device RGB color space.  Printers that only support PWG/Apple =
raster really don't offer much in the way of color management.  I've =
been working with a couple vendors of these printers to make use of the =
device RGB color space for wider gamut RGB printing, since none of them =
want to support CIE Lab because Lab is *too* wide a color space and they =
can't optimize for it.

________________________
Michael Sweet



