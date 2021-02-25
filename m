Return-Path: <jsmeix@suse.de>
MIME-Version: 1.0
Date: Thu, 25 Feb 2021 11:30:48 +0100
From: Johannes Meixner <jsmeix@suse.de>
In-Reply-To: <4978914c-e66a-3084-251f-4b72ad364eaf@gmail.com>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
 <4978914c-e66a-3084-251f-4b72ad364eaf@gmail.com>
Message-ID: <4cd209b5fc90aa7ccfc8e1a7c380f982@suse.de>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org


Hello,

I have a general understanding problem and questions
regarding how Printer Applications are meant to work.

In
https://openprinting.github.io/upcoming-technologies/01-printer-application/
I understand that a Printer Application emulates
a driverless IPP printer so that a printer device
appears to "others" as IPP Everywhere printer
which means "others" detect and communicate with
that (emulated) IPP Everywhere printer via network.

Basically a Printer Application "wraps" a printer device
into an IPP Everywhere network printer.

What I do not understand is how a Printer Application
detects and communicates with its associated
actual printer device

For example printers that have both a USB interface
and a network interface with several network protocols
like TCP socket, LPD, (dumb) IPP (no IPP Everywhere).

How does a Printer Application implement
detection and communication with such devices?

Does each and every Printer Application implement
it for each and every combination of methods?

Or in other words:
In traditional CUPS device detection and communication
was separated from the "driver" functionality by having
separated CUPS backends for different access methods
that are also separated from the other CUPS filters.
How is that done with Printer Applications?


On 2021-02-24 14:51, Till Kamppeter wrote:
> On 24/02/2021 13:01, Johannes Meixner wrote:
>> 
>> if I understand it correctly the basic idea behind is
>> that for printer setup inside a container
>> (I use 'container' as generic name for any isolated environment
>>   that has no direct access to the outer world e.g. also chroot)
>> udev-configure-printer acts as proxy for outer world access.
> 
> No, each container (Printer Application) has access to the printers
> and with the two methods I described can observe whether a printer
> is coming or going.

I am really not a container expert so I may ask obvious things:

I do not understand how a Printer Application that runs inside
a container "has access" to printer devices that exist outside
of the container - i.e. how something inside a container
"has access" to e.g. USB device nodes that should normally
be only accessible from the container host system?

Or in other words:
If "just installing" a containerized Printer Application
makes USB device nodes on the container host system
"just accessible" from within the container
I would consider this as a major security violation.
When I install a containerized application I would expect
that there are no automated holes in its isolation.
I think all holes in container isolation require explicit
user confirmation (at least I hope this is the standard).
E.g. I may have two USB printers (perhaps even two same models)
and I may want to allow access from within a containerized
Printer Application to only one exactly specified printer.


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5 - 90409 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Felix Imendoerffer
