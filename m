Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=2WFCfCgoc2yNn0oA+1ZHHr5HzCTIEQARRuWTefWmpSw=;
	b=UvW2uSFMjoBFGjAmU4+ubsZ5Sh/dX+TgsfywJjjH/1WqKc8pt89jyrXcq656QoI+8e
	DCE8JlCgBm3BW+1hz+Y0ehWpp4yfcRnohCThOAM/qeTUjzEUTII4gkCRjsz0tvpmoREK
	iMIqaPoAUXBIQNFkQxO+YKjBs1huh6PoW1DM95YeQ/2v1l2euM2ltkO32VMNZTffOegD
	Ri3bW3A3eqH+trgFH4GkUX8TJ5Ll/05LIH+AcsF7HUMlcuCpWhSz+B2TksaP1P2Sb1m7
	dlbZQnbpGJrsZmtLABm8bPAZs30FuOYrYSmYrM02UD1krK1iriUKOmHmMOaAtu5rQXE2
	B48g==
Message-ID: <53B2E7FF.8040007@gmail.com>
Date: Tue, 01 Jul 2014 18:55:27 +0200
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <53B1D5B1.6020105@gmail.com>
In-Reply-To: <53B1D5B1.6020105@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] New driver for Brother laser printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Peter, thank you very much for the new driver.

I have listed the driver on OpenPrinting now so that more people (and
also distros) will find it.

You find the entry here:

http://www.openprinting.org/driver/brlaser/

I hope also that some users will try it on printers which are not in the
driver's printer list to get more printers working.

   Till

On 06/30/2014 11:25 PM, Peter De Wachter wrote:
> I'd like to announce a new driver, a cups raster filter, for Brother
> monochrome laser printers. This driver is designed for the DCP-7030,
> which previously wasn't supported by open source drivers, and I've had a
> report it works with the DCP-7065DN as well.
> 
> It's available here: https://github.com/pdewacht/brlaser
> 
> Cheers,
> Peter De Wachter
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

