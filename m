From: Lars Uebernickel <larsuebernickel@gmx.de>
In-Reply-To: <49A843CA.2010703@gmail.com>
References: <49A81F7B.5010903@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB4515BEDB0@etd1.etd.ussj.ricoh.com>
	<49A83B3C.4060909@gmail.com>
	<8B8709E6C8B8784583FA9C7C013CB4515BEDB2@etd1.etd.ussj.ricoh.com>
	<49A843CA.2010703@gmail.com>
Content-Type: text/plain
Date: Sat, 28 Feb 2009 09:35:02 +0100
Message-Id: <1235810102.6245.13.camel@chimera>
Mime-Version: 1.0
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
Cc: printing-architecture@lists.linux-foundation.org, Till Kamppeter <till.kamppeter@gmail.com>

On Fri, 2009-02-27 at 16:49 -0300, Till Kamppeter wrote:
> George Liu wrote:
> >> Lars is ... patching the toolkits to get the D-Bus interface in.
> > 
> > 1. Does it mean that the GTK+ Print dialog portion will be moved out of GTK+ library and be build into a utility (stand alone program)?
> 
> The print dialog will stay in GTK+. There will only get the D-Bus 
> interface inserted so that the GTK+ dialog can easily get replaced by 
> another dialog.
> 
> > 2. Does GTK+ tool kit currently depends on D-Bus(libdbus)?
> 
> I don't know. Perhaps it uses D-Bus already for other things.
> 
> > 3. What if there's no D-Bus Daemon on the distribution (Nokia Tablet, which uses Gtk+ tool kit, for example). Any fall-back solutions?
> 
> The D-Bus part will be ptional. You will be able to build GTK+ with and 
> without D-Bus. Or there will be a fallback. If the dialog is called and 
> no dialog gets found via D-Bus one could do a fallback to the native 
> GTK+ dialog.
> 
> > 4. How to register my CPDAPI server application with D-Bus? (Switch from gtk+ print dialog to QT print dialog, for example)
> 
> Here I cannot help. Lars? Can you answer this question?

The CPDAPI server will not run all the time. Instead, it will make use
of D-Bus' service feature, which starts a process when a specific
interface has been requested by a client application. In order to
register such a service, a .service file needs to be put
into /usr/share/dbus-1/services (on ubuntu, this might differ a bit for
other distributions).

In the CPDAPI case, it might look something like this:

  [D-Bus Service]
  Name=com.openprinting.PrintManager
  Exec=/usr/bin/cpd-dialog-gtk

Changing the dialog is simply a matter of changing the 'exec' line.

    Lars



