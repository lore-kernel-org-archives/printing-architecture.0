Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA61013B298
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 18:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731523075; cv=none; b=X/+Vd27lWJ9yayZThM129vFrliBCzpUlBF7MKdxGa6QyLqhcBtnEJ3jEAtD16A43XsYhbuc6IUsTurJqeG3qdu1ZHRlh4ufBBC9R6fJh+8L3E59mOINR+LKiH230s6Suzu6wbSEy3Au/u6oOAV8G6YTx33n0G/ZtyLX8ylQMRA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731523075; c=relaxed/simple;
	bh=uy4bXbHNkXkkW5JbRzHyNw3WDh8sZ8zrQLvejglkxXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=diryjniGVur5cZV+ou2Mk9KS/UBMBEIlIi8J/T0IDSq4Bx+hwTWTQaEoevzTSBt6UGonfWP6AY/ltNIQiRqkmH+rjebP8yD8qwuB2lK9bYWQfwIElaRVV8ajiHL7bTvcxvgZbgijMUVlvlo/auneB2e9NVte4xbC3EyhWikIdXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=MTvLeuma; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="MTvLeuma"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2409D80C81
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 18:37:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPELvJpAAeHw for <printing-architecture@lists.linux-foundation.org>;
 Wed, 13 Nov 2024 18:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::22f; helo=mail-lj1-x22f.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 53C2B80C78
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53C2B80C78
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=MTvLeuma
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 53C2B80C78
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 18:37:50 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2fb49510250so65977491fa.0
        for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 10:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1731523068; x=1732127868; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZJRNDCeYPLnNGNh+YM0rTGF8bwJ9ue9w9UrIi2buWRo=;
        b=MTvLeumas0JbXZ7smCF6OABUqffsQEnrbgjUngBnhvMToqYr1L4XrddvLeQAsxIDOW
         SAZf3sEE1feicNZbPsyT47FiMZkMSQhZVtX+pv2hxu+P7A5KaXzygeN5mnd2cQhH8EEo
         0VZKJ/Za7mSgCaZvfjCGThwWI5v2FE4iLNf8K8OTXfeZC7uxG6+XrQTQm+W6nl+lsw03
         mTzMF7votL/YYJOqdVoBiKkZIq87mSvLzN3f2mQshQ+c/XsDWMdvWFD5rioyNlQbyGLX
         mJT9IQ0Y/E33e1xpvvyHfZ+ybuuas68sSTkfMVyID/sPi8HtNBikdj+Iabat/LV3I4k5
         ywow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731523068; x=1732127868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZJRNDCeYPLnNGNh+YM0rTGF8bwJ9ue9w9UrIi2buWRo=;
        b=CNftvuSi2xlpTR58KtHYJ9VnjiVyHGfI9BY1ZpA3WF0iKAotqcTEGWC5RlYV0Ke6/I
         zgOq4gsCspCsMTeMDGTcOW7Q7mEhvnAenhRcNZ/D35Tjj3mGjLsZklBGm0BTgfJNNpU3
         DJSsqvTdV+ixE6Agf5Qc1x0/AkIOQwR6fo2K3+CSDyokhpCtUsGvtMufRUBPWpIrkA2k
         XDd2VL+BV5zsMirpKx66VUV1Lz4Q92vgXFq9Vbo8TvLg1w2lPgdB/gBKPZTl2lBP9Scz
         2mX98uCXLueRc4nxqvKbmQ57IpDlGkoHeSMUAtHc8cvaLDF0es3qxEtUGL9PH70lT2I9
         WQMQ==
X-Gm-Message-State: AOJu0Yx96TU8Gud5ggDXoMHFHrXKujDb461oQVqvGgXbkM0iL9XGHaXt
	T8Nbx21pCGi7n4S0/h9a0CCLmEGj2vtKoxALV8V42dkaH2aGShfuzHEbnR6Zr3jt3lbRkCxKq38
	X
X-Google-Smtp-Source: AGHT+IHBhylSrxBj9vOS2tPzdye6/I77+OEBdGiHp1E9plDuQP6ZMhx+X+OioeH9COmFFcb3oVJEbw==
X-Received: by 2002:a05:651c:1613:b0:2fb:51f3:9212 with SMTP id 38308e7fff4ca-2ff4c568ed4mr27287971fa.6.1731523067483;
        Wed, 13 Nov 2024 10:37:47 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-195-124.pppoe.mtu-net.ru. [85.141.195.124])
        by smtp.googlemail.com with ESMTPSA id 38308e7fff4ca-2ff178df94bsm24167851fa.8.2024.11.13.10.37.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 10:37:46 -0800 (PST)
Message-ID: <21dc628c-b02b-412b-b815-d7cd62f4dd75@apevzner.com>
Date: Wed, 13 Nov 2024 21:37:44 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipp-usb: exposing device serial number and vendor/device ID via
 TXT record
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
References: <534756ed-ba9c-4f19-8692-329cd7d22d0c@apevzner.com>
 <5D78AB47-5A38-48E4-8C7F-9068214DBE2E@msweet.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <5D78AB47-5A38-48E4-8C7F-9068214DBE2E@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Done.

https://github.com/OpenPrinting/ipp-usb/issues/90

On 11/13/24 6:21 PM, Michael Sweet wrote:
> Alexander,
> 
> This would be fine, there is already some precedence for this with IEEE-1284 key/value pairs.
> 
> 
>> On Nov 13, 2024, at 6:35 AM, Alexander Pevzner <pzz@apevzner.com> wrote:
>>
>> Hi!
>>
>> I want to be able to match devices, exported by the ipp-usb, with the underlying USB devices, because every second user asks "where is my newly connected USB printer?" and needs to be pointed to the list of the network printers.
>>
>> For this purpose I want to add a couple of parameters to the TXT record, published by the ipp-usb:
>>
>>     usb_SER=VCF9192281  ; Device serial number
>>     usb_HWID=0482&069d  ; Its vendor and device ID
>>
>> However, if there are already standard names defined for this purpose, I'd prefer to follow the standard. Please, point me to the right direction at this case.
>>
>> WDYT?
>>
>> -- 
>>
>> Wishes, Alexander Pevzner (pzz@apevzner.com)
>>
>>
> 
> ________________________
> Michael Sweet
> 


-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
