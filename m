Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58462274FEF
	for <printing-architecture@lists.linux-foundation.org>; Wed,  2 Jul 2025 12:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751460624; cv=none; b=c0Mq5T7HmtKY/FUTfZHFGvym1CA8vE9Fu2x6SuoOh5OXot5QdSBVBaZtXGPcarPjdoLSAsoUDfRQFgV76zoQwwdC3RUy1lfCLLPJLzHXrnHD/+lc+GpBY+NPyrHGxfFcfDTtWyf5n2D1OlCTQTUEq9MYEkejJx4NuTsO0LhhSo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751460624; c=relaxed/simple;
	bh=HklDXXA4B/0tnm5u9vMuKg9nxUosPl3Fn1r1hgKXzKE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=MiuCDskW8BBVu1trcHGOCgP9Yt+jTJIBk4YKx/MME+M0OJY8vrvCVSRiL+Jb2YGl60/hRUo03i/+XyykoVNBvVqBjFs2a+sCMWJgxzwyXo7ZEvtOlpJZZl3Is44O6XFEBYInirtjRLaY4TX+j0HGnAy3sAsRU+4FPm6vKOdbZsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G4Drhuc/; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G4Drhuc/"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D339241484
	for <printing-architecture@lists.linux-foundation.org>; Wed,  2 Jul 2025 12:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.2
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W1SJlRP_k5D2 for <printing-architecture@lists.linux-foundation.org>;
 Wed,  2 Jul 2025 12:50:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFCA941476
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFCA941476
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=G4Drhuc/
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CFCA941476
	for <printing-architecture@lists.linux-foundation.org>; Wed,  2 Jul 2025 12:50:21 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ae0ccfd5ca5so621836966b.3
        for <printing-architecture@lists.linux-foundation.org>; Wed, 02 Jul 2025 05:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751460620; x=1752065420; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEZEsNDyZch4crXq/5kz//VyVdeA8RWn2sME96HXFXI=;
        b=G4Drhuc/I9do5wihicQLNXd7GghpMXkwsSxF1puH8baBzOtMIq6JHUeCWJRk6QQlfN
         moqkQMZd3OVYJKyx7CQ306UPVLP/iiBcug9Rylc6V9xunrRhQOPmFdl3QuBhNf+qzX+u
         5Z5i5thnhqhunTZypVh+UGW6QHcoMbA8wld2pxtWUm9nJx9glpnMWeCyn8XLM+A24cYB
         rar3/zs6hNTZlNB+xTj/PbRqz2jIYuh1+02IvYdCjp0lrg5zhSP2GG2Jn9CbUrSqhTrq
         gJG64vnjric1kp1qANnUtuWNoHZhWhLV0gu69TVu+IYLJCJQ5fsnSKab7Ps6tTWfB5IC
         Lc2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751460620; x=1752065420;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AEZEsNDyZch4crXq/5kz//VyVdeA8RWn2sME96HXFXI=;
        b=iJAx+ohXdfciDtuGV6ABxzoGduQGmUJz/UviXHO3g0+zEyF2XblfekvsDEKwh2URlJ
         Q0coXABpu4SkDocacMdzDDwyq0U/inOsJ+6Cwhb3ilds3XV7AKXH/lgGY65RFJqA8t0s
         345kSD1Rmr9v3E9samjD1EUMqctPH/Ygv8XgkVI50oY1PRpW+Cvvy6i8kPnCiwTZz9P9
         wJ1Bx/k5UfBFLc8amLhjcl4IoOQ5NDsu0lxIAVkhRTETRxE98HCdSyUWR5VW+o3Zck+I
         YGA7eT79IzMXs7c44J/cxoFL6qY2xylL2jyIVfWtMRGf1k2F6m/tVpAh9dV6LtSAdZQ5
         wBAg==
X-Forwarded-Encrypted: i=1; AJvYcCXHGhe76pQdJXaO0FtfZmBWstd+DV8N+PQM62lCirM8vKMlgQBsa1gPtwIjsHwcGdm7WVI4ORASkpRkPELZAF+Yi+sJwB4=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yx5ppSoh1ye0sqEj25nkHzBKnPt/xwY/8vvMa2FEN/thivXfqlm
	1Sey374W9VTcT5J0HTqD1nSyNvo0k7uo0W9SGJnlZSwxz501DnCXPI0M
X-Gm-Gg: ASbGncsXN6mb7wNYoHMlnUPtGufocHsfcoHIppns1E4/Q5O3WfKbk+cPTAdVdbw4S6h
	nb7aFQwzNlzrNtUP2Zm3AbiQ0LA2cPELQ+1RwjVVKy1axtP2O6n0xW9jK+PFOJE2o3R4z+8anPK
	g1rKqTOhsw34BOvHjW07vtOov1XhtP9ufwZtnoDTxI6RzlA6+gZWQ7Rn4//7+WYuX8iqx8U+0P/
	lgmrL4+ASs6/MBlgDOi4Ldg/Fa3mjzrNRCH0kbEvNS2t/vXJAJjZrgaPmKnaQD8U+pg0TuL2MMc
	jYJfHAg+cyxYodYqSaZXkEHbUwHZrrg8qR+cf3GjoP7fCPrOVNWqVPvPeR5MMRa//n9R5XYKNaC
	D1qf7ZmVdNU1kG8vEuMy9WGrAAPim6F3GS7xzbCWcrw==
X-Google-Smtp-Source: AGHT+IG5pNyQMnvt/aGmiVTo+AHErnoRYwPwPeC3aUSTQeS8I4T65g9b169NsTA3ngpgKycnR/iZ6Q==
X-Received: by 2002:a17:907:9281:b0:ade:405:9e38 with SMTP id a640c23a62f3a-ae3c2ba85cemr282327466b.24.1751460619356;
        Wed, 02 Jul 2025 05:50:19 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca1619sm1071698866b.149.2025.07.02.05.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 05:50:18 -0700 (PDT)
Message-ID: <3f52437c-9794-472b-ad6d-696ba6a137ae@gmail.com>
Date: Wed, 2 Jul 2025 14:50:18 +0200
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

OpenPrinting News - Google Summer of Code 2025 - Contributors selected and 
projects started

https://openprinting.github.io/OpenPrinting-News-Google-Summer-of-Code-2025-Contributors-selected-and-projects-started/

    Till
