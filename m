Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020A637C0FA
	for <printing-architecture@lists.linux.dev>; Wed, 14 Jan 2026 08:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378696; cv=none; b=PdMvbU+YWzSC2IUmoALinetwUvdrTaX7PyoaxNdxDJ4TAMz3S+erj3uWxKLbIrEbW8aGdrpKXN89U6hnxtKpES2qQWKyJU7Bm6FDWnXgblwaDdQuXmj+7V+WX79za+eibGCf9tWXJxzeXQZ9CPDfOMOs2lOdtZMaATA1RPyh7uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378696; c=relaxed/simple;
	bh=MTEolYJEuTWNKn6jZaPh2PE4zMpDBTpQ28w+xW8mfTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=bbF+inFLc89ezFaxahTA2pVKYWNgtkaQDiGQ2oR3TzKC4QnoSXoZmJGqFqqRugyh4Bd7baNhPBgpaG7166NOI41XsP3Bxhc8Z7F5J+WS2pXzLUsobPEM0X/wWuxl1XhpgMPv3h0SziB889tSadJSpVgEdrTNeKfRjxdVwpmdot8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QB9BMQt5; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QB9BMQt5"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47d182a8c6cso49151715e9.1
        for <printing-architecture@lists.linux.dev>; Wed, 14 Jan 2026 00:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768378690; x=1768983490; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+4iELnoBHRotj7+HdvkUzQ70ezj64JOZRxsxkE7NWS0=;
        b=QB9BMQt5aEWHgezkS7y2aUm5cQoK1ILzWgUeGqC9Ga/JX6WHsGamJwRLoVy0YKewk2
         BC/Y7ITEr26nEEZIXq5xeQ0cOBizIHzpDFwl0BkLxHpbUm/qnjAFJhNz9I4idf664jBl
         /DN9oeLTc6qu1R1OYD7jkU6uHC8y2v7X4q/sbn3Ib8CkG0qNb5AASbes78HqXrf29Gua
         hKmGSpquZtezhaI52vaRlYVJ/YnZVlwZMHEn8QgLTSwlNYZ5s86PoQpoDoTF0aXUmY1P
         RizPtgnyUBmGMzF6sm/S9YkYdYeXZhiGz4AYG7mONl9IjPLTmSBl1DmRC238uENrtEyG
         YlqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768378690; x=1768983490;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+4iELnoBHRotj7+HdvkUzQ70ezj64JOZRxsxkE7NWS0=;
        b=DYhGpEulKukwa3D+IaT8BDA+UGK486EUemtWOoNrp/VmS9mEGGW8cqsAYJAdF8WCzU
         AQ65DFOtyU/DC3afU0tB/dy+2trMGOyMMQtE4fOqTNHAvLCL2pss9LZdOMzVG4dpZnPF
         +WuDvQYg1jVWjpGSQP7Il3fDpvXpmvPAdx7jIV4JomqUptCKFeDOw0KpuEewJtLdjrLG
         fanHsEeBBnAu2g86QBjLra+qgyt14bYM2vQJbN4Mh6xzWr6H70B1e/tgBv5B99lQrI+L
         E3mws6e2cWOZRCTsR2+KVhMfa5J3tlHdo4pfSwHlOpKwYXxj1lyBb5QAtHy50s6rTabS
         0vZg==
X-Forwarded-Encrypted: i=1; AJvYcCXc5vQoro1XStSOO2gZL6RtTbjpPILxDpYYjB8DRkeHw3sGduzzojH3xVUNZ549eDxpIgj4Lqiog6xZVvEnyc+SBoAYtZk=@lists.linux.dev
X-Gm-Message-State: AOJu0YyNfI1XKjW2g9rAK/WF5e1Uz3oOj4We3qnCdq19tog4Bi5ThsXI
	3cs9ts9ahC3C0pyYI+0u8i9oZ7bCbbmdYu13kuoitFRKXEYHJDLmgn76NOz9J5D4
X-Gm-Gg: AY/fxX4Uhy0R5AIuBnA+2mH2C56cGY1pZYkwfPib0WYsNhZ99AXv/GSEOP2mmkDPpLa
	nAgvJINgSWCnQ8wqUpTwzAEeyPKb1BFw+3XPMDFgZOgJNW0Cv5iJSPswLNyQmslc2GjAcYmZp9N
	UZQ1VNDdnoCw76rhoC4OWqmUOo2r/ojChHxCl0W2vcfKjSVrTkDfh68sFWXfv8zkixVwM9SphxY
	490CTrkjq7FVCYKucl7rDBtkFgR9LdCN3whKqvuPckLS0Xrpj15e8aFm74hnmopmXoRbLeCr3p0
	Jr/EaknZt57Be86uRqHehFjb6T1i84DL7F9Ks4X58u3qGVQY+5yj0VpQ2boe36E61i8wFagkj4I
	wmHh/9ARh75ZUMc+k2vTz5k94PdiPC6shMki3mN/fn7wDlyM3cN7/3Zjo4jNjjFKLToaH87aGs8
	HWn+uQhti9C9b8yxKRCSYSqXD/hz5XYg7fhfa2Io0wHaNa87gJG5jJSbhJso4JN5depcM=
X-Received: by 2002:a05:600c:5490:b0:47e:e20e:bba4 with SMTP id 5b1f17b1804b1-47ee3356e79mr17802125e9.18.1768378690159;
        Wed, 14 Jan 2026 00:18:10 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ee55d42f0sm17286115e9.7.2026.01.14.00.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 00:18:09 -0800 (PST)
Message-ID: <f2884298-af5b-474b-9ab1-7fd93bc828bf@gmail.com>
Date: Wed, 14 Jan 2026 09:18:08 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Inquiry Regarding RISC-V Architecture Support
To: =?UTF-8?B?6buE6KiA5Lyf?= <yanwei.huang@deepcomputing.io>,
 "printing-users@lists.linux.dev" <printing-users@lists.linux.dev>,
 "printing-architecture@lists.linux.dev"
 <printing-architecture@lists.linux.dev>
References: <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
Content-Language: en-US
Cc: Yuning Liang <yuning.liang@deepcomputing.io>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <7c9337b79c412431401958354b131e22fbf4940c.f8c4ec63.d1dc.40e3.93fe.7ecf7c83f66f@feishu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 1/13/26 07:28, 黄言伟 wrote:
> Dear OpenPrinting Team,
> 
> I hope this email finds you well. Please accept my apologies for any inconvenience. I am an enthusiast of RISC-V architecture and own several RISC-V devices. I am writing to inquire whether OpenPrinting supports the RISC-V architecture.
> 
> If support is available, could you kindly provide guidance on how to install and run printer drivers on my RISC-V devices? Any assistance you could offer would be greatly appreciated.
> 
> Thank you for your time and support.
> 
> Best regards,
> Yanwei
> 

The printing stack consisting of CUPS, cups-filters, Ghostscript, and other 
components works on RISC-V. This is thanks to the portable way of coding applied 
by most open-source developers, especially also the developers working on said 
components of the printing stack.

So distros which publish a RISC-V version contain a working printing stack and 
driverless IPP printers (practically all modern ones are, AirPrint, Mopria, IPP 
Everywhere) just work with them. Also there are many open-source printer drivers 
for many legacy and specialty printers of the last 30 or 40 years, and distros 
usually include many of those.

I by myself have tested the printing stack on RISC-V, running Ubuntu on the 
first DC ROMA mainboard for Framework laptops a year ago and everything built 
and worked for me, both with standard Debian packages and with Snap packages:

https://openprinting.github.io/OpenPrinting-News-We-got-a-Framework-RISC-V-board-from-DeepComputing/

With this I know that printing with my driverless IPP printer just works as it 
does with an x86 client, but for all the old printer drivers I only know that 
they build on RISC-V. As I do not have all these printers and as many of the 
drivers are written by hobby programmers who just wanted to get their printer to 
work and perhaps did not make their code that portable (at least I did not see 
many complaints from users of non-x86 architectures, like ARM or so) I am not 
sure whether all of them will actually work correctly on RISC-V.

I was responsible for the Ubuntu packaging of the printing stack in that time 
and when testing on RISC-V I did not modify or fix any of the packages for 
RISC-V issues. They all just worked (or at least built in case of legacy printer 
drivers). I only needed to activate RISC-V builds for our Snaps in the Snap Store.

What is really a problem are printers which need proprietary drivers, as those 
drivers are closed source only available for x86. Here one would need to run an 
x86 emulator. This approach is already made use of. We have a contributor at 
OpenPrinting who sells ARM-based SBCs to turn legacy printers into driverless 
IPP printers and he does not only install all open-source drivers on them but 
also an x86 emulation framework to allow running proprietary drivers.

Fortunately these printers which need proprietary drivers are rather rare nowadays.

    Till

