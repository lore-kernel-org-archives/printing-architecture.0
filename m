Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Apr 2009 13:10:22 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379DBF@EEAEX03.us.epson.net>
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
To: Ralph Giles <giles@ghostscript.com>
Cc: printing-architecture@lists.linux-foundation.org, Michael Vrhel <michael.vrhel@artifex.com>, printing-summit@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

Thanks for clarification on the color management side of things.  My
concern is a little different, and is about whether or not Ghostscript
will dither/halftone the image independent or in connection with of CM.
But, if I understand correctly, Ghostscript will only dither/halftone if
requested.  So, for the case I was describing, the printer driver will
do the dither/halftoning along with conversion from color-to-inks and
print control language stuff.

This sounds like a good approach; printer drivers may not (maybe they
should not) worry about the complexities of CM; there are better
applications, filter, processes for that.  Printer driver, however,
should and need to focus on dither/halftone and color-to-inks processing
that is device dependent anyway.

Back to preview; the preview cares (may care) about the CM but
won't/can't care about the dither/halftone.  (I won't get into how
dither/halftone may affect the CM!!!).


glen


> -----Original Message-----
> From: ralph.giles@artifex.com [mailto:ralph.giles@artifex.com] On
Behalf
> Of Ralph Giles
> Sent: Friday, April 24, 2009 12:46 PM
> To: Petrie, Glen
> Cc: Till Kamppeter; printing-architecture@lists.linux-foundation.org;
> printing-summit@lists.linux-foundation.org; Michael Vrhel
> Subject: Re: [Printing-summit] [Printing-architecture] Print
> Dialog:PreviewProcessing: Only A Question
>=20
> On Fri, Apr 24, 2009 at 11:33 AM, Petrie, Glen
> <glen.petrie@eitc.epson.com> wrote:
>=20
> >> In 5. we get CUPS Raster. This is not yet dithered. The dithering
is
> >> done by the rasterto... driver.
> >
> > As Ghostscript is the most critical filter here, I would like to
verify
> > this with the Ghostscript folks.
>=20
> Till and Mike are more expert here, because it's not what ghostscript
> does, but what cups asks it and the driver together to do.
>=20
> I don't think we have real colour management working yet. The cups
> raster format can accept halftoned images, in which case gs can do the
> halftoning. Normally, I think the driver does the halftoning, in which
> case ghostscript generates a continuous-tone cups raster.
>=20
> Ghostscript has to do *some* colour management because the input pdf
> could have different components in different colour spaces. Right now,
> I think everything gets converted to some 'device space' and then goes
> through some hard coded transformations in both ghostscript's graphics
> library and the cups raster driver to get the right number of
> components. Aside from applying an rgb matrix that looks like it came
> from the cups ppd, I don't see any attempt at calibrating these colour
> spaces.
>=20
> The point of the work Michael talked about at the summit is that cups
> will be able to supply an ICC profile describing exactly what space
> ghostscript should generate output in. If the application embeds an
> icc profile in the pdf it generates, this will result in end-to-end
> colour management if ghostscript is doing the halftoning. If not, the
> PPD can at least request generation of a cups raster in an
> intermediate space with an appropriate gamut for passing to the
> rasterto* driver, which minimizes conversion loss. The printing dialog
> would supply the screen's ICC profile *and* the printer's profile, so
> ghostscript (or libpoppler, when it also has ICC support) could
> approximate the appearance of the document within the constraints of
> both the printer and the screen gamuts.
>=20
> If you don't want gs to do any colour management, then you have to
> ensure that the image and output ICC profiles combine to a null
> transform. The application can do this by looking up the printer
> driver's ICC profile and using that directly. The printer driver can
> do this by accepting sRGB, which would help applications that can't be
> bothered since that's usually the default. As long as the image in the
> pdf has a profile that matches the requested output profile, gs will
> leave the image colour alone and let the next stage do all the work.
>=20
>  -r
