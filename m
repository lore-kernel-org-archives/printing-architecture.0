Message-ID: <49E5EF28.5030905@gmail.com>
Date: Wed, 15 Apr 2009 16:28:56 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <46089FAF7804194C8AD6458E272B07182174584144@GVW0676EXC.americas.hpqcorp.net>
	<49E51AB7.2010902@gmail.com>
	<200904150120.n3F1Kg95023375@dsl092-065-009.bos1.dsl.speakeasy.net>
	<49E55C8C.2010500@apple.com>
	<200904151139.n3FBdmZJ030596@dsl092-065-009.bos1.dsl.speakeasy.net>
	<49E5C95B.4080304@gmail.com>
	<200904151206.n3FC6n7j030700@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200904151206.n3FC6n7j030700@dsl092-065-009.bos1.dsl.speakeasy.net>
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
Cc: printing-architecture@lists.linux-foundation.org, printing-summit@lists.linux-foundation.org, martin.pitt@ubuntu.com, msweet@apple.com

Robert Krawitz wrote:
>    Date: Wed, 15 Apr 2009 13:47:39 +0200
>    From: Till Kamppeter <till.kamppeter@gmail.com>
> 
>    No, there is a special PostScript expression:
> 
>    <</cupsPageSizeName (A4.Full)>>setpagedevice
> 
>    So the PostScript code of each paper size must be
> 
>    <</PageSize[595 842] /cupsPageSizeName (A4.Full)>>setpagedevice
> 
> Like this?
> 
> *PageSize Letter.Full/Letter:	"<</PageSize[612 792]/cupsPageSizeName (Letter.Full)/ImagingBBox null>>setpagedevice"
>

Yes, exactly this way.

If a PDF workflow is used or an image is directly sent to CUPS there is 
no PostScript data stream involved. In these cases the pdftoraster and 
imagetoraster filters parse the PostScript code in the PPD file via a 
CUPS library function and so alo in this case both the paper size in 
numbers and the paper size name get made use of.

>    > PCFileName is a *real* crock these days.
> 
>    Is it really needed in real life?
> 
> Seems to me that everything newer than Windows 3.1 supports long file
> names.  We just generate names like STP00001.PPD, which aren't stable
> from release to release (when we add new printers).
> 

Here we only need to satisfy the specs somehow. This is one method.

    Till
