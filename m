Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Thu, 5 Feb 2009 08:41:07 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F379471@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] [Printing-japan] Last OP SC - Mon/Tue
	-2/3 February 2009 - The Recording
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Hal V. Engel" <hvengel@astound.net>, Open Printing <printing-architecture@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>

Hello Hal,

Thanks for review of our printing "color management" discussion.  We are
all looking for inputs to help in this complex subject.

PLEASE, please, ... note that my only objective in my reply below is to
seek understanding and create general understanding by all interested
parties.

I have exactly the same understanding that you do in discussing document
applications.  That is applications like GIMP, Open Office, and so
forth.  Each of these document applications must work with different,
multiple, modified, enhanced and even user defined color spaces.

What about printing?

Let's define the print processes as starting with a document
application, moving to a print spooler/manager (i.e. CUPS) and
associated transforms (i.e. Ghostscript); and, finally, the print
drivers which produces the physical print.

As I stated above document application must handle "color management" in
its broad scope.

The print spooler/Manager, like CUPS, does not care about "color
management".  Yes, CUPS has a capability to produce "raster" output, but
as a generic spooler/manager it is does not get involved in the "color
management" aspects of a document. CUPS (spooler/manager) can manage
transforms for the print jobs.  Example would be PS-to-image or
PDF-to-image.  In this case, CUPS is using a transform application; but
CUPS itself does not get involved in the "color management" processing.

<< side note >>  Part of understanding is understand terms.  To me, but
not to all people, the term "raster" refers dithered, ink (not color,
but ink) output values that a printer actually prints.  A "raster" is
not RGB or any other color set of values; even if the image format is
not a standard; like CUPS "raster".  CUPS "raster" should be called CUPS
image. =20

Back to transforms, like Ghostscript which, like CUPS above, is only
being used as an illustrative example.  Transform applications like
Ghostscript, to me, are document application; they are not print
application in the sense that it is not a printer driver.  Yes,
Ghostscripts contains, actually, it supports drivers; but actually,
Ghostscript transforms a document from one format to another.  Example,
it transforms a PDF or PS document to an image document (and not a
raster format).  And yes, I'll bet Ghostscript can actually produce
actually raster output; but, I am trying to make the point that most
transforms are document format transform.  Thus, Ghostscript follows
your description below and needs to support all aspects of color
management you describe.

If what I discussed above is the scope of the "color management"
discussion for the print summit; then I believe, the "color management"
group (you) need to continue your great support and creating
understanding to the document applications.  However, if the "color
management" is about color-to-ink, then .....

This is where I need your help on how to use and incorporate your "color
management" with printing at the driver level.  =20

Conditions:
1. Inks are not pure colors;=20
	that is cyan ink is not real pure cyan color=20
	and the same is true for all inks.

2. Inks can only be deposited in discrete units (i.e. a drop=20
	and drops of different sizes).
	Thus, dithering is required in order to create the
	desired image color; but this is a tradeoff with=20
	not creating undesirable artifacts or blurring the final
      print representation of the image.  And this is coupled
	with print intent; that is, dithering is different for line
	art/text than photos.

I don't think of "color management" is doing the dithering but only
concerned that the color value of an individual pixel (maybe an area)
meets the intent.

Color Management could "help" with "1." above if an ICC profile is
supplied for every print.  That is, a document is transformed from its
current color representation to the printer's gamut.  But this would
only be "helping" since dithering "2." Typical affects the details of
color-to-ink transformation.  Thus, this color-to-ink transform is
typically done in the driver which understand both the effects on color.

Depending upon the solution (embedded, mobile, desktop, office,
production) the creation of ICC profile may or not be practical.
Remember it is not just one ICC profile per printer but because of "2."
above it could mean many ICC profiles.

One solution is to give the "color management" system an ICC profile
which is the sRGB gamut; problem solved.

Changing subject slightly.  I believe the importance of printer ICC
profiles is so that, at least an approximation of, the final printed
document can be viewed on a display by the user and will show the final
printed colors.  In this case, then an average/representative ICC
profile for all of the printer modes could be supplied; at least this is
a reduction from N to 1.

Now the reality of creating ICC profiles.  Due to the open source nature
of Linux, not all contributing individuals will have the capability
(meaning equipment), time or desire to create ICC profiles for their
instantiation of their driver which needs to take into account "1." and
"2." above. This was the reason for suggesting sRGB as expected input
color space to driver.

glen






> -----Original Message-----
> From: printing-japan-bounces@lists.linux-foundation.org
[mailto:printing-
> japan-bounces@lists.linux-foundation.org] On Behalf Of Hal V. Engel
> Sent: Tuesday, February 03, 2009 5:12 PM
> To: Open Printing; Printing-japan
> Subject: Re: [Printing-japan] [Printing-architecture] Last OP SC -
Mon/Tue
> -2/3 February 2009 - The Recording
>=20
> On Tuesday 03 February 2009 02:46:16 pm you wrote:
> > Hal V. Engel wrote:
> > > Till,
> > >
> > > Just listened to the recording.  Thank you for making it
available.
> There
> > > are apparently some misconceptions about how color management
works.
> So
> > > here is some feedback.
> > >
> > > It is not acceptable to use sRGB or any single color space as the
only
> > > acceptable or required document color space.  It appears that this
is
> > > something that comes up every time a new application starts
looking at
> > > color management.  For example, this same thing was discussed at
> length
> > > when the GIMP developers started looking at CM and in the end they
did
> > > not use the "required color space" approach since the CM experts
told
> > > them not to (in very strong terms) and when they actually got into
> coding
> > > it they discovered that is was actually counter productive and not
> > > needed.
> > >
> > > User land applications should be able to send documents to the
output
> > > device (printer, monitor...) in any color space(s) it wants to
use.
> In
> > > fact it is common for those doing color critical work to avoid
sRGB
> since
> > > it has a very limited gamut and it is common for devices like
scanners
> > > and cameras to have much larger gamuts (in many cases almost twice
as
> > > big).   So friends do not let friends use sRGB.  Keep in mind that
> this
> > > is the document color space and it needs to have enough gamut for
the
> > > device that created the document and it's gamut has nothing to do
with
> > > the printers characteristics.
> > >
> > > The correct approach is allow the user land app to specify any
> document
> > > color space (actually compound documents like pdf can have more
than
> one
> > > color space since pdf allows for each individual object in the
> document
> > > to have it's own color space).  In fact there is no other
reasonable
> > > approach.  In addition it is typical for documents to have the
> document
> > > color space(s) embedded in the document and since the document is
> passed
> > > to the printing subsystem the document color space(s) are
discoverable
> by
> > > the *toraster filter.
> > >
> > > The consensus from discussions on the OpenICC list is that the
only
> time
> > > sRGB is used by default is when the user land application does not
> > > explicitly pass a document color space(s) and any document or, for
> > > compound documents, any object in the document that has an
embedded
> ICC
> > > profile has passed an explicit color space that must be used.  In
fact
> if
> > > the printing work flow is correctly designed there is no need to
limit
> > > what document color space(s) are used as this will be handled by
the
> > > color management engine when the *toraster filter sets up the
color
> > > transforms that it needs for the document it is handling.
> > >
> > > On the "OS level" you do NOT need agreement on what color space
will
> be
> > > used but rather what needs to be agreed to is how the
transformations
> > > from the document color space(s) to the output device color spaces
> will
> > > be handled. There is work underway on this end of things by the
> OpenICC
> > > folks. Specifically Oyranos which is a system wide CM
configuration
> > > management back end that is being worked on my Kai-Uwe Behrmann
and
> for
> > > KDE the Kolor Manager System Setting applet which is a KDE4
specific
> > > Oyranos front end that is now in the playground area of the KDE
svn
> > > repository.  We hope to have Kolor Manager included in KDE 4.3.
> > > Currently Oyranos has no support for CM configuration of printers
(the
> > > only devices that currently have full support are monitors) and
this
> is
> > > an area that needs to be addressed along with scanners and
cameras.
> The
> > > KDE front end was written as part of GSoC 2008 and there were
lengthly
> > > discussions during that effort about how all these other devices
> should
> > > be supported.  In particular printers generated lots of interest
and
> > > there is some preliminary code in Kolor Manager related to printer
CM
> > > configuration along with similar code for scanners.  Our hope is
to
> > > introduce printer support into Oyranos and Kolor Manager as the CM
> parts
> > > of the printing work flow are being developed.
> > >
> > > Rendering intent in the color management context has a limited
number
> of
> > > options most of these are defined by the ICC and are to some
extent
> > > standardized.  These are absolute colorimetric (no white point
> > > transformation), relative colorimetric (this causes a white point
> > > transformation), perceptual and saturation intent.  For relative
> > > colormetric intent users can also select black point compensation
to
> help
> > > reduce the loss of shadow details when the transform is going to a
> device
> > > with reduced gamut compared to the document color space.  So there
are
> > > actually 5 rendering intents and all of these are supported by
LCMS.
> So
> > > all that actually needs to happen is that users can select the
intent
> and
> > > this gets passed through to the *toraster filter so the the
transform
> > > uses the correct intent when it creates the raster that is passed
to
> the
> > > printer.   At present most document formats do not have a
standardized
> > > way of embedding this information.
> > >
> > > There is a need for user land applications to be able to discover
the
> > > printer color space(s) (IE. profiles) so that applications can do
soft
> > > proofing.
> > >
> > > RAW is NOT a color space as that term is used in the color
management
> > > world.
> > >
> > > Hal
> >
> > Thank you for your mail. You have sent it to me in private, but I
prefer
> > to discuss it on the printing-architecture mailing list, could we
post
> > your mail there to start the discussion?
>=20
> Yes I can do that.  I was not too sure where I should send it so I
kept it
> private.
>=20
> >
> > So good to hear that the color correction
>=20
> Color Management types would say "color space transform" rather than
> "color
> correction" because this could also be doing things like taking an RGB
(or
> XYZ
> or Lab) document and converting it into CMYK or even deviceN output
for
> the
> printer.
>=20
> > can be done completely on the
> > server side.
>=20
> Doing the transform on the server would be the preferred way to handle
> this.
> Right now we are limited to doing this client side in the user land
apps
> that
> are sending output to the print server.  This means we only have color
> managed
> printing in those apps that know how to do color managed printing
which
> right
> now is a very limited set of apps (probably less then a dozen total
but I
> can
> only think of three off hand and one of those is a specialized front
end
> for
> gutenprint).  Having this functionality on the server side means that
even
> CM
> dumb apps benefit once things are properly configured.
>=20
> > A color-managed driver will then use an ICC profile in a
> > standardized directory on the server and functions of a CM library
to
> > execute the color correction.  The PPD will have a "Rendering
Intent"
> > option with the choices mentioned in your mail, option and choices
with
> > standardized names for all printers. Option settings are passed to
CUPS
> > as IPP attributes and this way also the rendering intent gets to the
> > driver. The driver will get all option settings by its command line.
> > Perhaps color correction has too be better done by the renderer
> > (Ghostscript or Poppler, Ghostscript preferred), as a raster image
can
> > have only one color space where as vector graphics, especially in
PDF
> > format, can have a separate color space for each object.
>=20
> I think this assessment is correct.  In fact having this happen in the
> *toraster rendering filter makes things much simpler for everyone
since
> doing
> this would eliminate the need to do any color management specific
> modifications to the individual drivers and it would also centralize
this
> functionality in one place.  For example once GhostScript has been
updated
> to
> have an up to date CM implementation (I think we should have at least
> development versions with this capability soon) and the new
pdftoraster
> filter
> is setup to handle CM the new pdf based printing work flow will have
> functional CM for all apps using it, including apps that are not CM
aware,
> no
> matter what printer/driver is being used.
>=20
> As a side note Poppler has now been patched with preliminary CM
> functionality
> and the testing I did with it seemed to work OK.  So it might make
sense
> to
> continue to use Poppler for the common printing dialog since it's CM
> support
> might be "good enough" for this use.
>=20
> >
> > The ICC profile of each print queue also needs to be downloadable by
the
> > clients via CUPS' http server facility, so that apps (or the Common
> > Printing Dialog) can get them for soft proofing.
>=20
> Currently the CUPS API allows client side apps to get a list of
profiles
> that
> are in cupsICCProfile lines in the PPD.  But there were several open
> issues
> with the CUPS implementation the last time I checked.
>=20
> 1. If the CUPS server is not local there is no way to get the profile
for
> soft
> proofing.
>=20
> 2. CUPS only allows passing a user specified printer profile on the
> command
> line if the profile is installed in a specific directory on the CUPS
> server
> and there is no way in the general case for a client app to get a list
of
> these profiles or to get a copy of any of these profiles.
>=20
> >
> >     Till
> >
> >
> > P. S.: Thank you for registering for the OpenPrinting Summit. You
are
> > welcome to attend and I am looking forward for the Color Management
> > session.
>=20
> That is why I registered.  I live with in commuting distance of the
> conference
> which makes it fairly easy for me to attend.  So I guess that I will
be
> the
> OpenICC representative there and perhaps there will be others as well.
>=20
> > From the CM side not only you but also Michael	Vrhel
> > (Ghostscript) is attending.
>=20
> _______________________________________________
> Printing-japan mailing list
> Printing-japan@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-japan
