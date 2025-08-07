Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E562F4430
	for <printing-architecture@lists.linux-foundation.org>; Thu,  7 Aug 2025 21:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754601732; cv=none; b=CKgUsu+OGS228VgDSCso3YyYjAYwV+j+pI7DV4UbuiR8vsYFegwTNB1QnibiMbMqfaJRgLKoLRZlJ4o+NM/j6RD2s/wm0ef9PzeCwaI+sscasjeNYGtiLixM5LJGuxZ7vUMMIms+BCWC7ftixpSkeeM0eFlD9Zo2IowOYntIyl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754601732; c=relaxed/simple;
	bh=hxjik9uedBra5P1pGS58lX14kxp5PR6jIGuO3UvBnk4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=o9SBrqnV3FOdcoyPMAvpMZrdMvX8U0Rc1DvTqWISVOOzxJpDJqIvpDk83IVu2ktZ3G6RYFUtPZuekUqulqlOcoYcUb2tTdFSmKFEWJlHUmCk7kXPeLc+9YWYsJkkXuQ+k7wTYsmoqRFVEbjqojQQVjcLr/g1jGuN8ajw0ryGKxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DyL4+iE4; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DyL4+iE4"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73E6740281
	for <printing-architecture@lists.linux-foundation.org>; Thu,  7 Aug 2025 21:22:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.2
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zjjJRUpfepjP for <printing-architecture@lists.linux-foundation.org>;
 Thu,  7 Aug 2025 21:22:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5D7284026C
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D7284026C
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=DyL4+iE4
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5D7284026C
	for <printing-architecture@lists.linux-foundation.org>; Thu,  7 Aug 2025 21:22:09 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-6154d14d6f6so1800235a12.2
        for <printing-architecture@lists.linux-foundation.org>; Thu, 07 Aug 2025 14:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754601727; x=1755206527; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tFUm6nCyj19PkmcqsE9cMeTRARsMpe4byMcT4lHwL+U=;
        b=DyL4+iE4/+2T+zfaJOJlNb1xEN/MBRzrGNQXjaFtnC8M2xvnwv93+L460xbtEIjebO
         tC3HU38R5dhURaYxpAFzSzAg6IgmxWiEAql3G540sPOKm57RtGud1hFR26j0qvjFDGm6
         FWBHQku8GKNxDj5t6lN9SmGu8IXWCDtmm7aH44Bx7+RlsKkQfA7ywUQw9BBdcsEB3Eqr
         n4aDw9V84P7q3AWW0eCFHLHsx6WNmRomiat9nHSdmt2GkTV2c/IAmd6baqKUBGhkrPWb
         2g2j3PWTbasCXK6HNgcjxqHzSMeiiGnkYBZkSCsvxlt4m+pGe0JmbDYK04oVgOuaARyh
         S+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754601727; x=1755206527;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tFUm6nCyj19PkmcqsE9cMeTRARsMpe4byMcT4lHwL+U=;
        b=IYK+BsHz9uVk2B963yU7VFgIrtOS9fuJr1q31ay35TPOZH/m7xT3SqYHWLiE5zlmo3
         N0x85T/T/tyg3mMO3IlaJRGQwYliE+d7RLfq/Hes74c1Lg0yLXCosVsbTwtYo4wrvvhq
         v0RMORc+7GISF/kuXshGeUEjq+0jSAEMia8Ck8eht/Bx6vlE4ld/pi1n8hS42eAfY7S+
         7Oitr9t84RHZnCJ9c1reobeQn/Ttb6/DcgjxZWvQ9q+mnQmtkg6+0pPA0Lyv4AVp7B/H
         Zf5FZuFspyKZIMsR7SsKoaKDM+ZzMdzB7yeS4jjGyIkipB2y/J4PW4eW2dT7shO18urd
         VNlw==
X-Forwarded-Encrypted: i=1; AJvYcCXESRkD8BZbZgrULQ5WtNYO07OkBkmDwDdjC9NmpD15rAsaUNs5qHCHl89AJJuNDolnXUUVkKWGRCVr//fFd8JtI/MvZQA=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YxhdBEZYfrkSl4Ksy09cNb2PzU/TV4CM9pJKn4w9WAa42ilVbyy
	Ls+QXhZkUgahZQnQso775IIw9rERW4foNRKGRQddfTaawbBh2I4Qqz/7Mnywlw==
X-Gm-Gg: ASbGncu6gdVnZZDCcxBYF9yzuWfZAR1MQ3hBml+9eC/lYfGPurLFI/3rYQBW8ZkjvD8
	cmEZK4v7uvSEep7HCuk0ePn65x5Bcm5PFLBv1yc2sTVKeq8LLsdWdNdLBmG9ZWkrzpXb50mGExA
	Pa94Zb82COGKjTup7Xstf+1G5LKdAZwEMoMnEBoBI+uFNtnp3uSzH7QqeSeDQvSxPaoDU0ZTv2V
	eq7vN6iLUialaWlA73Bx/ekzJKwFue8hmbGXHhzzai1TSZabuxQao4APFCJMcaNyN8pC1w2RuAs
	vthpV08L9Xjp0G8tqAQ6mntL/QrFFwU+fhAWRL0d3hUcDuavhkmpiIb+ljlxUDk0yH0gnUe9/1v
	BBOucdYX+O6D5cty+R23f55mAYlrteTYuPw42jUYLyCT4PytD4r8BlPy4ePBLecDK0isLZSZ3MO
	iYzQ==
X-Google-Smtp-Source: AGHT+IFqt6/JhxZwjGFd6pStjwL1aLdOTZ0f2yESgTOGr8V5q/YavlPoYyrCZNGh8aGvpKf2pEL2gA==
X-Received: by 2002:a05:6402:4307:b0:612:b9bf:2a56 with SMTP id 4fb4d7f45d1cf-617e2e63af9mr234123a12.21.1754601726930;
        Thu, 07 Aug 2025 14:22:06 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8ffa3adsm12393350a12.50.2025.08.07.14.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 14:22:06 -0700 (PDT)
Message-ID: <d736a5ed-d7cf-4b32-99c6-38224b90e39a@gmail.com>
Date: Thu, 7 Aug 2025 23:22:05 +0200
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

OpenPrinting News - 25 years of working full-time for printing with 
free/open-source-software

https://openprinting.github.io/OpenPrinting-News-25-years-of-working-full-time-for-printing-with-free-open-source-software/

    Till
