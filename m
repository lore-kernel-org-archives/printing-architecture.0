Message-ID: <485F8726.8050601@gmail.com>
Date: Mon, 23 Jun 2008 13:21:10 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <485AD507.4050300@gmail.com>	<485B474D.9070803@gmail.com>	<4665C7B0F1146045A32E6AA72D0D62D741A40F26@G3W0634.americas.hpqcorp.net>	<200806211529.m5LFTs8h007154@dsl092-065-009.bos1.dsl.speakeasy.net>	<c78a68b30806221102y1fd0d75m6424c2b55c573465@mail.gmail.com>
	<485F4A93.3080303@gmail.com>
	<200806231050.m5NAoRxO031694@dsl092-065-009.bos1.dsl.speakeasy.net>
In-Reply-To: <200806231050.m5NAoRxO031694@dsl092-065-009.bos1.dsl.speakeasy.net>
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
To: Robert Krawitz <rlk@alum.mit.edu>
Cc: twaugh@redhat.com, printing-foomatic@lists.linux-foundation.org, david.suffield@hp.com, printing-japan@lists.linux-foundation.org, printing-architecture@lists.linux-foundation.org, gimp-print-devel@lists.sourceforge.net, dave.rosky@gmail.com

Robert Krawitz wrote:
> That implies that the driver is trying to double check what the user
> specified -- the user already has to specify the paper size and media
> type.  Things shouldn't fail if the driver's not able to verify this.
>

Dave, Shiyun, as you are using CUPS DDK now to generate PPDs, you should 
introduce option conflicts/UI constraints in the PPDs to avoid 
borderless printing on unsuitable paper sizes.

    Till

