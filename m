Message-ID: <489307A9.1020504@gmail.com>
Date: Fri, 01 Aug 2008 14:55:05 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <200807310223.m6V2NkAv006976@dsl092-065-009.bos1.dsl.speakeasy.net>
	<48918374.8080404@gmail.com>
	<200807311309.m6VD9s5n018013@dsl092-065-009.bos1.dsl.speakeasy.net>
	<p06110400c4b793ad4cd1@[192.168.1.102]>
	<200807312114.m6VLEhgd004613@dsl092-065-009.bos1.dsl.speakeasy.net>
	<489230B6.8050306@gmail.com>
	<200807312156.m6VLusVF004364@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4892B6A9.90609@gmail.com>
	<200808011134.m71BYXdK003793@dsl092-065-009.bos1.dsl.speakeasy.net>
	<4892FDDB.5060104@gmail.com>
	<20080801123314.GA26452@nagini.vm.bytemark.co.uk>
In-Reply-To: <20080801123314.GA26452@nagini.vm.bytemark.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Common Printing
 Dialog: PPD extension specs updated
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Roger Leigh <rleigh@whinlatter.ukfsn.org>
Cc: Robert Krawitz <rlk@alum.mit.edu>, printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, jriddell@ubuntu.com

Roger Leigh wrote:
> On Fri, Aug 01, 2008 at 02:13:15PM +0200, Till Kamppeter wrote:
>> Still all English. I have looked into the strace output and it seems to 
>> look for the translations in the system and not in the source tree:
>>
>> ----------------------------------------------------------------------------
>> ...
>> open("/usr/lib/locale/cs.UTF8/LC_IDENTIFICATION", O_RDONLY) = -1 ENOENT 
>> (No such file or directory)
> 
> This stuff isn't gutenprint's LC_MESSAGES, it's the system LC_* being
> loaded by libc (probably in its startup code).  This is fine.
> 
>> There must be some possibility to provide an appropriate search path. 
>> Would be bad if one would need to set a symlink from the source tree 
>> into the system (would make distro packaging impossible).
> 
> The search path is specified directly in genppd.c.  See baselocaledir
> with relation to bindtextdomain/textdomain and the -c option (which
> Robert's example used).  If this isn't working, the debug/verbose option
> and strace should show you why.
> 
> Note: you *must* have all the locales being used available, which are
> generated with localedef/locale-gen.  They should probably all be UTF-8
> locales as well (do we enforce this?).

Probably that is the problem. I must install them and make them build 
dependencies for any kind of package I make (Ubuntu, LSB). Does one 
really always need to install all locales to create internationalized 
packages?

    Till



