Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCCC2609EE
	for <printing-architecture@lists.linux.dev>; Sun,  7 Dec 2025 12:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765110242; cv=none; b=TdnpvrGV3Texw6AfoEYctZ7X3GVnnDB3GnM+VMJETkbZDuy1raV5Gh0UI59HSpa3C1mOeUY0V+qHrwPpe4ADu61Z//nTy78P5qH5ZH8oUcTGE873CXjPkU92Aa5x8wvplFZsfERFTO//pQ3vxaouDmYAomAW6+XShEmNdvQB48E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765110242; c=relaxed/simple;
	bh=n5RduFPuLlcNdulgoUE8kSqhXrncJ3SX7pKcO2wnWjg=;
	h=Message-ID:Date:MIME-Version:Subject:References:To:From:
	 In-Reply-To:Content-Type; b=cc5Q9Si13lHTmgyNumREtYrCYQ2BgQiiztgoA++DK/F0q/6JtpHflQ+FatqTc5QXMIHCVN59lkQe2xf62lIVBU70iT4URI80+BXglclhlfldKrI0Y8L9Aib8eG+JZddkkTo2bxBUd1bMj8kgrpBQ/bQ5IAHQZHQsBqIwOOkJ/e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BV6id2TN; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BV6id2TN"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-640b0639dabso5639678a12.3
        for <printing-architecture@lists.linux.dev>; Sun, 07 Dec 2025 04:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765110239; x=1765715039; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DiQP94szBXzdXfL3PKS/g3BCpwLOWqnoY3gk+PQY7/o=;
        b=BV6id2TNrE8+47gCB+Ug9H914dJTRDpNbGUOPBkxP+i4FOv6UD4UZkhyz3hQqlqGr7
         B2kFecFUEGS8yTQFvgs3oG3SnopI5u7I/1TGTozXE3FtP00bbkA4H0r+cIvPS2zGObNT
         hqFN4rIrSPAXfKFV4Dc3myC4CTJmakZnXCUIt2aUzZGlYe+mXV3SeJC1bAX9rMn/1NeH
         gl4X0gF5YkLALyZza3UtRlW7u8QaG50e1Jh4OVO16i+N38XCkVbUtIwRvC0SBS2gIIbo
         hoeLO810dSMO/8MSmiuoj5cONShe6sQJf9pH6ooNd0J5qJyYxpXrfXDe4D0+WdfShwEQ
         mjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765110239; x=1765715039;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DiQP94szBXzdXfL3PKS/g3BCpwLOWqnoY3gk+PQY7/o=;
        b=Qzo3bdMbz2cShYmEBV2eVexuToHZ9A2claYZckW2ulGOR5zQQ0T83vD7F2g5QroY2i
         6zQUyVhfL7L+ZZZHFf6ZZll2GmIImgU/36sby/SZs8X4K263YJL2Vvi+5TagcmjjG4iT
         ZyJXn/jPaee+IMh48e2MbaYLq/6OPKgF4QRdHx+/4FEukADx9h+RUI7TkxMYpe8wVqJG
         IxbnbJAuolrcKr6Z36cGPqlfSdwEgu07v71QjEJmKy52050oUdVcO02uL4yDiLrVmxNg
         2ZBJ8lyjWaP5dGPmTSWD6KTSdAwjAwmQD7iQsX7ClDvKnD4gArZ7m+IaWAg0SghmpG9a
         PdKQ==
X-Gm-Message-State: AOJu0Yxr5XuwSE9Sxc2twtiyq9Rg+G8RW20p9JOfpGEENVahMG69SeAf
	YcbRACEiXe2fFvzBBS0RqyKbotj+E80/z2r166D2On+wCC2LDbG1p5vDraGbJQ==
X-Gm-Gg: ASbGncvaYQz2FnKixbzitMXxbN66aNDpFb8yKda2VRxI5TWa6Ei1q1mixUB/PCGOuiI
	jEtrMm4m33OfmvoY2AfRc7MyfiNaCRu8iCcUhS13rFOSSO7O6/IkoOrgxgnKgEyzKgoYohc1Ys3
	m+tpgc2UfBwAay3VmrSen2vRRYZSS6yJ2Y4jwJdg3Ut6PXUoqO29geuOW4HDjFI6lxTJmrhOO1J
	d0fvbopr9ae1oQPoSDxXYedpLseTzJ4qufXc5x9RSZaFahSoW2JVCZgbqstGZAVO4yfBsNq+RtE
	cRuf5eNXEvO9BbC0POm2BO37DzbqzYgBiuBbvfjDR5yRh2/2xKd3N4Zujuc8PiqSJDrgkj6xyuW
	5SQR+W+FAlNwdVynwv7pxU3yDhDGfQeSi+XXqTjfSGC5N9NEE/Z6RjBmAl9poET5yqVW1Fi5QaS
	Fcw8nHunOWJJumCnFNsweZRIh5iUGQm483hlZLNbosO2Jo07ugjS/Fg0sAa3zbp7VOStuhjDJvt
	x2rM+H31B0ECn4M5BaOTkLRLYn9dF5/MF9tU+YdaxBJRFKvRSctcqg9z8YvVQRyxV/wxA==
X-Google-Smtp-Source: AGHT+IHAzppqDlYawtx/jRwkQT6dZ2oWqpOEvg8mxY0MW+nWDu9txqj5T4kHhpwHHarBpPCKtCdoQg==
X-Received: by 2002:a05:6402:2694:b0:63c:eb6:65e8 with SMTP id 4fb4d7f45d1cf-6491ade9325mr4230039a12.30.1765110239384;
        Sun, 07 Dec 2025 04:23:59 -0800 (PST)
Received: from ?IPV6:2a02:8388:8cb4:cb00:6406:194:65a8:e32? (2a02-8388-8cb4-cb00-6406-0194-65a8-0e32.cable.dynamic.v6.surfer.at. [2a02:8388:8cb4:cb00:6406:194:65a8:e32])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4975c56sm824855766b.33.2025.12.07.04.23.58
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 04:23:59 -0800 (PST)
Message-ID: <f8fb46d4-8edc-42d9-aedf-7a7adefb4865@gmail.com>
Date: Sun, 7 Dec 2025 13:23:59 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Question regarding continuous media
Content-Language: en-US, de-DE
References: <829a6fbe-2514-49f9-9cae-b9a590364c0f@gmail.com>
To: printing-architecture@lists.linux.dev
From: Armin Felder <armin.felder@gmail.com>
Autocrypt: addr=armin.felder@gmail.com; keydata=
 xsBNBFZDBZ8BCADf3RKYMuDmtictpoInQ26wCIRUcRFgI/8NeVtZGteBLfdLNobXU9gSX5kZ
 kCU9ZtfmT0GQ+sGNgvq69X8JrrchpwowonwCwaaQpZ5VlElzkXPTJdXbmHfKljQPVeri2HTz
 Rc54/8WXx3y/mj0P724uIE0GEvt58eZ7UkMQdrzh7LS61NR2fQZrDX4f3IrAcush60JftWUq
 SWAm4lnbbJ5NX8Gb4z0+v0URtJ8oXI+zpEtJ2xUv60O9ME1/YTQ0rCT1g16Z2Gb6ZQzRK3M/
 mWMPAffn6JKfmQZWprPU2MR1nRcD0ocl1S6X23+Ch+kBBk/VQLBDCY0D15JiWsrqTrbzABEB
 AAHNJUFybWluIEZlbGRlciA8YXJtaW4uZmVsZGVyQGdtYWlsLmNvbT7CwHcEEwEIACEFAllB
 M8oCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQVv6ymGEcC7QxSwf/Z/aTWD+fIIDo
 /MMYjk4wCevt7rPd187XUF1eZmAbQcmgfFn4+iJgSkKo+fy0DXdL15Tw3SBIgmK1DfI4KMOt
 02Le1tbjvPxBf5Smp3rxvdQmOYw/DPhkABFOZ7odprpqBP51lo8FoR7/c5QjCdzEVy2GcSOi
 BxCNAe7zJiAyrAEqdFgYP0XC+6sDZLhJ7GZlBw9cRR6z0j2BWu8ymd83Ub/EqsNyLy20vAZJ
 7sQAdSHosnm1cJyV2KLu3f2/ne/V0YxQ99BBWFiiBsCxyzx15vRvCVmAdbrOoVFMp4N4c5BH
 7AVeNXc3O8zvBAQ/8YkzNXiDSCQPg47N7tqefFkJZs7ATQRWQwWfAQgAuSLc/8HqE8jWgzhq
 eDJUmhvTIwBDjV/zGA6cnUxn2U0nWn4KT8ouXeqIjR7zwVUJ+WIANzdJp0HQerTLuMGd1gtD
 xLxJ8w7yb3IF357lU5O7T9YSzUojHNJ8hE6d8h79U8q3igf29Shk6/7iPcdJvPGWEhudwBld
 dbcIf2eWhGZH9hM3Ffj0rRp0kOBHcHDAuB0B+1Xuv0hwqn2mLSiwB7fVetLkYe0fLRLHlziS
 j5OCgM6/pL/6rpqwZVyXB72FXGS9HFdzomiLOWipCciVOAAQbvR3CJ2iLFQ/MGqv6beRsR/k
 d9ZNuLXmW0FE4ttkXtedfJrPdhk9xzfNFx4KTQARAQABwsBfBBgBCAAJBQJWQwWfAhsMAAoJ
 EFb+sphhHAu054gH/3dvXgWSZPdmDJ0T2513qWLPUGZO+9QnCKWJv30zWAioNk4sPxl1oSIk
 /jnBRGzIyKYLk+puhS0OcfESy439Yje0/gt+v4sPshEZFN5gnxHptJmi8PTu2uF2NTeDlq2s
 d0dNQF6ycKS7fp415qiivo3kK8chlKFKRz9HJ5rcbEFrnbmrlqXLydOM+VYws1EQrr1m+4LU
 xfQR0NRN+Bk1gdr9czxXagbVNQS83/XOZFFmcJpM6C5UJfQTUYAjRMvNaqaqzMpnYNSUlj9y
 AJTsCb6LEZTkQBh1kVECvS7Ax6RZ8LgmcHnk+OCJ/32yIJ+5TkwVH6urBkWAGhf3clvtBWc=
In-Reply-To: <829a6fbe-2514-49f9-9cae-b9a590364c0f@gmail.com>
X-Forwarded-Message-Id: <829a6fbe-2514-49f9-9cae-b9a590364c0f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

In my free time, I am currently working on a small thermal printer 
driver using the PAPPL lib.
I defined a media called: continuous-short_bdl_58x0mm (5.1.3 5101.1-2023)
but when sending a job with e.g. 58x99 it fails validating the media size

if (op != IPP_OP_CREATE_JOB && (supported = ippFindAttribute(client->printer->attrs,"document-format-supported", IPP_TAG_MIMETYPE)) != NULL && !ippContainsString(supported, format))
{
   papplClientRespondIPPUnsupported(client, attr);
   valid =false;
}

job-ipp.c:540


Get-Printer-Attributes response:   media-size-supported 1setOf 
collection {x-dimension=5800 y-dimension=0},{x-dimension=5100 
y-dimension=2600},{x-dimension=3000 y-dimension=2000},{x-dimension=4000 
y-dimension=4000},{x-dimension=4000 y-dimension=5000},{x-dimension=4000 
y-dimension=6000},{x-dimension=5000 y-dimension=3000},{x-dimension=6000 
y-dimension=6000}
Get-Printer-Attributes response:   media-source-supported 1setOf keyword 
main-roll,auto
Get-Printer-Attributes response:   media-supported 1setOf keyword 
continuous-short_bdl_58x0mm,labels_bde_51x26mm,labels_bde_30x20mm,labels_bde_40x40mm,labels_bde_40x50mm,labels_bde_40x60mm,labels_bde_50x30mm,labels_bde_60x60mm
...
Validate-Job response:   status-message textWithoutLanguage Unsupported 
media-col collection value.
Validate-Job response: unsupported-attributes-tag
Validate-Job response:   media-col collection 
{media-size={x-dimension=5800 y-dimension=9999} media-bottom-margin=0 
media-left-margin=0 media-right-margin=0 media-top-margin=0 
media-source=main-roll media-type=continuous-short}


so I am puzzling over, if I am on the wrong path, or how to do it right?

Regards
Armin

