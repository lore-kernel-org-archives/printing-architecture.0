Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=EZ8u1XCB80V8gQvE1vwAQmAmiww5GMfOUwW0auilakM=;
	b=WQGYtp2liPaFAyOn4OiIpPL4fZgWoEPYiLzClqn3bImMvVk34YQaBRM449AyaY5gBx
	WLVo+qey4byhbMysoCu8yDEE1/Fs2qHJ/kASrZ1HeEsFu+AnoKivH7E5hWekGB9gdwbz
	+iPuVImGODUg1VhzX72tnU4Si4oUT8cz2i61lneJlO0BJ5HD5T9dHZTZbbdFuuX+qeUB
	5m7Jg3EnUyatzgkUokNVumKRu3+RDLeHnEOB2+RFWQAn5fSoangv9brnoU99kgDXKnru
	AgQ8AQziYbJklgKh8WjBC2a/69TMe3VmUTMEjIGVJFBd/aVzzfqzu7p3fhjs48Vfuon7
	PqLA==
References: <20170909190207.koqjoe5qpfoarmjl@var.youpi.perso.aquilenet.fr>
	<096ec9d7-7dbb-9d5c-184f-40b4c384bbac@gmail.com>
	<20170911193846.aqrqdtw6ctaf744u@var.youpi.perso.aquilenet.fr>
	<2e1e6295-350d-aa23-74c6-07f163070f57@gmail.com>
	<20170911220842.lbs4th2765zzyahb@var.youpi.perso.aquilenet.fr>
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <d09bb252-5dc4-1c7c-0853-3bdbbba4cafe@gmail.com>
Date: Mon, 11 Sep 2017 19:36:09 -0300
MIME-Version: 1.0
In-Reply-To: <20170911220842.lbs4th2765zzyahb@var.youpi.perso.aquilenet.fr>
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

On 09/11/2017 07:08 PM, Samuel Thibault wrote:
> Till Kamppeter, on lun. 11 sept. 2017 17:09:49 -0300, wrote:
>> I have added them now. Please check.
> 
> Thanks!
> 
> I however realize that trap handling do not pile up and the file
> name was incorrect, so the attached patch is needed to avoid leaking
> temporary files.
> 
> Samuel
> 

Applied. Thanks.

    Till

