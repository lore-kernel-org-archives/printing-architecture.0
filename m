Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1406146521; x=2270060121;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yvrsO1BC8byMmkmBftwj8T9cHWD//oAf0F2iF2SGTbA=;
	b=WWEFh2YvrW6PgjkRcemBoP5a5FcDQZWhMYLCqmzJlaX17WPVUSPJ99FmnuB+KwDw
	cGI6uXhNCwqVQHEpMnq21/6hdDjSOeagFQKljtZQPzgKyQNrXOXDFfVKDE2u4Tk5
	77hNZzqs2Dey5EAPSzupCblESo1sZT9c2fYja0ENPSzAD5eK5FwT5UFgbylOmrKM
	yEKsobvH/v9wvNe6AKFZ61gSRmUIsKgPeuB/sDKyu94ea/45sUI9Q2lDpn4YxOyi
	bFAgibXX4JbTU/KsrT3NL6Sx3ksQZ+ISFh4Lbr4XO6jtjPCkdpyoA8HPMdwj1lzV
	3E+koWppA40KEksbs32HFQ==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <53CFCE94.8060605@gmail.com>
Date: Wed, 23 Jul 2014 16:15:18 -0400
Message-id: <F1E13EA9-5DEE-4A3B-9E49-1BBD875C355E@apple.com>
References: <53CFCE94.8060605@gmail.com>
Subject: Re: [Printing-architecture] SLP (Service Location Protocol)
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

On Jul 23, 2014, at 11:02 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> Hi,
> 
> as talked about in the last OP conference call I want to make use of SLP
> to discover printers in the network and especially to discover their
> capabilities. Unfortunately documentation about using SLP, especially
> with Ubuntu Linux, on the internet is sparse.
> 
> I want to let cups-browsed do this automatically, so that I can set up
> driver-less print queues for printers with known languages (PDF,
> PostScript, PCL, ...) but without polling the printer directly to not
> wake up the printer from power save mode.

SLP is a pretty active protocol, even when a Directory Agent is used, so I would be surprised if you'll be able to do discovery without waking up the printer.

> What I would like to know is:
> 
> 1. How do I scan the network for SLP services without knowing service
> names and types and without knowing which hosts in the network provide
> services or are SLP directory agents?

slpd handles the latter for you; you'll want to look for the standard SLP printer service type - the old CUPS code prior to 1.6 mostly did that.

> 2. In a typical SoHo network, are there SLP services or directory
> agents?

No.

> Are the usual SoHo routers directory agents?

No.

> Or do I need to
> to run an SLP server daemon on the local machine to be able to make use
> of SLP?

You don't need one on the local machine, but you *do* need to have one on the network to make SLP practical.

> 3. How can I test my environment with command line tools?

slptool can probably be used to find specific attributes.

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

