Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EEA872.4070009@redhat.com>
Date: Tue, 23 Jul 2013 13:51:18 -0400
Message-id: <E6552F5C-7182-4D8B-AEAB-B98A908BE5E5@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<51EE1183.5080704@redhat.com>
	<C53730A1-EBB0-46E6-AB7E-106D90B3D093@apple.com>
	<51EEA872.4070009@redhat.com>
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
To: Eric Sandeen <sandeen@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, sbergman27@gmail.com

Eric,

On 2013-07-23, at 11:59 AM, Eric Sandeen <sandeen@redhat.com> wrote:
> ...
> Well, given the choice between safe and fast, IMHO safe is usually
> the best choice.  I can't imagine that an fsync of a few-K file
> every 30s is going to hurt that much.
> 
> Is this based on a suspicion or have you actually seen problems?

In OS X 10.7/10.8 we had millions of users affected by a previously undetected fsync issue.  In the final analysis we found that the reason for the sudden reports was that fsync takes longer on systems with SSDs due to the larger buffering that typically occurs to minimize the number of write cycles used overall.

> ...
> p.s. this patch should almost DTRT, although it should sync
> the dir containing the file as well, after the .N / .O filename juggling.

You probably also want to call cupsFileFlush(fp) to ensure that the remaining data has been written.

I will consider adding a cupsd.conf directive to force an fsync call (default off) in the 1.7.0 release.  Filed as the following Apple bug:

    <rdar://problem/14523043> cups.org: Add SyncOnClose directive to fsync calls prior to closing .conf file updates.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

