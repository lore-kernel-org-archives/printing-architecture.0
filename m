Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7507A154425
	for <printing-architecture@lists.linux.dev>; Thu,  4 Dec 2025 00:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764808437; cv=none; b=seep0FM//jxx6zCINvKY09hdRFZvK7QQ+sDRTMJ3ryL01vHs0/QU2ax16Y6e3IRvpBcy0CSDTJjCXa8Xf7cLcyVLgtQf53k9NWVvVfSmDuUGcPxXGQg3V9J9lGwLpydSq/T+HtlAD0EZ8JkZlF01VGch5dF1hQJtYOUJFt3Ijk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764808437; c=relaxed/simple;
	bh=3fTfQdxNZm7kwnvVnWpIPSLQK0yTFYITvFnE9CYUKaw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=MBdd43XI7+EPLHvwNB6anrfvQTglmabPnrM6nF6LzuJos+PFjPAPCI00lsr/znyB96CxltY7pugNQnfuRJKAF4DxAosKWgjJ0UcTSCQFpqaQzOELlxAws6Al/V78j0s2hMN2azT2H/9Jzy8xBaFVQjbe5kW8ccHoctkZfetnDhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IQ/ZK30y; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IQ/ZK30y"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6419b7b4b80so435938a12.2
        for <printing-architecture@lists.linux.dev>; Wed, 03 Dec 2025 16:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764808433; x=1765413233; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PHfDrgqlytuCMnkHop39Vwm2gwBSP7FbdPneXQjqPjo=;
        b=IQ/ZK30yKLECX6ph1gyHzhNHj+rf/NCIwECgU9o4WDoU8nIgrA+D1XlROmdoxqDDTe
         ee+pKiAlTUIO/DhFpCHEKFa6p+pNidRKTZcq6DcpsHUcB/nY3yFQlFxO3Kj4TxXfdIcQ
         htGAwwQfARUrPxpgMKGvAka5pTmfTgrV4zK2NEbABTtcorWlfvknCoPRKU8Jc9zwd5bG
         03lyw65lGh4jiTCDM2FrSR9DP2Kw+AqVcAgSn1XiFNe0qd+pGTWyWKXmEYuLwHZ18WZt
         GwC4FFQWjEQZKJ1qo886AoGn82Zei5lB+LNlvhvsNWpzwQzY8gQxpbI/qBzwRTrqVXHx
         J6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764808433; x=1765413233;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PHfDrgqlytuCMnkHop39Vwm2gwBSP7FbdPneXQjqPjo=;
        b=s7VZ/ZPU+wxIWWUUua7j+zJsHOFb9LtCS5o5dlWfDlAspFIGLtN73RVSv+ofp9ERl7
         OMJWkZmn5kTPz0teAWQCWwW1l1ovs5oE9eLwM/FrQrLyEjguHjojyJu0+OtY9Y9rPLpI
         dUsp1zq5xxw9gbku8hWdGVFv7lrXG/nGEzc4PtsVi1caGXyLBOZK1a0D1iadk9+rxdli
         yaU1U4EoGo7v6AhnBHkTKbBp7smHB9R6AZsIqkgczOrlbY6SIW4W3CHGLnHeEBK3b+kZ
         cUJU8ImhhL+JzV+gWEUamuYZpFlfs+IiTS9MRBZZpSDt/Re//uqDHiArTzBbu/KTMIi0
         3BZw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ8WkFLRe/j/lJtXzZORTCigNBCB898XjG0e8o4epswLdTb0nAQ48r0A/nqc5k7DFrfcJnB3De2ZGLNFo+4FLgDxLrIMA=@lists.linux.dev
X-Gm-Message-State: AOJu0YwQMe/nhXZHEPvYeWP2cORAsd5KffKgZh671F2HtQ6Le7ZuuJ6B
	4hV1IdJeXH6bVkskn/4GMpW1MZHhdQPNUjNqH4JH6Skg78rSY17Umk1+0j6amQ==
X-Gm-Gg: ASbGncsF9YkQOL0KXr0eIKUzhCbMRpPuRkmQHT8Zo1MdQ3f0ukI2u2vlUvG34bHAeqU
	D/F2klbTz5hsUFV+DZV7frkRbJxa4brdP0yfyX1eG70bdcxNbg1VsY+YTUul3ni7bixZZ7dnMYW
	HsIHrd6Sv4Fnjr+oq1s7V9qxr7eCEk0o6cMlFJ9adhX8PMwUH3n6/zNs+n8WwID2uQcKAHbijPs
	yaHwX+bWUEKLsqYJZsj5+pY/AnDijP9NMcIqL16UM44a24VbQbWbtnhyf9FX3P2J8lr9zgX7D30
	LNVuIfap8neUptroJuKFJJ2ZGH9O3kRzto/9DCCVM7nAbHirlbTT1cd50ViqjFAMEy7lytclPv6
	7aZaWSTFsDEtq7t9ZrLYklGd+Y5myN1Y/Gr00fLxcR7eGcKtPmQXhi44FO2EW+VBcnSv3HmLJqp
	VdaxqTe9gE8teBOgCIEHN3sohKfMPARG8L7Yl1sXM0qlWVM6b0vuXjw83c8Ta55F8urYA=
X-Google-Smtp-Source: AGHT+IEw2k3wl/do5/SKi7xliRvR/+cpGUdfvoR8c/H+yQ9NZYFHBwQAxFBUj/yD6ZIhJwVhbEc4lQ==
X-Received: by 2002:a17:907:3ea3:b0:b79:c233:c89d with SMTP id a640c23a62f3a-b79dc77dfd9mr450388966b.57.1764808433150;
        Wed, 03 Dec 2025 16:33:53 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035af1sm20083659a12.16.2025.12.03.16.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 16:33:52 -0800 (PST)
Message-ID: <be944180-0189-4963-9a7f-78c3e788b376@gmail.com>
Date: Thu, 4 Dec 2025 01:33:51 +0100
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
 <basu.aveek@gmail.com>, OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - Tech over Tea #300 - Brodie interviews Till Kamppeter

https://openprinting.github.io/OpenPrinting-News-Tech-over-Tea-300-Brodie-interviews-Till-Kamppeter/

    Till
