Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EE1183.5080704@redhat.com>
Date: Tue, 23 Jul 2013 08:05:06 -0400
Message-id: <C53730A1-EBB0-46E6-AB7E-106D90B3D093@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<51EE1183.5080704@redhat.com>
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

On 2013-07-23, at 1:15 AM, Eric Sandeen <sandeen@redhat.com> wrote:
>> ...
>> The problem with fsync() is that it is a blocking API.  Blocking
>> cupsd (single-threaded daemon process) is *not* a good idea.
>> 
>> Future versions of cupsd will be multi-threaded where we can look at
>> calling fsync or fcntl(fd, F_FULLSYNC), but adding fsync calls now
>> will just cause more problems that it will solve.
> 
> How often is the file rewritten?  TBH I didn't expect that the cups
> daemon would be terribly latency-sensitive, at least not to the point
> where losing it was better than taking the perf hit from an fsync...


printers.conf gets rewritten any time the state or configuration changes.  We *do* try to minimize the number of writes by coalescing them into 30 second snapshots, but that will still be often enough that I wouldn't want to chance adding a call that could block for a long time (if printers.conf is on a network filesystem, for example).

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

