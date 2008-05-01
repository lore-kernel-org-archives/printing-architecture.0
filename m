Message-ID: <4819F0F1.6050307@gmx.de>
Date: Thu, 01 May 2008 18:33:53 +0200
From: Lars Uebernickel <larsuebernickel@gmx.de>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com>
In-Reply-To: <481101A3.6030700@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
To: printing-architecture@lists.linux-foundation.org

> 2. Interface between application and dialog. On the OpenPrinting Meeting
>    on the LF Summit in Austin we have discussed what the application has
>    to communicate with the printing dialog. It looks more or less like
>    this:
> 
>     - User clicks "Print": Application generates PDF from the document
>       and sends it to the dialog, along with the list of
>       application-specific options (all choices, ranges, icons, ...) and
>       their settings, application-specific constraints for the printer
>       or CUPS options, printer option settings and queue selection which
>       were saved with the document, window ID of the application (to
>       inform app when dialog gets killed).

What kinds of constraints for the options do you have in mind? And how 
could these be communicated to the dialog?


>     - Dialog loads list of print queues from CUPS, options for the
>       currently selected queue, and shows the PDF in the preview and the
>       quick selection buttons of the current printer. The dialog reports
>       its window ID back to the app.
>     - If user changes application-specific options, new settings are
>       reported back to the app immediately and app sends new, updated
>       PDF.
>     - If user changes printer-specific options, CUPS options, or the
>       print queue, nothing is reported back to the app. The preview
>       gets updated.
>     - If user clicks "Print" in the dialog, the PDF as it is currently
>       is sent off into the print queue, along with a list of the
>       settings for the CUPS options and the printer-specific options.
>       The choice of the queue, the CUPS option settings and the settings
>       of the printer-specific options are reported back to the
>       application, so that the application can save them with the
>       document to be used on the next printout.
> 
>    Suggested data formats and wire protocols:
> 
>     - Use DBUS for exchanging data between the app process and the
>       dialog process.
>     - Everything except the PDF data stream goes through the DBUS, for
>       the PDF data stream we use sockets.
>     - The application specific options and constraints with all choices,
>       tags, icons, can be submitted in PPD format, using the PPD
>       extensions of spec 1.

Not all application developers know about PPDs. To save them the hassle 
of reading the (really long) spec and the CUPS and OpenPrinting 
extensions, I propose to provide a simpler API for adding application 
specific options to the dialog. This would fit nicely into the dialog's 
DBUS API.

If necessary, we can additionally allow the PPD format.

>     - Option setting lists can be exchanged as simple key-value pairs
>       ("opt1=choiceA opt2=choiceC ...")
>     - Print queue choice and window ID can be exchanged as simple ASCII
>     - If ASCII text pieces are too big, exchange them gzipped
> 

