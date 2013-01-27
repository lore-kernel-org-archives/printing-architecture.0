Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=rP5ZVqGSQd1S+U7y4g8mOJs/JWDvJshXGS0j8AP5kAY=;
	b=msXdYEKIaQED+2/7Zwea8fSe/pC+6vpi1bE9lJP8hK6SacLynLYs4gKeqdH0TXEbFB
	4belY6d7yXr37AJp6bgmVplJ7h6+caT3NqDCDxJW2d5aiK/LLexNiqClwzIgJEdrwnii
	30t5w1nBBga9d942UWDmg8Wi57NRryfW4Iq4mhVEO0zr24mR70IgPENseLUWgu5aNg/M
	28fkpDqVsSqw8L9B4cG4CUNaGNPq2CMI7QTUS+2YnhidWr35e0PPhUQeF4KJsT6nN9Zw
	Mmq8oAiVeQEmEnoxGyCcejwP65hlGEMN/DmHuSQlLB+CnimS6KbZzDf2IH3Pr1d6+3La
	bnrQ==
Message-ID: <5105433A.10808@gmail.com>
Date: Sun, 27 Jan 2013 16:09:46 +0100
From: Till Kamppeter <till.kamppeter@gmail.com>
MIME-Version: 1.0
References: <50EDBBC6.4090408@gmail.com>
	<CCF496C9-2B07-4A25-AC1F-72D12F118A61@apple.com>
	<50EECE29.7090803@gmail.com>
	<2A930EB8-185F-400A-8E12-100CE389351D@apple.com>
In-Reply-To: <2A930EB8-185F-400A-8E12-100CE389351D@apple.com>
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

On 01/10/2013 05:49 PM, Michael Sweet wrote:
>> ...
>> In scheduler/conf.c is a line
>>
>>   cupsdSetString(&DNSSDSubTypes, "_cups,_print");
>>
>> Does this not mean that
>>
>>   BrowseDNSSDSubTypes _cups,_print
>>
>> is already set by default, not needing to set it in cupsd.conf?
>
>
> Whoops, my bad.  Yes, I guess I already made that change... :)
>
> _________________________________________________________
> Michael Sweet, Senior Printing System Engineer, PWG Chair
>
>

There is another thing missing in CUPS to make it emulating an IPP 
Everywhere printer: AFAIK CUPS does not accept PWG Raster as input 
format. There are no pwgto... filters, especially not pwgtopdf.

    Till

