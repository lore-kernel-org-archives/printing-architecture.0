Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5351123371D
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 10:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742206458; cv=none; b=LgipwMsZ7Stja1+J7/+aWSODkZblOpfICFbmSvM4ORbyKbcZq/m8p9Zm6NMhNhObo/vk9Fah7p3DNhXUioCpwVAsWm8SdjZ9ik3D1VWyyM9WXG6vF/le/i2DZW7DqDu1C+NHEyEk8hZSbnO+bAcc0hlalPI1dP2lUEztbPnRaZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742206458; c=relaxed/simple;
	bh=YKXTZwMD315w3hWoKjm51GfGR3JrILKJNTwLLn2jmZY=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ugJ7rWr6dnNFK6Zig29gkJOuqaGBqQGcwJbJ/BGfg5sU3kYbLhC4vkIjhbokpxSxPteOJxc3MvG9GGWURb3kztMfrSs450IXX0dESlQI6qKtbjLcQ4UPyq5M0UDqOVP2icHfaQ9JWddfT5f/QRYbEO3Hp4+dfPoKQ1XQIOIpR2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=QtTX2dvW; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="QtTX2dvW"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 962D6400E7
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 10:14:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fAgOfaCKVBu8 for <printing-architecture@lists.linux-foundation.org>;
 Mon, 17 Mar 2025 10:14:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C351440249
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C351440249
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=QtTX2dvW
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C351440249
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 10:14:13 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so4642982e87.1
        for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 03:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1742206451; x=1742811251; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZJZVE7hXKuxLQ2DDbGcloXbcBZ0jHLrEsCnnV2oGWVs=;
        b=QtTX2dvWr4JZV9exwTcib+EjcXORh/WFw9m6OACv3tao0voMd3h7tJR+adu8G++RIv
         Z9xQZT0rCjMWiwhpWkqAD01f2F6g4V6UZ36ZrTJrdUL8ev9ExedLghx9KKvlvH5/eChT
         PEIOsHX0uy+dsDcYwWv1R/AlwKpQdGTI6HLchaQ7ja8YK2Ryb5q1cZjiuBUWJ9p50u/z
         c2awXDyLnvb04m8fFNgbdjhAHVdTQJW48EYgS17rtOTuQsxpQEeervTxmR75fKrGSctK
         7rBNDTtIoEPAiYsj3FDuLE7cgXGGFlt/e/ph/DWdK5y4jFI2b0e5mkpurFY2RZ1YvRhY
         UnMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742206451; x=1742811251;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZJZVE7hXKuxLQ2DDbGcloXbcBZ0jHLrEsCnnV2oGWVs=;
        b=P8q0QUa8pfOsKqZ7HmprC79F3ibsELOXv1suCBPHqahwFghWdJif+o3RRO7SrmDVIV
         oGPwihZNsD8qJSC1xdtL8nXg7r43Qou2DRB4g3mFOBjZBOMakmhRnYJGS3II/RztIsul
         Iqtc74Lvj1XObeg3LbC4XshSkZenrflbKDDTjiOOZdn6BjavrbFH4XYVwoU5wUWr2nSL
         +94it/xjpY+hCby/oTf/zivi7HNt4WtwUdTpr7wlTNq4QMceita5TFhSYe8XT4yns1b0
         vzAi9h8fOIteCiG5ZCOPxdej1uomwzUYiFTsJoPokw/FzGlJoKFByUcxh/pqd2Nl0WNV
         Ab4w==
X-Gm-Message-State: AOJu0YwV0CxyR9nHcxrF2JGDSePrEe7PaB/djrM3riLUMWxcimsC/XON
	ffXlYpoeti/Qu1VK6LW5H3BUgcjorMSvk5dtUZwnGIeW0iX5S+2TWRCUn5Vz9IUElSpK5HrEtTy
	2
X-Gm-Gg: ASbGncvb+xv9N56jPt1zduvUhp+rDnHeFE8Mxp18V7NVippZ8ROZS4bC3wZhc1MT89t
	JYfr4KiVITmEICCEn8y9dFHuZe35GTQ8cRZzSbfvOs6E6+02VS2Yx2RA70X6zK7QOfQtqPIyLiS
	+nJpOvrYbZNKTNXCuJnppqp9LmwIsMg40BETGXzFiBuQfvnLhH4Ltrn8iPF9cH2GM4LIRyd5XYL
	3eeRsI8s52/SlE9TumKiCW1gTLvW6wPevQIVAF5fDHwWglvPrFrIRpghY0IAbIg/It0LyEzjRKO
	5IECuYF3/wgu0M8HLvZDYWiHOQZYqss8sxD1eobAbL9kdwLXpBy5YkFImSYc51NdNZaLPE66H5J
	n92xTToM64w==
X-Google-Smtp-Source: AGHT+IFvewfiYvoNGgiYC/vuH66NlYqIhiv90ZE/sqYtj5X26id1PqJlkbRhUIpLacpchrg08txBsw==
X-Received: by 2002:a05:6512:3192:b0:549:7394:2cd0 with SMTP id 2adb3069b0e04-549c3907dcamr6241382e87.19.1742206450298;
        Mon, 17 Mar 2025 03:14:10 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-7.pppoe.mtu-net.ru. [85.141.192.7])
        by smtp.googlemail.com with ESMTPSA id 38308e7fff4ca-30c3f0ea4d8sm15071101fa.27.2025.03.17.03.14.09
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 03:14:09 -0700 (PDT)
Message-ID: <d91c686a-e3f8-4012-88fc-dc5547512ebd@apevzner.com>
Date: Mon, 17 Mar 2025 13:14:08 +0300
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
Subject: ipp-usb 0.9.30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


ipp-usb version 0.9.30 is now available.

   1) Fixed potential crashes during printer initialization under 
certain error conditions (Issue #102).

   2) Added new quirks:

     - usb-send-delay: Introduces a small delay after each USB transmit 
request.
     - usb-send-delay-threshold: Sets a USB send size threshold, 
ensuring that only transfers exceeding this size will apply the 
usb-send-delay quirk.

   3) Discovered a working combination of quirks that successfully 
enables the HP X677 printer (Issue #95).

   4) Added quirks to make Brother QL-810W work properly (issue #97, PR #98)

   5) Use "ipp://" scheme instead of "http://" for "printer-uri" 
attribute in the Get-Printer-Attributes requests that ipp-usb issues by 
itself during printer initialization. It seems to improve the Canon 
Selphy CP1500 support (see PR #96 for details).

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

