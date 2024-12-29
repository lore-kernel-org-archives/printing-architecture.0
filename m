Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539F4259480
	for <printing-architecture@lists.linux-foundation.org>; Sun, 29 Dec 2024 13:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735478159; cv=none; b=qN4HASKG/cmai8JvGxwaAs73+FndhncTohcqOlpEbWvv5BmczLmfJ0OzBwjs0K6dajxMmmbiUq75H7DqSOsLJN5tMswgTahiVGClxCdTVvXNPnXzuJQybCRhQVtELlJI7YrImr25fp5VJ0T/bxSUrvtZiTITVaSAq5vcGfDd9+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735478159; c=relaxed/simple;
	bh=+yEfuL5q94IPoy/4pxmHIunzOHTTCrXrWjMjm0OH24Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=lTr71ZDMg5CVqMWCylXkZeaMvXL8NGmqt/d8rg9OpKbqmdUrCdxyF+Ngyqs0OG7bWdR1Md3Rkw1FjsuUpS13oNqTSqDuZyMtcL6I1rzrK5IocidWG6OILEQp/bujt0sHVsk6m9bP8LZP+m3is8ptX1zestymRo+0pZwwfQU6j48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JwyBMA3j; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JwyBMA3j"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFE8D608C8
	for <printing-architecture@lists.linux-foundation.org>; Sun, 29 Dec 2024 13:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L2RlFziPTteH for <printing-architecture@lists.linux-foundation.org>;
 Sun, 29 Dec 2024 13:15:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C7D96608A7
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7D96608A7
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=JwyBMA3j
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by smtp3.osuosl.org (Postfix) with ESMTPS id C7D96608A7
	for <printing-architecture@lists.linux-foundation.org>; Sun, 29 Dec 2024 13:15:56 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-aaee0b309adso784745466b.3
        for <printing-architecture@lists.linux-foundation.org>; Sun, 29 Dec 2024 05:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735478154; x=1736082954; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vSPTMWUsLyLd8GbEvjBKRCjfC1XKQ/4sQSipNv48gI=;
        b=JwyBMA3jRA3IzCNn3NQROJvOprLDoNTfpjgtuJnTMlPUW+NtG//6dIbjIZNXeMqaCV
         ilp6055c4Y2v+qqSc9DVFqcuG6oFJsxm5k6zq8m985twUQfugTGdsL6Q2lcQhHVBaiXT
         nar25089gc97l9rIkyqT+rY7uGhZAZ1riAUa4d7kG6MauVrokZaXuBrYP5pH4rb+UTMj
         DNAHa097ovgDLkOOi3OoWFSTMQSBviWv3+ohOxy7diHfBktBn2vshNYgHJpTDUaGoNgX
         JhDO+sGlfllfxFzpqcEJMaSTc5JuCdvLxN2MHf1VdorizjVkdiPZ3lfwFdxdekvNko3i
         7OLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735478154; x=1736082954;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9vSPTMWUsLyLd8GbEvjBKRCjfC1XKQ/4sQSipNv48gI=;
        b=hgzxf+OnoRf+QYqaKf7NmFKwF0L0AXeu1WXYyb+T2zAWHBz+ca7dnTQWwRIz5IT/Zd
         B8z8hiemx7vqZLXU7FGQmKuHKXGqS60h4z2WPd3Nv3UjWQJ0cUJWFU5uXSenFMokL/Sr
         G+XlL8SDgCyMD0m8LgGkpacy9QI8cRSka6X0lEr9kOkCATinn41Yv+Av79Xmio6a30rC
         FAZmklPCqg1JhCW8BYRLVXVCnrwSDe6ppfDB9Kml1HySeL4RZfRaz/maCeAN8MgoNCbU
         chjtg0jEBaBKqDrtC7R/B+1ErP306obDYpOKdL21aOb96mxayY96octepB1/7qB4frhg
         fY0w==
X-Forwarded-Encrypted: i=1; AJvYcCX7yl0z0eZ7Qn6mVc1ClKATU2E/ley9N8be8CX0jpkhmL/x3NBGgziHGM7tlb/CzEzhOc8OJf7URqfkGXtWsKOSJ0IGItU=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yxy7wpuhl2EnQUDu4HFs58IPbebkGF/RiNGWNjnFTwggFnn0Pxa
	+sHJkTtMyXF2k6w6osjhl7o/Jph1s0QZMy87n7rLecUeYJgTCLLL
X-Gm-Gg: ASbGncsgpaf0DwQSUH2qTpzFWj8l6KNVOeFCOlmllmcn+FG/7w1ckPoeNdDOXJ5mu0N
	vebpzTj7qiaGWGYUIcoFgeAROSK7hZuTkmgSlfRMTH9k1jtK+9c2zfBxE9vOSyr9qKt678BHhro
	6nEYf4Kxtx3J5cq/7cdhfJjufSG7T4jnN8VMuGsT942cJH0agzfHs9iYVdiebMK8Cf8RF7qjq6T
	x3ESnNvm88gp7cmZgLn60BYdkt2mWYP7bHPTXFjPfeTPtu3ZWvJROs7IWawyATAwoeZhQBEYA4U
	m1j3LbKFJnVl5QeUDE0Xm7Ulo4f5AH0=
X-Google-Smtp-Source: AGHT+IExDim1YfIvp0Xd6Pu8gh/I8DzS9IrjqOZfrzqsfYMk8x2TbH/+kArFbX10cSRF7+P3RCuWBg==
X-Received: by 2002:a17:907:2da0:b0:aa6:5201:7ae3 with SMTP id a640c23a62f3a-aac3465011bmr2700716966b.40.1735478154124;
        Sun, 29 Dec 2024 05:15:54 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4922sm1349717666b.113.2024.12.29.05.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2024 05:15:53 -0800 (PST)
Message-ID: <c0ccece5-da86-4150-9c83-a909b77e4561@gmail.com>
Date: Sun, 29 Dec 2024 14:15:52 +0100
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

I have posted the following new items:


OpenPrinting News - A New Approach: Moving on from time-based monthly posts to 
one post per subject matter

https://openprinting.github.io/OpenPrinting-News-A-New-Approach/


OpenPrinting News - The Winter of Code 4.0

OpenPrinting is mentoring organization in the WoC 4.0! Apply for doing a 1-month 
project until Dec 31!

https://openprinting.github.io/OpenPrinting-News-The-Winter-of-Code-4.0/


I am trying a new way of presenting the news of OpenPrinting: Instead of 
collecting all the items of one month in a long post I post them now right away 
as they come.

    Till
