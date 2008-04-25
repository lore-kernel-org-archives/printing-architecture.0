Message-ID: <481131B6.5050809@gmail.com>
Date: Thu, 24 Apr 2008 22:19:50 -0300
From: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com>
In-Reply-To: <481101A3.6030700@gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Coding the Common Printing Dialog and
 its interface
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
Cc: printing-architecture@lists.linux-foundation.org, Peter Sikking <peter@mmiworks.net>, Jonathan Riddell <jriddell@ubuntu.com>

Hi there Till,

It's very nice to see kinda movement on this subject :)

There are some questions that didn't get clear to me:

1) You said application will send the pdf document to the dialog via
sockets. Having that said, is it really "sockets" or "pipes"? Note that
sockets normally references connections & stuff, possibility to be on
different machine, ..  while pipes doesn't.

2) After the document is transfered to the dialog, where will it be
stored? We can do it in memory or on temporary files. In memory sounds
killer for medium-large documents or small boxes, while storing in
temporary files kinda makes the previous step unnecessary.

Performance may strike here, considering preview updates which would
require the entire document to be re-transferred.

3) You said printer-specific options aren't going to be reported back
immediately to the application, but after the job is printed. How are we
going to know which one if printer-specific and which one is
application-specific?

Because there are some options that raise doubts, like duplex/book
printings on enhanced printers. For example, consider you are printing a
financial report from kmymoney. You don't have access to margin setups,
while the application could handle them a bit better for the duplex/book
printing. (due to the left/right margings becoming different)

Still, application could change something at the document if you decide
to print in B/W instead of colors, like for example making all text
plain black (so you won't get unreadable grays).

4) You said the application would be storing used values for future
re-usage. Is that the optimal? Considering every app would have to do
it, maybe it would be interesting to have the dialog storing it. We
could spawn the dialog informing a domain and when the dialog boots up,
it would fake events while restoring our saved setup, thus informing the
app about it transparently.

5) "If ASCII text pieces are too big, exchange them gzipped"
Considering we may be transferring the whole document via socket/pipes,
this idea may not be really useful or am I missing something here?

Thanks,
Marcelo.

Till Kamppeter escreveu:
> Hi,
> 
> here I post some bits about the coordination of the coding of the Common 
> Printing Dialog. They are results of our discussion on the OpenPrinting 
> Meeting on the Linux Foundation Summit in Austin:
> 
> https://www.linux-foundation.org/en/OpenPrinting/LFSummitAustin2008
> https://lists.linux-foundation.org/pipermail/printing-architecture/2008/001351.html
>     (and follow-ups)
> 
> There are two students in the Google Summer of Code to implement the dialog:
> 
> Lars Uebernickel will code the interface between applications and the 
> printing dialog, so that the dialog gets exchangeable, for example one 
> can let the GNOME/GTK printing dialog appear when a KDE app is used on a 
> GNOME desktop. This will also allow to plug the OpenUsability printing 
> dialog.
> 
> Alexander Wauck will code the Common Printing Dialog itself as designed 
> by OpenUsability.
> 
> These students will have Jonathan Riddell, developer of dual-UI (KDE and 
> GNOME) apps, as principal mentor. Co-mentoring is done by me (printing 
> infrastructure coordination) and Josef Spillner (expert on automated 
> dialog generation, so more for the dialog itself).
> 
> See also http://code.google.com/soc/2008/linux/about.html
> 
> During the coding of the dialog projects we must create the following 
> specs, and these must get finished before the Linux Foundation Japan 
> Symposium in Tokyo on July 8. Peter Sikking (OpenUsability) and me will 
> present the dialog and the specs there.
> 
> 1. PPD extensions (and Foomatic extensions) for driver
>     developers/printer manufacturers: Here we have to list special
>     keywords and standard parameters added to the Adobe specs so that the
>     driver designer can m ake use of all features of the dialog:
> 
>      - Tagging options to put them into categories like "Paper Saving",
>        "Printout Quality", ... An option should be able to have more than
>        one tag
>      - Marking one option to be used for the quick selection buttons of
>        the standard view of the OpenUsability dialog
>      - CUPS custom options to allow advanced data types, like for user
>        names, passwords, fax numbers, numerical parameters
>      - CUPS multi-language extensions for multi-language PPDs
>      - UU-encoded icons for options and choices, to allow easier
>        understanding of options and also to allow manufacturers to inject
>        some corporate identity into the dialog.
> 
> 2. Interface between application and dialog. On the OpenPrinting Meeting
>     on the LF Summit in Austin we have discussed what the application has
>     to communicate with the printing dialog. It looks more or less like
>     this:
> 
>      - User clicks "Print": Application generates PDF from the document
>        and sends it to the dialog, along with the list of
>        application-specific options (all choices, ranges, icons, ...) and
>        their settings, application-specific constraints for the printer
>        or CUPS options, printer option settings and queue selection which
>        were saved with the document, window ID of the application (to
>        inform app when dialog gets killed).
>      - Dialog loads list of print queues from CUPS, options for the
>        currently selected queue, and shows the PDF in the preview and the
>        quick selection buttons of the current printer. The dialog reports
>        its window ID back to the app.
>      - If user changes application-specific options, new settings are
>        reported back to the app immediately and app sends new, updated
>        PDF.
>      - If user changes printer-specific options, CUPS options, or the
>        print queue, nothing is reported back to the app. The preview
>        gets updated.
>      - If user clicks "Print" in the dialog, the PDF as it is currently
>        is sent off into the print queue, along with a list of the
>        settings for the CUPS options and the printer-specific options.
>        The choice of the queue, the CUPS option settings and the settings
>        of the printer-specific options are reported back to the
>        application, so that the application can save them with the
>        document to be used on the next printout.
> 
>     Suggested data formats and wire protocols:
> 
>      - Use DBUS for exchanging data between the app process and the
>        dialog process.
>      - Everything except the PDF data stream goes through the DBUS, for
>        the PDF data stream we use sockets.
>      - The application specific options and constraints with all choices,
>        tags, icons, can be submitted in PPD format, using the PPD
>        extensions of spec 1.
>      - Option setting lists can be exchanged as simple key-value pairs
>        ("opt1=choiceA opt2=choiceC ...")
>      - Print queue choice and window ID can be exchanged as simple ASCII
>      - If ASCII text pieces are too big, exchange them gzipped
> 
> 3. How the OpenUsability dialog itself has to look like and how it is
>     operated.
> 
>      - See Peter Sikking's blog
>        http://www.mmiworks.net/eng/publications/labels/openPrinting.html
>      - Peter is working with a student on the specs.
> 
> 
> For part 1 of the specs I will post suggestions soon.
> 
> Part 2 will be mainly determined by Lars and part 3 by Peter.
> 
> As Lars's modularization of the printing dialog is not restricted to the 
> OpenUsability printing dialog part 2 needs perhaps some additional 
> features (are the features shown above also enough for the standard KDE 
> and GNOME print dialogs?)
> 
> To let the two projects not depend on each other too early but allow 
> them to be coupled near the end of the Google Summer of Code, one can 
> proceed as follows:
> 
> Alexander will start coding the dialog simply coupled to one reference 
> application, so that one can demo it in Tokyo.
> 
> Lars will use the the standard KDE and/or GNOME dialogs as the Common 
> Printing Dialog at first. He will define the DBUS communication and 
> write glue code for the dialog side and the app side. The glue code on 
> the app side can be patches to the printing libraries of the desktops, 
> so that ideally existing apps stay using the current APIs and do not 
> need to be modified. The whole thing can be even delivered as patches to 
> the printing libraries of the desktops.
> 
> I hope this is a good start of information for all parties to get into 
> this project.
> 
> Any suggestions for improvement are welcome.
> 
>     Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linux-foundation.org/mailman/listinfo/printing-architecture

