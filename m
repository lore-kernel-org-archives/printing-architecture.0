Message-ID: <4811C5C7.2070803@gmail.com>
Date: Fri, 25 Apr 2008 13:51:35 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <481101A3.6030700@gmail.com> <481131B6.5050809@gmail.com>
In-Reply-To: <481131B6.5050809@gmail.com>
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
To: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, Peter Sikking <peter@mmiworks.net>, Jonathan Riddell <jriddell@ubuntu.com>

Marcelo Ricardo Leitner wrote:
> Hi there Till,
> 
> It's very nice to see kinda movement on this subject :)
> 
> There are some questions that didn't get clear to me:
> 
> 1) You said application will send the pdf document to the dialog via
> sockets. Having that said, is it really "sockets" or "pipes"? Note that
> sockets normally references connections & stuff, possibility to be on
> different machine, ..  while pipes doesn't.
>

Yes, can be also a pipe.

> 2) After the document is transfered to the dialog, where will it be
> stored? We can do it in memory or on temporary files. In memory sounds
> killer for medium-large documents or small boxes, while storing in
> temporary files kinda makes the previous step unnecessary.
> 

That's true. In the data set sent by DBUS the temporary file name can be 
given and then the dialog simply accesses the fui

> Performance may strike here, considering preview updates which would
> require the entire document to be re-transferred.
> 

Before "Print" in the dialog is clicked one should perhaps only generate 
PDF from the one page currently visible in the preview and let the 
dialog request the other pages from the app when the user is navigating 
in the preview, and naturally when he clicks "Print".

> 3) You said printer-specific options aren't going to be reported back
> immediately to the application, but after the job is printed. How are we
> going to know which one if printer-specific and which one is
> application-specific?
> 

Printer-specific options come from the PPD (the dialog polls the PPD 
from CUPS), application-specific options are submitted by the 
application along with the job, and CUPS options the dialog knows 
already. So it is no problem for the dialog to distinguish the origins 
of the options.

> Because there are some options that raise doubts, like duplex/book
> printings on enhanced printers. For example, consider you are printing a
> financial report from kmymoney. You don't have access to margin setups,
> while the application could handle them a bit better for the duplex/book
> printing. (due to the left/right margings becoming different)
> 

If a printer-based duplex/book functionality is used, the margins are 
usually not changed, or the printer chnages them slightly when shrinking 
the pages to fit two on one sheet. When activating book printing or N-Up 
you will not need to request a changed document from the application.

In certain apps it makes sense to report some standard options, like 
Duplex, so that the app can switch to assymetric margins. Here an app 
could perhaps submit a list of options for which the dialog should send 
back the settings on each change.

> Still, application could change something at the document if you decide
> to print in B/W instead of colors, like for example making all text
> plain black (so you won't get unreadable grays).
> 

In this case the app would tell that it would re-generate the PDF on the 
ColorMode option.

> 4) You said the application would be storing used values for future
> re-usage. Is that the optimal? Considering every app would have to do
> it, maybe it would be interesting to have the dialog storing it. We
> could spawn the dialog informing a domain and when the dialog boots up,
> it would fake events while restoring our saved setup, thus informing the
> app about it transparently.
> 

Imaging you have a photo app from which you always print in color on an 
inkjet and a word processor from which you always print on a bw laser. 
Also option settings can depend very much on the document. So storing 
printer settings along with a document is not such a bad idea.

> 5) "If ASCII text pieces are too big, exchange them gzipped"
> Considering we may be transferring the whole document via socket/pipes,
> this idea may not be really useful or am I missing something here?

Option definitions and settings are transferred as plain text. If this 
data stream gets too long (should not be the case) one could transfer it 
gzipped.

    Till
