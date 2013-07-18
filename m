Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51E858BE.8090009@gmail.com>
Date: Thu, 18 Jul 2013 19:44:26 -0400
Message-id: <28BC5C41-0570-40E3-96B8-1B8BD672DD14@apple.com>
References: <D87733EE-8A2E-4F85-9978-715E38D8A22F@apple.com>
	<51E82B1D.7070007@gmail.com>
	<9CB486A0-27B4-4A4C-8017-05A9DD56C978@apple.com>
	<51E858BE.8090009@gmail.com>
Subject: Re: [Printing-architecture] RFC: Patch for (libusb-based) USB
 backend for quirks files
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Gutenprint Mailing List <gimp-print-devel@lists.sourceforge.net>

Till,

On 2013-07-18, at 5:06 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 07/18/2013 09:05 PM, Michael Sweet wrote:
>> Till,
>> 
>> On 2013-07-18, at 1:51 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>> ...
>>> What I would like to see is the possibility to have quirk rules (or at
>>> least blacklisting) also for other backends.
>> 
>> Such as?
>> 
> 
> There printers claiming to support IPP but they do not work with the
> "ipp" backend. If one would blacklist them for the IPP backend, they
> would automatically get used with the "socket" or "lpd" backend.

Not sure how we would do that automatically; unless you are using Bonjour to find the printers, there is no way for the IPP or SNMP backends to know whether they can redirect to LPD or socket.  And for Bonjour the priority in the TXT record can already be used to prefer LPD or socket (most older printers with buggy IPP stacks do anyways)

>>> Also the prossibility to
>>> prioritize backends via a directory of files would be great.
>> 
>> The problem with priorities are:
>> 
>> 1. How do you identify identical devices?
> 
> For USB by the device ID and the serial number, for network by
> determining the printer's IP address. We assume that in production
> environments no printer is connected by network and by USB at the same time.

In order to get the printer's IP addresses (yes, multiple ones) you need to resolve it. For Bonjour that means waking the printer up (or all printers, in the case of discovery). For obvious reasons I (and all of Apple) is against that kind of solution.

>> 2. Whose priority wins? (the user's priority, the manufacturer's priority, the developer's priority, the system's priority, the site's priority?)
>> 
> 
> Default would be the degree of sophistication (or usefulness?) of the
> backends: IPP > Socket > LPD. Ech backend gets a priority index, for
> example 300 for IPP, 200 for Socket, and 100 for LPD. Quirk rule files
> could for given printer models blacklist them for a backend or change
> the priority index for a backend. Third-party backends could place
> themselves in the default priority order by having their own priority index.

Really, I don't want to encourage more network backends for special protocols that vendors think they need.  I'd much rather see any special backends (should they actually be needed) report special device IDs that can be used to match them to their corresponding driver.  And printers that need to use special protocols should not advertise support for any of the standard protocols since they obviously don't work.

> Quirk rules could also activate workarounds for incompatible printers in
> the IPP backend.

Um, no.  I'm quite done adding workarounds for broken IPP implementations.  Every workaround makes it harder to maintain the backend, and in 1.6 I did a sweep and removed all but a couple of the most common and least costly to support.

Moreover, most printers that support IPP also support firmware upgrades, so we can't have a simple quirks file approach to workaround bugs anyways - you'd need to know the firmware name/version (sometimes available via SNMP, hopefully available in the near future over IPP) as well as the make-and-model information.  The same can't be said for USB printers which is why I am OK with the quirks list.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

