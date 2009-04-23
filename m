Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Apr 2009 11:56:44 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379D8D@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F379D52@EEAEX03.us.epson.net><3602B1A0-C33E-4665-BBB6-46D59F2F044E@apple.com><ED4094DE5E8ACD4BBDACA6AD398E608F379D57@EEAEX03.us.epson.net><49EF53C7.8020901@the-axe-effect.de><ED4094DE5E8ACD4BBDACA6AD398E608F379D5B@EEAEX03.us.epson.net><ED4094DE5E8ACD4BBDACA6AD398E608F379D64@EEAEX03.us.epson.net><49EF7E44.6040700@gmail.com><B6DB3491-8B38-4F9B-940F-69CF61B7A93E@apple.com><49EF8444.7010304@gmail.com>	<ED4094DE5E8ACD4BBDACA6AD398E608F379D65@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D70@EEAEX03.us.epson.net>
	<49EF9E05.8070303@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F379D75@EEAEX03.us.epson.net>
	<49F08830.70207@gmail.com>
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
To: Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org

I tried to explain differently my concerns and hope this long discussion
continues.   Please, I am not trying being stubborn; I just want to help
create a solution that is best for the user, the application and driver
developers (oops, forgot CUPS).  So help me understand some of your
choices and understand some of my suggestions.

This discussion is really hard by email, this would be a good one for a
F2F.

This note has three issues; namely,

1. What to do when the application page-size does not match the print
page-size.
2. Who renders the preview
3. Should applications support just PDF print format.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
1. What to do when the application page-size does not match the print
page-size.

I believe it is becoming clearer that the key to this on going
discussion is how we are thinking about the relationship between=20

Electronic paper-size =3D=3D=3D Electronic page-size =3D=3D=3D EPS
  This is set only by the application

and

Physical paper-size =3D=3D=3D Printer paper-size =3D=3D=3D  PPS
  This is set only by the print dialog

EPS really has/should-have nothing to do with PPS.  I can have an A3 EPS
while the printer only support letter.  This is an issue.  This issue
needs to be handled by the print-system and shown in the print dialog,
so the user will know what to expect and what to do.

I think examining this issue is something you really need to actually
perform; so I tried it on a Mac and Window using PowerPoint.  In either
system, when the EPS !=3D PPS then the preview show the EPS clipped to =
the
PPS (I assume the paper-size (PPS) the currently selected printer
reports as the installed paper-size (PPS)).  If the scale-to-fit option
is set; then, the EPS is scaled (maintaining the aspect ratio) to the
PPS.

Mac's version of PowerPoint also illustrates more about dialog <->
application interaction. (I believe Michael already commented on this
but I will repeat here for completeness).  In the print dialog, you will
not see a paper-size (PPS) option but you will see a button for
page-size (EPS).  When this button is pressed, the print dialog returns
control to the application (powerpoint) and powerpoint shows its dialog
for the page-size (EPS) (this is completely independent of the print
dialog).  The user can change the page-size (EPS) and indeed the
powerpoint pages are reflowed in powerpoint and the powerpoint display
changes.  Unfortunately, control is transferred automatically to the
print dialog and user has to cancel the print dialog to fix any changes
the new page-size (EPS) caused.

----- I don't believe this experience was end-user friendly.  If the
print dialog is not going to have paper-size (PPS), then the user uses
the preview to see what they will get.  Then if the user does not like
what will be printed (scale-to-fit or center-and-clip) then the user
should cancel the print dialog and return to the application to fix
things. =20
----- If the print dialog shows a paper-size (PPS) option, then the user
still uses the preview to see that they will get.  If the user changes
the paper-size (PPS) then the print-system should scale-to-fit or
center-and-clip the print content (format at EPS) to the paper-size
(PPS).  Otherwise, the user needs to cancel the print dialog and return
to powerpoint to modify things.  This is what I hope is the final choice
for OpenPrinting.

((( An interesting case to consider is when a photo-printer (PhotoSmart,
PictureMate) is the connected printer.  )))

I hope we have been saying the same thing but just in a different way.

??? Do we have a way to support custom paper size (EPS and PPS) ???

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
2. Who renders the preview

I really do want to push the case where the print-system creates the
preview from the print-content.  It is really the only way for the print
preview to display the best representation (we can do today) that the
printer will actually print.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
3. Should applications support just PDF print format.

Till, in general I understand and probably agree with your comments. =20

PDF format is great for documents.  There are concerns about have any
filters in the print-chain between photo applications and the
printer-driver (i.e. rendering and re-rendered image).

Can we support at least one image format or have a way for the filers
that process PDF to not alter the original images. =20


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Till below are some additional comments on your reply


[...snip...]
=20
> > Or are you saying that all drivers must accept/process PDF.
> >
>=20
> Drivers only need to accept a format which CUPS can generate from the
> input data.=20

Doesn't CUPS needs to transform (filter) input data to a format the
driver can accept (image, ps, pdf, ???)!!!

> Usually they accept PostScript and PDF (Ghostscript-based
> drivers) or CUPS Raster (CUPS Raster drivers).=20

None of Epson's consumer inkjet printers accept PDF or PS; that why
Ghostscript is needed.  Yes, office printer and high-end printer accept
PS and PDF - is this the only printers we are targeting.

Cups Raster is not really "raster" content; it is better described as a
job-ticket (print-ticket) (actually done at on a page to page if I
remember correctly) with image data attached.  So it really helps
(although increase the processing) in rendering pages (to actual printer
raster). =20


The point is "why the constraints".


> CUPS converts PostScript
> and PDF to the driver's input format.
>=20



> >
> > If I have a photo app that wants to print an image. The steps are
> >
> > 1. app creates a pdf instantiation of the image
> > 2. send pdf to print dialog
> > 3. send pdf to CUPS
> > 4. CUPS sends pdf to GhostScript to render
> > 5. Ghostscript creates an image
> > 6. Image is sent to a printer driver
> >
>=20
> The image created in 5. is not the same format as the image coming
from
> the app. The app sends JPG or PNG, in 5. PCL, ESC/P 2, or CUPS Raster
is
> created.
>=20

As a vendor supporting photo printing; print vendors may have an issue
with step 5.  If the filters (i.e. Ghostscript) dithers, halftone or
changes the colors and, then, the printer-driver dithers and performs
color-to-ink conversion you have high risk of creating artifacts in the
final print.  Who will the user call or issue a bug report against - the
print vendor.  And the user has a bad experience.

> > Versus
> > 1. app sends image to print dialog
> > 2. print dialog display image (as preview)
> > 3. send image to CUPS
> > 4. Image sent to print driver.
> >
>=20
> So if all apps send images this would make sense, but apps like
> OpenOffice.org or Firefox would preferably send PDF.=20

I bet that neither openoffice nor firefox cares about PDF; what they
prefer is that the GDI they are using supports a printer deviceContext
and they just "display" to the printer deviceContext and deviceContext
generate the print content (image, pdf, ps, cups raster, foo....)

> So the dialog would
> get much more complex if we make it capable of all formats which CUPS
> can convert. So standardizing on one format simplifies the
> implementation of the dialog a lot.
>=20

Not if the dialog request CUPS to create the preview via it's filters.

> You are now suggesting that the apps can send a wide range of formats
> (ideally the full range of formats which the stock CUPS package
> accepts). This would change the internal (not UI) design of the dialog
> (and the apps) vastly.=20

Not if the dialog request CUPS to create the preview via it's filters.



