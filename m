Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1383325362.2522.10.camel@rubik>
Date: Mon, 04 Nov 2013 11:27:07 -0500
Message-id: <801B1C5D-B164-46EC-BE59-9708D8143880@apple.com>
References: <1383325362.2522.10.camel@rubik>
Subject: Re: [Printing-architecture] [patch] cups-1.7.0: stringpool
	corruption	fix
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Tim,

Thanks, looking into this now and have filed this as:

    <rdar://problem/15382819> cups.org: String pool corruption bug


On Nov 1, 2013, at 1:02 PM, Tim Waugh <twaugh@redhat.com> wrote:

> There is a long-standing stringpool corruption issue in printers.c.
> 
> Attribute values are stored in the global stringpool (implemented in
> cups/string.c), which is reference-counted storage for strings. Strings
> are stored in a sorted, unique array (cups_array_t, implemented in
> cups/array.c).
> 
> If the array is found to be unsorted, or a duplicate is found, the
> underlying cups_array_t object switches into "non-unique" mode and
> stores new strings by adding to the pool rather than incrementing the
> reference count for an existing string (see the cups_array_add()
> function).
> 
> The accessor functions for the stringpool return "char*" types, but
> these are strings which must not be modified -- doing so will trigger
> the behaviour described above.
> 
> In scheduler/printers.c, there are a couple of places which modify
> attribute values in-place. Attached is a patch to fix them.
> 
> Tim.
> */
> 
> <cups-stringpool-corruption.patch>_______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

____________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

