Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=jxchzJiJS7GFySG7nq3/8AhD35xMRAcCW0Oyw3btisk=;
	b=K2kHjX+B5fZ1q5sM8LGiKB4kt5CUhPrSb2QbjWZXWZSFe2oeHTm5s2aX7kXkhgwq/j
	gP38ULiw/5rpPaQKIbGEJ7dfP2TJF7Wue6kp4F3+sAOW6GI9UyeBPq+E94MFM7MIKCT5
	gKVUmGCfCrq+NWxt6LrzE0/wsLshcH/D1sQRtLsrJNIB6XXH+X2q3f0CIBnWnYTwGs24
	epiKsjncH4MoqnQ2+nluPHWdUk3TO56mrjkGfIG4qqsR5SCRPu5nsFQ6eKpSJa2YjRGs
	WyULEwHv+isx8GR8iaA6suYJSP2ltlSlub0U+x0gyCVfUzMLm/OnK2JjHqBR+lPIYvbl
	dR3g==
Message-ID: <50EECE29.7090803@gmail.com>
Date: Thu, 10 Jan 2013 15:20:25 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
In-Reply-To: <CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] IPP Everywhere: How to make CUPS queue
 so that applications can use these printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>

On 01/09/2013 08:53 PM, Michael Sweet wrote:
> Till,
>
> Responses inline...
>
> On Jan 9, 2013, at 1:49 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> 1. How to print from a Linux machine to an IPP Everywhere printer?
>> ------------------------------------------------------------------
>> ...
>
> Currently the only way to do this is to query the printer and generate a PPD file from the data. Then add the queue.  All of the generated PPDs should contain:
>
>      *cupsFilter2: "application/vnd.cups-raster image/pwg-raster 100 rastertopwg"
>
> Printers with PDF support should list:
>
>      *cupsFilter2: "application/vnd.cups-pdf application/pdf 0 -"
>
> Printers with JPEG support should list:
>
>      *cupsFilter2: "image/jpeg image/jpeg 0 -"
>
> I have this on my to-do list for CUPS, but thus far haven't had the time to write it...
>

For when this is planned? 1.7?


>> 2. How to make a Linux CUPS server emulate IPP Everywhere?
>> ----------------------------------------------------------
>>
>> Another use case for IPP Everywhere is having a Linux machine running CUPS and with a conventional (non-IPP Everywhere) printer connected via network or USB and a CUPS queue with driver and PPD (HPLIP, Gutenprint, PostScript, etc.). Now I have a mobile device or TV set (Android, Windows Phone, ...) which supports printing on IPP Everywhere printers. How do I make CUPS emulate IPP Everywhere, so that the shared CUPS queues appear like IPP Everywhere printers? Or does CUPS do this already?
>
> CUPS already implements the required (and many of the optional) parts of IPP Everywhere, sans WS-Discovery (which really needs system-level support and I have 0 interest in implementing it...)  You just need to add the following to cupsd.conf to make the Bonjour registrations report the _print subtype:
>
>      BrowseDNSSDSubTypes _cups,_print
>
> Of course, without the WS-Discovery stuff your WinPhone won't be able to discover the printer, but AFAIK Microsoft has not yet implemented IPP Everywhere...
>

In scheduler/conf.c is a line

   cupsdSetString(&DNSSDSubTypes, "_cups,_print");

Does this not mean that

   BrowseDNSSDSubTypes _cups,_print

is already set by default, not needing to set it in cupsd.conf?

    Till

