Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <200911131732.38782.hvengel@astound.net>
Date: Sat, 14 Nov 2009 05:29:35 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <8BD280FC-628D-46F0-B200-A7E9F93C06C3@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AFD6C48.8000800@argyllcms.com>
	<1CBAEDEF-0F6D-47E2-9CB1-F2D271C803B6@colorremedies.com>
	<200911131732.38782.hvengel@astound.net>
Subject: Re: [Printing-architecture] [Openicc] [Gimp-print-devel]  Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>
Cc: Michael Sweet <msweet@apple.com>, openicc@lists.freedesktop.org, Graeme Gill <graeme@argyllcms.com>, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net


On Nov 13, 2009, at 8:32 PM, Hal V. Engel wrote:

> On Friday 13 November 2009 08:56:12 am Chris Murphy wrote:
>> But in the case of
>> calibration/characterization/prematching, the color space for those
>> objects should be DeviceRGB (I am referring to desktop inkjet =
printers,
>> treated as RGB output devices).=20
>=20
> I think the same things should be true for DeviceCMYK since this is =
simply a=20
> variation on the same use case.

It is. Same for DeviceGray. Same for DeviceN.


>> Apple has argued that untagged data is evil. Yet the great thing =
about
>> PDF/X-3 (or X-4 or X-5) is that DeviceRGB is special because it is an
>> explicit indication that content to the intended device is not to be =
color
>> managed, but it still has an implicit source profile. And that's the
>> OutputIntent. So DeviceRGB isn't untagged.
>=20
> The problem of course is that in the larger world many PDF documents =
use=20
> DeviceRGB as a way of doing untagged RGB.  In fact I don't think the =
PDF=20
> specification allows for untagged objects so the only option people =
have for=20
> creating PDF documents where they don't have to tag the objects in =
very=20
> specific ways is to use DeviceRGB.  Apple appears to be trying to =
"fix" this=20
> problem and their fix has the unintended consequence that it makes=20
> calibration/characterization/prematching very difficult.  My gut tells =
me that=20
> they are trying to fix this problem in the wrong place and this is why =
we are=20
> having these issues.

The PDF spec certainly allows for untagged objects. And so do the =
flavors of PDF/X.=20

In PDF/X-1a objects can be only DeviceGray and DeviceCMYK. DeviceRGB is =
disallowed. OutputIntent must be CMYK, and is simultaneously the implied =
source and destination profile for all content in the document (i.e. no =
further conversions for output, unless diverted, e.g., for proofing).

In PDF/X-3 the OutputIntent can be RGB as well. If it's RGB, then =
DeviceRGB is allowed, but DeviceCMYK is not. If the OutputIntent is =
CMYK, then DeviceCMYK is allowed, but DeviceRGB is not. Additionally, =
ICCBased is allowed which means multiple objects in a PDF using multiple =
color spaces each defined by an ICC profile - which makes them all =
ICCBased (an RGB object tagged with Adobe RGB 1998 is considered to be =
ICCBased; a CMYK object tagged with GRACoL2006_Coated1 is also =
considered to be ICCBased - these are all considered to be in a color =
space OTHER than the OutputIntent color space and will be color managed =
prior to output).

There is a good reason why device spaces exist in these specifications. =
It was simply unworkable otherwise, to require everything in PDF =
destined for print, to be ICCBased. While on the other hand, requiring =
an OutputIntent makes sense for a PDF that's intended for output on a =
particular device.

> This is back to the RGB only assumption of Windows and OS/X.  Many of =
our open=20
> source printer drivers support RGB as well as CMYK and true DeviceN.  =
Since we=20
> have more flexible drivers available I think it changes how we should =
approach=20
> this problem to some extent.

Sure.

What is not allowed in a PDF/X-3 framework is DeviceRGB and DeviceCMYK =
at the same time. For one it usually doesn't make sense. For another =
there isn't yet a mechanism in the spec for multiple instances of =
OutputIntent, on a page by page basis, for example (implying a single =
print job, containing pages with more than one possible print =
destination). This is being worked on, however. What you are talking =
about is a case where there aren't multiple physical destinations, but =
multiple virtual ones by virtue of the entry color space into the black =
box. And so I can see how this newer model might be applicable on Linux.


Chris Murphy=
