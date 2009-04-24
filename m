Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Apr 2009 11:33:51 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379DB6@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
	<49EF9E05.8070303@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D75@EEAEX03.us.epson.net>
	<49F08830.70207@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D8D@EEAEX03.us.epson.net>
	<49F1F5A2.5060707@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-summit]
	Print	Dialog:PreviewProcessing: Only A Question
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org


[...snip...]

> > ----- If the print dialog shows a paper-size (PPS) option, then the
user
> > still uses the preview to see that they will get.  If the user
changes
> > the paper-size (PPS) then the print-system should scale-to-fit or
> > center-and-clip the print content (format at EPS) to the paper-size
> > (PPS).  Otherwise, the user needs to cancel the print dialog and
return
> > to powerpoint to modify things.  This is what I hope is the final
choice
> > for OpenPrinting.
>=20
> I think we should go this way. But we should have the choice of taking
> the document paper size so that (if the printer is appropriately
> equipped) documents with multiple paper sizes are printed correctly,
> too. One could warn the user if the document contains pages which the
> printer is not capable of doing (which are not in the printer's PPD
nor
> in the range of supported custom sizes if the printer supports custom
> sizes according to the PPD). If a certain paper size is not loaded,
the
> printer can prompt for it. The warning that the document contains
pages
> which the printer is not capable of, could have buttons to let the
user
> choose between scale to fit, crop to fit, and print over several
sheets.
>=20

This is great.

[...snip...]
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > 2. Who renders the preview
> >
> > I really do want to push the case where the print-system creates the
> > preview from the print-content.  It is really the only way for the
print
> > preview to display the best representation (we can do today) that
the
> > printer will actually print.
> >
>=20
> What we do is taking the output geometry from the printer by polling
the
> PPD from the CUPS server. We will also poll the ICC profile to allow a
> preview of the color reproduction of the printer. CUPS' page
management
> options and their behavior are known so we can emulate them in the
> preview. Also PPD options with known behavior (like grayscale) we can
> emulate in the preview. So the dialog will display the preview based
on
> PDF coming from the app.
>=20

1. I was not aware that the print preview would be concerned with CM.  I
though of it more as what the print format would be and not on the fine
details like "is this the right blue".  I am confused how this works.  I
would have thought the preview would have to use CM stuff for the
display; I guess the preview could use the reduced gamut of the printer.
But, what will the user do with this knowledge.  The best the user can
do is go back to the calling application.  But, if the calling
application cannot adjust the content to account for the intended
printer; then what. =20

2. I thought the major emphasis of the current printing activities was
for the desktop.  I didn't really consider that an individual's desktop
(really the computer) would just have CUPS clients and the CUPS server
would hosted some place else.  In mobile/handheld this may be true.=20

[...snip...]

> >
> > As a vendor supporting photo printing; print vendors may have an
issue
> > with step 5.  If the filters (i.e. Ghostscript) dithers, halftone or
> > changes the colors and, then, the printer-driver dithers and
performs
> > color-to-ink conversion you have high risk of creating artifacts in
the
> > final print.  Who will the user call or issue a bug report against -
the
> > print vendor.  And the user has a bad experience.
> >
>=20
> In 5. we get CUPS Raster. This is not yet dithered. The dithering is
> done by the rasterto... driver.
>=20

As Ghostscript is the most critical filter here, I would like to verify
this with the Ghostscript folks.


