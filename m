Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D8B200120
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 11:35:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731497758; cv=none; b=ZRMRC/81mjm13Xi97RijpcVCto0hXNBjbuHeoJnzCrYr/V/HTVTuDLkmc2tVejm+/CM5l9HK+vkGfdhEkhMHNwAt7fRdelhhIDHaupNIqhz4bUStaEAXDP4a5rj6MABo4ztZQJuWY7DFj6ozYq6q+X8Dc4ifelCCKmh971sY2Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731497758; c=relaxed/simple;
	bh=QMR+33269Ob9NwpfBaWX9eyQx4jCNSf12Hluzuu3nrc=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=IArOhmWkcSrNX9AFmZbdAl/2Zk9zON+BoWWLg5RKEsy3IgKAIy2C9Kxba1cD//HFY1Ea4li0zbOjMDTYk3McAnoDrYfcM1Bkz/3v+eHY01rs1EeN3CMsNhauqfkDYbXPAG72rhVlyvDXCU9pf7bh2acdPxU4lqF5/y+Ya89d03M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=WUyruPgS; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="WUyruPgS"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69DC581395
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 11:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cjiFo8stqsQL for <printing-architecture@lists.linux-foundation.org>;
 Wed, 13 Nov 2024 11:35:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BDC7E80D95
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDC7E80D95
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=WUyruPgS
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by smtp1.osuosl.org (Postfix) with ESMTPS id BDC7E80D95
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 11:35:53 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-539f53973fdso641295e87.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 03:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1731497751; x=1732102551; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0v/Y7vCPOlTtTBqUJB7xMB0cuGF1djA758x1L0yNEOE=;
        b=WUyruPgSywqFJf4ts5eXXsq31pGMl2+GjUuUMD1NP8SKFN6Bgj4cIba87c3LvAI5kQ
         AYiBCEc1Dc5T5BDmHNCVhaxii5zBn78css2EdyajNcvSWYxbjrDBgWxrte0KQCTLgKOy
         VdfZBmco1/CdP45XJnZF4v/eFnAkN9B0yKMKS/NBH2KYokPZ8Q7D+A4U0VqySDT7Z816
         PMNmSMzt0xJIMdSPTCah8lw9m+UBT/cEPF0HdtxtbP1IftwXWyEMDRJFo858IH5pzrQf
         T1dIWjwZZGdr9SGJSR3AJF0JLmHH8Wk9R/l5FnYPDOIgoWqpwHXyK5bTV/7ZhKzLT4jl
         c7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731497751; x=1732102551;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0v/Y7vCPOlTtTBqUJB7xMB0cuGF1djA758x1L0yNEOE=;
        b=gsfPfv6vveorzmyw4WJiEWkCOMJgdhXRFCNmGjCUX3vBPJOw+P87V/Syh/xHxpSbwt
         YDmX7PF5Z6OFD7CXRQHF1co3HJ6yP77JoLzQixmIWSY2Hu3uFhtwG7qsq/lY/7XGpvh+
         lKQheemU9dS2Qk1+rTdFmDxLJAnXZUL2ceZYOYwJOdjLMYBxjHUUZY1+Betyv2P7yyxm
         waWuO0bsNDg6QhYtXOLGvnecq92dgMilMiwepEdvrqj2mSkQ0bLWEQcI+7iiM1jAGQuO
         OworIKBf0LYQGcSHj/a8WLMLU0c3gNVMoTbMO/ih5I8cR20apJr8CQ0E3xgrq8n0Y3kO
         4zIQ==
X-Gm-Message-State: AOJu0YxEVVt9VwdSVeKVJ8sdrWF5BLxO/O2tH+OxhoY6EDi5CkpokilY
	0tPqrF0cc0EIhbmULaKL2ES83uhE5spmMqIVKQ4B76RjW9F8I+98M0z+xxDmTdK/ZaGsR5N1Joo
	N
X-Google-Smtp-Source: AGHT+IGAukfXd8pVX5d1DXxI7zuOioZuuSXbPbK8aWD29t4xNd+uU2M29oKQqqdyIaAFctngqGOZ7Q==
X-Received: by 2002:a05:6512:31c8:b0:53d:a2d1:6bf with SMTP id 2adb3069b0e04-53da2d10781mr297965e87.11.1731497750654;
        Wed, 13 Nov 2024 03:35:50 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-192-47.pppoe.mtu-net.ru. [85.141.192.47])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-53d826a9b81sm2147083e87.219.2024.11.13.03.35.48
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 03:35:49 -0800 (PST)
Message-ID: <534756ed-ba9c-4f19-8692-329cd7d22d0c@apevzner.com>
Date: Wed, 13 Nov 2024 14:35:47 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: ipp-usb: exposing device serial number and vendor/device ID via TXT
 record
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi!

I want to be able to match devices, exported by the ipp-usb, with the 
underlying USB devices, because every second user asks "where is my 
newly connected USB printer?" and needs to be pointed to the list of the 
network printers.

For this purpose I want to add a couple of parameters to the TXT record, 
published by the ipp-usb:

     usb_SER=VCF9192281  ; Device serial number
     usb_HWID=0482&069d  ; Its vendor and device ID

However, if there are already standard names defined for this purpose, 
I'd prefer to follow the standard. Please, point me to the right 
direction at this case.

WDYT?

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

