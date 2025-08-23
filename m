Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C09E15C158
	for <printing-architecture@lists.linux-foundation.org>; Sat, 23 Aug 2025 20:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755980923; cv=none; b=GkNnPw5Ip6LrXwg8t4ULdL1JxPAXBV48yijvSexKPRatEHI5c46kjFlOocscI6Xxh8AcASDTKc3LKnzcYE0m9Fu+PYPJM/QGZyeP3yXOfHipyytdGM86R4CY8wQM7VkRZ/+QdVNsaMbySE0xr+LZ6hVLWLs2GhO2NqxTVRgQfWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755980923; c=relaxed/simple;
	bh=7bvdugfaPgft/XPMdfYkYOgtQvlxwBbPeTSW6bxwnoA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=cTb5d4qq6crCz3F7onQhgXsoB2KM4E+X564sL6ZnXSkNGDA+b614+Ed+EhLqF5/7dw29ltl1ZyWWAxpFvs5dbwh9sxA3dpUwvGpjhbUicllAznkST/KsXreEo90hf9ZsIfUPpIbEVr0FcB3TIy9SKrqAEh8vbf6ob9UiuhoLLCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W9LNNGs7; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W9LNNGs7"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45E1441364
	for <printing-architecture@lists.linux-foundation.org>; Sat, 23 Aug 2025 20:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.2
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Bny8SajZMac for <printing-architecture@lists.linux-foundation.org>;
 Sat, 23 Aug 2025 20:28:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52f; helo=mail-ed1-x52f.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 396CC4004F
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 396CC4004F
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=W9LNNGs7
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 396CC4004F
	for <printing-architecture@lists.linux-foundation.org>; Sat, 23 Aug 2025 20:28:40 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-61c21e50168so2102867a12.3
        for <printing-architecture@lists.linux-foundation.org>; Sat, 23 Aug 2025 13:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755980919; x=1756585719; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIe3rkr2hVZn1SBDJz1fTzaL8iHtz4LJHOCcFhnmrwo=;
        b=W9LNNGs7ueD3t32qmaKwkdFwnJELVtCX8V+OB/fj9ZAA7v1YSl6s2aIs9NYPQZJn9G
         lkZQuVNzp2uwCbG5ALq6FS3lwex3Z6N5ezvfM8ha3yq240krpzvcPvJ+wXHMLxx3ifX/
         hsyQhbpzUHWDM55kj3fyivS9JZxuUEdbe8l8rAZ8t8T6ONhjxNA2dQzzi1+68RTP9TO+
         Nl/sxZAekMVyZrmlJCt6jl1Yf5C/piPFGPfulphSGZiTSKn6xLT/lgY+ww+djx8qjeph
         arzfWk8+4UPpEuOxOJxdRTpE+BjCocKDcZIMzOIjOxFbJulWX8V7ii7H/2yk7qytNGoX
         oFHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755980919; x=1756585719;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hIe3rkr2hVZn1SBDJz1fTzaL8iHtz4LJHOCcFhnmrwo=;
        b=wBVoRD9rTEamlcoDCPIBK5GcsNkTCCuGXhgqRJVsaG/46sVp3hSFvFwWP6aalFFPzr
         qF3NK/Q9XnBCHlFwc7wPc4GS8OzCI/JvVK+f19Xlg016YaHQtkpy7kTd3j36T3k6DCv4
         ElBU8pwxjrt/16Tnm9yRIFsTvRXLizMLQWocjc/lHSSCNG9VtMs7XgOsT0njObVcpuso
         He7XOnoyw6YyZ8pJlZAuYdHcp+3bjbZvPmdJfrVhpfq3TreCphJ/lOwKOvcyuyyQL/oE
         8ZwDvIXmGbnzUlI4j7gI+s2wZqJjgS7LP2p5iyyQTiJk6lmqEqefxT6bhogvbdzhBViG
         cLDw==
X-Forwarded-Encrypted: i=1; AJvYcCVh5q0ygusrnXp/Wv+S0iOxvxudutHgXa/z+y4GFguN1CZj9CRPV0SrmKNogx1UK1/U/uSeM3QzJfrZR51/txo1taFnSXw=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yx0Gj5DJYV4UPiF5hm18VJx2rCKfD/jwsrLW45Hscged/cO0Qcf
	xJoxxZ5gEYp1vAnWWQR0e3j0B5pVG6sKm/6zej7qRLzoMeWCpa0xSVD6dD5hzg==
X-Gm-Gg: ASbGncuNvWtPolDAKeDAGeIKAI9UGwuCl7xVZeP/zyUKGRrU0cRxq2uDK04OhlUgUuG
	37yGhkjP//8IqmRg/rbErpUygCtHyAZUnun8dMLUaWKzzjYnVITu4OKCsI6dhu2742nlX2vs0cg
	9qxeqvhT18B2FEZsa12LS2WXZcxom+Oh1G47Dqak/s+5L7SktwV0VVldO5Z4zlWyJ+i8qgiBPXf
	TZvst+LPa7Bkzi9lTpW4vTWO7YpGAomLqWojzVpYK3UXbZ9PTGxhTLzcXSJzO72HxzUsYljaLCn
	GWzrQDs5hwsXWycRmqywd2fP/fqmrKAckOIvB/1Oy3TxaF2Sp+Djs+AUBBItWgi/bEnUjJpgkxN
	7l6bDIJb5MOoiy60nB570bdfpiZeaE80RGflgztJAVOldcbUCy83aY6BZtSVskxUn5Ud+LnmST5
	cTQ0m/CEPA6kUv
X-Google-Smtp-Source: AGHT+IEnYKANDwBVCVFWHHrGNd88QdROPoaqerxTMI92LqumJjPIl3sfMykRr3jkQBYj0izieHv/7w==
X-Received: by 2002:a17:907:3c89:b0:af9:406d:f0a8 with SMTP id a640c23a62f3a-afe29022109mr634923566b.23.1755980918645;
        Sat, 23 Aug 2025 13:28:38 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe48e85095sm237141166b.4.2025.08.23.13.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Aug 2025 13:28:38 -0700 (PDT)
Message-ID: <9684610b-eaa7-4bf9-beb2-4cfbf2f1a40d@gmail.com>
Date: Sat, 23 Aug 2025 22:28:37 +0200
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

OpenPrinting News - Google Summer of Code 2025 - The amazing work is going on!

https://openprinting.github.io/OpenPrinting-News-Google-Summer-of-Code-2025-The-amazing-work-is-going-on/

    Till
