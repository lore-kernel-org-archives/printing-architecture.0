Message-ID: <485F46F4.5090106@gmail.com>
Date: Mon, 23 Jun 2008 08:47:16 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com> <485B474D.9070803@gmail.com>
	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>
In-Reply-To: <4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Printer setup tools: Automatically
	choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "Suffield, David" <david.suffield@hp.com>
Cc: Tim Waugh <twaugh@redhat.com>, "printing-foomatic@lists.linux-foundation.org" <printing-foomatic@lists.linux-foundation.org>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>

Suffield, David wrote:
> Hi,
> 
> I agree there are too many backends for the same printer. In our case I would like to see only one backend selection for HP printers.
>

It would be great to have only one backend per connection type, but it 
seems that printers have a lot of functionality which use 
manufacturer-specific low-level protocols and for that the manufacturers 
want to create their own backends. Manufacturers also work around 
hardware/firmware bugs by the software, which could also lead to a new 
backend.

> I would consider using the Mike's "usb" backend if it meets our needs. We need a backend that provides printing and status over various types of IO (ie: raw, 1284.4 and MLC). The IO can be very manufacturer and product specific and I don't see how the current "usb" backend can provide this functionality.

Here I can imagine that Mike Sweet has no problems to provide raw and 
1284.4 access with his backend, but AFAIK MLC is HP-specific and as far 
as I know Mike, he would not implement that.

For me this situation would mean that we need backend hinting in the PPDs.

> 
> I have looked at cups-1.4svn-r7679-source.tar.gz and I don't see the libusb support in the "usb" backend am I missing something?
> 
> Even if we cannot use Mike's "usb" backend I would greatly appreciate the libusb support. Right now hal_lpadmin is a pain because it does not understand backends that do not use usblp.
>

This is not hal_lpadmin (I am one of the upstream developers), it is HAL 
itself. HAL gives printer add and remove signals depending on signals 
from the usblp kernel module, it will not recognize printers at all if 
one would move the module away. HAL needs a printer recognition which 
works without the usblp module.

> In FC9 hal_lpadmin can turn a print queue off when usblp is removed because it assumes the printer is off line. The user has to manually restart the queue in order to print.
>

As a workaround I have excluded HP printers from being disabled by 
hal_lpadmin when they are turned off.

    Till
