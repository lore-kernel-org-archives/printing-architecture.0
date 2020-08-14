Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 14 Aug 2020 13:45:11 +0200
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <e9cfb622-9618-05d3-ca65-86eab89787f1@gmail.com>
References: <b632639fbe44c484b718bfb5ff5c8f57@suse.de>
 <e9cfb622-9618-05d3-ca65-86eab89787f1@gmail.com>
Message-ID: <2926c01aeb59bfc6d8cb03768ffc9630@suse.de>
Subject: Re: [Printing-architecture] Will IPP printer devices and Printer
 Applications obsolete the cupsd?
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
Cc: printing-architecture@lists.linux-foundation.org


Hello Till,

thank you for your explanatory reply.
It is always much appreciated!

There is still a point that I do not understand:

On 2020-08-14 11:57, Till Kamppeter wrote (excerpts):
> On 14/08/2020 10:47, Johannes Meixner wrote (excerpts):
>> 
>> The cupsd is also an IPP server
>> but when clients communicate directly with
>> IPP printer devices or Printer Applications
>> I wonder what is left as use case to have a cupsd running?
> 
> There are two ways how a client can find available printers:
> 
> 1. As you mention, DNS-SD and IPP, finds physical network printers,
> Printer Applications, and remote CUPS queues (a CUPS daemon is also a
> certain kind of Printer Applications).
> 
> 2. The (new) CUPS API. cupsEnumDests() of libcups lists the printers
> available for the local (or default) cupsd.
> 
> User applications should use CUPS, find printers via method (2). Why?
> 
> SPOOLING: Printer Applications (and also network printers) are not
> required to spool jobs.

Those excerpts point to what I do not yet understand:

I was thinking it is an intended advantage that clients communicate
normally directly with IPP printer devices
(and with Printer Applications for legacy support)
so that there is direct communication with the "final printing target"
compared to indicect communication with what the actual printing does
via a proxy IPP server in between what cupsd would be in this case
if I understand things correctly.

Cf. the section
"CUPS: The server between user and printer" in
https://en.opensuse.org/Concepts_printing
that reads in particular (excerpt):
---------------------------------------------------------------------
Strictly speaking from the computer's internal point of view
it usually doesn't know about the actual printer devices
but only about print queues. What CUPS and application programs
call "printers" are usually not the actual printer devices but
only their associated print queues. This sketchy usage of the
word "printer" for the computer's internal representation can
lead to confusion when it is not clear for the user what it
actually means when CUPS or application programs show that
everything is o.k. with the "printer". Usually this means that
the state of the print queue is o.k. (e.g. "ready")
but the state of actual printer device could be different
at the same time (e.g. "out of paper").
---------------------------------------------------------------------

So when clients communicate with a proxy IPP target of the cupsd
and not with the final IPP target (i.e. the one that actually prints)
I wonder if "final printing target state forwarding" happens properly
i.e. that the "final printing target state" gets forwarded via
the proxy IPP target to the client?

In particular in case of spooling by a proxy IPP target
I assume "final printing target state forwarding" is impossible
in practice because the client had finished its IPP communication
with the proxy IPP target when some (possibly longer) time later
the proxy IPP server starts the actual printing via its own
IPP communication with the final printing target so there is no
"client <-> proxy IPP server <-> final printing target"
communication - instead there is first only a
"client <-> proxy IPP server"
communication and some time later there is a separated
"proxy IPP server <-> final printing target"
communication.

In general cf. RFC 1925 item 6a
"It is always possible to add another level of indirection."
https://tools.ietf.org/html/rfc1925

Side questions:

I would assume IPP printer devices have sufficient built-in memory
to do sufficient spooling for the intended use case of the device
(e.g. home user devices versus enterprise-ready devices)?

I would assume IPP provides functionality when an IPP server
cannot receive too much printing data (e.g. "out of memory")
so that clients can react/respond appropriately?


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer

