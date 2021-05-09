Return-Path: <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.11\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <YJfrxEMo+tL8hCDt@shaftnet.org>
Date: Sun, 9 May 2021 16:32:08 -0400
Content-Transfer-Encoding: quoted-printable
Message-Id: <6BCDC32D-8027-4489-A0E5-33256CD3B470@msweet.org>
References: <29E8A83D-5BBB-49AA-83A6-4B3EB765828A@msweet.org>
 <9db67beb-7ca2-249c-88e4-ead29d19ce63@gmail.com>
 <FC95906E-6085-4121-AEA8-9E53613872AD@msweet.org>
 <fdd1654d-8dd6-9eb8-e41d-dcf786c559d1@gmail.com>
 <YJckMlum0aC3moQO@shaftnet.org>
 <E783C6F3-AF3B-41C3-9432-88E23AF907D7@msweet.org>
 <YJdH6p4ePqKSATLL@shaftnet.org>
 <1501D827-9DF0-45D4-87C6-FB9953C7BF1B@msweet.org>
 <1a37c322-5ca3-727b-583f-2b6bc78e44e2@gmail.com>
 <663F1B36-C6A5-4261-8226-C659DC8DA871@msweet.org>
 <YJfrxEMo+tL8hCDt@shaftnet.org>
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

> On May 9, 2021, at 10:03 AM, Solomon Peachy <pizza@shaftnet.org> =
wrote:
>=20
> On Sun, May 09, 2021 at 09:41:38AM -0400, Michael Sweet wrote:
>> So printers that support device RGB and device gray also support the=20=

>> "printer-icc-profiles" attribute, which allows you to determine which=20=

>> profile to use for a particular combination of Job Template=20
>> attributes.  In some cases a single profile is reported that=20
>> represents the printer's internal working color space.
>=20
> Forgive my ignorance here, but am I correct in my understanding that=20=

> this attribute provides a URI for clients to retrieve the profile?

Yes.  It's actually a set (array) of profiles with any associated Job =
Template attributes (color mode, resolution, etc.) that might influence =
the profile that should be used.

> So ideally, the client should retrieve the profile and transform the=20=

> colorspace into the appropriate DeviceXXX space, and tag the=20
> raster/document as such?

Yes.

> Otherwise, the client should submit the document tagged with a =
standard=20
> (eg sRGB or AdobeRGB) colorspace, and let the printer do any necessary
> transforms?

Right.  And also that the Client can use the closest matching standard =
color space when generating raster - use sRGB for sRGB images and =
AdobeRGB for AdobeRGB images, but transform to AdobeRGB for some other =
RGB color space to give yourself the most headroom.

________________________
Michael Sweet



