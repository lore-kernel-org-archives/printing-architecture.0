Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <YJdH6p4ePqKSATLL@shaftnet.org>
Date: Sat, 8 May 2021 22:54:49 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
References: <8c101e3b-2f80-666c-db86-05b7dd170a7c@gmail.com>
 <FC123AED-25FA-4E37-9957-29565F89DC1D@msweet.org>
 <e8060298-8b2b-94d9-3eaf-1386cbc9543c@gmail.com>
 <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
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

> On May 8, 2021, at 10:24 PM, Solomon Peachy <pizza@shaftnet.org> =
wrote:
> ...
> Excellent.  But I'm thinking more of folks trying to print something=20=

> from a random app on their their iOS or Android devices.  Having a =
rich=20
> standard doesn't help when the client implementations are all=20
> differently brain-dead. :)

Well, at least on iOS you'll find that the whole system is wired up for =
ICC-based color management, just as on macOS.  As for Android, I =
heartily agree!

>> Second, it isn't a weakness to support well-known RGB color spaces=20
>> along with a device RGB color space.=20
>=20
> I'm sorry, that's not what I was trying to say.
>=20
> The "weakness" is that the PWG raster format doesn't have a way to=20
> self-describe what "Device RGB" means, unlike more standalone image=20
> formats (eg jpeg, png, tiff) that have a standard method to embed ICC=20=

> profiles.

PWG Raster (and Apple Raster) are "last-mile" formats.  The color space =
is explicitly defined by the Printer (sometimes with ICC profiles, =
particularly for Device RGB), and the Client is responsible for =
providing raster data in a supported color space.

________________________
Michael Sweet



