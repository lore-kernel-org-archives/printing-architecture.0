Message-ID: <48A160AF.1070508@gmail.com>
Date: Tue, 12 Aug 2008 12:06:39 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <4896BF68.3080804@gmail.com> <48971403.9090006@easysw.com>
In-Reply-To: <48971403.9090006@easysw.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Two more PDF CUPS filters: pstopdf and
 cpdftocps ("PostScript driver")
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <mike@easysw.com>
Cc: OTANI Koji <sho@bbr.jp>, Tobias Hoffmann <th55@gmx.de>, Printing-japan <printing-japan@lists.linux-foundation.org>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Hin-Tak Leung <hintak_leung@yahoo.co.uk>

Michael Sweet wrote:
> As for getting options from the PostScript data stream, today we
> can embed page size and duplex mode in the PDF document.  Supporting
> other embedded features is not feasible, although applications can
> use the CUPS PS job ticket comments at the top of the file:
> 
>     %!PS-Adobe-3.0
>     %cupsJobTicket: option=value ... option=value
>     %cupsJobTicket: option=value ... option=value
>     %cupsJobTicket: option=value ... option=value
>     ... other PS comments
>     %%EndComments
> 

What does CUPS exactly do when it encounters these %cupsJobTicket: 
comments? Which part of CUPS is handling them? How can one benefit from 
them in a PDF printing workflow (PostScript -> PDF -> pdftopdf -> 
pdftoraster ...)? Do they have to be in the beginning of the PS file or 
can they be anywhere?

    Till

