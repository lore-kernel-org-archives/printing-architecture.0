Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1374570518.4832.2.camel@rubik>
Date: Tue, 23 Jul 2013 08:08:07 -0400
Message-id: <C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
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
To: Tim Waugh <twaugh@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, Eric Sandeen <sandeen@redhat.com>, sbergman27@gmail.com

Tim,

On 2013-07-23, at 5:08 AM, Tim Waugh <twaugh@redhat.com> wrote:
> On Mon, 2013-07-22 at 23:00 -0400, Michael Sweet wrote:
>> The problem with fsync() is that it is a blocking API. Blocking cupsd
>> (single-threaded daemon process) is *not* a good idea.
> 
> Aren't changes to printers.conf deferred anyway, to allow changes to be
> batched up? So it wouldn't be an fsync call every time the values
> change, but every time those values are written back -- which is much
> less often on a busy system.


They are batched up, but blocking every 30 seconds is still going to cause support calls about cupsd being unresponsive, and (I hope) more calls than "I lost my printer configuration because my system crashed" (which I really hope is not common; who wants to depend on flakey hardware?)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

