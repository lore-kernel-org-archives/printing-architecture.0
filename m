Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604534219F6
	for <printing-architecture@lists.linux.dev>; Tue, 16 Jun 2026 09:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781602301; cv=none; b=itQ8vDunzBBpXXrPYtC1Eyx/mjS3e1swvscCJ99TLl7cspcOUVDpJZyfjyou5aCAwZuJ9xUe85sN/3t0jVtL5JCJrQ0gd/nsvveFojYK3wIXR2a6t+AcTtHx+bVNtjblgi4/SBWfiApMYxaME1vqemQGX4LaxcuTy+eBSshoyb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781602301; c=relaxed/simple;
	bh=qb19NF6J4GG1CFFEhmnMrI778PUOudXhRmn0UMUe0Y4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=PfPzA9K5BygYWgkw62sO42qjIsW95r3bGeB73z7sXapgvS3pdlAJ/wM58SMZcw+Zd25qrhLPuBBXZvPbQzQEIrj4hSKfQWxCK+nsIPmFAydB5Op5YjdOzzz96dD1DMQqG1cSjXt1AdZDOffUyC8/ME7ZTwlw7YgnkI0BLRsdN4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=da4d54lQ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="da4d54lQ"
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-490ac357c55so41519875e9.1
        for <printing-architecture@lists.linux.dev>; Tue, 16 Jun 2026 02:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781602299; x=1782207099; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=oysND/rz2rRnPcwtfd1qNf1ofeCg6X0qC5NU42ZTVT0=;
        b=da4d54lQckHLtxvpkbQK7MbXuMXEaC4qBcJRDcIvND44aLxM8i18KnF5eL4C3RRLyq
         qpCqah/NRDzEO73s9qDGIJKym2BJhTP9XRpmpJ0pe83MmC3czCNJlxj+LS3o7zgihNL0
         c73+8FH1uatYXzdiLW28K5iXVx/7iTTtOzAxnk01GRiJYzgJILFsWw/xrwwu99lkTzOE
         II/IwfEPedr9bT103JrME2xkYFn1uTzEquy2osHEnNrHrWZe+n+5bICOysBRGHkA2jOm
         77hulrE8IaHEu7KdbnAJfXlV+f+jvTa6l5LAKDGjN06+eVeTyxvfpFRXqL3wrJ/gG+Sg
         8HXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781602299; x=1782207099;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oysND/rz2rRnPcwtfd1qNf1ofeCg6X0qC5NU42ZTVT0=;
        b=c5RbVV/0rgDw6p4Ae0q6qePFEx+ZS36rkqteS0JfGcDfeX54zTI5rAV3jRGJJi5sV8
         vQcUUmJusKmK2lFFOP98hqyOtQSbyg/ZClZGRZwyyigPmPiRrdymvgWt+myXXUkOEGNi
         dY8DDfSiZRyXSYwrbAvqoEE9dHhdpisUBHxcRsh1hlPKuUb4bgreS9ViWZ2vwkxJ8d6R
         5YFKq1JUjAHOAciZwMH4xAjVyD47twm930uFQ2hnClz7qVw6e+NhvkGLkGdQGuu0tUkN
         XfbfStkr6U/tlZl+EqyFeb7bU1Yyp98dlZuenta02qVNT1jygbMPJpcw3URn70nY4iB/
         maXw==
X-Forwarded-Encrypted: i=1; AFNElJ8ok+7AHvsTPfzRkB4cbDa6U6ko5UxRKhx8yiCPK7QxOBY0FPyxXLs59+R2n00Ef/VWWb0qWJgRNTQwiGK0dlUD+VP63U0=@lists.linux.dev
X-Gm-Message-State: AOJu0YwGW+ySQPlUiL/pX6wvwjj3GWa5DScLtgZjY6jbLmhFrBEO8iED
	nJs7JT15HUNMfpGcpuIevwUCrNFieiUo9ep3zj93KnOab3/vz9cTTci1
X-Gm-Gg: Acq92OFm+He/ltTnUAXIHA5qP8Q3sbLH5OQv7FUEOLQoEhi2jtXt0ZiF/KSNHwiQqmH
	gIJ/sBrgQ3KCTuiUypgeuHtfIaCYb2h8W7z+3GR85jNzocw0wZvQ0Z4XZRFn+EcMhBFK24JpuES
	Q1ZZqf+kDoyX3yYRSHTvKtGV2pYYFhMc+HouT8IgZmvwsoVulcOm5zDOFGf0ONqIaU8GKn9K9Q5
	csGxxe1TyKTJLFMYLUPFWgWoiOyBwwFM+oHe1T1NMwwN9TuSa+n9owJvPJVsXBfW3yZf43Skd2w
	PR9yZGGIgIOkP/FXorbmRNA7DnHRLrj+L1ZG+7ZV+UTxY7xUYjOfCcKFM3b2dKQRu46SNETB14l
	MLFtLglL+KITGW/x9VlLbzB6mXf7SZrMTaqlTBHQAWv0X34e79tmonbStRcTmsXDKHJ3rPxbhWX
	P+o/TtbGxInB/GLD9Xwkz4ZD+XVjUtqaH02/aCBcAo9OLxNcQfa4qV9QTl2npQFDVaN7ClNCRVR
	Kvy5ZcEANtEXpp8wWRxDG+itjFzE5FFXdTqCi1ZxOUlN/9CpHkkaoDpLHrle9hot9FSnpWu6Hj2
	pi1dDbt8NA==
X-Received: by 2002:a05:600c:6286:b0:490:b355:9c70 with SMTP id 5b1f17b1804b1-4922ff93b2cmr42249425e9.11.1781602298593;
        Tue, 16 Jun 2026 02:31:38 -0700 (PDT)
Received: from ?IPV6:2a02:8388:8cb4:cb7c:ca03:76f3:b171:1da1? (2a02-8388-8cb4-cb7c-ca03-76f3-b171-1da1.cable.dynamic.v6.surfer.at. [2a02:8388:8cb4:cb7c:ca03:76f3:b171:1da1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2d933esm41946684f8f.33.2026.06.16.02.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 02:31:38 -0700 (PDT)
Message-ID: <02e1e26c-0c01-43b5-be75-9676b747a936@gmail.com>
Date: Tue, 16 Jun 2026 11:31:37 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: handling of printer-more-info in CUPS
To: Till Kamppeter <till.kamppeter@gmail.com>,
 printing-architecture@lists.linux.dev,
 Kaushik Vishwakarma <kaushik.vishwakarma2003@gmail.com>,
 Mike Noe <noeerover@gmail.com>, Tarun srivastava <tarurak4@gmail.com>,
 AbdElRahman Khalifa <abdelrahman.khalifa.gad@gmail.com>,
 Michael Murphy <michael@mmurphy.dev>,
 Titiksha Bansal <titikshabansal0209@gmail.com>,
 Mintu Gogoi <mintugogoi567@gmail.com>
References: <1afc196c-d7cd-4484-b7cb-9ec434a85d01@gmail.com>
 <e10f02b2-3f97-4957-b762-3e045457720b@gmail.com>
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
In-Reply-To: <e10f02b2-3f97-4957-b762-3e045457720b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

thanks Till,
just for information I created a related KDE bug: 
https://bugs.kde.org/show_bug.cgi?id=521508

Armin

On 16/06/2026 00:06, Till Kamppeter wrote:
> [ CCed the developers for driverless IPP printing support in the 
> printer setup
>   tools of the GNOME, KDE, and COSMIC desktops ]
>
> Armin,
>
> thanks for the hint with "printer-more-info" in the printer properties 
> reported in response to a "get-printer-attributes" IPP request and 
> that the functionality accessible through this URI is often not 
> accessible via the standard web admin interface of the same printer.
>
> Anybody developing printer setup tools,
>
> according to Armin's findings, it seems that for each IPP print 
> destination listed by the printer setup tool there should not only be 
> a button for opening the standard web admin interface, but also, if a 
> "printer-more-info" attribute is reported, a button to open the link 
> provided by this attribute.
>
> Also, the "get-printer-attributes" IPP response should be checked for 
> other interesting URI-type attributes which could deserve/need a 
> button in the printer setup tool. Michael (Sweet), as master of IPP, 
> anything worthwhile here?
>
>    Till
>
>
> On 6/15/26 23:47, Armin Felder wrote:
>> Hi,
>>
>> my printer app exposes
>>
>> printer-more-info (uri) =http://127.0.0.1:8142/Brother_TD-2020_(USB)/
>>
>> to cups, but in the web interface, I can not find any link pointing 
>> to this uri.
>>
>> I think this is a bit confusing for users, as they only see/use the 
>> operating systems printer settings dialog,
>> which points to http://localhost:631 , but from there they do not get 
>> to the printers own page,
>>   where may settings/information not exposed via IPP (always on, 
>> reconfiguration of generic buttons, phonebook etc.) are offered.
>>
>> I would suggest either:
>> print dialog -> cups webpage -> printer webpage
>>
>> print dialog : -> printer webpage
>>                        : -> cups webpage
>>
>> BR
>> Armin
>>
>>
>
