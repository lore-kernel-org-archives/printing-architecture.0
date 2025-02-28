Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5459C1DE3C0
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 22:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740781223; cv=none; b=ee4CteCtnr3TgTrqs2IB6wWmk++IW6Z50Pgct5M7kXT4UIYiLdIYqxOq/78MGv+bkBPi8+LBAEzKRnPYnF16qxpqsVyNa7K31zeEfh+SvZ71ZqQMsi47ehnu/nB6jZOVWHZxv61UyEOMPaHMufSM2U7aY6h/NZ+3LepTJE/Lqag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740781223; c=relaxed/simple;
	bh=5LhVw7m83WaigxAHxx2H2ppMokfPOBEkeovu2wKZ0Ts=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=kgTGt8EQIsUlzR47rAD3DA4vkQjsYjuK9VBRN4yFcdABObNRyv64F0bC6Y2+q7HeA94bCrQKRnzeR3pL7qa8x2ILxIwm0wTwkIByMmQLhIniF/YS1Xypqgw0lA2VIKatBDzD2s4XEsQcReb6rqypzI0HcS8iHa2a5+U0aL5+aNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=hUlKeLm+; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="hUlKeLm+"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 811844F902
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 22:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFrGhXMyhsbs for <printing-architecture@lists.linux-foundation.org>;
 Fri, 28 Feb 2025 22:09:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F510537D8
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F510537D8
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=hUlKeLm+
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 8F510537D8
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 21:40:31 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-543d8badc30so2891463e87.0
        for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 13:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1740778830; x=1741383630; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=be0RlAYwuX4GABgXb3My/f602a0pQv1/gec00IdXpW8=;
        b=hUlKeLm+/pbDSY1H0mUCvJklP3uJeVvcTf14nSF4DAVmr3Xy8YAJSW+t02ApzkBdvm
         Nl/n0u8849MGmJaXSbOyG4Up/enJfIN5BodLMTHU/AwswrHcSb+TfIyCdjPzDc3gDDhx
         sSxnUxv/Oyq7qe1gK7+XgU7VY+tbdGuw4AnSw2QBA6NcUzN7d1VYmR3pfI5J7kqC1+8l
         rvrdrfIczXkUPsuhTDyCw0F/59FdvJOQCDLMYeIhZz0LNs4/RP018LoBi/BBIfcHc062
         ovH3umVFSXzDrpAldWIMWD51Y+ZbdHnGmv1Mxqo3COP9j05Mp3eHRFAte9AlQykoxP2B
         VvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740778830; x=1741383630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=be0RlAYwuX4GABgXb3My/f602a0pQv1/gec00IdXpW8=;
        b=kLzMuuGuUtAHi8noN+KPD9PIk+okFxvt3jNA0LOIXSefqZCEgbldLrsgHWAZCqGn0I
         VUDZ9zKwCpvRr9+GslWmjLM0rVniZ3jdF7C+OGVRaVAstqZCtKpuL1TqTPb8vdAHwOkA
         uXH5p44NN/PS5qmraGn6OulotsM9Ho5D95ixlFEkBhSXy+Ucxs0y95I5XhODIZrSqfJY
         IAUbrQcEBUHHMj0bAwTp3OddnCUBpcsIa46RqXYwjvUALhdldmBLLovVTF8wczjPqnPQ
         ivrkK5BdOfWjLkcis6LtwhPcPDDupW1SrfTOU+CI2J3MQyViUwNQx+8Osyir4FlZ3BmM
         biDA==
X-Forwarded-Encrypted: i=1; AJvYcCVwX+TBXpRCP363p6fHDAhuOOKSNVnB+g/7P7Pddb+6KeTl7qsuMHH9HGsj/22j2z1pddk3EHbVKsNcxBiaGROSIQolGqk=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YxmG44UQjn5WKHgKxfV90a4ofk5WyE6iEUIs7hy6nvr47F9wyya
	U1uxkg6jrExVQl/Fxb8o29BzCXTvkBQIjVX5bqaeBfJHFfExDyZEfjxPtbgSyp0=
X-Gm-Gg: ASbGncsg6X8f6JjDMls9lBYnjsUTBUGDHiLhzI2duIC9Bgv9FtqqUhAB1wNdsKxAblo
	Ghx58qtzDbF8FAuriFKZxcOBKoeV0jczGfx4ccYhabm1exmcfhPtN2iKJDl1q4vgnEJnFKy/8up
	t8I7SnBJ9IQNnwXjdpo3bvvU54swbaDXm9zuGghtRsKQ1aomo4g/ZgZe1vMECTMhDNj2E8H860M
	+R8514elpdcH6Ip983elN6OxAMkH0TfK/860P9ksGJCUcr854bUEAUUjdO2uzF+cB/tgJaBKrQ2
	Oi3tJjPPxwLz+gbkpGTnNbC6XkiDZg9DSvs9/RiJ6zk1EVEboBh6CNowaf1BeQ==
X-Google-Smtp-Source: AGHT+IFG71bOMZBk7JtHtPerYCW9DY+NPZL+Kwp9NNPEd2WxRsmdHM1JL34Ncc317Yu7LvJSbLA/tw==
X-Received: by 2002:a05:6512:693:b0:545:2474:2c98 with SMTP id 2adb3069b0e04-5494c124b40mr2263641e87.23.1740778829460;
        Fri, 28 Feb 2025 13:40:29 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-194-124.pppoe.mtu-net.ru. [85.141.194.124])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-549443cb00dsm620860e87.211.2025.02.28.13.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 13:40:28 -0800 (PST)
Message-ID: <5a022387-2bcf-4d5f-a60b-5d908b4828e9@apevzner.com>
Date: Sat, 1 Mar 2025 00:40:26 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Qt issue with printing landscape-oriented images
To: Zdenek Dohnal <zdohnal@redhat.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <2ebbd828-47f8-406e-8d67-ad1a8abb9393@apevzner.com>
 <c4066f25-c650-4037-9bce-864940daf3fa@redhat.com>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <c4066f25-c650-4037-9bce-864940daf3fa@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Zdenek,

On 2/26/25 12:25 PM, Zdenek Dohnal wrote:
> To be honest I have never seen IPP attribute landscape  :D - I know 
> there is IPP attribute 'orientation-requested' which is used for setting 
> whether you want portrait, landscape, etc.

Honestly, me too.

I has discussed this issue with Till in the OpenPrinting Telegram group.

He told that best of all for Qt is to use the IPP-standard 
orientation-requested attribute instead of the CUPS-specific landscape 
attribute, but as Qt moves to CPDB, it is good enough just to use the 
landscape attribute correctly, as a temporary solution.

Seems tha Qt people have accepted out simple patch into master and plan 
to backport to older releases.

> Based on the code for image it looks like landscape is really a thing, 
> and if okular wants to do landscape this way, it should pass 
> landscape=true instead of false.

Yes, exactly. Actually, all current Qt programs are affected, not only 
okular.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
