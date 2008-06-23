Message-ID: <485F6AA6.7000103@gmail.com>
Date: Mon, 23 Jun 2008 11:19:34 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com> <485B474D.9070803@gmail.com>
	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>
	<485EC26E.7090100@apple.com>
In-Reply-To: <485EC26E.7090100@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Printer setup tools:
 Automatically choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael R Sweet <msweet@apple.com>
Cc: Tim Waugh <twaugh@redhat.com>, "printing-foomatic@lists.linux-foundation.org" <printing-foomatic@lists.linux-foundation.org>, "Suffield,
	David" <david.suffield@hp.com>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gimp-print-devel <gimp-print-devel@lists.sourceforge.net>

Michael R Sweet wrote:
> Suffield, David wrote:
>> ...
>> I would consider using the Mike's "usb" backend if it meets our
>> needs. We need a backend that provides printing and status over
>> various types of IO (ie: raw, 1284.4 and MLC). The IO can be very
>> manufacturer and product specific and I don't see how the current
>> "usb" backend can provide this functionality.
> 
> Our current focus is on supporting libusb; if necessary, we can add
> a side-channel request to set the IO mode, but otherwise I suspect
> we can use the default mode supported by the device.
> 
> We already support a variety of side-channel data - 1284 device ID,
> centronics bits, bidirectional support, SNMP OIDs (for network
> printers), etc.
>

Will this really cover all manufacturer-specific access methods?

>> I have looked at cups-1.4svn-r7679-source.tar.gz and I don't see the
>> libusb support in the "usb" backend am I missing something?
> 
> libusb support is part of STR #1575, which hasn't been merged to
> trunk yet:
> 
>     http://www.cups.org/str.php?L1575
> 

Will it be merged for CUPS 1.4?

    Till
