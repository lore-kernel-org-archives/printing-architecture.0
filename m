Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997EA34B18F
	for <printing-architecture@lists.linux-foundation.org>; Tue, 10 Mar 2026 19:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773169492; cv=none; b=Pq0+4IJzOSd52tyQi4L7VDpCgjeoFffJARtLVzoYTlLhn8zMRNn/eYg9RaYAO8KUJfSIaZ3sBMBvSX2yrsOZ8ge2bHfc/ZSs6T0exvfOwXlLKEbIxkpA32H/MNFeUZUcxuYe1e6cqQ2li/vhK8DQ/uk+Px199Y1Pm1YqAny9e0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773169492; c=relaxed/simple;
	bh=ljqOtYX1AlqRsvU/lIjXwEtNSaxhImCjLGLOUcZtNYI=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=Z/MnZX20CWgYBqEpFX+joU3jh07nGR1hmSsNYTl5Anw1MISa+GNr8aUZxgRxyvIRHg5sM0HrRY7ZAZF6ThkqNj2xWeAqB/f1ulLeNkUv6CdhY26AmAXvjLk1wV0CC8pN4BPW8D2XbtlRi9+iEpcAgQtWTaAq736qBr0p/6ZOJVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=Ec6N8BdE; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="Ec6N8BdE"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C159F40C00
	for <printing-architecture@lists.linux-foundation.org>; Tue, 10 Mar 2026 19:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T_rF2hXYPY5d for <printing-architecture@lists.linux-foundation.org>;
 Tue, 10 Mar 2026 19:04:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12BEE40B0D
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12BEE40B0D
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=Ec6N8BdE
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 12BEE40B0D
	for <printing-architecture@lists.linux-foundation.org>; Tue, 10 Mar 2026 19:04:46 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5a12fbbd9d2so6295349e87.3
        for <printing-architecture@lists.linux-foundation.org>; Tue, 10 Mar 2026 12:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1773169484; x=1773774284; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwemPcxMzkZK3t3HXAvQHRLEvLMkwOLU/sAJGHvMtwI=;
        b=Ec6N8BdEaWFoHPppfH6B7vpWf5ZQUpO0SMkblwOfG0s2YBdV7hIvJyl0mCGgbc0g8K
         isTeUA0sdQqb1vNxkMBnbGRpkhDs+pIuo1KCFhSgc2n1EpMRDyKPx2VsVYAyuh8uYvGi
         s2NhiB2bykioWBt+tco4CkmO97ylWP4yd12PNGaRd/RJdL2de1JzJq7BnRsZxobSjLqs
         h4Ef1/2nYyS9gfyBSWzls+lsYpB0sVzvbr+n0KkWlm3yvYrqDaF9cQv/FDE9A/cjSyaH
         ewFYaIDCPvCIKj7jIFg9s6rGVk0tVBUTVWBOxiFEOFFwrVTEb7ehplYCHT9IPFIbz1bH
         i0rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773169484; x=1773774284;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rwemPcxMzkZK3t3HXAvQHRLEvLMkwOLU/sAJGHvMtwI=;
        b=V3ozMpDbyIZgStpcqKkj8c3SsIup3ZwCzo9Ym8bl5qlmStlaDk5QfD/cBu/QUqOKqh
         7uSPl8q1V9FSGtKDGUMb8U+kl4UxCdZu8g0ysJjNaElmJq3tTqccL8efPvhmoUNgvfDw
         VDxpx45r/sSIMuOj6xuAdyWnQ9DHEcBqbj/VZjbcbpzaToLNn4OSFf9BJYO3tqo7+nPR
         a8Q2faTM95xaNwyTKtnhUN3h3pynz+AM+QAgVcjOtFNqAuXW49ZxHGtp8+Fvlafx/HFw
         G5eUNhqP0B8t26QMvg3h9Rgsdha+iZ+yEcfCbRKSknE1Glx/9rMcFuBa4OMDELuh2gch
         1P6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWBNXN6S6J94mFARvNu+i+eRuSOHY2UQ7gpGHdzkzjpRBWQW0IVb6yvNdNsDiPb2ntB0ZCPVbsSMjYlYMSootkx5wVniuM=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yxwb6AyN6ZgOCm4EAH/FkYcJPpchM42Q7pmCtpS6t+LAS6BodAF
	ugYwvaT0g+83AWXf64Gr3pvOM5JT8k1BensSb6sgffJZ/BlXd1egC/b6DX4qeOm0IIg=
X-Gm-Gg: ATEYQzx4O9fQufAS/8haYx666Ni5yrKvgDFQLhYoAQEbuqX33HtiUmfKBOjPMg2t1rk
	FWBFIJPJbvPWG7SMphwBKQ+Flu8cv4vgaUN0PD3KMwAEtSMq4H0lnYuQFdI0HhaRlmh8GhktiSp
	4tvle6+b1ssZNpKiXgnAkft4oAKNgF/uHsk6IJ5UIsb+ox+WHqCtnsa0swxCZGnkGklCTxzBY1g
	o6+3bTOg0mbXcz2u4kgJYLV1pxO0fH4gEG4fEeuLVnRFwfRzBTHQPu+yaV2wiYZuyRJmNgorhdB
	Z09LDF81QhdX4I1rrOTWJZXuQ4g85kEohVgqDYpXEHcjGOxh9IsN8OlV1Vy8RCcnGzIy0xIf34t
	c/pR4giHhqTsbsyQpQS6r6xePM0uNrXuIFKyUBeZ3XmdUW0+Wytgz84puz1n5LZ/3SwkZkMTSY0
	mk5X8z6aEdnBK47PEqdg==
X-Received: by 2002:ac2:4e09:0:b0:59e:6296:80ef with SMTP id 2adb3069b0e04-5a13c968ba0mr5835297e87.0.1773169484016;
        Tue, 10 Mar 2026 12:04:44 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5a1549a822bsm27013e87.85.2026.03.10.12.04.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 12:04:42 -0700 (PDT)
Message-ID: <d1568fe0-1c18-4ead-9532-2284e6f1d91b@apevzner.com>
Date: Tue, 10 Mar 2026 22:04:41 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "sane-devel@alioth-lists.debian.net"
 <sane-devel@alioth-lists.debian.net>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.37
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

This is a bugfix release addressing the following issues:

1. Fixed compilation with ISO C23-capable compilers (see #390)

2. Fixed an assertion that occurs when avahi_service_browser_new() 
returns NULL (which can happen if browsing is disabled by the D-Bus policy)

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

