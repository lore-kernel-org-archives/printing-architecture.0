Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Apr 2009 14:20:50 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379DC4@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net>
	<49EF8444.7010304@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
	<49EF9E05.8070303@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D75@EEAEX03.us.epson.net>
	<49F08830.70207@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D8D@EEAEX03.us.epson.net>
	<49F1F5A2.5060707@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379DB6@EEAEX03.us.epson.net>
	<5d88ef650904241246i2c0cc6f2j3143053f5a4e50dd@mail.gmail.com>
	<805FE411-4145-40DF-8BD5-6B91991B26E0@apple.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit] Print
	Dialog:PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>, Ralph Giles <giles@ghostscript.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, Michael Vrhel <michael.vrhel@artifex.com>

(I know I start getting hate mail....)

My understanding is the same a Michael; printer drivers typically
(mostly, almost always, 'only') accept/expect sRGB.  So, as a starting
place can we say printer driver will be accepting sRGB

BUT

can we also define the approach, design, details of accepting other
inputs.  It may already exist; if so, lets use it as a
stepping-stone/staring-place.   If we can design the hooks in now, it
will be a whole lot easier later.  This is a good area for the CM people
to provide input the printer-driver folk.

For driver developer the real question is how much effort and code will
it take to support.  Also, for at least inkjet processing time can be
critical.

At some point the filter folks need to be involved if something new is
defined.

Glen=20

> -----Original Message-----
> From: Michael R Sweet [mailto:msweet@apple.com]
> Sent: Friday, April 24, 2009 2:04 PM
> To: Ralph Giles
> Cc: Petrie, Glen; printing-architecture@lists.linux-foundation.org;
> Michael Vrhel; printing-summit@lists.linux-foundation.org
> Subject: Re: [Printing-summit] [Printing-architecture] Print
> Dialog:PreviewProcessing: Only A Question
>=20
> On Apr 24, 2009, at 12:46 PM, Ralph Giles wrote:
> > On Fri, Apr 24, 2009 at 11:33 AM, Petrie, Glen
> > <glen.petrie@eitc.epson.com> wrote:
> >
> >>> In 5. we get CUPS Raster. This is not yet dithered. The dithering
is
> >>> done by the rasterto... driver.
> >>
> >> As Ghostscript is the most critical filter here, I would like to
> >> verify
> >> this with the Ghostscript folks.
> >
> > Till and Mike are more expert here, because it's not what
ghostscript
> > does, but what cups asks it and the driver together to do.
> >
> > I don't think we have real colour management working yet. The cups
> > raster format can accept halftoned images, in which case gs can do
the
> > halftoning. Normally, I think the driver does the halftoning, in
which
> > case ghostscript generates a continuous-tone cups raster.
>=20
> Right.  All of the original sample drivers included with CUPS and a
> handful of third-party drivers take advantage of the Ghostscript/
> imagetoraster/cgpdftoraster/etc. filters ability to do basic 1-bit
> (and in some cases 2-bit and 4-bit) dithering for the driver.
> However, the rest of the drivers in the world use at least 8-bits per
> component and do their own dithering.
>=20
> As for color management, some existing RIP filters (notably the
> CoreGraphics PDF to raster filter on Mac OS X) support the
> cupsICCProfile stuff, and I hope at some point we'll get the same
> support in the Ghostscript driver and imagetoraster filter so that it
> is widely supported.  However, what we've found on Mac OS X is that
> many vendors stick with sRGB and only accept sRGB in their filters (HP
> and EPSON do this almost exclusively), so an important first step is
> to ensure that our default RGB profile matches sRGB (and that's what
> CUPS defines for both CUPS_CSPACE_RGB and
> CUPS_CSPACE_W - gamma 2.2 with sRGB primaries - while CUPS_CSPACE_CMYK
> and CUPS_CSPACE_K are defined as device-specific...)
>=20
> Drivers like Gutenprint can also use CMYK, which is where color
> managed workflows really start getting interesting, and that is where
> a CM-enabled preview can provide a real color proof of what will be
> printed.
>=20
> > Ghostscript has to do *some* colour management because the input pdf
> > could have different components in different colour spaces. Right
now,
> > I think everything gets converted to some 'device space' and then
goes
> > through some hard coded transformations in both ghostscript's
graphics
> > library and the cups raster driver to get the right number of
> > components. Aside from applying an rgb matrix that looks like it
came
> > from the cups ppd, I don't see any attempt at calibrating these
colour
> > spaces.
>=20
> Right, that's pending work for the CUPS backend in Ghostscript (along
> with cupsBackSide and proper RGBW support...)
>=20
> > The point of the work Michael talked about at the summit is that
cups
> > will be able to supply an ICC profile describing exactly what space
> > ghostscript should generate output in. If the application embeds an
> > icc profile in the pdf it generates, this will result in end-to-end
> > colour management if ghostscript is doing the halftoning. If not,
the
> > PPD can at least request generation of a cups raster in an
> > intermediate space with an appropriate gamut for passing to the
> > rasterto* driver, which minimizes conversion loss. The printing
dialog
> > would supply the screen's ICC profile *and* the printer's profile,
so
> > ghostscript (or libpoppler, when it also has ICC support) could
> > approximate the appearance of the document within the constraints of
> > both the printer and the screen gamuts.
>=20
> Like I said, most vendor drivers want RGB data (and usually sRGB).
> CMYK is often not supported directly (the CM code has to convert to
> the destination colorspace regardless...)
>=20
> ____________________________________
> Michael R Sweet, Senior Printing System Engineer
>=20
>=20

