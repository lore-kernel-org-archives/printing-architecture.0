Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F32F8186E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5503E81865
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc; bh=OUplXUcu5zxcOGvQ4qqP7quin7bUJJvGTb83JqMl0NY=;
 b=d02ahY/InAryn/F8o12uotIp7ImEVFnPpNZejA0aNMHFZhXU+6XE1HxHuxY9hvYcNC
 kUAzERzu1SmgEFLs2MQAQ8AvKYo2Tm/CBJg/YTZlCHBLzS1+6JmPzTi1qvFOIjhurUux
 iYn278ygi7YKEnGu1VPWGycWPPsjRQllZINVkpStk5GmOGP81fWeHGqDCW7BDNfCyXxY
 aeBXOv2np370tC6/wY/+3GKg93pgH2DiZCwDqYCkT4ljJRlYJof4gs/oDdU6dga58NKA
 xkgFH7gSIrVxpsxn8HH6l4et6LXHQMpmTaDPbN0GBcWTF8gzVtRiL6NEwJ6eL4BQ7wSb
 8t5Q==
Message-ID: <fcdfe7c4-f2ea-e432-7006-3b1c4a48614c@gmail.com>
Date: Tue, 23 Aug 2022 14:21:07 +0200
MIME-Version: 1.0
Content-Language: en-US
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
 <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
 <2a25a2c6-c80c-be2c-4ab2-d595ed4267b7@gmail.com>
 <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <81DCCB8E-C960-4CAC-BA69-3352A5200022@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles
 via IPP for soft proofing
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>



On 23/08/2022 13:23, Michael Sweet wrote:
> 
> No.
> 
> Most printers don't host ICC profiles and don't support HTTP PUT or Set-Printer-Attributes.
>

OK, most printers are not high-end enough that one would want to do 
soft-proofing for them. Apps/filters just sending sRGB to them is good 
enough.

>> Now, with profiles listed by the "printer-icc-profiles" printer IPP attribute, could the soft-proofing software simply download and use these profiles?
> 
> For the class of printers that supports it, yes.  But I'd treat this as a source of profiles that can be downloaded on demand and associated with the local queue (alongside any profiles the user has installed manually).
> 
>> In case of a legacy printer the Printer Application should be able to hold color profiles, ideally both in the Snap's static file system image for the profiles which come with the Printer Application and in the variable/state file system for user-added profiles. Ideally such functionality should get added to PAPPL.
> 
> Right now I have no plans to add explicit support for ICC profiles to PAPPL as the class of printer being supported won't get anything out of it - *no* open source driver provides ICC profiles at this time, label and B&W laser printers won't benefit, and Gutenprint's notion of color management makes using ICC profiles basically useless - too many knobs.
> 

The current 6 Printer Applications (LPrint, hp-printer-app, the 4 
retro-fitting ones) actually do not need it, also if Gutenprint and 
HPLIP will get replaced by native ones at a certain point in time. But 
later on, a manufacturer could theoretically want to make a Printer 
Applications for high-end printers with ICC profile support ...

    Till
