Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A125B1CD2C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 16 Jul 2025 20:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752699536; cv=none; b=uAPuuHZDdomT1DU1h6pHcwmMDmOviDfu0TAjDrUCf4ZaaRej93TOVkLWOQSn2dbmgFt1R/Gut6nqAQkgHS3w6zqV6xdkDw40Rts/O5oVPBHC+ZLUGFkOyuG9UIM1MGEwr+SiE981FSIwXqQS/SqXe0c4G0ltIb/Vw9TLn6XZZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752699536; c=relaxed/simple;
	bh=7AOUtgPxW2FuTgAL0DOEWcqng3K9ptDj4LaLJfmv+/4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=kbdLBAwrsQ8SjYIBEQGyTgFLB6ZncN4fTPzRPcrKPDkrvD735cnD5cxqpNiQrHupGz8cQwG8ZgpzxtX6qkX5C2C/ZAkZQDzmgHE4QbMmeS6f7ut4PPhcMlzrUjA3xX3RvmevxJGNEiKICoxh35tUa5H1v073qgQwyhXha3qwVlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IY++Ebh4; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IY++Ebh4"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 284C361522
	for <printing-architecture@lists.linux-foundation.org>; Wed, 16 Jul 2025 20:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kcTZGEGqI3Nn for <printing-architecture@lists.linux-foundation.org>;
 Wed, 16 Jul 2025 20:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62e; helo=mail-ej1-x62e.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D8AF610E0
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D8AF610E0
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=IY++Ebh4
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2D8AF610E0
	for <printing-architecture@lists.linux-foundation.org>; Wed, 16 Jul 2025 20:58:54 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ae36e88a5daso50410666b.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 16 Jul 2025 13:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752699532; x=1753304332; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2VqZNxp3w1uG+wtNjI0UQwl9cgTst55QvbuxxMTAZaM=;
        b=IY++Ebh4oZ68mrr4LpnOVSHbceuhF97wJeiLv7HwbN92BxvQKN4+lW/mje7A9fl3A9
         UjY/NCk0U2wsmxorGQ+apahKl8SkJ5Z1HcAVvHumcBdQVYJJz0BZLdQixAmp/EBBE8hx
         HRj4AQvV+VjcLSI3HmsbO8ss5wgcrwjxXnxpyvZYn+yReChcEX//5mqfPGq5jdKT3Z6J
         xcR6rUnMJXdrAcpYHHqWTT8CFKrKiftTKu5Swz4dCkB2y4yWsBBVENaii7iB5YETsCwf
         oPVS0ExlFp4ZaQOydz0ub2zMfrjUCc8Yqn4ENKB/PGDmirOy+NRRXXPn/bj7JT0y5rkw
         dgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752699532; x=1753304332;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2VqZNxp3w1uG+wtNjI0UQwl9cgTst55QvbuxxMTAZaM=;
        b=tQVp8lDQSxjEunp0KAWCXYQfVWL8k3qKfKdFkKZ1FpQqZAIkmXWnE3bcYxNyw7Su9S
         0xjyVNBUvTeT3iYZgraIjOqFVEbazTVaTRjPYNNMnR8hWasDCq2C09bNPEkRRGr+D4uy
         a2sCqvLAFLYmbHwPoURO9JFjtTvQ8Tn3ikmxkSo+uOKnmt7BjBUf5NNExMgKd1KgqsN/
         3Oh4869YCcnHRRAECXUQ+rihY67oZG1IxhkbE732TPfdGJGBJI6s2AtjdWyKtf6LELna
         x7c/+/w2/fF0jTsYOKIHGjtfAJwmaf3Elcdj1pxqkHvPhXnj3OCKEaRIox8g01P7Bm4x
         wfBw==
X-Forwarded-Encrypted: i=1; AJvYcCXacqlKKKXsO88lnYDZe4JlfdnHEyXq9C9+k946fpkg7DiONJ/J3UbeOK1XfwOuOuGfiMqOMTv3uvRGRjnSWxk2n4hk1QY=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YyfpYDCy6p2q68X6ABGpz6z67/nDh+1SOvi8NkioEIR4h0hYRTe
	1npO/vNExKeGmpHgDWs6Ifh1ha7yQkdNZjBbnQN67GirHb6HeLLRg2rC
X-Gm-Gg: ASbGncuaEluo4wd5GwOvBb2EYYH1tPwePGbckctt5k4PTuY4zcyPniF11xUXCAGBh7w
	KjLtpMFRGOJQYYwBYv2TDDmYQfwrq4pOtKoV6hyEC4++Q2u0dSjHc2nESIQ9jnFVFalB4vZyTen
	n5DyUu5DywSU+QeaLRDxsUMfCSbUjPdjPYjyrgpj0kQCjXfvYrAv+Qi+MMTV3HSRnxbA8XgCAkU
	i5ysPAVbu4Q7CnKouSkjLrqYcA4CD5hMCQ5CIfMjJ6vBS7I1HsVKYZYFF96yp26hBGt4rYz+oXF
	3jmQ4y8n5aV0PbLi0pXcKzvprgkJ4lcggyABO/YVU2SEFiCzsCmgzE4pntQ8dAvFu7MTvCMaE0J
	miuKbr0my8IZ0EPHXTzl8eubVyLwUG+lQd0GKk1UsINCsHPz5r5+5utpipCUXNujqpX/lMiKOU/
	v2vQ==
X-Google-Smtp-Source: AGHT+IEXIjLxUQBWcwSiC/PiHYfcqe7ODV/j42vidRMg/LcfXoSCu4rIf6s9VH0pNsZlYCJhrPWYfQ==
X-Received: by 2002:a17:907:970f:b0:ae3:d021:9b03 with SMTP id a640c23a62f3a-ae9cdd8352cmr369749066b.9.1752699531999;
        Wed, 16 Jul 2025 13:58:51 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e82669cfsm1231332266b.83.2025.07.16.13.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 13:58:51 -0700 (PDT)
Message-ID: <a847801c-063a-4b17-8af0-07831aa787ed@gmail.com>
Date: Wed, 16 Jul 2025 22:58:50 +0200
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

OpenPrinting News - Opportunity Open Source 3.0 - No deadline any more for Call 
for Proposals

https://openprinting.github.io/OpenPrinting-News-Opportunity-Open-Source-3.0-No-deadline-for-Call-for-Proposals/

    Till
