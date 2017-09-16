Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=yq8m+GtrXm8KsUwxL59/4JW/L6KRag0ZXKqPIDZC+0k=;
	b=PG/+0A3qxDSHH24U7ksazC3EFVsag7vyxTRnqT4k+5i+/OlomH26N9P22mCJegO2hz
	AAgxjsn9gkgaeBr6WuajqHPhPkRN/icHrlm1ZJbbFF++WHTLaWVXA5sEuSlcp0lRNJeL
	jYNWJCdgvsJ7yEHz3FyPB6BLm271oJGbBn8+1GMpE4cNyscPGwdQyU5MrNtHAqpwu1Z1
	O/X+M7FATU6Hfnc0geux1RaQB5j4cpCHczZ3qtMUu+CpXAvP21qye9eO5wKhxFNAd5rg
	ZKZSNZJsiUHX1yRVl2nB6u4BTOdd06VvOsbv7+2lswAEJ+g7/CKi5Om6UHfVmDVir+yN
	z1aA==
References: <20170916165701.vgnp7umn4pherxmu@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <b8b17567-b0c2-9132-2892-b769c962468f@gmail.com>
Date: Sat, 16 Sep 2017 19:08:24 -0300
MIME-Version: 1.0
In-Reply-To: <20170916165701.vgnp7umn4pherxmu@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] braille: proper support for
 hardware margins
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, printing-architecture@lists.linux-foundation.org

Thank you very much for your patches. I have applied all the three 
patches to the BZR repo of cups-filters now.

    Till

On 09/16/2017 01:57 PM, Samuel Thibault wrote:
> This adds proper support for hardware margins on braille embossers.
> 
> Samuel
> 
> 
> 
> _______________________________________________
> Printing-architecture mailing list
> Printing-architecture@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture
> 

