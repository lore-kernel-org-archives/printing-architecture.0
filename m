Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 4 Nov 2008 07:20:21 -0800
Message-ID: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A85@EEAEX03.us.epson.net>
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

My comment are noted by [gwp]

> -----Original Message-----
> From: printing-architecture-bounces@lists.linux-foundation.org
> [mailto:printing-architecture-bounces@lists.linux-foundation.org] On
> Behalf Of Lars Uebernickel
> Sent: Tuesday, November 04, 2008 3:13 AM
> To: printing-architecture@lists.linux-foundation.org
> Subject: Re: [Printing-architecture] Some Comments/ Feedback on CPDAPI
>=20
>=20
> > 1. I am concerned how job/option/attributes of CPDAPI align to
JTAPI.
>=20
> I am not intimately familiar with the JTAPI. Where is the difference
> between "options" and "attributes"?
>=20

[gwp] The important thing about JTAPI is not that it is a job API but
that it has defined a common set of terms for standard and commonly used
printing terms/actions/attributes/options/values.  It is great to have a
CPD format, layout, etc.; but it just as important (from the User
point-of-view, not the applications point-of-view) that the CPD use
common terminology between printer vendor or better stated between
PPD's.  The CPD is currently not specifically concerned with "what the
options/attributes/etc" are "labeled" or called; it gets the information
from the PPD file. Thus, this discussion needs to be moved to the
details about the PPD extension for the CPD.

> There is no notion of a "job" in the CPDAPI, as one dialog only ever
> creates one job (at the most) during its lifetime. Printing options
map
> directly to options in the PPD files.
>=20
>=20

[gwp] There may be a 'job' concept. How do the CPD option settings get
the printer driver?  Yes, it could be piped set of option:value key word
pairs.  But please note, that not all print solution provide instant
printing.  Many have spoolers which must maintain a "print job" and not
the rendered printed pages.  I use the term "print job" loosely; as we
don't want create yet-another job ticket format, I prefer to call it the
"print intent".  Also, CUPS will not be only receiver of the CPD "print
intent".  There are a lot of qualified receivers of the "print intent"
content from the CPD.  Also note; I see the CPD being used over the
range of embedded devices to production printing. (I will discussion in
another email.)  Please do not expect the application or the caller of
the CPD to create "print intent" content.  This is a common function
which is best done by the CPD.  If each application has to do this then
the number of errors and bad "print intent" content will grow with each
application.

> > 2. Long term I would expect that API will grow/improve.  The "Show"
> > method seems to be a little to generic a method name and I could
> > really imagine a lot of additional "Show" methods.  Therefore, I
would
> > suggest changing this method to "ShowDialog".  In fact, there can be
a
> > desire to "ShowDialog" with a specific set of options/attributes
being
> > displayed with specific option/attribute values.  So I would propose
a
> > new command "ShowThisDialog" where the argument define the initial
> > display state.
>=20
> "Show" is a method of a PrintDialog instance. Hence, code using the
API
> will look somewhat like this (depending on the language, of course):
>=20
> dialog.Show()
>=20
> I don't think it is necessary to change that to
>=20
> dialog.ShowDialog()
>=20

[gwp] Ok.

> An application is free to set as arbitrarily many options before/
after
> showing the dialog with PrintDialog.SetOptionValue. I don't think we
> need a ShowThis method which does exactly the same thing plus showing
> the dialog.
>=20
>=20

[gwp] I guess I was not too clear.  What I meant was something similar
to what other OS print dialogs do. Once the user has set options, he/she
would like those same options to be set the next time they print or the
CPD is shown.  It is too much burden for the application to remember the
details.  So I suggested a ShowThis API. But there would also have to be
a GetShow or GetThis.   This either returns opaque pointer or reference
to the current CPD configuration.  The ShowThis sends the opaque
pointer/reference to the CPD and the exact same dialog is displays with
the pervious options set.  (Opaque content can either be saved in
memory, a file or ???)


> > 3. The "SetNumberOfPages" was not initially clear to me of the
intent.
> > I would suggest "SetPagesToPrint" with an string argument such that
> > printed pages could be more complex.  I.e. SetPagesToPrint('s',
> > '1-3,5,7,9,10-21")  If the arguments is NULL or Negative it would
> > print all pages.
>=20
> This method is not for setting the pages which are to be printed. It
is
> used for letting the dialog know how many pages the final document
will
> have. This is useful for setting the widgets in the preview area to
> sensible values, i.e. disabling the "next" button when the user
arrives
> at the last page. It can also be used to give the user a warning when
> specifying pages which are out of range.
>=20
> I admit the naming is a bit ambiguous and the documentation might lack
a
> bit in that area...
>=20

[gwp] The concept of "Set" does not apply here as an API.  It is
actually an attribute of the logical document and represents the
number-of-pages based on the current printing options.  If the user
changes the paper size, the margins or any page format option then the
NumberOf(Logical)Pages changes.   Note that reformatting may not only
change the number of logical pages but the size of document.

[gwp] My proposal would be change SetDocumentName to SetDocument; remove
SetNumberOfPages and SetDocumentSize.  Pages and Size are added to
SetDocument;

[gwp]  SetDocument('s' name, 'u' octetSize, 'u' logicalPageCount)

[gwp] I might even add the "url" to the SetDocument in the event of
off-line, pull-printing and/or spool printing.

[gwp] Note a 'byte' does not have to be 8-bits. To ensure
interoperability I suggest 'byte' size information be called octetSize.
This indicates the size if 8-bit units.

>=20
> > 4. For "AddOption": It is not clear that all vendor/application
> > additions can be called "options".  For pre-defined CPD
> > options/attributes (if there are any) how can you
"AddValueToOption".
>=20
> Option is the terminology in PPD files, which I simply carried over
into
> this API. Vendor options will not be added using this API, as they are
> specified in the PPD file. Only applications will use it.
>=20
> What do you mean with "AddValueToOption"? There is a method called
> "SetOptionValue", which sets an option to a specific value. For
example,
> "PageSize" to "A4".

[gwp] Suppose the PPD has a PageSize of A4, then the printer could print
4"x6" but the value was not included in the PPD.  Then the application
wants to add a value to "Media Size" option of 4"x6". =20

[gwp] example:  AddValueToOption(MEDIA_SIZE, "4 x 6 Photo Card")

>=20
> > 5. For  "AddOption" and for "AddPreset": I would like to see and
> > strongly prompt that an initial set of options/attributes be those
> > defined by JTAPI.   Letting vendors/applications/developers set
common
> > option/attribute names will result in various names for the same
> > option/attribute.   This will cause confusion to the end user - the
> > last thing Linux needs to do.
>=20
> This comes from the usability designer of the dialog, Peter Sikking.
He
> has good reasons for this, which he outlines in the specs for the
> dialog:
>=20
> http://wiki.openusability.org/printing/index.php/Specification
>=20

[gwp] I thought all options and preset labels where defined within the
PPD file.  Assuming this is true; then, the proposal to use JTAPI
options/attributes/values is still a good idea, supported by the
OpenPrinting Architecture/SteeringCommittee and reinforces the concept
of "common".  Otherwise I don't correctly understand your reply; could
you please explain further.=20

>=20
> > 6. I can see two major reasons for "SetOptionValue".  The first is
> > when the dialog is started to set the default values.  The second
> > reason, is the user setting of one option/attribute changes one or
> > more other options/attributes (coupled options/attributes).   I
would
> > like to see an additional attribute added to the command that can be
> > used to highlight a "SetOptionValue".  So the "SetOptionValue('s'
> > name, 'v' value, ' b' highlight, out 'b' success);
>=20
> What effect would "highlighting" an option have? So that the user can
> see when an option changes? This is a very good idea, but I don't
think
> this should be part of the API. The dialog show always do this by
> default.
>=20

[gwp] The CPD may/should do this.  What I meant was; if the User changes
one option; then, any affected/coupled option(s) should be highlighted
to draw attention to the user that something was changed (automatically)
based on the setting of options he/she just changed.


>=20
> > 7. Many windowing system will provide a signal when a
option/attribute
> > (actually is gui field/region/object) is selected or deselected or
> > moved-from.  So a signal called "OptionSelection('i' selection);
where
> > selection takes on the values of "SELECTED", "DESELECTED",
> > "MOVED_FROM".  One could argue about the "MOVED_FROM".
>=20
> This could be added, but I do not see any benefits for the application
> to have such information. What exactly do you have in mind?
>=20

[gwp] At this point I am still working on some ideas.  But this type of
signaling has been useful in other gui's.  If you can just put the hooks
in or have these addition in your architecture, we can determine the
value of them as application begin to use CPD.

>=20
> Thanks a lot for your feedback and suggestions! The API is not
formally
> released yet, so making changes to it is still possible.
>=20
>    Lars
>=20
>=20
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
>
https://lists.linux-foundation.org/mailman/listinfo/printing-architectur
e
