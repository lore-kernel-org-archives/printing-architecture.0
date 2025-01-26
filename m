Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D1882D98
	for <printing-architecture@lists.linux-foundation.org>; Sun, 26 Jan 2025 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737922834; cv=none; b=g3bN8ALbDrLUyu5QL2S9CeaRGpdW4zfCN17m/roreeVUr8+myxZ3T9eZtPQHjATahAq738JGGr8P3AffJc1UYchEnJSMVpKoNoKWAwOPrQ8sM7JIUlXz0FQk8Ij6bDJywB/Yo0ibiaK1LxU7c73KhrkUsX6ktLCmHXYwAZhx9G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737922834; c=relaxed/simple;
	bh=i0CTXyAY3X2tLNRr3IjWZc9PRkhVjShBdEGTYGgbrng=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=a99taj5dPNEOk1jofLcNOCM8d4m5q3Yb/i0AksO1G5Nc1otRfxAIKGxFAi7JuUtQyhgdc8z+4np+lbUjiKxJPoKtWyUdQ7WyXPuV+Pbn1g89cji5zC9oUwxeZtrkfYxZg/+nL4zpFN3u7MERYffoP+s8wtHZrHSDDjpuP4/YxyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NeSbScKV; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NeSbScKV"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22F748124C
	for <printing-architecture@lists.linux-foundation.org>; Sun, 26 Jan 2025 20:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V2-KpzGw8ka5 for <printing-architecture@lists.linux-foundation.org>;
 Sun, 26 Jan 2025 20:20:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15D948124B
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15D948124B
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=NeSbScKV
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 15D948124B
	for <printing-architecture@lists.linux-foundation.org>; Sun, 26 Jan 2025 20:20:31 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-43622267b2eso39115035e9.0
        for <printing-architecture@lists.linux-foundation.org>; Sun, 26 Jan 2025 12:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737922830; x=1738527630; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/varHFLI6S8AZubzGz9mvzny+da9wBVcE0GNoG/HtPM=;
        b=NeSbScKVSSSM7jt01gBBivh2FNNC5pU4b3FBzbsaYVwTfJfkPwe7x2tv4AENQDAo2m
         2Egr2e5N4kKcT1J6TmCBRs8tOPSECyyj+54hxPhUT6a1vATd6wvldLtMyNi7XBGqc4K7
         V0mXUVAnmc+mlluVEbSI9vQT8D5Ynh6mLourTxBfY9zfI1wRt1ZemdOnbJt0Ja/BwQa4
         6Ga27dfK0drDIm3bhHsZnb3egMRqZdpyfL1a6ovaea5sgdNHFJCPO/Rb4WvMQQ/nmwln
         jDtCO+UXSMc2zAWghdJJpHgjVcNtH5JOswwxFZXYeeqdRw9xud/XddNxKAkGqXjboqv+
         EmmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737922830; x=1738527630;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/varHFLI6S8AZubzGz9mvzny+da9wBVcE0GNoG/HtPM=;
        b=wxFK5s6cJGvMbj+o6gmBk9fZQ20nTGmGjlCIWWQoJ8XVyJO6LXupnxB7M7Ra5t7RHN
         +cH04OWNshACaPqsodviQ6EHAQIxRNSUoq/FORrORGB5nesf8EBw4R3+czUJMt467J0C
         lSf4tKokzMjwBIA36Ro11gQPmfq44pCxBXQlySO1Nsdyd1SVnvKNP/BgD/JCWYmLsu8U
         1lvWnSMUi+J/PUy9uUkF63tafI5haKVVzyqEPr53wHZ/AvE9hHVVFPvbkMkZvWWLJaSr
         xoVzJK6N35ks1m4E0CzhivM4iYO/aNIlTg+gysivZug0VvWM+OP4vS7KD0r+tcZNbrcC
         I8hA==
X-Forwarded-Encrypted: i=1; AJvYcCXHVfkxwHZ78k2Lrb84rtbtkE3bRSAyeQqjVmc6pwcR+2R8Te/wwU+vtoSynUvcMOQ94vTnkZ69LKrNl24yA2FoR+VaSlQ=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Ywcm1iO4AJ1yqNkottjHEFENk3k/MUAlgiKHzv4cHkW2UjdB2UK
	mfsAtx5K3Q0fSx4taA9VrTuG2TSl0bh4YGXbZ4z1g05H0cqojCDX
X-Gm-Gg: ASbGncuDLnLO29gce5eZSAe8pzX4C4Ilbt+bSgYY50PAMI7UchQbUhW6guary6sI6Vw
	+wbh2RjHCX35+40XvtL1Yg3AzRNIbNizWvqxpy0za3ZuejNwTtK9ZHWZpCBKefXvJzKdgX0FqY9
	A18kKxsBudn0iXQhrtrj7sJ3xWrSmsjmG5u6RhvXS4IMY8FAvuSIVAnEdj3Y2yoNeqpAt5+V+7X
	2XuSyrrGsSn0Uwrim4mDD9aRvlWCsXI6AeWzvQ3sC6RkNr3lv4nKkXyaSCa/0mac5kobkITWkXM
	Q/ExAdEgDRNVP8U6Y6JsuhqLuZyE1CrcYHAOKJLJCsGbIKuYIOWwDlw=
X-Google-Smtp-Source: AGHT+IHd6FxRh5YEpUtJXpW2q9M4f5fy5BKUWkxme5EKPdgtqvRL3cMkVvDOZydUPFSeYo4WRhSr9Q==
X-Received: by 2002:a05:600c:350b:b0:431:58cd:b259 with SMTP id 5b1f17b1804b1-438914671fdmr392858685e9.31.1737922829446;
        Sun, 26 Jan 2025 12:20:29 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4c75c0sm104890025e9.31.2025.01.26.12.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2025 12:20:28 -0800 (PST)
Message-ID: <4d13483f-db48-483c-8701-f8ae2b89be7b@gmail.com>
Date: Sun, 26 Jan 2025 21:20:27 +0100
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


OpenPrinting News - OpenPrinting News - Google Summer of Code 2025 - Project 
Ideas List posted!

https://openprinting.github.io/OpenPrinting-News-Google-Summer-of-Code-2025-Project-Ideas-List-posted/

Direct link to the project ideas list:

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2025-openprinting-projects

    Till
