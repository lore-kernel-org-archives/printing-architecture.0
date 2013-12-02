Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1385726905.2659.6.camel@rubik>
Date: Mon, 02 Dec 2013 11:33:37 -0500
Message-id: <4767D3BE-D15A-4EC2-A6BE-086EE9BCB54F@apple.com>
References: <1385726905.2659.6.camel@rubik>
Subject: Re: [Printing-architecture] [patch] CUPS 1.7.0: fix corrupted
	output	for USB printers
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

On Nov 29, 2013, at 7:08 AM, Tim Waugh <twaugh@redhat.com> wrote:
> When using the usb backend, if a usb-1 printer connected to a usb-2 hub
> runs out of paper during the job the print output will be corrupted.
> https://bugzilla.redhat.com/show_bug.cgi?id=1026914
> 
> This is due to using a 60 second timeout for the libusb_bulk_transfer()
> call. Timeout handling and retries are not reliable in every case, as
> described here:
> https://bugzilla.redhat.com/show_bug.cgi?id=1035863
> 
> Quoting from that report:
> ==>
> So TL;DR: this a known and unfixable problem, and the solution is to
> simply not cancel transfers (by setting a timeout) and then decide you
> want to finish the transfer after all. Either decide you want to really
> cancel the transfer, or just wait for it to finish normally.
> <==
> 
> Patch attached to change the timeout to 0 to wait indefinitely.

This mirrors what we do on OS X; will include this in CUPS 1.7.1.

Filed as:

    <rdar://problem/15564888> cups.org: Fix USB timeouts on Linux

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

