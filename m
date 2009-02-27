Message-ID: <49A843CA.2010703@gmail.com>
Date: Fri, 27 Feb 2009 16:49:30 -0300
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <49A81F7B.5010903@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB4515BEDB0@etd1.etd.ussj.ricoh.com>
	<49A83B3C.4060909@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB4515BEDB2@etd1.etd.ussj.ricoh.com>
In-Reply-To: <8B8709E6C8B8784583FA9C7C013CB4515BEDB2@etd1.etd.ussj.ricoh.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] REMINDER: Project ideas for the
 GoogleSummer of Code 2009
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: George Liu <george.liu@ricoh-tech.com>
Cc: printing-architecture@lists.linux-foundation.org

George Liu wrote:
>> Lars is ... patching the toolkits to get the D-Bus interface in.
> 
> 1. Does it mean that the GTK+ Print dialog portion will be moved out of GTK+ library and be build into a utility (stand alone program)?

The print dialog will stay in GTK+. There will only get the D-Bus 
interface inserted so that the GTK+ dialog can easily get replaced by 
another dialog.

> 2. Does GTK+ tool kit currently depends on D-Bus(libdbus)?

I don't know. Perhaps it uses D-Bus already for other things.

> 3. What if there's no D-Bus Daemon on the distribution (Nokia Tablet, which uses Gtk+ tool kit, for example). Any fall-back solutions?

The D-Bus part will be ptional. You will be able to build GTK+ with and 
without D-Bus. Or there will be a fallback. If the dialog is called and 
no dialog gets found via D-Bus one could do a fallback to the native 
GTK+ dialog.

> 4. How to register my CPDAPI server application with D-Bus? (Switch from gtk+ print dialog to QT print dialog, for example)

Here I cannot help. Lars? Can you answer this question?

    Till

