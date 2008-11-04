From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A57@EEAEX03.us.epson.net>
References: <ED4094DE5E8ACD4BBDACA6AD398E608F1B2A57@EEAEX03.us.epson.net>
Content-Type: text/plain; charset="utf-8"
Date: Tue, 04 Nov 2008 12:12:45 +0100
Message-Id: <1225797165.9360.45.camel@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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


> 1. I am concerned how job/option/attributes of CPDAPI align to JTAPI.

I am not intimately familiar with the JTAPI. Where is the difference
between "options" and "attributes"?

There is no notion of a "job" in the CPDAPI, as one dialog only ever
creates one job (at the most) during its lifetime. Printing options map
directly to options in the PPD files.


> 2. Long term I would expect that API will grow/improve.  The “Show”
> method seems to be a little to generic a method name and I could
> really imagine a lot of additional “Show” methods.  Therefore, I would
> suggest changing this method to “ShowDialog”.  In fact, there can be a
> desire to “ShowDialog” with a specific set of options/attributes being
> displayed with specific option/attribute values.  So I would propose a
> new command “ShowThisDialog” where the argument define the initial
> display state.

"Show" is a method of a PrintDialog instance. Hence, code using the API
will look somewhat like this (depending on the language, of course):

dialog.Show()

I don't think it is necessary to change that to

dialog.ShowDialog()

An application is free to set as arbitrarily many options before/ after
showing the dialog with PrintDialog.SetOptionValue. I don't think we
need a ShowThis method which does exactly the same thing plus showing
the dialog.


> 3. The “SetNumberOfPages” was not initially clear to me of the intent.
> I would suggest “SetPagesToPrint” with an string argument such that
> printed pages could be more complex.  I.e. SetPagesToPrint(‘s’,
> ‘1-3,5,7,9,10-21”)  If the arguments is NULL or Negative it would
> print all pages.

This method is not for setting the pages which are to be printed. It is
used for letting the dialog know how many pages the final document will
have. This is useful for setting the widgets in the preview area to
sensible values, i.e. disabling the "next" button when the user arrives
at the last page. It can also be used to give the user a warning when
specifying pages which are out of range. 

I admit the naming is a bit ambiguous and the documentation might lack a
bit in that area...


> 4. For “AddOption”: It is not clear that all vendor/application
> additions can be called “options”.  For pre-defined CPD
> options/attributes (if there are any) how can you “AddValueToOption”.

Option is the terminology in PPD files, which I simply carried over into
this API. Vendor options will not be added using this API, as they are
specified in the PPD file. Only applications will use it.

What do you mean with "AddValueToOption"? There is a method called
"SetOptionValue", which sets an option to a specific value. For example,
"PageSize" to "A4".

> 5. For  “AddOption” and for “AddPreset”: I would like to see and
> strongly prompt that an initial set of options/attributes be those
> defined by JTAPI.   Letting vendors/applications/developers set common
> option/attribute names will result in various names for the same
> option/attribute.   This will cause confusion to the end user – the
> last thing Linux needs to do.

This comes from the usability designer of the dialog, Peter Sikking. He
has good reasons for this, which he outlines in the specs for the
dialog:

http://wiki.openusability.org/printing/index.php/Specification


> 6. I can see two major reasons for “SetOptionValue”.  The first is
> when the dialog is started to set the default values.  The second
> reason, is the user setting of one option/attribute changes one or
> more other options/attributes (coupled options/attributes).   I would
> like to see an additional attribute added to the command that can be
> used to highlight a “SetOptionValue”.  So the “SetOptionValue(‘s’
> name, ‘v’ value, ‘ b’ highlight, out ‘b’ success);

What effect would "highlighting" an option have? So that the user can
see when an option changes? This is a very good idea, but I don't think
this should be part of the API. The dialog show always do this by
default.


> 7. Many windowing system will provide a signal when a option/attribute
> (actually is gui field/region/object) is selected or deselected or
> moved-from.  So a signal called “OptionSelection(‘i’ selection); where
> selection takes on the values of “SELECTED”, “DESELECTED”,
> “MOVED_FROM”.  One could argue about the “MOVED_FROM”.

This could be added, but I do not see any benefits for the application
to have such information. What exactly do you have in mind?


Thanks a lot for your feedback and suggestions! The API is not formally
released yet, so making changes to it is still possible.

   Lars


