Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Q7BqlyTIa47tPLbgmBluwoQdOuqgsWTZxEnFBe3XK1M=;
 b=WJmmyRkE2DeQHjf4Todsv4YOccvnl4eYQgMsf/vzIOVx7vjs8YUL2Dh5noDXXOFqNS
 365W4qeH26x+RvJQ4Knw6yh9w2a/XPa2tx3EOqYuTZL2xuqNevsJztTJUC62Bwz0YVMm
 4nQjTxRAElWUpRMAt+W89xOtAFK+bGSCF0YIfWLf5/WpGZM75dQAHTXIoojT0jy87EOe
 JizU9b67RsbDZrDXPc2Uu8q2+wYiPgyNiN+0VwZDhT0uL11+wmvtO/R0D5KVrby5cuum
 kaXhdyOtMf+ywc1EYLWU3h7ZHdqs71WvWoiQlM6MlQ3il10C02yCsqIH9JRLZt+VGJN2
 8CHQ==
Message-ID: <0ab53906-eeb8-e359-c720-27236dcbf7dd@gmail.com>
Date: Mon, 16 May 2022 21:58:01 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <04994e7b-3400-0c73-9b6c-be63587775df@gmail.com>
 <7A3378E6-E927-483A-9CD6-7780226A2EF2@msweet.org>
 <099283be-d7a2-c81e-258a-3c90e89ab3ef@gmail.com>
 <A98D57DF-B7E9-4D8D-AEBA-061E1E6013A2@msweet.org>
 <7d62d52d-f7ac-5131-f51c-98a5ad286026@gmail.com>
 <B715B740-C6FA-48FC-8F95-3B92CAF273B7@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <B715B740-C6FA-48FC-8F95-3B92CAF273B7@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>

Thank you very much, Mike!

It works now!

I have done the same implementation as with hp-printer-app in 
pappl-retrofit now and I get supply levels! At least if I use one of 
PAPPLs own backends (and not embedded CUPS backends) and network printers.

Later on I will see how to do it with the CUPS backends (they are custom 
scheme "cups:", any hints welcome) and also whether one can use 
hp-levels of HPLIP in the HPLIP Printer Application so that there one 
can also get supply levels of USB printers.

https://github.com/OpenPrinting/pappl-retrofit/commit/f5ba4229ddb

    Till

On 16/05/2022 16:35, Michael Sweet wrote:
> Till,
> 
> The status callback is called as needed, so you basically need to open the printer device, query, and set the supplies from the response.  Look at the "pcl_status" code in my hp-printer-app for a complete example:
> 
>      https://github.com/michaelrsweet/hp-printer-app
> 
> You don't need the "dummy" sample values I include in hp-printer-app (it is still mostly sample code, even if people are apparently using it :) - if you don't get a response, just don't set the supplies.
> 
