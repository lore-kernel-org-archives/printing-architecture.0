Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=rULhfZSl8HeOp1NkJy5i9p8lfPDwRQLIIiYTGvf+/tU=;
	b=Z0ReEeQwTC2I+86FaPCpuD0bf5U/AGzxt4whEXtAUfrfQYvnPeTBUyXKVP2myP4Pah
	0Jr03lAXEwbPgb5Wz4Z3XMhajBh/CZHyd0+JZuHHNW0t3mbHZqVvs34Chxqel3/7hqpU
	6k5MuIts0rROSGdjqJa7u9EaOASq6zkRaGdfa5oq9bfkmaCP3hYew6dtDMhxWaEI0Dvd
	gKsRZsQ0O8y1xqOfJPWRxjURcnpSQDfqWCrEUQrFvU1Inc0Bcys65uIqC0xFmzCF+Apa
	qpUF4R6iSudgzWRrRFa+ZF5wNa5yKCHQsk0RYnvKfCGfwcU564DUh4OQI2NzJMQCEk4W
	OGzg==
References: <CAKu2CsVOvPKh11ibUVP48MnO8jaBYiaeEpv-OD2xhkbsEb2yrA@mail.gmail.com>
	<CAN40gSsDJ7NFqC-dHrGM3wmEFMgSf0Wjg9y4X5=2jR0EmSrX1g@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <9b5ef31f-b7d6-17c9-29dc-012c862ca4dd@gmail.com>
Date: Wed, 19 Jun 2019 17:10:25 +0200
MIME-Version: 1.0
In-Reply-To: <CAN40gSsDJ7NFqC-dHrGM3wmEFMgSf0Wjg9y4X5=2jR0EmSrX1g@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] Fwd: raw socket Linux kernel panic
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu <basu.aveek@gmail.com>, Danny Brennan <brennand@us.ibm.com>, "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Only the printers open port 9100 to receive jobs, a computer does never 
open this port for printer sharing. So is this secyrity issue about 
breaking into the printer then?

    Till


On 19/06/2019 16:56, Ira McDonald wrote:
> Hi,
> 
> Of course, we don't encourage people to use Port 9100 (for example)
> for printing, but this raw socket kernel panic looks like a serious issue.
> 
> Cheers,
> - Ira
> 
> 
> ---------- Forwarded message ---------
> From: *Dave New* <dave.new@fcagroup.com <mailto:dave.new@fcagroup.com>>
> Date: Wed, Jun 19, 2019 at 10:46 AM
> Subject: raw socket Linux kernel panic
> To: Ira McDonald <blueroofmusic@gmail.com <mailto:blueroofmusic@gmail.com>>
> 
> 
> Ira,
> 
> Heard on the security now podcast this morning, there is a raw socket 
> Linux kernel panic that goes back about ten years.  I noticed that you 
> are involved with the printing stuff, and I recall that includes raw 
> sockets, which might be likely exposed to the Internet (purposefully or 
> accidentally).
> 
> What I understand is that the issue is in the kernel TCP stack, so there 
> may be little that can be done from the printer driver level, except 
> maybe close off the raw socket access until the kernels can be patched.
> 
> Steve Gibson expects that by next week, an attack in the wild against 
> unpatched kernels will be featured front-and-center for his podcast.
> 
> Thanks,
> 
> --  DaveN
> 
> 
> Dave New
> 
> Advanced Senior Engineer
> 
> E/E Wireless & Security
> 
> 
> FCA US LLC
> 
> CIMS 484-10-01
> 
> 800 Chrysler Dr, Auburn Hills, MI USA 48326-2757
> 
> USA
> 
> 
> Telephone: +1 (248) 576 1591
> 
> Mobile: +1 (248) 705 8701
> 
> FAX: +1 (248) 576 8398
> 
> Email:dave.new@fcagroup.com <mailto:dave.new@fcagroup.com>
> 
> 

