Message-ID: <485F4A93.3080303@gmail.com>
Date: Mon, 23 Jun 2008 09:02:43 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com>
	<485B474D.9070803@gmail.com>	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>	<200806211529.m5LFTs8h007154@dsl092-065-009.bos1.dsl.speakeasy.net>
	<c78a68b30806221102y1fd0d75m6424c2b55c573465@mail.gmail.com>
In-Reply-To: <c78a68b30806221102y1fd0d75m6424c2b55c573465@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [Gimp-print-devel] Printer setup tools:
 Automatically choose the correct backend
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: David Rosky <dave.rosky@gmail.com>
Cc: Tim Waugh <twaugh@redhat.com>, "printing-foomatic@lists.linux-foundation.org" <printing-foomatic@lists.linux-foundation.org>, "SUFFIELD,
	DAVID (HP-Vancouver, ex1)" <david.suffield@hp.com>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, gimp-print-devel@lists.sourceforge.net

David Rosky wrote:
> 
> 
> 
>     Why does HPLIP need to talk to the printer to do borderless printing?
>     Is it to verify the paper size that's actually in the printer?  If so,
>     you could either trust the paper size the user specifies.
> 
> 
> Some drivers don't want to allow borderless printing if a certain *type* 
> of paper isn't loaded (e.g., photo paper).  Perhaps HPLIP is checking 
> that.  Personally, however, I'd be in favor of trusting the user, as has 
> generally been the gutenprint philosophy.
> 

There are some printers which do borderless only for 5x7-inch-photos and 
smaller and some do no borderless at all, but all the rest of the 
communication protocol of these printers is the same as for the 
full-borderless models. For me it seems that the driver asks the printer 
which borderless type it is (and perhaps even also the loaded paper 
size) to not make the printer with a borderless job sent when the 
printer is not capable to print it borderless. Am I correct, Dave?

    Till
