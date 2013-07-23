Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EECB0D.5050208@redhat.com>
Date: Tue, 23 Jul 2013 14:59:48 -0400
Message-id: <E0A06721-64EE-410E-B2E0-59C0EF132EF7@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
	<14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
	<51EECB0D.5050208@redhat.com>
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
Cc: Steve Bergman <sbergman27@gmail.com>, printing-architecture@lists.linux-foundation.org

Eric,

On 2013-07-23, at 2:27 PM, Eric Sandeen <sandeen@redhat.com> wrote:
> ...
> Data persistence does have performance implications, so I can't speak
> directly to your other experiences where it was problematic; there are
> techniques which can be used to minimize the overhead and/or minimize
> the need for data persistence in the first place.  But avoiding it
> altogether, with the end result of lost configurations, is IMHO 
> undesirable - so although I think application-critical data should
> be persisted in a way that allows graceful recovery from unforeseen
> events, I'm glad that you're at least considering a mechanism to
> enable it.


The thing is, we *used* to fsync and now we don't because of the performance issues. We added the .O/.N dance to help reduce the likelihood of lost config files.

Like I said, I am not convinced that fsync will solve this issue, but will get the new directive in there so at least people can try it out on a case-by-case basis.

Longer term we should be able to enable it by default again once cupsd itself won't block on it...

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

