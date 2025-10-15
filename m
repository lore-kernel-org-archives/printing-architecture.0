Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B2F1E51EA
	for <printing-architecture@lists.linux.dev>; Wed, 15 Oct 2025 17:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760549807; cv=none; b=f1F6AwWJXcGHiHcLIEWaeUUfkRWkK/nZJA9mmO7fs24lnXH+tJ5juJlMcldtm7zjIhvWhiAl/K+u9Kg7ujtqpYIG6ruetyjqr1+pXH4lEKRHl1Q02btNKhcahTANDrKcxinja1I7zNxPS428OFV4kzO6zMhP6v9eKtrhBe+96w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760549807; c=relaxed/simple;
	bh=wP83oeTv9UHatzm/R71NT8Mfy8yHYqgrk8wGMnxJJVI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=XwSxV+wemhdgi2kd5qjkwDRjOop5lJdPrlwWyMewyM9+D3AekK0MMwvWh2JJPpL8a+Rw9a0XWWl/5xvrH2KHK+d7CjK4Bo3xwQVCThh4bFTBFT6DaIzYXiM1ewaecQegN0SZa7OUe8UiCOSXYvZGz05veygYgqZMoOZa1NS0L8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g43Y24tQ; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g43Y24tQ"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b41870fef44so587595566b.3
        for <printing-architecture@lists.linux.dev>; Wed, 15 Oct 2025 10:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760549804; x=1761154604; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CBKXFJNFzHP9h2yVZfYQ3JgWshrLw9Rw7Qi6fCEQaac=;
        b=g43Y24tQFWVf7ciPedm8lPlocbY4T5bcLlXMgFZTRUtQpvrMY5tl+sD342x4vnD+MW
         paASaAV682tNmlYM5er78Ijf4jkpTebaPIlgoZljtWY6yHsc6Bdziu+wsLz17nI1Bwen
         xJxE5EZ33wriQvhW8shyq2D9hbvAS9/MXmcDDm8J3Rq3nR6sy0wcAPO8h3gs1ASdiKfN
         1uTqNIPqJF8tAUN/aHF1FxDt9pkRcHICLlPHh+9ptuyIBedWpbQAQsY3b5DFK2gUOWkC
         cpFaYccv9Xa8Xa9U4vweZb84XrBleajf2lTw404kVCL7qYbBEJcn6YfREQUH8rGhxNTL
         thbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760549804; x=1761154604;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CBKXFJNFzHP9h2yVZfYQ3JgWshrLw9Rw7Qi6fCEQaac=;
        b=dYX4wYOR3sl4dxDiBurg2TyCFt/4BZk1X+HhI6FKOmLdpCrifUViITtKoTxR5Hht7E
         8SfApZr4bykb1rTn19jDwkNsRhubIp6AbX3tBdBbbCBHM4zPC2tn/pNQj47nxImseYBa
         BXmf/tUdevjBxLdwzVtFGK3eFrih1bGd49sGffxoe6q4thMsFxL/9jEWYj5ZVSrCSqNf
         ETX9136EQ27Kar88zDgpFo+S3KeD1tzxg+yUi4e8LFsKhZbqwO5iZAvYFn+/9R+08anw
         11p8TNl1NjO/Xt7PaQ1DNSVfBquFe20EEU8rPQUg8Dhcm7vuz/jjXxxadESA1X+d8qtY
         /+5A==
X-Forwarded-Encrypted: i=1; AJvYcCUWdc7QnP6F3VWNk11LITGO0B4RfEj8xZRcdwEBv1sVJpdS6uAgBwZQ5KcPmpclcEGnJn2bnw8JR6wfYOxRLaWfzHJygMU=@lists.linux.dev
X-Gm-Message-State: AOJu0Ywgy4+p7rBwDKJ5gxbGUe006detAAT/93cjQOnOw6NIdp82L8F0
	igDPpp68GOjKQSrCkTc3apBtHfvEOHBx4vR02cPK2DsMwmjJ7AqYvhYh
X-Gm-Gg: ASbGncvbPKBORsGpLhCMidTOi2yicK5Bu323nKKmcl0vKS7LW91Jco482k/afRx7Naj
	WuD17v/kFHgchadw7qcXcrbS9xlU5PgCeHvA373BCPhdp+R0wE5RHIiYHjxarxPvkHUSj2ZKtT5
	nEK52sRTuSysqeKerJsP3VXC2sGjnod3HJ28mvNU4Xuayws3Hbolt8YnIxVDCm3kfa9JKrWZFdA
	cbNQmkSMNFNv6WbLNHPL92REjCOmGcFv80P69MF1oY54A0tt+DL5iCCospPXs7Kns4HtlxrQnRQ
	bdYomhJqBtmupLkbiAxRDlYvXNSN8x/lBRgv8piiagsp3Ysyf9MfmKdXHsmMTVoe4HVQ4G2ZvsP
	NFAHFmm9z6DAw8P6jeFTRY0oSaUanAov+3XsburKjSuWFUYS0bssgUE9kQ9x4Iqs2DmGTT1oUhW
	gXARlApa0WBua3KBZaH0hUPVGFGm9AJ/L7
X-Google-Smtp-Source: AGHT+IFUFMDU2FnssipSmetRL7s7kTK0dSd1l1p40cE4ooJVjn4rP+g9vytJy5WAUNQddc9D5QwIIw==
X-Received: by 2002:a17:907:d86:b0:b40:8954:a8a9 with SMTP id a640c23a62f3a-b50ac0cc32amr3054885766b.34.1760549804185;
        Wed, 15 Oct 2025 10:36:44 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb965c35csm274748966b.8.2025.10.15.10.36.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 10:36:43 -0700 (PDT)
Message-ID: <2ab9ece0-1347-433e-a119-6e14e81eb9b1@gmail.com>
Date: Wed, 15 Oct 2025 19:36:43 +0200
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

OpenPrinting News - Opportunity Open Source 3.0 in the IIT Kanpur, India

https://openprinting.github.io/OpenPrinting-News-Opportunity-Open-Source-3.0-in-the-IIT-Kanpur,-India/

    Till
