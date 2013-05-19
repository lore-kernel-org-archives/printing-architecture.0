Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <m361yfsvhh.fsf@carbon.jhcloos.org>
Date: Sun, 19 May 2013 02:08:27 -0400
Message-id: <B5705E2C-0C03-4BA3-9A37-D13B1654F869@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<5195DA7B.2040501@gmail.com>
	<2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com>
	<m361yfsvhh.fsf@carbon.jhcloos.org>
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
To: James Cloos <cloos@jhcloos.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

James,

On 2013-05-18, at 7:45 PM, James Cloos <cloos@jhcloos.com> wrote:
>>>>>> "MS" == Michael Sweet <msweet@apple.com> writes:
> 
> MS> FOR EVERY COMPUTER.  Not a big deal at home.
> MS> A very big deal in a company or school.
> 
> Then those should use a central cups box (or perhaps a pair) which talk
> to the printers, and to which the cups clients on every other box talk.

But that still requires that cups-browsed not be running and auto-adding printers.

> Forcing the use of dbus to print is wrong.
> 
> (*Forcing* dbus is wrong for just about everything. ;^)


The reason I mention DBUS is that it a simple way to implement a per-user spooler that provides "temporary" print queues.  This could also be part of cupsd (it used to be for CUPS browsing), but I want to be careful not to re-introduce the problems of CUPS browsing.

The key is that auto-adding every printer you see has a huge overhead and isn't particularly useful for the user when there are more than a few printers - how many printers does one user print to in the typical case?  Browsing and adding-on-first-use is a much better solution since then you just manage those printers you use on a particular system.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

