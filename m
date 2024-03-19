Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5B62B9A3
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710855432; cv=none; b=ijxck9aZri3ntuu/HwjgO4kQmL776RN/j8jqU04cwTIl7aJk+KvqQoBP7R8OxpzkBVhO4xp7O/enBoKIQ80kepvqn7CDNcl9u4MDatVxyV8t4SduAgl+uu/hAZZhg0AJxqpv9oJPO1SJZR5ViQb1eSdjZDKCak83OjHMRR7ZwuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710855432; c=relaxed/simple;
	bh=byoh7Om+PZUAnj15O6PI2VY6N4/moIpehxEwy6Q/FI8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=m+AvZNXOaxgWij9RnczIkJlur0GtA9jJalAup2x15vh51C5ly1hPaYHqjTBlDnZG1lQXgFXlMMpvNIbj9kzhe67ZjFri/6gcVu10kFZqnfjlklRJOlOisAF6NTca8n41+z7iHSXqQ0HYG00cI58YvnjnzidbqWe5HGeV1v/pX/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=PtSjhRIy; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="PtSjhRIy"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D207760A8A
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVne6I4HIdbn
	for <printing-architecture@lists.linux-foundation.org>;
	Tue, 19 Mar 2024 13:37:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DF6E5605D2
Authentication-Results: smtp3.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF6E5605D2
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=PtSjhRIy
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by smtp3.osuosl.org (Postfix) with ESMTPS id DF6E5605D2
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:37:06 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-513e6778112so2162764e87.1
        for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 06:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1710855424; x=1711460224; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ejB0ixfOXgR2zHHLoClUFSqKvwY5FVykmbTbdlLJGVY=;
        b=PtSjhRIyK+X8khP1agsDDCOKIBEoNISMS5m0PXt/C6jgR534KVtCQD8IU7dknttZrf
         wB8PYvMlAdosL0HmiA2C4aWHdJekM96Ip0KppHDNyylcEs4vOqa82HqBV1w8gQEb3NX0
         +DvHFIZCmUN9wqMKQA2L/ieNvCblQk+tyzPegAu5grCcv4DSgzeqvcUKFG08WpuHB/3a
         Z1MA4xn1iVaGEclfHG9AztJatID/E9pHSoyu8qNf4sjzSslPT7fXz615CsVeltm/1b/p
         DdqGvpvY3GwifcjZ4I+1PPZ+Y823d5ZDDO6E3KwzkRnZfHTy4WuD99J1F0P/21SUwVpM
         HG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710855424; x=1711460224;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ejB0ixfOXgR2zHHLoClUFSqKvwY5FVykmbTbdlLJGVY=;
        b=pHOl27LmZL9xEwDvXSj7P+To7cS/i+311bwvlSuc0yWU8GK71soA++4QXrgMcZbeln
         DOobvEiaHq5VGysxnr1n+Rl5iDiY6p1TLlB3CsCxaSRjqhiaiyGDBu6eiBl6U5X8jW7m
         pGN5FLtWkuwc7WJn9vl8xLIFZPo886Yhwagi7a9GTloIEJDj84o2FcvbMXHdTm5MKb/K
         FNJWA7kyUsGIiVrLcj0iAOpUcHwHOrmFKvnBw1Cibvx7rWFEqdijo8kRHFdnBreBMoPs
         rVvFxRC5tbEJkpja4jUJf4SsRY20Kytk9D03litOr5juybPO+3CIieWHiouQ9hVL9JAn
         dSkg==
X-Forwarded-Encrypted: i=1; AJvYcCVzGF4hLU7Ms40j2a7muTO3HtSVyvBVcITkWvEie8hyiAYBjKs+cRbfzRdsHJfTohYzB4L2+pZ0npIlZgdB6aRn9UURA9JRd5JmWChmg9A5cFaCHSfXrChd257t2IxbQcg=
X-Gm-Message-State: AOJu0YzE0TKldTxioX98YKr0ong8lEa49oyMFaNLroU+udSRVkyCqzFL
	DzOwP7DzeCgB92USJ+uSfwYC986Y1B8WJrE/AkteyOQK/f9ha58bF8JnKVFAAJk=
X-Google-Smtp-Source: AGHT+IE9IkqbHPDKzGN3rd/E9jYvxfmpAlSn0GWyKlTaLZF0IK5weP3sRl2UI1RHMnfpk6KLS6Kr3g==
X-Received: by 2002:a05:6512:559:b0:513:488a:95af with SMTP id h25-20020a056512055900b00513488a95afmr1011617lfl.15.1710855423782;
        Tue, 19 Mar 2024 06:37:03 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-193-18.pppoe.mtu-net.ru. [85.141.193.18])
        by smtp.googlemail.com with ESMTPSA id d32-20020a0565123d2000b00513e9ac7326sm764133lfv.243.2024.03.19.06.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 06:37:03 -0700 (PDT)
Message-ID: <161119ad-2e9a-42d3-8984-556506e402f0@apevzner.com>
Date: Tue, 19 Mar 2024 16:37:01 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Pantum M7300FDW
Content-Language: en-US
To: Zdenek Dohnal <zdohnal@redhat.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <7555e91e-562c-4d89-9c92-91ddc17135a4@apevzner.com>
 <2c995986-9bf3-4f62-8f74-88c056eae5c5@redhat.com>
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <2c995986-9bf3-4f62-8f74-88c056eae5c5@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Zdenek!

On 3/19/24 16:25, Zdenek Dohnal wrote:
> That's great! To have a way how to configure this behavior is ideal from 
> POV - we can ship the safe way as default (IMO sanitize option should 
> insert message into the log - admin would like to know whether something 
> is not correct, instead of silently workaround issue) and if the user 
> has problems, they can switch the quirk anytime.

It actually writes messages to the log:

   IPP sanitize: 1511 bytes replaced with 1621 -- IPP message was fixed
   IPP sanitize: not needed - message is OK, no need to sanitize

When ipp-usb receives IPP response, it attempts to parse it with and 
without workarounds. If message can be parsed without workarounds, it is 
bypassed as is, byte by byte, without any modifications.

So I believe, this quirk is safe when enabled.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

