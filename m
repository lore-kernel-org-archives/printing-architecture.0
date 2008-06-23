Message-ID: <485F87B2.1070300@gmail.com>
Date: Mon, 23 Jun 2008 13:23:30 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com> <485B474D.9070803@gmail.com>	
	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>	
	<485F46F4.5090106@gmail.com>	
	<200806231052.m5NAqQp7031706@dsl092-065-009.bos1.dsl.speakeasy.net>
	<1214218973.4005.30.camel@cyberelk.elk>
	<200806231111.m5NBB7eO031799@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200806231111.m5NBB7eO031799@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Printer setup tools:
 Automatically	choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: Tim Waugh <twaugh@redhat.com>, printing-foomatic@lists.linux-foundation.org, david.suffield@hp.com, printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net

Does SUSE really use the hal-cups-utils? They require 
system-config-printer and AFAIK this is not available on SUSE.

    Till

Robert Krawitz wrote:
>    From: Tim Waugh <twaugh@redhat.com>
>    Date: Mon, 23 Jun 2008 12:02:53 +0100
> 
>    On Mon, 2008-06-23 at 06:52 -0400, Robert Krawitz wrote:
>    > This problem's not restricted to HP printers -- I have the same
>    > problem with Epson printers.  If I turn the printer off, the queue
>    > gets disabled, and then I have to manually re-enable the queue when I
>    > turn the printer back on.  This is with OpenSUSE 10.3.
> 
>    Which version of hal-cups-utils?
> 
> This is all I can find.  It may have been an unwarranted guess on my
> part that hal is responsible for this, but the effect is still there.
> 
> [1(rlk)|{!55}<dsl092-065-009>/home/rlk/sandbox/print-5.1/src/testpattern]
> $ rpm -qa |grep cups
> libgnomecups-lang-0.2.3-53.1
> cups-devel-1.2.12-22.15
> gnome-cups-manager-0.32cvs20060120-169.2
> libgnomecups-devel-0.2.3-53.1
> cups-client-1.2.12-22.15
> gnome-cups-manager-devel-0.32cvs20060120-169.2
> cups-libs-1.2.12-22.15
> cupsddk-1.2.0-27
> cups-autoconfig-0.1.0-27.2
> rpmkey-apcupsd-0.1-2
> cups-backends-1.0-126
> libgnomecups-0.2.3-53.1
> cups-drivers-1.2.12-28
> cups-1.2.12-22.15
> [1(rlk)|{!56}<dsl092-065-009>/home/rlk/sandbox/print-5.1/src/testpattern]
> $ rpm -qa |grep hal
> hal-palm-0.12.2-64.20
> phalanx-22-583
> hal-0.5.9_git20070831-13.2
> hal-devel-0.5.9_git20070831-13.2
> hal-resmgr-0.1_SVNr141-29
> 

