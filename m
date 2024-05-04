Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C5515C0
	for <printing-architecture@lists.linux-foundation.org>; Sat,  4 May 2024 00:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714781228; cv=none; b=iXD2f0LKf2zb0Lhf+qNn5VAyZjFksh9uCjDO2vJgOqp5UCj4dIn+JUs43ahZ621wJ6X2YeQCWPdX9lVN44cUggp/b7Kxh8AVkUyf8D5tQt/bJlRDI4yInLYkw9Z/zTtxpNyZ3LEfxhJLo8VVU1gO5R+9s481vtNT24I86AGaj14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714781228; c=relaxed/simple;
	bh=JiHV0EmhgUq6B8ZjhkQzwnMwAvADBzhqZTGWtKZi7Yg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=F6SbyuhSuC7k8n+Tka83uop3knSG+WjZ2aSFsrmq+qYNAPIf1jPw8HgLFuSQj+msBZgN6TFjfJ6lnx5ek+hHV7O3rjrAgr1d+3w/Ig+6WcKmSTgVhH/Lz+VNjg1ijtpNGgodQqbmmTn2WGO+DEHnakAQ7aj05hHZRvBrs3f/FnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i2Dkr8YT; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i2Dkr8YT"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1800606E9
	for <printing-architecture@lists.linux-foundation.org>; Sat,  4 May 2024 00:07:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_wj6KBaXKZL for <printing-architecture@lists.linux-foundation.org>;
 Sat,  4 May 2024 00:07:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::631; helo=mail-ej1-x631.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D95F1606D6
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D95F1606D6
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=i2Dkr8YT
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D95F1606D6
	for <printing-architecture@lists.linux-foundation.org>; Sat,  4 May 2024 00:07:05 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a5544fd07easo30344066b.0
        for <printing-architecture@lists.linux-foundation.org>; Fri, 03 May 2024 17:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714781224; x=1715386024; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivUj/VF/BAVsZuKgLNkxaGx8+TZYcJJ0EOowbJ13xew=;
        b=i2Dkr8YTN5wAKPTyA8bXYvtlit+TTUFZjO1HmPM0bQOvdUmZtWVmCqjVN271a59UYy
         rjlAWBznXTOWzoodrFpk1He7jiueLn5IWABkTIPcVF9W1NS3Pu+e+y4YQ8wTjW+n4uEF
         VfFDcbbhuBX7tWy7OrTROjeMn3gvE7TxASzn/z87CKpwUrKiDhjHpmpUdeZluLhDmTc0
         wwJ9BE6O8Lk3yvBY4V7a7kNadWBY9+EqafIkmKnt3VzQKocwJn09FWM4StSReXry1Njw
         APxc1Cq9kwMkyXH5sI8ofOYaH7jO7GhXvWoNCqwDrHkbwVW0c7NuLufUIyQ5rMLsI1rR
         Wg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714781224; x=1715386024;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ivUj/VF/BAVsZuKgLNkxaGx8+TZYcJJ0EOowbJ13xew=;
        b=c4U9CEzmL6F83Tka/DCexfxq+XQp9Q1EdZbc/MnGuDykhTsx10+j9rL2nRmzqXe1KB
         UEwycTcxmyeH/ft1+J2g8lmiyGS1OMGLeAp8MBcIgPo590wc4woAMJUHXx49Kl2dmq4Z
         cVjZ4EO3CvlYjJ2DnbAivNLUteDpIQmWkWbVEdmpWKINHw8hHDhjqwwvzUBvmpa8wMvA
         HHJKKYQqeaDV8N2NlDfn5aBCyVDCTZ0ZFOGLR3/6EZqwYxEWZp/MAVTUeT92CJGyf+od
         Z/WhI+MyRLpTcBOKl9XzfVevXnHecu4TiyIvSaStMmR6ZgvNjBLDEapRyKfXb5uisJg7
         nAZg==
X-Forwarded-Encrypted: i=1; AJvYcCWDGEDGIVeaVsE9OeWPQuvF1YnM+NgCn+0CHCGhS5Ol6OHGXIhHjXybRaNuU1+PfAMUbccYe47cuKA19L43cLDPc3JB0Sa0xhun59Z017eLO22NLV4EOWmJcwud1eFuCMg=
X-Gm-Message-State: AOJu0Yzvmpopxkt/c/hry02QNr7UdW2NO9djm+pZU72cUgTCHeUDhlbK
	muIZ26FBOQcFCjj2Srzt6khI21aS0W2w7N6kaYnywLoWiQXhE5Nw
X-Google-Smtp-Source: AGHT+IF51LqLIw9k9i3cTvMUFobYn7pkbXkfnBZb6qtVRygMAgFZKHc3GU2VEUzVOjrokrueOJUqfg==
X-Received: by 2002:a50:99d7:0:b0:572:a07c:1306 with SMTP id n23-20020a5099d7000000b00572a07c1306mr2609007edb.36.1714781223684;
        Fri, 03 May 2024 17:07:03 -0700 (PDT)
Received: from [192.168.68.107] (192-164-134-179.hdsl.highway.telekom.at. [192.164.134.179])
        by smtp.gmail.com with ESMTPSA id fe3-20020a056402390300b005723e8610d2sm2279199edb.77.2024.05.03.17.07.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 May 2024 17:07:03 -0700 (PDT)
Message-ID: <e091a20d-41a7-4a38-9e31-8cc814deb2a4@gmail.com>
Date: Sat, 4 May 2024 02:07:02 +0200
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

https://openprinting.github.io/OpenPrinting-News-April-2024/

    Till
