Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1384339124.2286.3.camel@rubik>
Date: Wed, 13 Nov 2013 09:52:27 -0500
Content-transfer-encoding: quoted-printable
Message-id: <CBCFE5EE-A97F-4732-8EDC-A0F7E4145389@apple.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
	<5282AA4D.9010201@gmail.com> <1384339124.2286.3.camel@rubik>
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Tim Waugh <twaugh@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

Tim,

WRT GTK+ and blocking APIs in general, it is really really hard to get =
away from blocking behavior when you are dealing with networking.  The =
strategy we opted for was to support timeouts and asynchronous =
cancellation of blocking/semi-blocking calls so that applications and =
toolkits can wrap those calls appropriately.

Ideally everyone would adopt Grand Dispatch (patches were provided to =
the GCC folks a long time ago) which essentially adds singletons =
(blocks) to C/C++/ObjC along with lighter-weight threads and basic =
scheduling queues (async for running blocks on parallels threads and =
sync for serializing a series of blocks on a particular thread).  This =
greatly simplifies thread management and offers a compelling replacement =
for callback functions, thus the support in libcups for them=85

But in the meantime, GTK+ and others should be doing printer discovery =
and queries on a separate thread from the main thread, otherwise they =
WILL block even if every API CUPS provided was =93non-blocking=94 - =
networks are unpredictable.

For the record, we *did* consider making cupsGetDests run a background =
thread doing the equivalent of cupsEnumDests so that callers would get a =
current snapshot of the available printers.  However, doing it without =
having the application =93opt in=94 would cause a lot of problems for =
programs like Firefox that think it is OK to unload a dynamic library =
like libcups that is not designed for such use (few are), and providing =
an opt-in method (cupsStartEnumDests or something like that) isn=92t =
much better - code changes are still required, so why not just use the =
new API in the first place?


On Nov 13, 2013, at 5:38 AM, Tim Waugh <twaugh@redhat.com> wrote:

> On Tue, 2013-11-12 at 23:23 +0100, Till Kamppeter wrote:
>> Another question is whether cupsEnumDests() can run in parallel with
>> other, independent services, in my case Tim Waugh's backward
>> compatibility CUPS browsing/broadcasting.
>=20
> It isn't meant to. The BrowsePoll and Browsing(send) support is for
> legacy sites, and Browsing(recv) is a stop-gap until all the dialogs =
use
> cupsEnumDests() or the equivalent. For GTK+, it uses its own
> implementation (as cupsEnumDests is blocking -- Mike, please stop
> writing blocking interfaces ;-) ). For Qt, I've written a patch to use
> cupsEnumDests():
> https://bugzilla.redhat.com/show_bug.cgi?id=3D980952
>=20
> Tim.
> */
>=20

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

