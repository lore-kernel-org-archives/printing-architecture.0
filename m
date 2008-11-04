Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 4 Nov 2008 10:20:45 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A8F@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] Some Comments/ Feedback on CPDAPI
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Lars Uebernickel <larsuebernickel@gmx.de>, printing-architecture@lists.linux-foundation.org



> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of Lars Uebernickel
> Sent: Tuesday, November 04, 2008 9:46 AM
> To: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] Some Comments/ Feedback on CPDAPI
>=20
> > [gwp] The important thing about JTAPI is not that it is a job API
but
> > that it has defined a common set of terms for standard and commonly
used
> > printing terms/actions/attributes/options/values.  It is great to
have a
> > CPD format, layout, etc.; but it just as important (from the User
> > point-of-view, not the applications point-of-view) that the CPD use
> > common terminology between printer vendor or better stated between
> > PPD's.  The CPD is currently not specifically concerned with "what
the
> > options/attributes/etc" are "labeled" or called; it gets the
information
> > from the PPD file. Thus, this discussion needs to be moved to the
> > details about the PPD extension for the CPD.
>=20
> Ok.
>=20
>=20
> > [gwp] There may be a 'job' concept. How do the CPD option settings
get
> > the printer driver?  Yes, it could be piped set of option:value key
word
> > pairs.  But please note, that not all print solution provide instant
> > printing.  Many have spoolers which must maintain a "print job" and
not
> > the rendered printed pages.  I use the term "print job" loosely; as
we
> > don't want create yet-another job ticket format, I prefer to call it
the
> > "print intent".  Also, CUPS will not be only receiver of the CPD
"print
> > intent".  There are a lot of qualified receivers of the "print
intent"
> > content from the CPD.  Also note; I see the CPD being used over the
> > range of embedded devices to production printing. (I will discussion
in
> > another email.)  Please do not expect the application or the caller
of
> > the CPD to create "print intent" content.  This is a common function
> > which is best done by the CPD.  If each application has to do this
then
> > the number of errors and bad "print intent" content will grow with
each
> > application.
>=20
> The CPD will talk to CUPS, the application doesn't have anything to do
> with it. The only thing that the application will use is the CPD API.
>=20

[gwp] I am not expecting the caller application to receive the
print-intent to be spooled; but it could.  I hope that CPD will be able
to talk to other spoolers or """print""" controller/service software
other than CUPS.  If you think of CPD as a printing-client then there
has to be a way for CPD to send print-intent content to any CPD
qualified print controller/service.

[gwp] If the goal is that CPD will only talk with CUPS, I have
misunderstood the intent of this activity.  I would think that the CUPS
team should define, design and provide the implementation of CPD.=20

>=20
> > > An application is free to set as arbitrarily many options
before/after
> > > showing the dialog with PrintDialog.SetOptionValue. I don't think
we
> > > need a ShowThis method which does exactly the same thing plus
showing
> > > the dialog.
> > >
> > >
> >
> > [gwp] I guess I was not too clear.  What I meant was something
similar
> > to what other OS print dialogs do. Once the user has set options,
he/she
> > would like those same options to be set the next time they print or
the
> > CPD is shown.  It is too much burden for the application to remember
the
> > details.  So I suggested a ShowThis API. But there would also have
to be
> > a GetShow or GetThis.   This either returns opaque pointer or
reference
> > to the current CPD configuration.  The ShowThis sends the opaque
> > pointer/reference to the CPD and the exact same dialog is displays
with
> > the pervious options set.  (Opaque content can either be saved in
> > memory, a file or ???)
>=20
> Oh, then I misunderstood you.
>=20
> This is already planned: It will be possible for the user to save a
> configuration as a preset, so that all these options can be easily set
> with one click for subsequent documents. This is handled transparently
> by the dialog, the application will not have to deal with it.
>=20
> AFAIK, Peter has also specified a mechanism to save those presets to a
> file (to share with somebody else or use on another computer).
>=20
>=20
> > [gwp] The concept of "Set" does not apply here as an API.  It is
> > actually an attribute of the logical document and represents the
> > number-of-pages based on the current printing options.  If the user
> > changes the paper size, the margins or any page format option then
the
> > NumberOf(Logical)Pages changes.   Note that reformatting may not
only
> > change the number of logical pages but the size of document.
> >
> > [gwp] My proposal would be change SetDocumentName to SetDocument;
remove
> > SetNumberOfPages and SetDocumentSize.  Pages and Size are added to
> > SetDocument;
> >
> > [gwp]  SetDocument('s' name, 'u' octetSize, 'u' logicalPageCount)
> >
> > [gwp] I might even add the "url" to the SetDocument in the event of
> > off-line, pull-printing and/or spool printing.
> >
> > [gwp] Note a 'byte' does not have to be 8-bits. To ensure
> > interoperability I suggest 'byte' size information be called
octetSize.
> > This indicates the size if 8-bit units.
>=20
> This is a very good idea. I will ensure that merging those functions
> will not clash with any other specifications (especially the preview).
> If not, I'll change it to your suggestion.
>=20
> Thanks!
>=20
>=20
> > [gwp] Suppose the PPD has a PageSize of A4, then the printer could
print
> > 4"x6" but the value was not included in the PPD.  Then the
application
> > wants to add a value to "Media Size" option of 4"x6".
> >
> > [gwp] example:  AddValueToOption(MEDIA_SIZE, "4 x 6 Photo Card")
>=20
> This would be a custom setting for the page size (can be specified in
> the PPD file with the CUPS custom option extension). I think this is
the
> way options should be extended, as given values will be validated by
the
> CPD (e.g. maximum paper size, etc.). If an application can add
arbitrary
> values to options, the printer driver would not know how to handle
them.
>=20
>=20

[gwp] I am still not communicating correctly.  The CPD has reads the PPD
CPD extension content. But the application wants to add new/more values
to an option beyond the values that were specified in PPD.  So the
new/more values would never have been in the PPD.

> > [gwp] I thought all options and preset labels where defined within
the
> > PPD file.  Assuming this is true; then, the proposal to use JTAPI
> > options/attributes/values is still a good idea, supported by the
> > OpenPrinting Architecture/SteeringCommittee and reinforces the
concept
> > of "common".  Otherwise I don't correctly understand your reply;
could
> > you please explain further.
>=20
> They are specified in the PPD file. This is by design, as Peter wants
as
> much flexibility as possible for individual printers. He does have
> specific option/tag names in mind for different types/uses of printers
> (they are/ will be specified by him). I don't know whether those are
the
> same as the ones from the JTAPI.

[gwp] Since the PPD CPD extensions are being done by the OpenPrinting
Architecture team; they have very strongly recommended that CPD
options/tags/values be based on JTAPI.  All members of the Architecture
Team have real life experience with this situation and JTAPI was based
on domain experts with years of printing/print-job experience.

>=20
> Nevertheless, the CPDAPI should not know about specific option types,
> but rather be able to handle any options. The options in a PPD file
can
> (and probably should) be named in a specific scheme, be it Peter's or
> the one from JTAPI.
>=20
>=20
> > [gwp] The CPD may/should do this.  What I meant was; if the User
changes
> > one option; then, any affected/coupled option(s) should be
highlighted
> > to draw attention to the user that something was changed
(automatically)
> > based on the setting of options he/she just changed.
>=20
> Ok, that makes sense.
>=20
>=20
> > [gwp] At this point I am still working on some ideas.  But this type
of
> > signaling has been useful in other gui's.  If you can just put the
hooks
> > in or have these addition in your architecture, we can determine the
> > value of them as application begin to use CPD.
>=20
> To be honest, I would rather not include features for which we don't
> have any use case yet.  Note that an application can already subscribe
> to the "OptionChanged" signal, which is emitted whenever the value of
an
> option changes.
>=20
>=20

[gwp] I am asking to add the feature at this time; however, I am
requesting that the architecture and design allow for extension of the
type I suggested above.  I have seen many, many, many "closed
architecture" that find it difficult to added extension if it not
considered in the original architecture/design phase of the project.


>     Lars
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
