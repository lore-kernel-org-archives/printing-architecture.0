Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5195DA7B.2040501@gmail.com>
Date: Fri, 17 May 2013 07:17:26 -0700
Message-id: <2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<5195DA7B.2040501@gmail.com>
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

On 2013-05-17, at 12:21 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> On 05/17/2013 07:32 AM, Michael Sweet wrote:
>> 
>> cups-browsed is an interesting stop-gap solution, but I really, *really* don't think you want to be doing what you are doing - resolving a printer will wake it up.  Doing it on every computer will cause a LOT of network traffic and generally NOT provide a good user experience.
>> 
> 
> What cups-browsed is doing is as soon as avahi-daemon reports an IPP
> printer check whether it is a CUPS queue or a network printer and in the
> case of a network printer do a get-printer-attributes IPP request. This
> does not wake up my printers out of sleep mode.

Till, you haven't tested enough printers.  But ALL of the printers below *do* wake up, just not visibly.  Resolving and sending IPP requests to the printer requires that its marking engine components be powered up at some level in order to report media load status, etc.  The vendors are getting better about this, but if you tested against large office printers you would see pretty quickly that the power usage spikes.


> The printers tested here are
> 
> - HP Officejet Pro 8500 A910
> - HP LaserJet P3005
> - HP Color LaserJet CM3530 MFP
> 
> Also the printers get polled only once, not repeatedly, either when
> cups-browsed starts or when the printer is turned on.

FOR EVERY COMPUTER.  Not a big deal at home.  A very big deal in a company or school.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

