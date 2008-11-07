Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 7 Nov 2008 07:36:55 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2B29@EEAEX03.us.epson.net>
From: "Petrie, Glen" <glen.petrie@eitc.epson.com>
Subject: Re: [Printing-architecture] More Comments: Some Comments /Feedback
	onCPD Specification
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Peter Sikking <peter@mmiworks.net>
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Open Printing <printing-architecture@lists.linux-foundation.org>

Peter,

Have you had time to consider my proposal to add the two additional
dialog level's to the CPD?  These additions will extend the scope the
CPD from Office (desktop) to embedded and handheld device applications
so that users can truly have the same experience no matter what Linux
"box" they are using.

glen

> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of Petrie, Glen
> Sent: Tuesday, November 04, 2008 8:06 AM
> To: Open Printing; Peter Sikking
> Subject: [Printing-architecture] More Comments: Some Comments
/Feedback
> onCPD Specification
>=20
> > The UI specifications
> >
> > http://wiki.openusability.org/printing/index.php/Specification
> >
> > are not hosted by OpenPrinting nor by the Linux Foundation. So I do
> not
> > have write access to them.
> >
> > Who can improve or fix them are only the OpenUsability people.
>=20
> [gwp] How can I join the Usability group in connection with the CPD.
As
> a print-vendor I would like to ensure that the CPD will support
current
> and future product needs.  I think separating the UI from the PPD was
an
> important step in that direction.  But please note, it is typical the
> print-vendors who get the phone/support calls when there are print
> issues; not the OS vendor, not the desktop vendor and not the
usability
> people.  So I hope that the usability people will accept input from
> print-vendors in the spirit of reducing User confusion (and Support
> Calls).
>=20
> [gwp] Additions.
>=20
> The current JTAPI covered the printing gamut from embedded
> (phones/pda/etc.) to production printing.  It clearly defines what
> objects/attributes are required for each environment.  I would like to
> suggest that the CPD do the same by the addition of two new dialog
> levels. I will do them in reverse order.
>=20
> "level 1 dialog structure"
> Target: Embedded devices, where screen area is very limit.
> Structure: Printer Zone, Quick Preset Zone and Control Zone.  The
width
> all zones is set by the Quick Preset Zone.
> Usage:  The caller (application, OS, whatever) must define all
printing
> "modes" by means of Presets.
>=20
> "level 0 dialog structure"
> Target: Embedded devices, GUI-less devices, special needs.
> Structure: No GUI interface but same functional capability.
> Usage: The caller (application, OS, whatever) sets the printer and
> options value (based on some internal determination); the GUI-less CPD
> returns the "print intent" information based on the callers input.
This
> way the caller can use a different with same set value but get the
> correct "print intent" values for the specified printer.
>=20
> A GUI-less CPD is not a made up request.  Epson routinely get requests
> and provides this exact capability for our printer-drivers.  The
ISV/IHV
> make the same calls (basically, the sets but also some gets to do
> calculations) to the print-dialog whether it/is displayed or not;
thus,
> do have to duplicate/change code depending on specific implementation
> configurations.  Yes, the caller could get the information from the
PPD,
> but this now requires the caller to be able to parse and process PDD;
> this should be done in a central location; namely, the CPD.
>=20
> ----
> The preview image does not completely show "print intent".  It does
not
> illustrate if the output is duplex, where the binding edge is, etc.
> Attached is an example from an Epson driver better illustrating "print
> intent" which this or some similar should be added to the preview.  If
> the application must provide this preview image; I believe that is way
> too much for the caller (application, etc) to do.
>=20
> >
> > Peter, can you have a look at Glen Petrie's suggestions for
improving
> > your specifications of the UI of the Common Printing Dialog? As far
as
> > it looks for me this is not a request for changing the UI in any
way,
> > but a request for a better formulation of the specs.
> >
> > Glen talks also about the option names in your examples, but note
that
> > in the real dialog these strings do not come from you. They are
> > controlled by the PPDs and if we want to take control on them we
must
> > add additional sections to PPD extension specs.
> >
> >     Till
> >
> > Petrie, Glen wrote:
> > >    1.   The specification needs a Terms and Acronyms Section
> > >          1. Printer Zone - I think this mean "Printer Identifier"
> Zone
> > >          2. Quick Preset Zone
> > >          3. Preview Zone
> > >          4. Control Zone
> > >          5. Configuration Matrix Zone
> > >          6. Printing Parameter Zone
> > >    2. Add a conformance section: SHALL (NOT), WILL (NOT), MAY
(NOT)
> > >    3. When a conformance term is being used in the specification
it
> > >       should be capitalized.
> > >    4. The Overview section needs to provide an overview of CPD
with
> > >       objectives and goals
> > >    5. Internationalization section should be move the a separate
> section
> > >       later in the specification.
> > >    6. Diagram in "dialog structure" section don't match "Dialog
> Zones"
> > >       section; specifically, 'level 3' diagram.   Since there is
no
> > >       value to both set of diagrams and dual labels (Column 1 =
=3D=3D
> 'Quick
> > >       Preset Zone"  I would suggest removing the "dialog
structure"
> and
> > >       merge any dimensional data into the "Dialog Zones" section.
> > >    7. Describing a 'Zone' occupies a specific column adds no value
> to
> > >       description; however, add the dimensional info from the
> 'dialog
> > >       structure' section would.
> > >    8. Is there any value in having a 'level 3' and 'expanded level
> 3'.
> > >       The can be stated the 'expanded printing parameter zone'
will
> be
> > >       increased (from 0 height) to accommodate added parameters.
> > >    9. The next is 'zone content', but I notice there are fixed
title
> > >       fields, drop down, etc.;  are these fields and their
> attributes
> > >       determined the CPD itself or does the application or PPD
file
> > >       extensions have any control over these fields.   Are any
> > >       attributes about the controllable by the application or PPD
> > >       extensions? Can't really think why there might be any reason
> for a
> > >       application level control of attributes.
> > >          1. However, I don't remember seeing in the CPDAPI "Get"
> > >             information on the preview area.   This could be
> important
> > >             to some application on how they render reduced
> resolution
> > >             preview images.  I am assuming the current version
does
> not
> > >             have magnification of the preview;  but that is a
> logical
> > >             extension and want to be considered in the
specification
> at
> > >             this time.
> > >
> > >
> > >
> > > In general I have a concern with the terms and phrases used in the
> > > dialog.   They do not follow existing conventions which I have
found
> > > with most user causes confusion and prompts help calls.
> > >
> > >
> > >
> > >   10. I notice on the 'level-3' example phrases like "For handing
> out'
> > >       instead of the traditional phrase "Handouts".   Can the
> > >       OpenPrinting Architecture Team review these labels to ensure
> > >       coherence with existing printing standards and conventions?
> For
> > >       example what does "Handling pages" means or imply?   "Best
> ever"
> > >       is a non-conventional term for either "Best" or "Photo"
> quality.
> > >        "On both sides of the paper" is called 'duplex'.  If we
> create
> > >       new words, terms and phrases for Linux printing is will be
> just
> > >       another reason for people to not use Linux and if the goal
is
> go
> > >       beyond Linux, it must use words, terms and phrases that
people
> are
> > >       used too - this comment comes from dealing with real user
when
> > >       even small changes are made.
> > >   11. The label "Default" is confusing; it should say "Pre-set
for"
> or
> > >       just "Pre-set".  If I read it as currently then it say
> "Default
> > >       Document, Crisp"; but "Pre-set for Document, crisp" in
> > >       understandable by users.
> > >
> > >
> > >
> > >   12. Can the "Control Printing Aspects" rotating arrow just be
> check
> > >       box"?  I also like a simpler label of "Printing Controls" or
> > >       "Printing Options".
> > >          1. Is there a way to "Show" the dialog
> > >
> > >
> > >
> > >
> > >
> > > This discussion was further elaborated in the Steering Committee
> meeting
> > > and it was agreed to start an architecture to expand on this.

