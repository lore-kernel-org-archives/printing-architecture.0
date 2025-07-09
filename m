Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A985801
	for <printing-architecture@lists.linux-foundation.org>; Wed,  9 Jul 2025 22:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752099640; cv=none; b=BCHgoyhUxmj7TpBthXg96N3Ns0ah84I5CviYtqTgIBSVThLaZ8Ytvcf1mBRfrWK48njR49ydjYxiTJu3fXD5dBJs5dJ8YmeKtQOeoP8NH3sx+cp11smthZnUEdA5HJ9f88/vYvQWlm1KcM+uVayb6eWMzTGY709Wvah980BGrRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752099640; c=relaxed/simple;
	bh=tuaPKPstW4bs3VJ/554uxjq32RTSFe1wfUcr2oW7cEc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=skGA/Bne64V8YoC90aa1blo2YlHROc2vfNDUobZGu3M8FKWtfQNpgTgGiTuZkNqdR2cYMyoeMKugxRutAy0595DdIwJ6E2R1DVqs568mXP3ckUNU8zhyAukrS9UGbBcM8B51OmZ8VXZM6GLvik5EVUUguQJiPhU+nCUrP53b+U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DuJvlTh1; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DuJvlTh1"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1C1E81E25
	for <printing-architecture@lists.linux-foundation.org>; Wed,  9 Jul 2025 22:20:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YbCN9t55p45l for <printing-architecture@lists.linux-foundation.org>;
 Wed,  9 Jul 2025 22:20:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C729981E21
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C729981E21
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=DuJvlTh1
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by smtp1.osuosl.org (Postfix) with ESMTPS id C729981E21
	for <printing-architecture@lists.linux-foundation.org>; Wed,  9 Jul 2025 22:20:37 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-ae36dc91dc7so53975566b.2
        for <printing-architecture@lists.linux-foundation.org>; Wed, 09 Jul 2025 15:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752099636; x=1752704436; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbPkOeIA9FhkjMdqGP94aZwKk9mUj1/8Yge6/hHxkTs=;
        b=DuJvlTh1OHBIRlz52IlQViM3xhGneZPhh0um5mP+31MWlQAV3nnJEdpuDgwZKmAhBw
         DAjPZ0tunDJrDtSMcWl6Z/PHd5Hrr0lIAG7aMr+Mc6pmOt1JqC8gEV5lb9whs99JQnNI
         PqRFQDQZdXhF3//Q+ZAG54G1WyY1MJPaQME0aTP/dt9jyn7tCRc4hWW2RVotpacaYOmu
         PkVuIeGzE5h46ArajUaO3hSXSqpd/+53Qexn/yrA0jf9KdXy78cbQq2qKhY412R3ner2
         86WxElY8MfiWYzGBwycAAz3tSYZ1RVKByxaEy1nGKtDIa8Aucf1ru0z+9Ne+bcxUBRTx
         /7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752099636; x=1752704436;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XbPkOeIA9FhkjMdqGP94aZwKk9mUj1/8Yge6/hHxkTs=;
        b=kDY7FKOXu8GP2T70obVJimoi7dLobxhngvifGiHeGyPyRb5ZmDntyyoHEcCyETuink
         seUy6Ea7M9pq/RYPWyOncGJUXK6Ct9MF++VsJfEZRrowHAYsfHev1SC7wjrRYXyOKkaq
         B43wolHhVY2Ln/bo/jBqzTZo8EOg7rnR8QqZ8vUCyBGldakPc1tCpEfpoxio1ls+bVAi
         A4DfQTxx0usesdxkr/4zes+OEmX7NWJQi4ih90gf4E+vIGC4wAHBM7Wa8Luqw5YQyQo6
         R9d9FtW/dP3KP5MkoLLOemOM53nmcDnZMAiDFxDJbfXxoVW7QhzqqY/WNaK2NKNcrN0t
         QmMw==
X-Forwarded-Encrypted: i=1; AJvYcCX7UoZT8UHjtvKVD1A5dtqoNQDqvc4wo29LbsuWLJbBG9Stdjc9HXg/llByepzz7AvQwG13pNIYxqug02L7DczyjSQkrMY=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yymvti5NzYdLgzJrQZKaO5yfRQ41o0dSTzGRHTQPWLBkqn4fWq3
	6eNWc1GAcTG7dWWR2E//y58iCI3S850X7zKr29rqAh5KGy0+hYCUvEdZk97GLoDA
X-Gm-Gg: ASbGncu12iUF3nv65k6x3NksvweYArGCN+rjV7LHMgO2fibSqheIVlvEwxrS+0+YuVt
	2I0zOjtGu7fd8p/EF/87nrR1zOihAP1R4bJNQsmObxYJm9GKprRboBndBMIKSxiatDTkyYTTX2D
	p63vnBqUH6fTeiiApDRF5ZbIf0ddAk1J5uYSTB6LHEtoA0aeakj5QLWN1T4IkLJ94AgBr7CoD1M
	GoNonZEe537MfI1Ybso32Tedp6GUPNgyEBv9YevPQyb0eAN4FRf2Whaxcto98gzFdgVYnh0uyl2
	Xi8jnzk2FrkqS1pDZbpBgi2BAe+wW12po44T9vf72i2Mo22w4+zg1ybO+TVpuRqyaYH+U5Ws/MN
	eqkZkz6YO77kwdSWliIeOkhpJjh4KFe+iW+B17NB5lQ==
X-Google-Smtp-Source: AGHT+IFIvBNfRgPJo60nEWZVUfgKA4V9JRoj4xDJ3TPX36EPN4dL/rKShJzOiNiYYR7JUQ9e0qBmNA==
X-Received: by 2002:a17:906:6a25:b0:ade:450a:695a with SMTP id a640c23a62f3a-ae6e718e4c3mr34507666b.61.1752099635449;
        Wed, 09 Jul 2025 15:20:35 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c94f2be4sm15600a12.10.2025.07.09.15.20.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jul 2025 15:20:34 -0700 (PDT)
Message-ID: <a78d837a-732c-4047-83b6-023f0a7c0b33@gmail.com>
Date: Thu, 10 Jul 2025 00:20:33 +0200
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

OpenPrinting News - Opportunity Open Source 3.0 - No UbuCon India co-hosted with us

https://openprinting.github.io/OpenPrinting-News-Opportunity-Open-Source-3.0-No-UbuCon-India-co-hosted-with-us/

    Till
