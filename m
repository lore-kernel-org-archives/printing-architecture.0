Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; q=dns/txt; i=@apple.com; t=1479530264;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=y+zFLgahgSn+GtrD4IQWEeOnq673JdCRTlfrDN+/SOg=;
	b=Rlf1boeLDz952tmYufh8i0w3ay8GS627hDt4PNI6bylOza1tB1cv1aIF4sf5ul+V
	iGKG8FoeJsVUz3G6ZP9dvL3LH6LoqvUFMvcYgbeuGQoFYEHhLdkwWBKDJG94xL+Y
	EHzqMD+otDj8AKIhi7+y6sxA7Ko15xUTaOrv85s8pnhQLlxCj0UdUMekqHnZa/av
	I4LbOI82WryCcOReZOiDGVdmoL0fawOfamN/bg/+62x5p4vuA3p1HRA2MPANr9Qh
	RM7S/Gk01U4oAq/WpWBmzxzVQRPB6mYfQZRFiHWyRSgafeT+/2GIJSq/yAe6TQIY
	+O1Q5/COxWNk0Z5/n6ziSg==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
Sender: msweet@apple.com
From: Michael Sweet <msweet@apple.com>
In-reply-to: <dfb0f8d8-f96f-1799-3e41-df7de1b4b77d@gmail.com>
Date: Fri, 18 Nov 2016 23:37:40 -0500
Message-id: <7E4292E5-A4D3-45ED-92E8-245062E450E6@apple.com>
References: <dfb0f8d8-f96f-1799-3e41-df7de1b4b77d@gmail.com>
Subject: Re: [Printing-architecture] Do IPP requests really wake up printers?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Till,

No, many printers will wake up.

> On Nov 18, 2016, at 6:49 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> Hi,
> 
> while working on driverless printing with cups-browsed (IPP Everywhere and generally IPP printers with known PDLs) I have done several tests on real printers and found out on one laser printer (HP Color LaserJet CM3530 MFP) and an inkjet printer (HP OfficeJet Pro 8500 A910) that if CUPS or cups-browsed queries the printer's capabilities via a get-printer-attributes IPP request, the printers did no get woken up, they both stayed in power-save mode.
> 
> Is this the case for all printers? Can I simply do this IPP request and printers of all manufacturers stay in power-save mode?
> 
>   Till
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_________________________________________________________
Michael Sweet, Senior Printing System Engineer

