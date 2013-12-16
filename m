Return-Path: <msweet@apple.com>
MIME-version: 1.0
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII
From: Michael Sweet <msweet@apple.com>
In-reply-to: <52AF35A2.6060804@gmail.com>
Date: Mon, 16 Dec 2013 12:19:35 -0500
Message-id: <DE7A23AD-B498-48D7-8E2A-87E5B5BADFAC@apple.com>
References: <1387213857.12274.26.camel@rubik> <52AF35A2.6060804@gmail.com>
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
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

I was thinking I could just add an option to the cupsfilter program (--dry-run or something) that displayed the list of filters that would get used.


On Dec 16, 2013, at 12:17 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:

> Should we perhaps make this part of cups-filters?
> 
>   Till
> 
> On 12/16/2013 06:10 PM, Tim Waugh wrote:
>> Hi,
>> 
>> Last week I put together a small program to simply display the filter
>> pipelines that would be used for each configured input format and each
>> likely output format (CUPS raster, PostScript, PDF).
>> 
>> This is useful for sanity-checking changes to CUPS filter costs, to
>> check whether changes to pipelines are intentional or accidental.
>> 
>> It's based on testmime.c and is very simple. See what you think:
>>  https://gitorious.org/cups-filter-check
>> 
>> Tim.
>> */
>> 
>> 
>> 
>> _______________________________________________
>> Printing-architecture mailing list
>> Printing-architecture@lists.linux-foundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
>> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture

_______________________________________________________________
Michael Sweet, Senior Printing System Engineer, PWG Chair

