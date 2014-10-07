Return-Path: <msweet@apple.com>
DKIM-Signature: v=1; a=rsa-sha256; d=apple.com; s=mailout2048s;
	c=relaxed/simple; 
	q=dns/txt; i=@apple.com; t=1412682909; x=2276596509;
	h=From:Sender:Reply-To:Subject:Date:Message-id:To:Cc:MIME-version:Content-type:
	Content-transfer-encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-reply-to:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KQJxY3fPovRYD4CpiPZPf8k2md/oTWTh7newweWO0VQ=;
	b=ImBdmAjLMu6Gf8lM5W/q2HBia/tVZPYSXdPMaOiphAWRqntdWtkPas3LY6dU18su
	K78/YwCsnI6vhQJIB/HImcWdTA06ybZNoySF1bkEVInsk+QtcoLnu4Hpu3Z6Vh/v
	xEUGA0YxYpvCkwn6YBAcUO0EmEnbOYIJRnFGbkOjHIFE4NjCaFNvraggPfLPGAZh
	qLsUAHYMNkDe6MWWO7wxByoFT3fDFKBwXNL7VdEunwJH7AdhviG8X7aoUbF2IPOg
	7sOwZyiaQEiYIlm+QHAQRybthbJYtRSozmq7Lb7fy6Bd/uOfIUS/BYErTsurKzMd
	uU5BO09xrJJE5I9g91I6GQ==;
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <5433D336.1070205@gmail.com>
Date: Tue, 07 Oct 2014 07:55:06 -0400
Message-id: <0E925EEB-00F2-42DD-9600-DAACBFDF2DC4@apple.com>
References: <CA+3RNfiMXAVRKoFH8XD+YyWatt-Fc+mKMGkAQyQPJ=8_SX9T3g@mail.gmail.com>
	<5B66FA40-ED1E-461E-B00F-D5CD6C7DBC30@apple.com>
	<CA+3RNfgR9Ucx+mQezWVwi8XMCF-4EBtFV5bukKOsTfZsTBZURw@mail.gmail.com>
	<34701921-5F04-411C-B35C-78CED619AAC3@apple.com>
	<CA+3RNfgzaD28Gcy4N=k_=jJMsQ9Ao1i8fSiRpeU3VHvXoxx4fw@mail.gmail.com>
	<23226792-DB2B-467B-A3F3-015D81C6A31B@apple.com>
	<CA+3RNfgwqWxqc6D4Fe1fC8--xy0pV_c4SDHukwpwrC+N=G=WpA@mail.gmail.com>
	<0392028E-75B3-45B1-8826-3886A5EEC7E9@apple.com>
	<5433D336.1070205@gmail.com>
Subject: Re: [Printing-architecture] Number of copies in pure PDF workflow
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

> On Oct 7, 2014, at 7:49 AM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
> 
> On 10/06/2014 05:32 PM, Michael Sweet wrote:
>> Alex,
>> 
>> The cupsFilter2 keyword has a different value syntax:
>> 
>>    *cupsFilter2: "src/type dst/type cost filter"
>> 
>> For a PDF printer you want:
>> 
>>    *cupsFilter2: "application/pdf application/vnd.cups-pdf 10 pdftopdf"
>> 
> 
> What do I have to add to a /usr/share/cups/drv/*.drv filr to generate a
> cupsFilter2 line? "Filter" only generates cupsFilter lines.
> 
> Or do I need to create completely static PPD files?

Attribute cupsFilter2 "" "src/type dst/type cost filter"

_________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

