Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <519537F0.8020405@gmail.com>
Date: Thu, 16 May 2013 22:32:06 -0700
Message-id: <FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
References: <519537F0.8020405@gmail.com>
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>

Till,

On May 16, 2013, at 12:48 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> ...
> Probably the best way is really the system service cups-browsed for
> discovering, setting up, and taking down Bonjour/IPP network printers
> then, and not the dialog ...

cups-browsed is an interesting stop-gap solution, but I really, *really* don't think you want to be doing what you are doing - resolving a printer will wake it up.  Doing it on every computer will cause a LOT of network traffic and generally NOT provide a good user experience.

> ...
> Mike, WDYT? As I understand all this, local spooling is needed for every
> Bonjour-discovered IPP printer as it can suddenly disappear or stop
> taking data. Am I right? So if the dialog sends jobs directly to a
> remote printer/print server, it can easily block. Is this correct?

You need some sort of local spooling, but it need not be cupsd doing the spooling. Consider writing a small DBUS-based spooler that provides UI for monitoring and canceling the job.  This spooler could also handle the basic conversion from PDF to PWG Raster and could despool to cupsd or direct to a printer.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

