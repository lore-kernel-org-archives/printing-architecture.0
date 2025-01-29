Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CBB1531E9
	for <printing-architecture@lists.linux-foundation.org>; Wed, 29 Jan 2025 14:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738159529; cv=none; b=q3DwWPOBpLOuZljzEgkB1xNkSplhiRth2MRRBqHcTaiL9jNU62uW4e6r7O3mtgPPv168kWDszdT1Ug1a2r82K4VuQ2lpeuQobby9Y/20zIgfIm7Vq77T5dzNaaIF/1pqLr7kndHTW/DyqPNYvHiT7ScuqaaeHiriQNX+ayPzLFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738159529; c=relaxed/simple;
	bh=ALodJ9h840sC69ESWEfdSBoJXqvaVKPoreGcZNXGuWU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=pRLYQPzb5zBJFPtc2886OCOlnz1Bou6J5Ac/WXCaLXocHXfT9OzeawQAZtUvtrAAJlHUfyGoC6cKvU8B0ep2ZqmjiqVoVTAQz8wb7qHsO4xwHavN3YYYDNwjXPkTVxS9jSWU8ky8jnFCZro2ucPKd+5HHGNo4sLT6sPVYnGwIBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=XKm+S93z; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="XKm+S93z"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 538E283211
	for <printing-architecture@lists.linux-foundation.org>; Wed, 29 Jan 2025 14:05:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cXxtjVgAHUhu for <printing-architecture@lists.linux-foundation.org>;
 Wed, 29 Jan 2025 14:05:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12b; helo=mail-lf1-x12b.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A861C83168
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A861C83168
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=XKm+S93z
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A861C83168
	for <printing-architecture@lists.linux-foundation.org>; Wed, 29 Jan 2025 14:05:24 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-543cc81ddebso5528404e87.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 29 Jan 2025 06:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1738159522; x=1738764322; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=naa0o16aCVcuRxUJluYFFk5GQBly8Y1Dsl7RDOWNJDE=;
        b=XKm+S93zWUsWvHkgJS0ZHErURzuCxPnvAHlNfAjNgIBIQx8vmwMBn8tbuqkC9OAamk
         zlSTrDTviSrE8psVlSngVLlZRMejUpn5qDWB8nhQA2CLTQImMiWrtIQUAX7eOXjlOVkc
         engrbMwilpecb3A5BOOmXh6XFyuDLgy0OZCPnU87IALvUFj8wk2EyTuXT7if9EcLG+ZT
         evNfuuP8woZjMrgdc9uCu7wyc56/wu2VUZ8gHLONlV7LmoUxxPm8KcOJyf1ZgTm2BYjv
         IVfqNAec3g0bhO5zbDQYqWJPrd0w/Zkr/md9EeGTh4Zrq2jqaTNBEKvdaloqZVF6LIxe
         sG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738159522; x=1738764322;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=naa0o16aCVcuRxUJluYFFk5GQBly8Y1Dsl7RDOWNJDE=;
        b=pfp7GQOV3ZG4xzupK7TV2rKTd3Dn6ONkGkVC/IUbb/MawLbMcaIikzntOAM1B4F9+E
         +Y50lH+ja+kRh7G3kYlsQIhSC/Zm6KTjcuj6hro0Yx8AmXqmZPspf1+hmowHevb+uuXu
         fC4QdmZ3aMV7kNR/mFki3MsSuQIcMfqDaX9K8tILFsy6WzuJm8UaoHXp/6g3EtA2JQWY
         2fP3KkUc757KUiJi6ERAHEr5xAjOPIB2yoR/PL9DDz3WVkpLChMO6V7mN9vsZ1lC80qH
         JuJX0ytfEWvrRoOEgQ0HHmMvp5iMuRHlYnnwXW1bWt8lMq8a+SnnP5uluBevKrCz4zAQ
         QqhA==
X-Forwarded-Encrypted: i=1; AJvYcCUFbEwT92aqj5PbRY5sDUTsu9EgfzCSiRS1YXFP6yi/la8EV0/xxORtX+x2gGDeqB+eR52tDS14d9DqHXv7GqcGDpw6KgA=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YzbJq06MlFQ7Oyn1cKZ26pg+SKu1pFz40BHrn5W1QMIOiwKBBkz
	KUskcTJaLPiKGxR/QDXruwjEOXAlyfTRys3ZIZrElsMlUHWo6ZJIHC62wLKJuSs=
X-Gm-Gg: ASbGnct60oaB9WMulge1qcjyUy0nrkCJnk4LeY6xjY2RnGTxQDIjwW8BEEhjvUF3lDl
	g05ElzaCPcdY/XpiBtjyiAYm0rOZF+VTT466KNtCyZaN2Pwj0vJIT3QDBXen3lFC36vRQE642Ua
	NOsjCojlWbY0mPZUliMo+o5g0ab3/Ex1c0GpdJvZ/+/Ix0zgoiYl/C4nASHnZp06oOmlkXY2fBN
	/3KWPEogHTOQqFomlhmEfoZ6AwGptK7nJ/nF8MwDCycWEHYTCD4JwcwyQWRDF7ut+dOAy4JaOw9
	tFaHx6v0Nmuhee+5trkuOIFCbXqfVX7gPEGZ4IcQ39DxXIS0CBJPdahT0zWkrw==
X-Google-Smtp-Source: AGHT+IGtQghElUiexlkIpI4aEmRvHaNtXNK1hCcik/HGHh1bZ+oVfcyWGk6tctoVSI3SoiYENs1QXA==
X-Received: by 2002:ac2:55ab:0:b0:542:2240:8c0 with SMTP id 2adb3069b0e04-543e4bea48cmr834317e87.12.1738159521606;
        Wed, 29 Jan 2025 06:05:21 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-193-149.pppoe.mtu-net.ru. [85.141.193.149])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-543c822f8cdsm2000211e87.78.2025.01.29.06.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 06:05:20 -0800 (PST)
Message-ID: <dc9c1448-e06a-4134-a780-3f6a0d3a2f31@apevzner.com>
Date: Wed, 29 Jan 2025 17:05:18 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: sane-devel@alioth-lists.debian.net,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.32
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan 0.99.32 is now available.

It adds a configurable option into the /etc/sane.d/airscan.conf that 
forces sane-airscan to report all discovered devices as "local", not 
"network".

[options]
   pretend-local = false | true

The option is contributed by Markus Gutschke (gutschke at github).

The original description follows:

-----
   Configure whether eSCL and WSD devices should be treated as if
   they were attached locally. The default behavior considers them as
   remote devices that are accessed over the network. This option has
   to be changed when exporting a scanner through "saned".
-----

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

