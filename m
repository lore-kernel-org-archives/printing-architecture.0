Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EE90D7.9070607@gmail.com>
Date: Tue, 23 Jul 2013 12:40:24 -0400
Message-id: <AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
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

On 2013-07-23, at 10:19 AM, Steve Bergman <sbergman27@gmail.com> wrote:
> ...
> There is a whole universe of use-cases out there which lies outside of "pristine datacenter" that I'm ever-surprised to see maintainers of various packages acting as though they were oblivious to. (No offense intended; CUPS is far from alone in this particular folly.)
> [END SOAPBOX]

With due respect, having worked on everything from bare bones 8-bit controllers through high-end multi-CPU/core servers/workstations,  I am well aware of such "real world" situations and the (often unrealistic) expectations involved.

> Obviously, we need to do some real life bench-marking, looking at the effect of proper fsyncs of printers.conf on performance.

Such benchmarks have already (but unintentionally) been done with similar-sized files on live OS X systems in the field.  The result of calling fsync caused delays of several seconds in all applications for several million affected users.

> I have a suitable real life retail server that handles receipt printing and display poles for 9 to 15 retail stores, depending upon the time of year. This time of year, I see about 2000 print jobs per hour during business hours. I'll patch the CUPS in RHEL6.4 based upon Eric's original suggestion in the bug report and see how it performs. (If anyone would prefer that I use another patch, I'd be happy to do that, too.)

Good luck.

From our own experience, calling fsync on a file on a network file system resulted in sporadic, long-duration delays (up to 60 seconds in our testing) while local spinning disks tended to be in the 1-2 second range.  SSDs actually had slightly longer delays depending on how much data was buffered up...

...

From the perspective of what is coming for future versions of CUPS, we *are* moving to a multi-threaded implementation to eliminate any blocking issues that prevent users from spooling jobs or getting capabilities or status.  We will also be separating state from configuration so that the configuration files are updated less often than the status files, and the loss of the status files can be easily recovered from.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

