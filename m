Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8AC1E3770
	for <printing-architecture@lists.linux-foundation.org>; Mon, 20 Jan 2025 14:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737384254; cv=none; b=TbZ+JB8Z4SBhKKDaO/R7PW+WtHt+5bjyhJDZoj9D8lZl7vtqLHnfS8xJcsIWXebqT1p7Yyr+hBtwHtnxugVADlo5mg+JtwIRr0mAeW9a+ygdUgebBBj4HgAj77phwfjjbqLjlbP43ipKo39W2wrgo+PvBpSed3UTsV8Kfo8vB5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737384254; c=relaxed/simple;
	bh=pjdHOVBTpCsvcKvzbVl9ladPlh9c/UE31gRPj0r6igA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=Ng+tRUZi2j1g97Z4hJb1MsA68JFx4IY+20Iu6sq553jMWgIa7Ka0pIcfcqomP5Z+BAYDMCWl+Fe/xH1uHr2+Am5qpK973WMVutPxUl1ULM9NJVae2k2IXnlzK4iK5EPg2lTOFOLt/WQ6qmEhjVHX9OV74hKYOHQoc78GXcDXo1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f55PUOPI; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f55PUOPI"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11FEF835A7
	for <printing-architecture@lists.linux-foundation.org>; Mon, 20 Jan 2025 14:44:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OmECzvpawIMA for <printing-architecture@lists.linux-foundation.org>;
 Mon, 20 Jan 2025 14:44:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0C77080EE5
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C77080EE5
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=f55PUOPI
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0C77080EE5
	for <printing-architecture@lists.linux-foundation.org>; Mon, 20 Jan 2025 14:44:11 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-436a39e4891so30878505e9.1
        for <printing-architecture@lists.linux-foundation.org>; Mon, 20 Jan 2025 06:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737384250; x=1737989050; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TbGIQ9hZulQUUNtLQgHmNUuNc01keUSYTijfEmkBRcc=;
        b=f55PUOPIBXEZQntO69MCnzPRsVKqs2F3uzBPzpLC6OMzMcEKkXRAXpPBol3v8+vnLm
         EOzft1lrZYMvrmmF+029e0227T47LUOGFBMEOGC9tsRjY74Hcy/tgw7Ot+V+fUhdAgI1
         6/5Ug2Fvo0/dpHq5qrjwHB1wsVhioLGAAw4CMObeQYhRTTcuqYSU+tQafGPJn1VN47Qt
         jEDCgvcZJtPapDLeruvJ18ItPgldxJNRgsmk+/CgEuMDPh5DcSYF06K5Q/Hg0bb/dztw
         IQAtIskkn9U35H0o2n5JOH2HlwKfGx3k5ztiqusA8Fg84C56/NLToeI5zHiQ0zdA+eA8
         DvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737384250; x=1737989050;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TbGIQ9hZulQUUNtLQgHmNUuNc01keUSYTijfEmkBRcc=;
        b=bss/MhDhUijinPOEgJeX/fIRc+r1jFTtsE1CE7+FTPe0RvdSKbe5eNER1HL4O3Y/3D
         zJg/TEoI/bkzDfP0iX6RpkyWKS/zgEWVvRzbPLDKnIfeXPWrqHaCnNGHeffQGbP1TNt1
         00151l6c50s7Fu1GF/aO0QF/tPiKwYJ96h5hBkXSG4V4MM8EpEkzbU8/jTFQwCMoJNse
         r5Dts4imjqdce4VTSNEDI7TzPCqeisrNAkuhpIGE6WXODG2qenbs/pH6qSmcdbySk2iG
         gs2tE95eVlxMRBM9bWAIBSyDHqr+wbPJ1idTe9vUu2Ji0OA/D87bJjvRP3byprhxMQyR
         2aRw==
X-Forwarded-Encrypted: i=1; AJvYcCVn+A+EzIXZqregUfUq3bHo4G2sVq4LA14oeKFBo3gjbP21NjVkAR+O2pKCqmZCHazjoSNrhnTNUhdZz83GlL8panf3Xis=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwRVxRXVJt3OzREySY2SJWFMF/rWX3+fkmsp4V6jn95mCvyh8Gy
	II0X12M+j1W7bGEwxDhY9MNwxnEyrpML1gzbkzkJ3SRz9F3c+22mq3/MCQ==
X-Gm-Gg: ASbGnctPLYUIjeUsICrarCWuwn0ve/geI/2Fg83o7dTEMEjDOeIaiXqVyNisCxIJubm
	2UTakus2EN78LhfTXGGbAe4N+WOYMLoDYfW7qTq0h5QySlGrbgCw1CsiTDu8sALahhWbouuNIrs
	X6sHgTS6Ek/GCVbqWa1NFEhP7cQS5CwSSMtddfrhMwQ6gsCj43LWX4XaCkJsYhvTyzi5keYgfNU
	PAP20H2+Te8y6iTgPaNT+G7mLcgmKLQd52YvMXlFoRgr42wfOkEr507+kV553vQjHp2gmb/Th1+
	QM9EyjF2x9DdxzUmrH0LiUnjnbxeIeJXdALA75s2z3eS
X-Google-Smtp-Source: AGHT+IFKSzcsj/HCekE+giuprEmLi6UzJWBCa3ixiwgYlgOXm3RJ2BD/oVaQxQOUXMlCgRqJpIhAfQ==
X-Received: by 2002:a05:600c:3585:b0:434:f297:8e85 with SMTP id 5b1f17b1804b1-438913d5da1mr143298655e9.10.1737384249744;
        Mon, 20 Jan 2025 06:44:09 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4389041f610sm141477705e9.20.2025.01.20.06.44.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 06:44:09 -0800 (PST)
Message-ID: <007a3cd3-3680-4661-bae5-53272d99bc5c@gmail.com>
Date: Mon, 20 Jan 2025 15:44:07 +0100
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


OpenPrinting News - Windows Protected Print vs. Scanning under Windows

Windows Protected Print protects you from scanning

Another reason why we have WSL? To get Windows SANE?

https://openprinting.github.io/OpenPrinting-News-Windows-Protected-Print-vs.-Scanning-under-Windows/


    Till
