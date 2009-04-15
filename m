Message-ID: <49E5C95B.4080304@gmail.com>
Date: Wed, 15 Apr 2009 13:47:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
	<49E51AB7.2010902@gmail.com>
	<200904150120.n3F1Kg95023375@dsl092-065-009.bos1.dsl.speakeasy.net>
	<49E55C8C.2010500@apple.com>
	<200904151139.n3FBdmZJ030596@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200904151139.n3FBdmZJ030596@dsl092-065-009.bos1.dsl.speakeasy.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Printing-summit] Issue list from HP
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
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, martin.pitt@ubuntu.com, Michael R Sweet <msweet@apple.com>

Robert Krawitz wrote:
>    Date: Tue, 14 Apr 2009 21:03:24 -0700
>    From: Michael R Sweet <msweet@apple.com>
> 
>    Robert Krawitz wrote:
>    > ...
>    > There is a CUPS API call named ppdPageSize that should get the
>    > *actual* named paper size.  We had this kind of issue with Gutenprint
>    > a while back; that turned out to be the solution.
> 
>    There is also a cupsPageSizeName attribute that can be set by
>    drivers that need to know which version of a size was selected.
> 
> Is that just
> 
> *cupsPageSizeName: True
> 
> in the top section of the file?
>

No, there is a special PostScript expression:

<</cupsPageSizeName (A4.Full)>>setpagedevice

So the PostScript code of each paper size must be

<</PageSize[595 842] /cupsPageSizeName (A4.Full)>>setpagedevice

pdftoraster supports this, too.

>    > I think we've had one or two cases of something that was accepted in
>    > an older version of CUPS (and not getting flagged by cupstestppd)
>    > being rejected by a newer version.  It was either resolution names or
>    > option names or values greater than 40 bytes or so.
> 
>    Resolution names and the PCFileName stuff come to mind.  There have
>    been issues with the lengths of translation strings, too.
> 
> PCFileName is a *real* crock these days.
>

Is it really needed in real life?

    Till

