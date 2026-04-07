Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6331FC0EA
	for <printing-architecture@lists.linux.dev>; Tue,  7 Apr 2026 22:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775599932; cv=none; b=Uz6Choien4PG8zuXHWjxO5trc3mKycE1EEOFGiLOh11N2Xg2uiFLXhPlLaP8GCI9NGP7545Foz99Sajg4LozBr2NsLBnJi7Vxeycfoul1zGQdkbWVrlFAhYtB/V8e9UTJ09eA3oX+PpRsEf/whtcHoKw3S295dcrmdq4hTRQM1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775599932; c=relaxed/simple;
	bh=3c8+NE5YqxVVUGHX8tGAqaqCF8EWj1x8jlKVdOkDg7s=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=V/Yp0dFePi6mszehr7TNDXjO7SfAt4tMemNoYwTkwU+r4XaNjKuOfUMQkC9j4OjY3GI83fvP1/7rIzao1qYxORnrHmr0USHzUXjlmXnSoBRX7Ok22bKccLe5B5KLXFuQhmUFKFKJbWCGXXuFxS8IC+8UOTbdMAV9MMS42ea5Jos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DLv3/DXa; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DLv3/DXa"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488b3f8fa2bso4599585e9.1
        for <printing-architecture@lists.linux.dev>; Tue, 07 Apr 2026 15:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775599930; x=1776204730; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:autocrypt:from:content-language
         :to:user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NOHy92krSJ2ewDCINW9nGd7arY46WbxnicYJGvY19mU=;
        b=DLv3/DXaXFECoxII/wK7YxV9eZm1GU2T+jf4AcHPbzVhSHEE4LRblJ9P8plt2w+/Ks
         jNT1Kej0GXPGqcYkDj1V6TZV0LGm3pvNtS3lqOKRDctLRppjPB7MluaOBx50JbS3QCO+
         FSjNqUMDaR2G03F3Od7MfL0xVmtE1ru5K8nmyiJGnuDGRF7HT5Ev8eH6VEFXL7UTbc8/
         utE/llZeJjIavJBL2iazBD41MCiSwSYVpRt+tVTOhe6Sm5bHwsjBqpFXbmJ8YetLFhie
         0Ibe8j56QwHR0ksxPq7iRCtAUccG2t9v1cBWVCuHNIrlPs/IAySZui9+I1MPaTYh0LAe
         giYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775599930; x=1776204730;
        h=content-transfer-encoding:subject:autocrypt:from:content-language
         :to:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NOHy92krSJ2ewDCINW9nGd7arY46WbxnicYJGvY19mU=;
        b=OZbjYrDE7Fno3ZYOAquvQe8ItIFirfzYSn38Hn59EHOTw/nXjK7yqaOl25bAWGc9A1
         e2j1GXnjWupTRtI4PTTUygNlE4QAVnI6d4u2vY3+DVW5EzckYa4Ff7APLB42G9KK4YIJ
         ezL/dAeXez0O0gHA74RlwLHMibFSC1MYPaUbGG8135MNSpwCJfosGZ2lNKejlVQaIH5i
         yjpRuOL8sbk+8uWF8H+bI8nhD3AEb09nDfvr99ktGubw7eao1zuO5Yu7Dkc0F/eZWJHA
         7YmdE2F/GWZdO9q7Duikb3SBWBk8tRRGdy8FvSbmVDVcWWMA4kDFpQzADhYjvhllBl1J
         yU5Q==
X-Gm-Message-State: AOJu0Yy2KQcU7LCAOwpSwei0jS4cgZmVNDTmJ2Org4UzSZUxqQ0mfLEj
	6Ss/hoVQMmq6LrF9Gu8mNxrwEHBQwflvFQxD+9AbosdSbv4b/yYup/axuoFCoA==
X-Gm-Gg: AeBDietiQanDP5BeJnoIab/QQmRdVIPxikj+Lb3X/FP8ayLArkWJwn3wF/FObdDlfg7
	7EQ77QaIY4Z3KBObzfYbwhuQGZtyye2m3lD1yrimo561MBjfHPLjhGwtj8yAAl+xNO+BWWoFmYd
	ciUoYzcb1MrvhuUX9SlVAqhKbUog/B6OVfBYc9hXpY9FPD1W5UHlmHW9Y9mmxKvVpwUuqrEkpuL
	gk+XQ6gbqp37JDekt5nXcm2XcqW9BSGuggfwASi22e5JYfkUjx6DbF4NYH5Ds8RmIpm1ryiXH4x
	Gql3mRyRPIIqCv7GtfYt4vAHFEwCIPgUkb1w6efv/eet75NVG/oZfHMiKHdSEKZXI3SMqok+Zaa
	rXQz3CEF6B98/MWx5KcemclyKwJxS7W8Np40Li5/C1PGygtO+FoX3fpHTEoEdryMFxpOtE9pt/K
	Uo5ZwfAQRaCproyrcjGd6VFSKPXNXwRjEEY6HKn9dFHpzx25vWYFXKKRis2jWszoRNP72FpiUaC
	H/Kiy8sEdQPUV/u4Hx6aJKifPJm+sNPoF6S1hjpjqhIgDkQEvMTEHbMyCqtgZln7oMfHVwSK4Yn
	DzjZpiydVQ==
X-Received: by 2002:a05:600c:4590:b0:488:a502:8955 with SMTP id 5b1f17b1804b1-488a5028b2emr193729885e9.4.1775599929581;
        Tue, 07 Apr 2026 15:12:09 -0700 (PDT)
Received: from ?IPV6:2a02:8388:8cb4:cb7c:4869:425a:1089:99cb? (2a02-8388-8cb4-cb7c-4869-425a-1089-99cb.cable.dynamic.v6.surfer.at. [2a02:8388:8cb4:cb7c:4869:425a:1089:99cb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e2c60a2sm51442152f8f.10.2026.04.07.15.12.08
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2026 15:12:09 -0700 (PDT)
Message-ID: <11c14ab1-3cc6-4203-b5b3-dd097839a40a@gmail.com>
Date: Wed, 8 Apr 2026 00:12:08 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-architecture@lists.linux.dev
Content-Language: en-US, de-DE
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
Subject: printer-more-info not used in KDE printer settings
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

while working on my printer 
app(https://github.com/arminfelder/br-thermal-printer-app),
I noticed that the KDE printer settings dialog is showing e.g. 
"http://brother_td_2020_usb" as device admin page,
despite PAPPL correctly sending

Get-Printer-Attributes response:   printer-more-info uri 
http://localhost:8142/PRINTERNAME

so before debugging through KDE printer settings as well as CUPS,
I would like to ask if someone has already an idea about this?

BR
Armin

