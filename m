Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <51EFA853.8030501@redhat.com>
Date: Wed, 24 Jul 2013 07:39:37 -0400
Message-id: <DAF84F05-8CAC-4D00-9B6C-3EF4B0A99D9B@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
	<1374570518.4832.2.camel@rubik>
	<C01D5828-4CCD-4A70-8549-B976AE80DF4C@apple.com>
	<51EE90D7.9070607@gmail.com>
	<AB1EE3DA-E24E-489D-B1A8-FED07237D651@apple.com>
	<51EEBF83.2090006@gmail.com>
	<14E6A268-7B57-4F95-9384-647E0A8D3C47@apple.com>
	<51EECDF8.9070209@gmail.com>
	<000AC9EF-2754-4A7D-805B-4832B50EB57A@apple.com>
	<51EEECD8.4030002@gmail.com> <51EFA853.8030501@redhat.com>
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
To: Jiri Popelka <jpopelka@redhat.com>
Cc: printing-architecture@lists.linux-foundation.org, Steve Bergman <sbergman27@gmail.com>, Eric Sandeen <sandeen@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>

Jiri,

Yes, that would be the alternative, although we need to be careful - delete the last printer and then do a clean shutdown.  If we don't do anything about it, starting up cupsd might load a previous printers.conf file with old printer definitions but without the associates PPDs so you'd have a bunch of "zombie" raw queues...

Assuming that calling fsync will fix the truncated file issue on Linux (at least), let's focus on *that* and see where it takes us.

And just to make sure this problem goes away for good in the future, I've filed the following bug to track changes in cupsd to how we persist printer/class configuration:

    <rdar://problem/14532427> cups.org: CUPS 2.0 - separate configuration from state and persist configuration across crashes

My goal (and I've added corresponding comments to the bug) is to move away from the monolithic printers.conf and classes.conf files to separate configuration and state files.  Not only will this minimize the likelihood of a crash causing complete loss of all print queues, but it will also allow us the luxury of using fsync (and whatever other platform-specific incantation) to ensure that the infrequently-changing configuration bits are carefully persisted.  I haven't made any specific implementation decisions yet (do we use a database engine like SQLite, separate files per queue, file versioning, etc.) but I *do* want to speed up cupsd startup with large numbers of queues and address transient queues for IPP Everywhere/AirPrint.


On 2013-07-24, at 6:11 AM, Jiri Popelka <jpopelka@redhat.com> wrote:

> As I mentioned in the initial mail, I've had a patch
> https://bugzilla.redhat.com/attachment.cgi?id=776945
> which makes cupsdOpenConfFile() read filename.O in case filename is truncated to zero.
> Previously the filename.O was read only if filename had not existed.
> Wouldn't that be an alternative ?
> 
> --
> Jiri
> 
> On 07/23/2013 10:51 PM, Till Kamppeter wrote:
>> As a measure of automatic recovery one could perhaps let the startup
>> script of CUPS check whether printers.conf is zero length and if so,
>> copy printers.conf.O to printers.conf.
> 

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

