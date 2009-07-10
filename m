Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2009 15:26:09 -0700
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F4188A8@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F418864@EEAEX03.us.epson.net>
	<4A57B3E0.3030805@gmail.com>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Questions, Concern, Disscusion on CPD
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
Cc: printing-architecture@lists.linux-foundation.org



<...snip...>

> >
> > A: Media Type (shown in Section 5) needs to be in this section since
> > media-type and media-size (not paper-size) are connected.  For
example,
> > I want to print on a CD; it is not paper and the size is defined by
> > media-type.
> >
>=20
> You're right, should be "Media Size", "Media Type", ... But I do not
> really know whether this can be fioxed in the CPD. The UI strings of
the
> options usually come from the PPD file and not from the printing
dialog.
> But to make the interface more "common" one could think about certain
> standard options and choices where the PPD's wording gets overridden
and
> the CPD provides the wording, with the big bunch of translations which
> you are used to in KDE and GNOME.
>=20

[gwp] I hope a solution can be achieved; I will need more time to think
about it.  But, from the User's point-of-view (the one that matters), it
will be awkward to see what is thought of very related parameters in two
different sections.


> >
> >
> > B: The "paper size" has no "default setting"; the application sends
the
> > CPD the size of the media.  Setting the media-size is initially done
in
> > the application in the "Page Setup".  The CPD is not doing setup
> > functions.  The user may override the media-size; even the
orientation
> > received from the application in the CPD; in which case the "fit
policy"
> > would be invoked.
> >
>=20
> Probably we should add a choice "Document's Media Size" to the "Media
> Size" (machine-readable name "PageSize") option. This choice should be
> selected by default and then each page is sent with the size set by
the
> application and a printer containing all needed paper sizes switches
the
> trays automatically to have each page printed on the correct paper
size.
> If one of the concrete mediua sizes (like "A4") is chosen, the pages
are
>   all converted to print on the requested size, where the user can
> select with another option whether to scale or to crop.
>=20

[gwp] I do not quite understand what you stated.  Are we agreed the
application will send the media-size information to the CPD; if not,
that has to be the first item to address.  If the application sends the
"PageSize" to the CPD; then, the CPD changes the media-size choice to
the size sent by the application.  Now, if the user wants a different
size, the use the fit-option to tell how to fit it.

> If the document of an application does not have a well-defined paper
> size, like the images in a photo viewer or the text files in a plain
> text editor, the "Media Size" option should not have the "Document's
> Media Size" choice and the current CUPS default setting for the page
> size should be selected as default. The image or text gets fit into
that
> page size by application-provided options, for example fit into page,
> fixed size, n photos per sheet, poster of NxM inches, going over
several
> sheets to stick together.
>=20

[gwp] I would like to encourage a single architecture/ design/
implementation approach.  That is, even the photo-application can send a
media-size to the CPD.  Now the new question is where does the photo-app
get the media-size info; they pick on based on location (A4 or Letter);
from CUPS; from the User-Print-Profile concept I copied you privately
on.

[gwp] I have noted that most photo-apps that provide n photo per sheet
will request the user the media-size so that the photo-size can do the
layout correctly. =20

[gwp] Can we avoid "poster" in the first version of the CPD?  Use Alex's
suggestion and find an application to do the function right now.
Example, spread-sheet app split on cells; photo-app may not care,
drawing-app do not want to split on a "line" or "split a thick";
text-app have less options.  So if you just "cut up the large page into
smaller print pages", the output could be unacceptable.  A very good
GSoC project for next year.

> >
> > C: The word "borders" I believe refers to "margins".  It is not the
> > function of the CPD to set the margins.  The ability to set margin
to a
> > specific value or "borderless" is done within the application in the
> > "Page Setup".  The "Page Setup" within the application would have
> > retrieved the currently selected printer's capabilities to know the
> > printer's min/max margin and if the printer supports "borderless"
> printing.
> >
>=20
> This depends again on the application. "Layouting" apps like
> OpenOffice.org Writer or Scribus should do the media size and margins
in
> the page setup ("Format"-> "Page" or so). Photo viewers, plain text
> editors or browsers  better do this in the printing dialog.
>=20

[gwp] Again, I would like to encourage a single architecture/ design/
implementation approach.  Even if that means the application just sends
some media-size.  The user can over-ride in the dialog and now there is
a consistent use / implementation model.

<... snip ...>

> >
> >
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Section 2:
> >

<... snip ...>

> >
> > F: The label "pages per side" will be confused with "sides per
page".
> >   A more generally accept terms are "Print Layout
> >  or "Page Layout" or just "Layout" and the options are 1 page, 2,
pages,
> > 4 pages, etc.  Default is "1 page"
> >
>=20
> What about "Pages per sheet side"?

[gwp] Ok???, I do not think most user will understand n-up, so we need
something.

> >
> > G: For the values of "pages per side", the typical values are 1, 2,
3,
> > 4, 6, 8, 9. Beyond 9, it is really hard to read the output. Printing
25
> > pages per side seem silly.  If the intent is to print "thumbnails"
then
> > that should be a value.
> >
>=20
> N-up is implemented by the pstops and pdftopdf CUPS filters, we can
only
> offer the choices here which the filters can do. And there I think the
> max was 16.
>=20

[gwp] ok.


<... snip ...>

> >
> > I: I never heard of the option called "poster" in a print dialog and
if
> > I understand it correctly, it is how to print a large content-page
on
> > many printed-pages.  This is not an option for the CPD.  Again, this
a
> > setup option and should be controlled by the application.   This is
not
> > a simple process (I know from experience).   For example, does each
page
> > have a set amount of content overlay for piecing the pages together
or
> > are alignment-marks used.  For non-borderless media, are cut-line
> > printed.   So forth, and so forth.
> >
>=20
> This one would be useful, but we would need to add this functionality
to
> the pdftopdf CUPS filter.
>=20

[gwp] Again, can we avoid "poster" in the first version of the CPD? =20


<... snip ...>

> >
> >
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Section 3:
> >
> >
> >


<... snip ...>

> >
> >
> >
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Section 4:
> >

<... snip ...>

> >
> >
> >
> > =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Section 5:
> >

<... snip ...>

> >
> >
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > Other
> >


<... snip ...>

> >
> >
> > B: A new issue arising in the print world is that of security.  For
> > example, one the simplest security features for networked printers
is
> > "print only when at printer".  The user must enter a code to start
the
> > print process.  This needs to be set in the CPD.   I know this out
of
> > scope right now but since we are in the design/conception phase of
this
> > project; security needs to be addressed.
> >
>=20
> The PPDs contain these options. With the custom-option-aware CPD, this
> functionality will get accessible.
>=20
>=20

[gwp] great.

<... snip ...>

