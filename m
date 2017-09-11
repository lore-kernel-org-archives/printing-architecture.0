Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=4F7yN+BpTdhlzeFDitUxz8NwU+3lvRK1fPDPqmGwQoc=;
	b=GPw2xLXLSu4Co5zHCbZhacLx4n6xowKdalkQKgNgvhz9dP6WB8BGSyl3Ja3+sf2bbr
	3b9kh9zLz/TwTxPfTIoXncf40HbAcOfCPMhLISyKg0TgwjF0qmTldGRtzSJxLkZdfI5g
	aVfW6ykFKaG8iaUg61Z7Hxwm7ahD7qIVhTLLR4uFh1FOhp47qyj2K14J3z1cS8ms2iBx
	EG7FUAb2Y0GJjZusLIwMLtcxDMOQWkiC44BNs/q1cRQDRISV2DysGTvx1BZm2xmRNKm8
	IzV2xmmW0CjYK+y7laMKXlZJOBX5zXoFkYbxQgm1mn8WcK/Uon88PNp03GBYi9MpuW5l
	/rFA==
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
	<096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
	<20170911193846.aqrqdtw6ctaf744u@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <2e1e6295-350d-aa23-74c6-07f163070f57@gmail.com>
Date: Mon, 11 Sep 2017 17:09:49 -0300
MIME-Version: 1.0
In-Reply-To: <20170911193846.aqrqdtw6ctaf744u@var.youpi.perso.aquilenet.fr>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Printing-architecture] [PATCH] Add braille support for vector
 images
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

On 09/11/2017 04:38 PM, Samuel Thibault wrote:
> Hello,
> 
> Till Kamppeter, on lun. 11 sept. 2017 11:59:01 -0300, wrote:
>> On 09/09/2017 04:02 PM, Samuel Thibault wrote:
>>> This adds support for embossing vector images as braille, by using
>>> ghostscript to rasterize without antialias.
>>
>> Thank you very much for your two patches. I have applied them now.
> 
> It seems you forgot to add the vectortopdf and vectortobrf files?
> 
> Samuel
> 

Sorry, I have completely overlooked that the patch contained new files. 
I have added them now. Please check.

    Till
