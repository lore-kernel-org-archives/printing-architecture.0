Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E4774C11
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 19:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711135019; cv=none; b=BHKPHwIikNE6kw4Wo/8ym1awcOGPwG6zEPRP9ZsDddOpQI/0+P+e5mQFZV7B9NoVjQsDQkMerADgZ4vkzTF+Cg/15Jf4btypjYELGfvo/AKv2nJh9JGHYMXwzNRWUgigDoKUwbojN6bZbOTKaGxsscTmwvWtbiNfhpFL8NEoNbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711135019; c=relaxed/simple;
	bh=Nimcx1WW9LZ1nYJvXA7Fb3muhkDMNrMVsbkUwI2e3+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NikbrrvQNmXiDrXZcADX4w96uv5uS33y3K/jOazueVAruBCXjFNvA+pmHirxWfL14D6ZBX178KWFGRSI2TUzr8d2OXNG7WE1mwY/mIQwpUhI2FEk73rpsMzvGdf6+lzJZOVsc/t1CrV9tJLYBpvSPVeziH21ix6BnSkDnN3zriw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=GtqmhVcq; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="GtqmhVcq"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E7F360FFA
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 19:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqe1AFnoNgPD
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Mar 2024 19:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E5E760FEB
Authentication-Results: smtp3.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E5E760FEB
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=GtqmhVcq
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 3E5E760FEB
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 19:16:53 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-512f54fc2dbso2416433e87.1
        for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 12:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1711135011; x=1711739811; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y/H00uJwnLcSA9Ef4Kg2hWckR5ghJkdDY3T2TNJNefw=;
        b=GtqmhVcqQTFesg+BFboaGsrLkNa2Gmcn9xNjMJDwmDql6PXJ+nNXcjrYyDnVob3EZD
         NZmbpXhOP2zuqT1UHcNFvdgp7d4PdxjaRf21BBhax3RporKREFYh3cNq7eoXxBxUizuW
         pHoFqkFmAgRMjmxbYk3NjQQu7f4kxfIKANWS/I9k6q7KJJ+L3oBByLCZndxhLa3zAvUA
         ZDh6SFIPb++Z/FAFeRZaZoSGjDtvukDIQ3OZK8FSn474/REmwHtjB/EzupJ3vZDhX/4U
         pO/R8XpwaBK/x1G5mW7105GIEQVqtR01xQlgGiTV/ZjKB4MuPF1jPpcGk+u5xbiIQA12
         qUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711135011; x=1711739811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y/H00uJwnLcSA9Ef4Kg2hWckR5ghJkdDY3T2TNJNefw=;
        b=UsrvcGZ+kEngWe7h5bfcX9pDAGTXhvpOg1QJrcu+dw7DxaipKn7wKIPpdBj5BXSH7O
         Y1aoGQ+61FC4ndw/vLNdsxxA8n1bNSZDMnoOskkZ4S2ztG1CTg2M2Jd00QIPb4X+gJRc
         J53YJOlVq4avL47XE7wDtOjj7+H8oWHo3pRhTZ3KSP1/eq+C+/fkoGyaYMJ5eXblS+pW
         I6webJeIV9eSYYpCk3E4lkt3x2iT+I+RaH+5Dwer8KGVkFRYHBKVEJOGF/0Ls+2NC0r9
         KB1u7Q2x9QPF3xfR+CyPu08YCHJ1A8oz0QxQl+sbHtauI/mbz+tTHSyEWkhGX6J7FJQv
         ibpg==
X-Gm-Message-State: AOJu0YyfKuV5hiPx28eI5GR5Ga2r8XWoZi2TGBT7T1JMBKo+8/uyQhm9
	6UQxfn7RMi61inSPlf0nGqLvmDoZ/hNe/TC26pTZW05MzNnAQ+C69+6zLy2S/3/wfMeL7FgJPNz
	v
X-Google-Smtp-Source: AGHT+IHlXRWgfZIoNtSbeguxutGgE4BI2c1ofQu+jxY9ieuAQsbFZFebueYxzia2uHGm0xKavil1cA==
X-Received: by 2002:a19:2d41:0:b0:513:d1cd:b90c with SMTP id t1-20020a192d41000000b00513d1cdb90cmr247093lft.30.1711135011284;
        Fri, 22 Mar 2024 12:16:51 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-194-113.pppoe.mtu-net.ru. [85.141.194.113])
        by smtp.googlemail.com with ESMTPSA id a10-20020ac2520a000000b00513d621d7c0sm18496lfl.126.2024.03.22.12.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 12:16:50 -0700 (PDT)
Message-ID: <17a8124f-07a6-4dfe-8bf9-efb272912566@apevzner.com>
Date: Fri, 22 Mar 2024 22:16:49 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: CUPS & IPP_TAG_EXTENSION
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
References: <6eb5d746-bbce-4b50-8dde-1c8afcb32187@apevzner.com>
 <9F488FC6-18B7-4333-B17F-C98B0E0EA41F@msweet.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <9F488FC6-18B7-4333-B17F-C98B0E0EA41F@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Michael,

On 3/22/24 18:40, Michael Sweet wrote:
> Wow, good catch!

I actually caught it a while ago, when was actively working on goipp and 
looked to the CUPS sources to compare both implementations. But forgot 
to report it in time, sorry for that.

> The RFC.  CUPS is broken in this respect, but then there have never been any extended types in standards-track nor vendor implementations that I am aware of, which is probably why we've never had problems... :)

This is quite obvious. But if we have this code for some reason, we 
obviously want it to be correct :)

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

