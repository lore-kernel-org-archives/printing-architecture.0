Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214AE213ED6
	for <printing-architecture@lists.linux-foundation.org>; Tue,  8 Oct 2024 20:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728419037; cv=none; b=i+5a5L17Vfc+1qQ7QKOvBF58l07cyNacqi/CfZ0cOPFhmomAl+ZeA4/j35/fypEFnJTacpsV7FJA619+TBEs6XgHfGtCG7+1/d+6AMKnSwq7V+WoEnupfuGiNV6ZwoEdAWXMzsTpwBdtJK/M1pAwmODhSSf22Xyyrgme5VPEDUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728419037; c=relaxed/simple;
	bh=CT/BtQZqn1xQhv0EjhAYQiHt6Os3DUPKYFfOp9xi+yo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=d8Z1z05hNyvQ3y7aFM+6Y+NLoJFaz9KHxvBi5TgMdgZPRBu60S0fOp1g4eQZTEINF9S2ExR0T/lrvSc5f1MnYrmhcuz/e1S7nZO0sQVOVosngoLUp5mLxSDMpYha268Tp/INbpJ+Vll8XyDnekGSNbpr13BfXC0THdClHBQzsq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UGs3EExW; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UGs3EExW"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4477405BA
	for <printing-architecture@lists.linux-foundation.org>; Tue,  8 Oct 2024 20:23:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b0_iYkv7x1QY for <printing-architecture@lists.linux-foundation.org>;
 Tue,  8 Oct 2024 20:23:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 789DC404AF
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 789DC404AF
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=UGs3EExW
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 789DC404AF
	for <printing-architecture@lists.linux-foundation.org>; Tue,  8 Oct 2024 20:23:54 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-42cbface8d6so81378565e9.3
        for <printing-architecture@lists.linux-foundation.org>; Tue, 08 Oct 2024 13:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728419032; x=1729023832; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XWMx+DBQ2lbFTHUuBx2G+qc2NkB6Y6sFd4SQxvr1Cx8=;
        b=UGs3EExWTvX+LT1DbmuZCsmY6InyDaZ7T9LY+hZOYj6z0YmuSU+xSqSKuJMaNDa53Q
         CkFd9NP0C+7PWXzC8qWelsP3Y3+P/ZeUXpBAAR2TdxMSOVNpYSgrz0vwhtDnQAyohmH4
         v6U8i2DCmKLUEMRyG2efdmfn3GKZ2+5TBiL0ZvVxESDy5XWlIrO3JAib1mnCDc39RJn0
         3mnOSC6KpQ36BCGWcrqlRz9Y3fXtuC3/PvIolIBF7BZQ1LsEPKLBRz1LKxhgvRaLtlMn
         wy93z6PyGMcn4HbFSYApDlYKb3+0/y/15axVRO6RyM2yNGLkXoTrQp/Xy33WerhAPUQa
         Bveg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728419032; x=1729023832;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XWMx+DBQ2lbFTHUuBx2G+qc2NkB6Y6sFd4SQxvr1Cx8=;
        b=aDjYpkYl+bfQwIcC6TOmT8ztmszZPfFf3zFzt5Gv9JpM2+6QCx6C7ntsk/qBrLuOBv
         Xg12uF01xb4Vus2nsb/QLHszBnfKygHMzUV2A/7vyxP+TpLQhSvHMW3mkUsgQ0nvcbUQ
         lF8+tAhnx5gi/tfP3PMYw29tust37hKQG0kMyFMSej1G1tgymzOj7OMZAewpS3481wH3
         4n+x7Qb7nSshH+octg+hwD+tRs75I/L0yp90k4S4sVi3f6JIocZ2qADqlLJVFSPE3mG8
         lwfpcwWq1si9LQdOWkSAIxyGCVQM7leIUYAQgjNJtWkxon0qaSWBUWH3BBj/M4LdPIJT
         iKBg==
X-Forwarded-Encrypted: i=1; AJvYcCWDXo8cgEDC9n7H7j3kcsgl8MHOGI2heoOXpXNYPaOj+iJZ54o5+HkobYJ3IXMbnrjFyBZYjZhI59s1dI9ADkvqvt1XvIY=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwafXLWxPa2wNHtl+z8uR6PzecY9gPE9vG64DM8cLbYZfHF/VF/
	dAADYlj96fOD0Z9VXwXsIlZPLQx4nv0ZOhJzA2WhZWIF7HncCRit
X-Google-Smtp-Source: AGHT+IGb9X64t6rwk0oNLAaR40lLvFUf7cw89M1X8tDYy5RG+A7p74h3Aidn8psTEgOcsVuE0Uj+rA==
X-Received: by 2002:adf:e707:0:b0:37d:3a1f:5e73 with SMTP id ffacd0b85a97d-37d3aa58fcdmr61993f8f.33.1728419032065;
        Tue, 08 Oct 2024 13:23:52 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9939e593f6sm508064766b.91.2024.10.08.13.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 13:23:51 -0700 (PDT)
Message-ID: <fbfb4df7-7cb3-46a0-9182-a61c3b2b6c80@gmail.com>
Date: Tue, 8 Oct 2024 22:23:50 +0200
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

I have posted the newest development of the last month on our website now.

Here we go:

https://openprinting.github.io/OpenPrinting-News-September-2024/

    Till
