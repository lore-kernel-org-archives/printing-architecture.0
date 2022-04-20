Return-Path: <postmaster@tnonline.net>
Message-ID: <38cd3cb1-5e0a-6735-5857-090cf6172c71@tnonline.net>
Date: Wed, 20 Apr 2022 09:35:42 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <bdb5727d-1aee-de03-4ba3-5f4cdb1d9ec3@tnonline.net>
 <48896244878cd00c9e15e77fbd636696@suse.de>
From: Forza <forza@tnonline.net>
In-Reply-To: <48896244878cd00c9e15e77fbd636696@suse.de>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: Re: [Printing-architecture] What windows driver to use with a CUPS
 IPP server?
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Johannes Meixner <jsmeix@suse.de>, printing-architecture@lists.linux-foundation.org



On 4/20/22 09:07, Johannes Meixner wrote:
> 
> Hello,
> 
> only a general note FYI:
> 
> On 2022-04-13 22:24, Forza wrote (excerpt):
>> Someone on IRC said I should use the native HP drivers,
>> but this seems wrong to me;
>> * First there are no updated drivers for older clients
>> * Isn't the idea of CUPS as a printer spooler to separate
>>   the client from the printer so that we can use classes etc
>>   to direct output without the clients knowing?
> 
> You may have a look at my generic but rather old article
> https://en.opensuse.org/SDB:Printing_from_Windows_to_Linux
> 
> In general it should be still valid in particular for
> older Windows versions but some things have changed
> meanwhile, e.g. in CUPS 2.3 the cupsaddsmb program
> has been removed, cf.
> https://github.com/apple/cups/issues/5449
> 
> By the way FYI:
> Current CUPS upstream is no longer
> https://github.com/apple/cups
> and
> https://www.cups.org
> but nowadays it is
> https://github.com/OpenPrinting/cups
> and
> https://openprinting.github.io/cups
> 
> 
> Kind Regards
> Johannes Meixner

Thank you for the pointers.

The example "http://server.domain:631/printers/funprinter1000" from 
https://en.opensuse.org/SDB:Printing_from_Windows_to_Linux#Send_data_via_LPD_protocol_or_IPP 
is what I am trying to use because we want to close SMB traffic on these 
clients. Especially the really old ones that can't be upgraded to modern 
computers/Windows OS.

What I don't fully understand is the RAW queue here. Is the idea to set 
up a RAW queue from CUPS->printer and then use IPP from Windows->CUPS, 
but with printer specific printer driver installed in Windows?

I think that ideally, we should not have a printer specific driver in 
Windows, so that we can use CUPS to handle the printer specifics. But 
perhaps this is not possible?

Regards,
Forza


