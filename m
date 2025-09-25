Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A492882C9
	for <printing-architecture@lists.linux-foundation.org>; Thu, 25 Sep 2025 22:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758838814; cv=none; b=QaxyIbSvDMKUSlN4jGw58ee0ow+K3WhYf+03ZlAEkvBx9L/9VRGjHD3r1Ljrn4uQlpEW4MkaVmLwCRrQZ9LmGmvotkjhYrGq6bnUdNys4cMMV0xzfawT24Z4rAnjsdObWcDx3XsL3/nzvycGMf7NfIrkbHregrCBhxVFBTUhtzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758838814; c=relaxed/simple;
	bh=9SMk6ppzb96tYNPt/WBH78o/9rnUYXFd1pgjvvJzdOw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=Cz/ZbnHKaj0tLVwmtohRh7Pza/aKIDSTaHneSwgYlYUXw5j03q5hTYtbT1RjPXdvwXZ4AW1GWzv7Ewp4HLQrYBWpV0BaI+Df2EVlmAjhgZDMGsB0699fKsmLYO5PQZv3hQTHzOU7TyfU55i7sZlElhCKDgBhgRdhOkgqpXWuEhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZIVgb/zX; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZIVgb/zX"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E035941218
	for <printing-architecture@lists.linux-foundation.org>; Thu, 25 Sep 2025 22:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.2
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFNnydEcmnDD for <printing-architecture@lists.linux-foundation.org>;
 Thu, 25 Sep 2025 22:20:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E961D40366
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E961D40366
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ZIVgb/zX
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E961D40366
	for <printing-architecture@lists.linux-foundation.org>; Thu, 25 Sep 2025 22:20:11 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-46e34bd8eb2so12623015e9.3
        for <printing-architecture@lists.linux-foundation.org>; Thu, 25 Sep 2025 15:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758838810; x=1759443610; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WARyTwSIYhjxNa5PsL6amLZojblGUbq7mT2IWkXS+I=;
        b=ZIVgb/zXawit6z8NoiYaK0hUr6GFJntX9s/daKmck/+XqCdeFSAv6s/vQo18opj/c2
         T7Vl2FYhjsmMECZq+Gven270MsS7Zr+WErXuiClzU2rc/cwUQqlqYHdeNrG8JTomKgS5
         BjdO6lzoRsrsW+owVuFAnQEKnd9n7820WxkGAQ4YYknzK2+QA+om7JCxp7KcByCWuAA8
         1WvXSHP2i/38+WmXKgnRj5KShGmRT1UoQEIPobtbynFhf4Kyn60GG90QTiDMlKz7r+D9
         pqH+0w/SY9g/ukY7uT6VAVycu5TSkq18d0N3sz/yz0XOFmvQ0g3BEEsAH8IBcypvfMC8
         fKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758838810; x=1759443610;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/WARyTwSIYhjxNa5PsL6amLZojblGUbq7mT2IWkXS+I=;
        b=fe4gT3S3LDv0QvkONeJQ9r3JziC8D60GnDbxKOUPCiILVXGkouAnYDJc5i67KiTfYC
         yZno8/7eO4/tj/WgrnmNYmBpV7Tn+a9qQwLnzYXQHj/1qJr1yhxMYox5smhMNjE9ON2j
         FyS6vDKtnqXvBxTWT87WPVPOIyicXlSZslba/8cb5ZRpzLLjuHgYd9NwoX1Jc1gf7IA4
         mdXAOBTx04xcPhSSgN7JFxkAI7mniQWX8j6rOsA/qeCpt68+PgyBRMxJJ5pld/UhjTQV
         U/eGTDKkRfJwcrhHyTncRMiAumC75ueqxkaoeJbkj2uuNNwIxml2ckQUKVk5R6XIUmJH
         moBg==
X-Forwarded-Encrypted: i=1; AJvYcCXpQ+POgGUG/HvAsZgj/iZ3dxhsz+OFGL2bVanqq+cn6P300I2yXkEE4cw+anZpt1ZfEaiNVqMop5vXA3pzbupyYjillyk=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwXCwxUY0MQubWS5dV/NUc6u0BRil5+P4YkOR7yJ5/NreeLuBcg
	xCHZUbBriGDwgRc3XNYJmpx6eiVEC+2f1l5AbN49Kpo9EA3GIE5limk7
X-Gm-Gg: ASbGncslgwbZJO1YrzpoGLXVc/p0psePI5H/lZwPoTbwBFJsMYLdtzowvgNSfufGglh
	DYt5sBdKArfWQ243Jl80ToWZcE/zdu8vSSczN3k19pGZKYPzEvZ4SuTbtTEkwJ6/mf1V/uSPtOa
	I4eJqjDftISGB1eF3cDxgYPh6M4paXo07Og1+a8uqrzN1QJB2ibiiRKcJWmK87dRzbGHmNRmSwh
	hZMdaa/i3C+9zNN01ImThfEy6FpDhlIfrWw1Df0BgLO8ajSUeyw1m0RfOudV9dJjq+1Ek5aSj5T
	PIVEKnuro8X4AN3/wsAvWqesXl+KB4qyYv62dD32KrIJumFKZoP3bNhsgkI6i6uhgdfi8C9CkQ4
	9U+vcIQ59EtZmPlOtJxKAEHxQGm+dUVLuZu1a+DRjbo1ol+JQa6ncfSgqMAkcDQ1rrOL/NWcZjK
	3+VQ==
X-Google-Smtp-Source: AGHT+IErzoYaYTZciomgCn0xthzbx6Lk/xLUIbZj5U8o9ddukyXq9hb+Zf0oD1yVuV/Fh5vv0uK23Q==
X-Received: by 2002:a05:6000:290b:b0:3f5:d7c0:8e20 with SMTP id ffacd0b85a97d-40e4accc5cfmr5208617f8f.59.1758838809759;
        Thu, 25 Sep 2025 15:20:09 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc88b0779sm4341524f8f.58.2025.09.25.15.20.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 15:20:09 -0700 (PDT)
Message-ID: <987f1f95-9d0e-414d-80af-587cda08f812@gmail.com>
Date: Fri, 26 Sep 2025 00:20:08 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: OpenPrinting News
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu
 <basu.aveek@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - UbuCon Asia 2025 in Kathmandu, Nepal

https://openprinting.github.io/OpenPrinting-News-UbuCon-Asia-2025-in-Kathmandu-Nepal/

    Till
