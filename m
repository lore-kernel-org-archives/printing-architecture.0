Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=qHHQ5SxYOosNXdQVXOI1ZBwX+4gGAgJke6SzdPmTiTY=;
	b=TKoI0w853bUUggRfOAnhUXJFb0/vJW6Zw1IArWWT8kCGUSJlmDoviVNGKoBQrkF7G8
	khvV0gfaKkQWNZKWqRdpCZF4Sa3tjdKJIuNRAMO+CJlJvoP5ve1ppBS8ix/skP9037XM
	WtxnMb15domEiZ/Yzwis4vcH/beZR759Ay2dGKAQLylylcJbZ/Q7msMtLEAOtF4AXGPo
	huoh5lzDOixeeIIbWAUr31w01u7z+TSJhM6LL/l42A+FjTgJNkGD+KNrrZMws0ekAzDE
	51Qq0M2swaeAHmK9T4fjLYhccohm9Fhu8Y4u4fLqEfw5QdQpBJT8VTl/liUsdyVvvZ1Y
	lzLg==
References: <CAN40gSubUV9Y3dfNwU+xKSy=N92nffkdPMoSkoDpzq_Vd54D6A@mail.gmail.com>
	<649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <a323cfb1-6937-f621-ba7e-696a856b257a@gmail.com>
Date: Mon, 14 Jan 2019 12:02:14 +0100
MIME-Version: 1.0
In-Reply-To: <649CD791-CA34-4AD0-A58B-3C0113410831@apple.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] OP Minutes (9 January)
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>, Ira McDonald <blueroofmusic@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Aveek Basu <aveek.basu@lexmark.com>

On 14/01/2019 01:52, Michael Sweet wrote:
> Ira,
> 
> A bug was filed against CUPS last month requesting that we start 
> supporting systemd's new mDNS resolver (which apparently is replacing 
> the use of Avahi in systemd?!?):
> 
> https://github.com/apple/cups/issues/5452
> 
> I pushed back since there does not appear to be a way to browse DNS-SD 
> SRV records and there is no interface for registering services outside 
> of systemd configuration files.  But that might be a future alternative 
> to Avahi should they extend the current interfaces to support it...
> 

The best would probably be here to post feature requests on this project 
so that they know what an mDNS/DNS-SD stack needs to be feature-complete 
and replace the unmaintained Avahi.

    Till

