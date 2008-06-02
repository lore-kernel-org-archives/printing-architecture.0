Message-ID: <4843C442.9030905@gmail.com>
Date: Mon, 02 Jun 2008 11:58:26 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <openoffice.gsl.dev-48439926.8020004@gmail.com>
	<g20egt$p3c$1@staroffice-news.germany.sun.com>
In-Reply-To: <g20egt$p3c$1@staroffice-news.germany.sun.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [gsl-dev] The Common Printing Dialog
 and PDF as standard print job format in OpenOffice.org
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: dev@gsl.openoffice.org
Cc: Henrik Nilsen Omma <henrik@ubuntu.com>, chris.cheney@canonical.com, Matthias Klose <doko@ubuntu.com>, Jonathan Riddell <jriddell@ubuntu.com>, printing-architecture@lists.linux-foundation.org

Philipp Lohmann wrote:
> I have ot yet seen through all the references you gave, but some initial 
> questions occured to me.
> 
> - There does not seem to be an implementation either in gtk+ or KDE/Qt 
> mentioned yet. Would you want to use a gtk dialog then ? This would be 
> easily done when using the gtk plugin, however less trivial in the Qt 
> plugin or the native X plugin (because the latter two do not run any 
> kind of toolkit "native" event queue). Or would there be an 
> implementation using OOo's native toolkit VCL ? That would seem to 
> contradict the idea of having a system wide dialog however. OTOH this 
> would work out of the box on all our plaforms.
>

The dialog implementation is currently in the works by one GSoC student 
(Alexander Wauck). Another student (Lars Uebernickel) is working on a 
DBUS interface between dialog and application. The dialog will be a 
plug-in coupled via DBUS (and additional socket for high-volume data 
transfer). So no dialog needs to be coded for OOo, also OOo does not 
need to be linked with additional GUI toolkit libraries. Any dialog 
using Lars' interface will work with OOo, independently which GUI 
toolkit it uses.

Lars (CCed) will work together with you on adding the DBUS interface to 
OOo. Please let the right people contact him.

> - The dialog provides a preview feature. We can do this similar to the 
> current MacPort native dialog, which implementationwise comes up after 
> OOo has prepared the whole document for printing. This is a little 
> awkward because the whole document is held in memory for, however until 
> we change our applications to give up the "push" model they currently 
> employ, this is the only way we can provide this kind of preview 
> functionality. However how would the preview actually work ? What API 
> would be used to render the page content to the preview ?
> 

See

http://www.linuxfoundation.org/en/OpenPrinting/Specifications

and

http://www.linuxfoundation.org/en/OpenPrinting/Requirements

Lars will update these pages regularly.

> Actually the biggest advantage I see here would be that CUPS could now 
> support print jobs containing multiple page formats (like e.g. a letter 
> with one page being the envelope) as PDF has the possibility to size 
> every page. Will that be possible ? The other big advantage is to 
> reliably use transparency.

CUPS does not nail down the page size for the job. A change of the page 
size in the middle of a job should not be a problem if the printer is 
configured to select the tray by page size.

    Till
