Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EEBF83.2090006@gmail.com>
Date: Tue, 23 Jul 2013 14:16:08 -0400
Message-id: <14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Steve Bergman <sbergman27@gmail.com>
Cc: Eric Sandeen <sandeen@redhat.com>, printing-architecture@lists.linux-foundation.org

Steve,

On 2013-07-23, at 1:38 PM, Steve Bergman <sbergman27@gmail.com> wrote:
> On 07/23/2013 11:40 AM, Michael Sweet wrote:
>> With due respect, having worked on everything from bare bones 8-bit controllers through high-end multi-CPU/core servers/workstations,  I am well aware of such "real world" situations and the (often unrealistic) expectations involved.
> 
> There is nothing "unrealistic" about expecting not to lose configuration info for 112 printers the majority of times that a server shuts down uncleanly. That's something I was able to take for granted for over a decade. Punting the issue by saying it's an "unrealistic expectation" is not very convincing.

In this case the unrealistic expectation is that if you pull the plug on a running system that you won't lose any data.  Systems that offer that level of assurance are designed accordingly and generally include some form of backup power that will allow pending writes to complete.

Even if we added fsync calls in cupsd, that still doesn't guarantee that the data will actually get on disk/flash.  For that we need to sync() and do some lower-level stuff to ensure that the hardware is told to write the data immediately, and then wait to hear back that the data has been written.

So, set your expectations accordingly - fsync might not fix this issue for you.

>> Good luck.  From our own experience, calling fsync on a file on a network file system resulted in sporadic, long-duration delays (up to 60 seconds in our testing) while local spinning disks tended to be in the 1-2 second range.  SSDs actually had slightly longer delays depending on how much data was buffered up...
> 
> I'm taking that to mean that you're not really interested in what my results show, and that you consider this to be a RH problem and not a general CUPS problem. So I'll be posting the results to the RH Bugzilla ticket.

Take this to mean that we have operational experience that makes us both leery of enabling fsync and recognize that fsync isn't a magic bullet for the problem you are experiencing.

> FWIW, PostgreSQL makes the fsync a configurable option. Not fsync'ing by default is, in my opinion irresponsible of cupsd.

Your opinion might be different if you were one of the millions affected by the fsync issues we previously had.

> An option should at least be provided to allow responsible administrators to tell it to handle its configuration file updates properly. (Yes, I understand that you probably try to keep the number of options down. But this is a very basic and important issue.)

I don't agree with your wording, but as I mentioned in a separate message I have filed a bug to track adding a SyncOnClose directive in 1.7.0.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

