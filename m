Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5311538F935
	for <printing-architecture@lists.linux.dev>; Mon, 15 Jun 2026 22:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781561176; cv=none; b=dNj/y2g8MPeZcy/7ARMkfndBJiHup9Z7ktymfHYXPOzPAI0jGcmZTSUWtDl+ASFRof9Bq5jL8nvKT7BgKaEWNUAPpPQP3FkP2JjJtKLdr7JWqY+WCqKqPGYsXkhHh4wb1xjIJDJvvj27jygr3bq/5ZbC9u9CkaD37onLJoN8SG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781561176; c=relaxed/simple;
	bh=67n7dnJCkHYiUfH2CBOCUap8Wyj4UthJ7HgB9Es1Sx8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=HQPpjay0Cgt56ofQJ/0yZB1fo13a/gKZ2j8NIqP69rjNqKqnu/EmXwVIgs9npPRabjIpObNosX8tQgnX6VdXKwEd5Do5qhrH38F8/NFEBGtdVO8Zl9+44gVpR7GGLF43KjrBIOU5KtlMTWyM20IXF5Sn+VQuMuLKvTm9Spomvfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YCURWa/V; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YCURWa/V"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490acbb0f89so25090875e9.0
        for <printing-architecture@lists.linux.dev>; Mon, 15 Jun 2026 15:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781561174; x=1782165974; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qdH/iFgR8JeRhKVNUC+kTs0cfslpJvBUIdmZjQObxro=;
        b=YCURWa/Vtj2ZUAqD81Mmjl9DID6uqvH+rVlc2AlRkKby9SLTkq9aiFoXsOIELejx55
         vuYjWehKsJwEnJzpj3WKC21BuqLTuFhLrX1oBhXGnwzI8+TMRb4a+l7Sm4aEP/MCE3V9
         auC7CYEpgGvCKyYt9DDYA/tIBa0eKt/rtHSisUOS3IilNcNEj1VvVopjk2jwD8JzoYDL
         TMMMqGrtTyK35tKnXUg2iSaF7LHPbKCHOUz4kyI/uHgQhBBHinVjeg0+FvwHB9NdPPmR
         knws2FkyX5KK9RjoeOs6th6+rgfrwFTuJKCW4dKSlC2jkdkGaAqAMMzKydd7oICbZ5e+
         6ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781561174; x=1782165974;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qdH/iFgR8JeRhKVNUC+kTs0cfslpJvBUIdmZjQObxro=;
        b=I7wgr/auhr8y7XhK58qcNdxqo/0GVCyy4pOZYAmntYtAMFnD2yMVdcpNC+KyquX9Kb
         Ft22yabBVt0JHYXuYeB/IPz6N1vAyfKhdRgFuVlB1yFY2qLSCjfv1KvQdyd3xQLUAC80
         tixGG9EcftKrH7kBnL8k/23YhvQiYjQVuRBI73Q/MTThaCp2CWRhHoODqnEER+btdzUV
         CRtkayBVjHE727+2TBgwX09zD2+yKRZghaUxigyc5V9oGbYz7ybrS+fWaeCiEAq/AZCZ
         rUrI7qOUcx0YL6nfpvRqgbmXTdvr56hGU6qcdio8RNvduOYaRk6hyuOv+e6z6IlsyvDB
         v3kQ==
X-Forwarded-Encrypted: i=1; AFNElJ8iOM0MkSwrnpusN1lWkYBL/iecZh3vtjqnlPRuAPSvrK3jL6ifShLbufGx+TZ9u8YWeZMLNtL5IpFwq4WPDPUaBrt5agk=@lists.linux.dev
X-Gm-Message-State: AOJu0Yz2ioUYOjO6fEeyHdYAVD1l7gX06m0hG1ebvZbnISGyxIKMnweL
	w3uDtj1J2QmJMRng1tBlqOzqmQvhQ4SS/xtdMFGwBd7Zdl+wIHDPb3UK
X-Gm-Gg: Acq92OFQm9FWfAH87tHLKcNU2HoHOBLcxxiBlozvVjPtEw/16l9Fsk0dWXNJ0PxvgpI
	8XDPDwv2P3GjLbT/NUo16MBlK+sPxkkrPBM65b+Fi6DTF6pzGeikY+Skf6aB9tovhT5qLWgt33j
	u7Vz+dHDi1LHFmgJdltbe+ZjNMXN/KIOp6s6EbwykzsCjZUYIvM9My5h4VabbbnXJ13eXUASYs0
	Pird6VlVefQ2q48LUps1EIOPSnN4hm49V1GVI3+BwJyrz39mXxFeLA7WQE/wnU/U/CF/4/sk/83
	+A3TBJvt3ipXahwUCU3bYSVzVwYVNBvUBu8jhwJ2EIvSfTfp0JzvFiGyN77T0lIVFikEXR3HfbP
	Xfj/n/Cxc8hp98AGHE1tq3LCnJxYUvL+jGDkJnpcFYS/lyPUyI90pcGmii7BlV3EQilDwg10cks
	uD2AJoW8MDgV1yQ24cRVKWnkKLcNHLD5CKM9HwM1UJw27TE1fI8bETZA6so2zxBiSrEarJQ5Reu
	kGEKo4=
X-Received: by 2002:a05:600c:c490:b0:492:2e7a:9ba7 with SMTP id 5b1f17b1804b1-4922e7a9c00mr36837545e9.3.1781561173453;
        Mon, 15 Jun 2026 15:06:13 -0700 (PDT)
Received: from [192.168.68.113] (212-197-185-25.hdsl.highway.telekom.at. [212.197.185.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49230a4f8d7sm3257615e9.5.2026.06.15.15.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 15:06:12 -0700 (PDT)
Message-ID: <e10f02b2-3f97-4957-b762-3e045457720b@gmail.com>
Date: Tue, 16 Jun 2026 00:06:11 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: handling of printer-more-info in CUPS
To: Armin Felder <armin.felder@gmail.com>,
 printing-architecture@lists.linux.dev,
 Kaushik Vishwakarma <kaushik.vishwakarma2003@gmail.com>,
 Mike Noe <noeerover@gmail.com>, Tarun srivastava <tarurak4@gmail.com>,
 AbdElRahman Khalifa <abdelrahman.khalifa.gad@gmail.com>,
 Michael Murphy <michael@mmurphy.dev>,
 Titiksha Bansal <titikshabansal0209@gmail.com>,
 Mintu Gogoi <mintugogoi567@gmail.com>
References: <1afc196c-d7cd-4484-b7cb-9ec434a85d01@gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <1afc196c-d7cd-4484-b7cb-9ec434a85d01@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

[ CCed the developers for driverless IPP printing support in the printer setup
   tools of the GNOME, KDE, and COSMIC desktops ]

Armin,

thanks for the hint with "printer-more-info" in the printer properties reported 
in response to a "get-printer-attributes" IPP request and that the functionality 
accessible through this URI is often not accessible via the standard web admin 
interface of the same printer.

Anybody developing printer setup tools,

according to Armin's findings, it seems that for each IPP print destination 
listed by the printer setup tool there should not only be a button for opening 
the standard web admin interface, but also, if a "printer-more-info" attribute 
is reported, a button to open the link provided by this attribute.

Also, the "get-printer-attributes" IPP response should be checked for other 
interesting URI-type attributes which could deserve/need a button in the printer 
setup tool. Michael (Sweet), as master of IPP, anything worthwhile here?

    Till


On 6/15/26 23:47, Armin Felder wrote:
> Hi,
> 
> my printer app exposes
> 
> printer-more-info (uri) =http://127.0.0.1:8142/Brother_TD-2020_(USB)/
> 
> to cups, but in the web interface, I can not find any link pointing to this uri.
> 
> I think this is a bit confusing for users, as they only see/use the operating 
> systems printer settings dialog,
> which points to http://localhost:631 , but from there they do not get to the 
> printers own page,
>   where may settings/information not exposed via IPP (always on, reconfiguration 
> of generic buttons, phonebook etc.) are offered.
> 
> I would suggest either:
> print dialog -> cups webpage -> printer webpage
> 
> print dialog : -> printer webpage
>                        : -> cups webpage
> 
> BR
> Armin
> 
> 

