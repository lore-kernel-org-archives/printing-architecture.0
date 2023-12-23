Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C55656
	for <printing-architecture@lists.linux.dev>; Sat, 23 Dec 2023 01:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TYpsi13x"
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6da4893142aso1595603a34.0
        for <printing-architecture@lists.linux.dev>; Fri, 22 Dec 2023 17:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703293297; x=1703898097; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2GJ613ThVpb0hFEz2DmTD0XNi/c9DzsdVc8GM+GN3RI=;
        b=TYpsi13xFsKh2lxSY4RzeSZmxO+WlsfKBWlzHa8Anm7+3HJ0BHrhgtVWm/0ikwFSs+
         0+xEvK+bRLN5Mfd4uY37zE/RBauiL6jazM4GT0C6+doc8w+/DlDfjWdPdYXROro73OTr
         toHbZbZm7YbmscxWd1xSYUlwvqXPfDstbX675gVBxVTbfveAsIFZZ/0+GrZluV1oSC1S
         u/turV9O9dOiR8rTtm0QndXD1JF2sZpKqrt8KiAClJ3jZ8/p5xTLgBN9E7wHX7Tv8fGh
         /9k+4R346Np9D5b5FsC9Cx2BaPeZheeelnU4Wq/B8BbPLf7Vzjfm4ROkqwZeof6/Wevn
         mNww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703293297; x=1703898097;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2GJ613ThVpb0hFEz2DmTD0XNi/c9DzsdVc8GM+GN3RI=;
        b=dpVcNQBfYK7eM9Y9+KsGIhZPcJSd32O7U4MGivn/Pjsc9A/pRWKXae0++QjKo3AdSh
         7iz4/dC8JP+NTQlYoAtbbFyhd97GTCWE91BL6sXNZcQoGUmak3/OK7uCTtsq/8RCGC1Z
         yLF5qYTjnjtsjnZYwutSRRvqLcMOdjTyVhcwzrbPaCfrrEs9rwX1Df59tHcx/+zmYvhd
         yY00uMSHTYwvVJflD4hg9XXpMNwEwdrn6/MCO9jds0LFFu3yqKf2G1kZJkykNlnJzIdP
         O1jAjuqAqGVlmMs/3UoPyXoUnpMB1Vk/sBOUXN+r5zo6UBe/UCB1GRZoWet3OP1r9wvH
         j7Yg==
X-Gm-Message-State: AOJu0YyaNO4IIyKNWAP4/CTdvpbnkhlSiAPevXTAheSM8+YtudjDg1I6
	zKb7jzIII7uw6yIJ+TCZVsk=
X-Google-Smtp-Source: AGHT+IF09aD6zp2PAyZCsu7P+EGhtOs7PPp+iT72DZjr1az6qloYM34NLEnVOM62K5NXl8INj6u2iQ==
X-Received: by 2002:a05:6808:308c:b0:3b9:dea6:f336 with SMTP id bl12-20020a056808308c00b003b9dea6f336mr2849731oib.50.1703293296728;
        Fri, 22 Dec 2023 17:01:36 -0800 (PST)
Received: from ?IPV6:2804:14d:b087:485b:55cd:609b:6d26:8330? ([2804:14d:b087:485b:55cd:609b:6d26:8330])
        by smtp.gmail.com with ESMTPSA id v124-20020a626182000000b006d96d753ca0sm4089714pfb.38.2023.12.22.17.01.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Dec 2023 17:01:35 -0800 (PST)
Message-ID: <8f34c6b0-76f8-4b4d-a507-ae78872deb9d@gmail.com>
Date: Fri, 22 Dec 2023 22:01:33 -0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: PSA: this list is moving to lists.linux.dev (no action required)
Content-Language: en-US
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 printing-architecture@lists.linux.dev
References: <20231218-khaki-adder-from-eldorado-aa4f1a@lemur>
 <CAMwyc-T=OzZoHz9iiM_hrDgqVjCMErrN50OhxSGRzRs4rZ7mxQ@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAMwyc-T=OzZoHz9iiM_hrDgqVjCMErrN50OhxSGRzRs4rZ7mxQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/12/2023 17:30, Konstantin Ryabitsev wrote:
> 
> Hello:
> 
> This work is complete and this message acts as a test to make sure
> that everything is working properly. The list archives will be moved
> later today.
> 
> Best regards,
> Konstantin
> 

Konstantin,

thank you very much for moving over the mailing list and its archives.

For testing, I am sending this e-mail to the new e-mail address.

I have updated the links in my December News:

https://openprinting.github.io/OpenPrinting-News-December-2023/#what-is-hot-on-the-openprinting-maiing-list

    Till
