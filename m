Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=EfFBTS51z5Ebj47UbfuXn8B7Q4aEbRAhpcitOcfZciQ=;
	b=skhONPf32byLjzuIL6Fz9e3Jrbtjqwi7OpDhdyCk79YIKRv/3Vezls3agVYsyvu66X
	KrN4MvkIXnxCvL/zbsdeNFWK8CJF1Z8gt3FpTioyq4IjNxjeivfhz0SEoYZMTapnvQg9
	43NekRZpSPZvyjPT7xgKiWrjcPsfZHfLW1M+XY37/P0sxGDRotsHIgNPcvVUwfMTRDDY
	24SPtAZ8WzmzPubzZL/eynioV/PIv86Yd/OXi10qOrWhS2tPfRgTsOJGoP//uJ3jnYC8
	GWatt6dsCR9GjO3Z7BxiDtCu1tj8YChEuHYzogSTOz6nCx7ZHln47/oPgZbRqbjvxaB2
	iiRQ==
Message-ID: <52865243.3000106@gmail.com>
Date: Fri, 15 Nov 2013 17:56:35 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<5273A1A5.6000809@redhat.com> <52864861.3030309@redhat.com>
In-Reply-To: <52864861.3030309@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Marek Kasik <mkasik@redhat.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>

On 11/15/2013 05:14 PM, Marek Kasik wrote:
> Hi all,
> 
> just an update. I'm working on the problem of waking avahi printers up
> in gtk print dialog. It will show just name, location and state when the
> printer is not selected but once it is selected it will perform an IPP
> request to get its abilities.
> 
> Regards
> 
> Marek

OK, this is how I imagined it should be.

   Till


