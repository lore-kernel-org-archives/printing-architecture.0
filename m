From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A85@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A85@EEAEX03.us.epson.net>
Content-Type: text/plain
Date: Tue, 04 Nov 2008 18:46:20 +0100
Message-Id: <1225820780.9360.81.camel@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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
To: printing-architecture@lists.linux-foundation.org

> [gwp] The important thing about JTAPI is not that it is a job API but
> that it has defined a common set of terms for standard and commonly used
> printing terms/actions/attributes/options/values.  It is great to have a
> CPD format, layout, etc.; but it just as important (from the User
> point-of-view, not the applications point-of-view) that the CPD use
> common terminology between printer vendor or better stated between
> PPD's.  The CPD is currently not specifically concerned with "what the
> options/attributes/etc" are "labeled" or called; it gets the information
> from the PPD file. Thus, this discussion needs to be moved to the
> details about the PPD extension for the CPD.

Ok.


> [gwp] There may be a 'job' concept. How do the CPD option settings get
> the printer driver?  Yes, it could be piped set of option:value key word
> pairs.  But please note, that not all print solution provide instant
> printing.  Many have spoolers which must maintain a "print job" and not
> the rendered printed pages.  I use the term "print job" loosely; as we
> don't want create yet-another job ticket format, I prefer to call it the
> "print intent".  Also, CUPS will not be only receiver of the CPD "print
> intent".  There are a lot of qualified receivers of the "print intent"
> content from the CPD.  Also note; I see the CPD being used over the
> range of embedded devices to production printing. (I will discussion in
> another email.)  Please do not expect the application or the caller of
> the CPD to create "print intent" content.  This is a common function
> which is best done by the CPD.  If each application has to do this then
> the number of errors and bad "print intent" content will grow with each
> application.

The CPD will talk to CUPS, the application doesn't have anything to do
with it. The only thing that the application will use is the CPD API.


> > An application is free to set as arbitrarily many options before/after
> > showing the dialog with PrintDialog.SetOptionValue. I don't think we
> > need a ShowThis method which does exactly the same thing plus showing
> > the dialog.
> > 
> > 
> 
> [gwp] I guess I was not too clear.  What I meant was something similar
> to what other OS print dialogs do. Once the user has set options, he/she
> would like those same options to be set the next time they print or the
> CPD is shown.  It is too much burden for the application to remember the
> details.  So I suggested a ShowThis API. But there would also have to be
> a GetShow or GetThis.   This either returns opaque pointer or reference
> to the current CPD configuration.  The ShowThis sends the opaque
> pointer/reference to the CPD and the exact same dialog is displays with
> the pervious options set.  (Opaque content can either be saved in
> memory, a file or ???)

Oh, then I misunderstood you.

This is already planned: It will be possible for the user to save a
configuration as a preset, so that all these options can be easily set
with one click for subsequent documents. This is handled transparently
by the dialog, the application will not have to deal with it.

AFAIK, Peter has also specified a mechanism to save those presets to a
file (to share with somebody else or use on another computer).


> [gwp] The concept of "Set" does not apply here as an API.  It is
> actually an attribute of the logical document and represents the
> number-of-pages based on the current printing options.  If the user
> changes the paper size, the margins or any page format option then the
> NumberOf(Logical)Pages changes.   Note that reformatting may not only
> change the number of logical pages but the size of document.
> 
> [gwp] My proposal would be change SetDocumentName to SetDocument; remove
> SetNumberOfPages and SetDocumentSize.  Pages and Size are added to
> SetDocument;
> 
> [gwp]  SetDocument('s' name, 'u' octetSize, 'u' logicalPageCount)
> 
> [gwp] I might even add the "url" to the SetDocument in the event of
> off-line, pull-printing and/or spool printing.
> 
> [gwp] Note a 'byte' does not have to be 8-bits. To ensure
> interoperability I suggest 'byte' size information be called octetSize.
> This indicates the size if 8-bit units.

This is a very good idea. I will ensure that merging those functions
will not clash with any other specifications (especially the preview).
If not, I'll change it to your suggestion.

Thanks!


> [gwp] Suppose the PPD has a PageSize of A4, then the printer could print
> 4"x6" but the value was not included in the PPD.  Then the application
> wants to add a value to "Media Size" option of 4"x6".  
> 
> [gwp] example:  AddValueToOption(MEDIA_SIZE, "4 x 6 Photo Card")

This would be a custom setting for the page size (can be specified in
the PPD file with the CUPS custom option extension). I think this is the
way options should be extended, as given values will be validated by the
CPD (e.g. maximum paper size, etc.). If an application can add arbitrary
values to options, the printer driver would not know how to handle them.


> [gwp] I thought all options and preset labels where defined within the
> PPD file.  Assuming this is true; then, the proposal to use JTAPI
> options/attributes/values is still a good idea, supported by the
> OpenPrinting Architecture/SteeringCommittee and reinforces the concept
> of "common".  Otherwise I don't correctly understand your reply; could
> you please explain further. 

They are specified in the PPD file. This is by design, as Peter wants as
much flexibility as possible for individual printers. He does have
specific option/tag names in mind for different types/uses of printers
(they are/ will be specified by him). I don't know whether those are the
same as the ones from the JTAPI.

Nevertheless, the CPDAPI should not know about specific option types,
but rather be able to handle any options. The options in a PPD file can
(and probably should) be named in a specific scheme, be it Peter's or
the one from JTAPI.


> [gwp] The CPD may/should do this.  What I meant was; if the User changes
> one option; then, any affected/coupled option(s) should be highlighted
> to draw attention to the user that something was changed (automatically)
> based on the setting of options he/she just changed.

Ok, that makes sense.


> [gwp] At this point I am still working on some ideas.  But this type of
> signaling has been useful in other gui's.  If you can just put the hooks
> in or have these addition in your architecture, we can determine the
> value of them as application begin to use CPD.

To be honest, I would rather not include features for which we don't
have any use case yet.  Note that an application can already subscribe
to the "OptionChanged" signal, which is emitted whenever the value of an
option changes.


    Lars


