Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <1373985228.4007.4.camel@rubik>
Date: Tue, 16 Jul 2013 10:48:41 -0400
Message-id: <3FEAB426-CCAA-4897-BDB2-66DBAEDF60E6@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
	<0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
	<1373985228.4007.4.camel@rubik>
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>

Tim,

On Jul 16, 2013, at 10:33 AM, Tim Waugh <twaugh@redhat.com> wrote:
> On Thu, 2013-07-11 at 09:11 -0400, Michael Sweet wrote:
>> Unfortunately, I was unable to coerce GIT-SVN into pulling from a
>> single repository. The CUPS SVN repository has been split since 2002
>> (easysw.com and apple.com), and so what I ended up doing is pulling
>> all of the snapshots and releases from easysw.com and the commits from
>> apple.com since late April/early May.
> 
> I haven't tried that. I would have probably done two git-svn clones, one
> for each SVN repository, then tried to merge the newer into the older...
> but the merge point would have to be *exactly* the same and I guess
> that's where you had problems with it.


Actually, I was able to synchronize the SVN revisions between the two repositories (cups.org had a lot more commits than the internal Apple repo), but the issue is that the directory structure of the internal Apple repo is different than the cups.org repo.

To make matters worse, it doesn't look like GIT-SVN is properly mirroring things with the current GIT repository and I think I need to redo the whole thing again to make GIT happy...

I am going to try doing some SVN hackery to backup and restore the cups.org repository to match the Apple SVN repo structure, in case that allows me to provide a fuller history of things...  And then see if I can provide a stable GIT-SVN mirror...

(If that doesn't work then I'll just have to pull the GIT mirror for now; I can't provide a SVN mirror of the internal SVN repository...)

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

