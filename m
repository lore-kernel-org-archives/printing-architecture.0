Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E4434015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97E63400D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700697499; x=1701302299;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OFJbquIsuVJS01vUxvv/qod89OSMZ/gm1iaa3FmFa88=;
 b=juQuKAFg8+f8n4Zex9LRgY7HX5/6g7/MVxpv1bnxHuiJVoWlDdgK3iIkJUQ5MJvQEv
 RZvaaAkpjxvM7yN2oPATGpPVcKT8mlG5KPjd0o2ZrKiSFsZfYH2BpGhAr0CF3MrNdRps
 EqHcUam9kocaN6+vpOUWXP6Eoprv0Fvrseoaam3QTy5vp1+/WKRIhGt04po5zKwcYFsh
 WrlcoxVMgb0inwhzfPENlPrWpnmM5NpwvvBGyI/vgIQaBA5ESN/gkdGTvLchar8w/q/j
 7+UtZs7vNaidjnmzQiCU1IvFLXagFWrOb/1kiLUjbXwOzDue7w6v8J6J9FvSqRs6al7T
 y33w==
Message-ID: <65102df7-5d63-4a95-a852-ff97df4c33fc@gmail.com>
Date: Thu, 23 Nov 2023 00:58:17 +0100
MIME-Version: 1.0
References: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] RFC: Moving the printing-architecture
 list
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, printing-architecture@lists.linux-foundation.org

As Ira and Mike I also prefer the developer lists.

Please only migrate printing-architecture, all the other lists have not 
been used for decades and only collect spam.

Please also create a user list as Mike suggests.

Will the archives of printing-architecture be conserved? Or migrated? 
They are a knowledge base and I have many links to them in my 
OpenPrinting News (so ideally we would put a static copy somewhere for 
example in GitHub, where the static pages of OpenPrinting are, and do 
some linking, aliasing, ... to make everything appear under the old URLs).

    Till

On 21/11/2023 22:35, Konstantin Ryabitsev wrote:
> Hello, everyone:
> 
> The mailman-2 system running on lists.linuxfoundation.org is being retired, so
> we need to find new homes for all lists that are being hosted there, and this
> includes the printing-architecture list.
> 
> We have two options when it comes to where to move to:
> 
> 1. migrate to lists.linux.dev, which is the platform where most linux
>     development lists live
> 2. migrate to groups.linuxfoundation.org, which is a groups.io managed
>     platform; it is generally considered more forgiving for non-developers, but
>     it is a proprietary closed platform
> 
> The main upside of lists.linux.dev are:
> 
> - the canonical address will change to printing-architecture@lists.linux.dev,
>    but the old address will continue to work, so any ongoing discussions using
>    the old address can play out to their end, and any old documentation will
>    continue to remain relevant
> - the list will be automatically archived on lore.kernel.org
> 
> The main downside of lists.linux.dev:
> 
> - HTML email is generally given a higher spam score, so it could be more
>    forbidding to some participants to join in conversations
> - there is no webby management interface and {un}subscribing requires sending
>    mail to printing-architecture+{un}subscribe@lists.linux.dev address.
> 
> The main upside of groups.io:
> 
> - Rich web interface for management and access to archives
> - Newbie-friendly for subscribing and unsubscribing
> 
> The main downside of groups.io:
> 
> - The list address will change to
>    printing-architecture@groups.linuxfoundation.org, and the old address will
>    no longer work (there will be an auto-responder bounce with instructions
>    where the message should be sent instead).
> - Proprietary platform
> 
> Let me know how you'd like to proceed. We need to figure this out in the next
> few weeks, as we have a limited remaining time to shut down the mailman-2
> system behind lists.linuxfoundation.org.
> 
> Best regards,
> Konstantin
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
