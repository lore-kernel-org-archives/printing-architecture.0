Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=cd/5zrY5g6e0Gv5HsEoFe5HyRheqXGX0Xi+ZTQ/2/RE=;
	b=llIZIlHQoqrm0opvqcwI8hUomOTIuWBSfcW2SKxU4vVgUX27fGmkTcofimoK5QmQgN
	BnNKpyfsybTlJcbuh2RW6E53Ml6SrQP3fiKRDyhs1JxjBpbgudo1Rrjr2ULb/4Gtcre+
	D8OIJGwFQMwu8Y9ySRbbh1ATjAXAbIc6+nEjwM4OQDjE2TsSLKqgq3tH4CkGSoj7ktJT
	94C8/H6VCQRFdbJNRMuRpuEJFbcHeE84cQrW2HuTJEpDJ9X1Zld3b47UHUt7Y6A7F0Hb
	2TjQYNrSd5mI96QQUZJDvPoCavLrUG7rTkLIKLlV1BiwBfOuiFTQ/6mgMK4MAFuJGw4S
	NgsA==
References: <20170911231249.5spmbytp3ol2if4g@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <0d481c3a-a2a6-4235-9063-5b69a30b3beb@gmail.com>
Date: Mon, 11 Sep 2017 20:42:56 -0300
MIME-Version: 1.0
In-Reply-To: <20170911231249.5spmbytp3ol2if4g@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] Improve braille support for
	bitmap images
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

On 09/11/2017 08:12 PM, Samuel Thibault wrote:
> Hello,
> 
> This improves the braille support for bitmap images:
> 
> - it moves the graphical dot distance option to the image conversion
>    group
> - it adds an option to avoid image resize
> - it makes the rotation option easier by proposing to just fit paper
>    instead of fitting portrait or landscape
> 
> Samuel
> 

I have applied this now, too. Thank you very much.

    Till
