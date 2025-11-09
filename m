Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896E92D3ECA
	for <printing-architecture@lists.linux-foundation.org>; Sun,  9 Nov 2025 09:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762681066; cv=none; b=tKmxKg4AV48QX0rn3i0w4KUGwBZus8DlVQ8FC8VObuBtvXi0W2qfmqY6zbV4buwARlNTJ3+Q9TXEKIkg3SgmyoN122uhPmIPPmvF9m26nYDVRI3jNnZ8ormC6LNQFrxnZtWApavs8AqBDvZCTDiE+tnKNRGxKFwUTcRcXkRPtMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762681066; c=relaxed/simple;
	bh=ndW3vjI6YuBXoPpUpDPpvAq0Mf6gnttXVA+o620G2pI=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=JZN3jXOxvjBV3T3mF7T6K1V9vOIzC9ENX3g8u29FPVdK8gBWc8IaBvn4iZR0Uw5iuIlT4voeNCUShJJhQbwQUZdk2qknXGqQPbTZwgu/zpJezYGVczDgJCnnhefcgqeHm60u7GBT8AJGE/fUSJLh/gZoOlVx9jChneHgUVNTtUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=ggAF29XM; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="ggAF29XM"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8CAE81215
	for <printing-architecture@lists.linux-foundation.org>; Sun,  9 Nov 2025 09:37:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eLdLNr4CcFPk for <printing-architecture@lists.linux-foundation.org>;
 Sun,  9 Nov 2025 09:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::136; helo=mail-lf1-x136.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3865806A2
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3865806A2
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=ggAF29XM
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C3865806A2
	for <printing-architecture@lists.linux-foundation.org>; Sun,  9 Nov 2025 09:37:41 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5945662a755so1618170e87.1
        for <printing-architecture@lists.linux-foundation.org>; Sun, 09 Nov 2025 01:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1762681058; x=1763285858; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5GaBQdzO0vQ5nqjHpR4gTtMztlkbbiNfBKkP++Q4NXo=;
        b=ggAF29XMJwoPGdsGvckMLXMDF9M/+wfefNSAYN4d/gZBjbtLiLtq8yA+x5Ju7E36sB
         Ham9z15KG/qmVmL9+5lhkuBo8uG0qS9xdqe1z3lUeQJXiYYnAytHt3SYO2FclovUKMeb
         0Snpd/YTZpycSK06QRNkXKyCVgpVD16F+X+gna16DI8w/LsC+j+z3mn4vbO2anFSiTVj
         hm73wqnqFeFL3FgnAzCL98123yd3Ibd8tl3PJiXLjoW4/0erHVErfmxB8MvfbcpJaPOZ
         hKXIrVLl5kWRNsN+3nBQ1HBkHh+YQiQi8HFDP+6POXBJgyCu1nks9w6HNoomEWL8A1P3
         EDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762681058; x=1763285858;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5GaBQdzO0vQ5nqjHpR4gTtMztlkbbiNfBKkP++Q4NXo=;
        b=ijnlo76LLg9bPRLindJZ5GZwgWNHJ5NWYOS3sZI17LoLwAf1lwXZFXFzXJv3GAmgpm
         066PJ+JfaCT5Dd0PQNi4fuOHRIJt5Cqvjuqj9UtXFjfRG14Op5amL0OZLi15hIO5yGOO
         2G/Tn0nOeTtqetFrTQjnQEGdGblRsL2QzWsj9jM90qOnBf+nCs22dd1VB7wmDzc5rdt5
         ODzwzUK+qlMkvcFBlHzbmwrlGSnkfRQ2BYmhGB89UT0gmWFEA8GNB6dOX4oE7nLYGyiR
         sYWErZ+Em1Hl0ro5SwPrDrsjzu04nsUh3LLU5NOK5deBLTO8Vos7hkgEkBwEWPO1dL15
         U4LA==
X-Gm-Message-State: AOJu0Yy1/dfKs+g5WrEHlNIPU2x5foGzPCKfzDy1Er2CoqZNKxm1K072
	KW+tNM8dMNs/Tx9KQaOl+0qVeokBNMVTQ3L1q23yERf3cTddo4C/JA1yRYiGt8DoV6yWJerknf9
	0tNc9eYg=
X-Gm-Gg: ASbGncuwttboaFFSnAksCbdixnfYXPMlxn5GEKKBW68WIGydqVKPlJOr5B89vyOUGTg
	aBfBQ2sx2VXQ8Ks7S9HtKdjoON/4N5M2Ip3eaLPp8IOf2Zvfy/cbrEJjJmKS4w+4I1CW/+gSMv4
	oiZAyvgDxvwRWGWBnY9JGBrgM2Oky0lVqVzIftOVl4BB3xCWEtcRbh7wxHumzWP8tvEHiJD/bfm
	Mh00QfpNFZXZRzQ/atPbqO3dWF0NYaOwb+xSPeuD+as6L+eDbH48CXTl+0Gbi8VIiIjCcI+39b9
	LErVbANn7ac7BLH9jSRWzymrktbCx1gYFI/g75u4EotdZwIqiXMGF+A2vwWura69bwC0tLvFttq
	fdBIiG60SWt3OF/j3YUdQz5mj5h73Wg/8kv8o+2ivuAnErgaxv1awFpf33X4KqQ/6FHVXUSc5Gs
	uWk+o3pg==
X-Google-Smtp-Source: AGHT+IECW6DpVcfNUBsVzOuqDZaDaJgo+1bgYF+4ggEnDspC1gT03cxa8UCWA41/feRW+G2RCR8sWQ==
X-Received: by 2002:a05:6512:6c7:b0:594:282d:f40c with SMTP id 2adb3069b0e04-5945f1bbf29mr1444977e87.31.1762681057972;
        Sun, 09 Nov 2025 01:37:37 -0800 (PST)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5944a840e20sm2909645e87.60.2025.11.09.01.37.37
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 01:37:37 -0800 (PST)
Message-ID: <e5921db9-4e50-4417-8488-02722b418fad@apevzner.com>
Date: Sun, 9 Nov 2025 12:37:36 +0300
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
Subject: Minor mistake in the IPP IANA registrations
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've recently noticed a minor mistake in the IANA registrations for the 
IPP protocol 
(https://www.iana.org/assignments/ipp-registrations/ipp-registrations.xhtml).

The attribute "pclm-strip-height-preferred" is defined as 1setOf 
integer, while "pclm-strip-height-supported" is defined as integer. In 
reality, these definitions should be swapped.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

