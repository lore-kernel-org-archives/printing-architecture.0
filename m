Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51B8FBA7.6060502@gmail.com>
Date: Thu, 13 Jun 2013 10:05:49 -0400
Message-id: <8A55BD79-B2CA-4306-BABA-497F53FAC9B0@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<5195DA7B.2040501@gmail.com>
	<2A8076E6-4CB7-4F70-A92B-AF1F9F0F3FE0@apple.com>
	<m361yfsvhh.fsf@carbon.jhcloos.org>
	<B5705E2C-0C03-4BA3-9A37-D13B1654F869@apple.com>
	<51B8FBA7.6060502@gmail.com>
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, James Cloos <cloos@jhcloos.com>

Till,

This would be a fine solution until cupsd (or some standard intermediary) does it.

The DBUS service would need to be a system-level service (root or a user account in one of the CUPS system groups) in order for it to auto-add/remove queues, but otherwise it would do the trick.


On 2013-06-12, at 6:52 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> On 05/19/2013 08:08 AM, Michael Sweet wrote:
>> 
>> The reason I mention DBUS is that it a simple way to implement a per-user spooler that provides "temporary" print queues.  This could also be part of cupsd (it used to be for CUPS browsing), but I want to be careful not to re-introduce the problems of CUPS browsing.
>> 
>> The key is that auto-adding every printer you see has a huge overhead and isn't particularly useful for the user when there are more than a few printers - how many printers does one user print to in the typical case?  Browsing and adding-on-first-use is a much better solution since then you just manage those printers you use on a particular system.
> 
> What about cups-browsed offering a D-Bus service to create a temporary
> print queue, queue creation being triggered when a Bonjour-discovered
> network printer is selected in the print dialog and "Print" is selected.
> Queues are removed if they stay for a time X without job (preferred), on
> another D-Bus command, or on shutdown of cups-browsed. These queues get
> visible for other users, but this is no problem if they look the same in
> the other user's print dialog then. The job of the other user gets into
> the same temporary queue then and correctly waits until the first user's
> job finishes.
> 
> This would make all print spooling be done by CUPS and not require any
> extra per-user or per-dialog spooler. Also if different users send jobs
> shortly one after the other, the jobs get correctly queued and cannot
> mix up.
> 
> WDYT?
> 
>   Till
> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

