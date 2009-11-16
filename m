Mime-Version: 1.0 (Apple Message framework v1077)
Content-Type: text/plain; charset=us-ascii
From: Chris Murphy <lists@colorremedies.com>
In-Reply-To: <alpine.LSU.2.00.0911152027440.4678@sirius.rasena>
Date: Mon, 16 Nov 2009 13:43:58 -0500
Content-Transfer-Encoding: quoted-printable
Message-Id: <B15C7BB8-0D3D-409B-AF50-D065B05B0C56@colorremedies.com>
References: <e395be80811270817n502ccd16wf6cc90f85364f5ae@mail.gmail.com>
	<4AF14A4E.5050903@gmail.com>
	<5B109C6D-12A5-47AD-9C26-D9E0606E21D3@mmiworks.net>
	<4AF96B6A.7030307@gmail.com>
	<25E5CE60-FE48-41E9-B390-DD35452A6F68@colorremedies.com>
	<A7277E6D-EAD7-4CD8-AD88-FB803B44EC74@apple.com>
	<2C324A50-9598-4F86-8C4E-8FF13A890826@colorremedies.com>
	<4810817B-2933-4E6E-82DD-CB87931E917F@apple.com>
	<3D6E9452-F2A5-4F43-AFD6-4CDF0655BE2A@colorremedies.com>
	<4AFE4A28.90008@argyllcms.com>
	<alpine.LSU.2.00.0911152027440.4678@sirius.rasena>
Subject: Re: [Printing-architecture] [Openicc] [Gimp-print-devel]   Colour
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: openicc <openicc@lists.freedesktop.org>
Cc: printing-architecture@lists.linux-foundation.org, Graeme Gill <graeme@argyllcms.com>

At least on OS X, the API is the means to set two flags: object source =
and OutputIntent (destination profile and implicit source profile for =
device color). The application doesn't directly set these. It has to ask =
for it to be set via an API. And then only later if the two flags (color =
spaces) are correctly set, is color management disabled at the raster =
stage.

Putting objects into DeviceRGB/CMYK/Gray/N, instead of ICCBased color =
space, with a required OutputIntent could be a way to inform the system =
to not perform color management. But as Graeme points out it could be a =
different flag entirely. Also, I don't know what the print spool file =
format is in on Linux, so perhaps that language is more easily extended =
than PDF.

PDF/X-3 is just one possible model. It doesn't have to be followed =
exactly. But it's a good model. (I'm calling it a model because we can =
follow its workflow prescriptions without using the actual file format.)

PDF/X-4 which adds transparency support to PDF/X-3. As I've implemented =
Ghostscript based proofing for high end clients, I'm confident its =
transparency support works well.

PDF/X-5 implements externally referenced images and ICC profiles, which =
could come in handy.

PDF 2.0 spec will add explicit BPC (black point compensation) support in =
the file format, which means the ability to set a per object flag for =
BPC on or off. And that should be considered since perceptual and relcol =
transforms aren't ideal for most images, in an ICC v2 context. (In v4, =
perceptual would be the default intent. In v2, relcol + bpc should be =
the default.)

You may want multiple OutputIntents. Currently all of these specs use =
just one, following a "one PDF, one output device condition" sort of =
philosophy. But it's imaginable having a single print job for a small =
book and cover, where there are different intents for the cover, and the =
interior stock. Or a book that's mostly black and white but with some =
color image inserts in the middle of the book.

Anyway, I think in the near term PDF/X-4 along with BPC support make the =
most sense to me.

Chris Murphy

On Nov 16, 2009, at 12:10 AM, Kai-Uwe Behrmann wrote:

> Am 14.11.09, 17:11 +1100 schrieb Graeme Gill:
>> Chris Murphy wrote:
>>> filter, and also ColorSync) to not convert the target. Presently on =
Mac OS the
>>> application of choice is Photoshop, with which we are presently =
having problems because
>>> the No Color Management based PDF spool file has different profiles =
set for the profile
>>> target object, and OutputIntent, causing ColorSync to color manage. =
It autoconfigures
>>> newer print driver settings correctly, but the PDF spool file is =
malformed, so we get a
>>> converted profile target.
>>=20
>> Yes, basically this is a really dumb API for turning color management =
off.
>> The right way to do it is to have a flag that turns color management =
off,
>> rather than relying on the software to figure out what profile is =
being
>> used for the end device, and labeling the file as already being in =
that
>> space. It's easy to demonstrate that this is sematically incorrect -
>> if you were to spool the file and then replay it after the device
>> profile has been changed, it will print incorrectly.
>=20
> I am not familiar with such a flag. So I may ask, where does this =
apply to=20
> which API? The print API while sending data which gets converted to =
PDF?
> The CMS, which is responsible to do the colour conversion or has in =
that=20
> special case to omit a conversion? ... or the spooling system? ...
>=20
>=20
> Following  Chris' explanation, a print system "correctly" supporting=20=

> Device(RGB/CMYK/GRAY/N) in PDF/X-3 will have a path to pass all colour=20=

> management conversions unaltered. Could this become a simple means of=20=

> implementing Mike Sweets less is more scheme of hiding CM controls?=20
> It would mean generate according targets and send them through CPD as =
file=20
> to the selected printer.
>=20
>=20
> Still unresolved is the per paper ICC profile selection. To solve that=20=

> point CPD would be in need to add custom entries to non traceable=20
> variables. These are mainly media and ink types which a driver has=20
> currently no way to know of in a programatic manner.
>=20
>=20
> kind regards
> Kai-Uwe Behrmann
> --=20
> developing for colour management=20
> www.behrmann.name + www.oyranos.org
>=20
> _______________________________________________
> openicc mailing list
> openicc@lists.freedesktop.org
> http://lists.freedesktop.org/mailman/listinfo/openicc

