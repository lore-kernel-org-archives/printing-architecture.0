Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27DD1591E2
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Aug 2024 18:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723228795; cv=none; b=PSJCtp+lC0b/IoBizdG31FAHjqphYeeYZsYUQDsWNl67sthy/wfLeOTNXedJ+fCFzNI1yBVwkp+6myBbbMttdLIY6AHi7s6I0F/tS0PA5si18v79NDQZ4Jmx5UNrbvs8iQfQUH8AvgGtfNhXnzMD1O2HZjFGH10E9PZuAvlu7XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723228795; c=relaxed/simple;
	bh=GggJvH34zXqvPwd6aCzwXxbAC68F+z6QUYKk/WatBXw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=Y36bH1Y8W1/aCL1qkuhy19XlE6aUuyBt5/uLpFnElddD/vZ9YZz58SX0zY49ZdDnNzFn2oFWZzrCxJWmANE12QTxb/kZ8i8FerLCp9rlOoxLt+81bixCTJa2secGq46/pu1L/sQZ0ar2qNsZK5LANRfgl/Ehbb4OyM1/b4dvzcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MZrkLeib; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MZrkLeib"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48AC880DF3
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Aug 2024 18:39:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PkuLdfRGbiJd for <printing-architecture@lists.linux-foundation.org>;
 Fri,  9 Aug 2024 18:39:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2578480DE2
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2578480DE2
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=MZrkLeib
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 2578480DE2
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Aug 2024 18:39:52 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-428178fc07eso15877855e9.3
        for <printing-architecture@lists.linux-foundation.org>; Fri, 09 Aug 2024 11:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723228791; x=1723833591; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fLC85hmUQ86BpFFbpHzNJWBEwwcChxiWTHuQHwWtx5Y=;
        b=MZrkLeibS9Qc0cgGHjgzJaLXbzKGiq1CY3Mm8AEwNo44aQEfNwkkK7twJFiNPe4ApU
         3gbTaX54aPKlak1wvEs7bGzQpyuUSKTt5OOz4RyOX3MvrOfLFCvs1u38cpB0MOOwtkpe
         dabY8WFHfMLVHvtrG4dZFWwh2eDXfL5b2prK5nIVbXcJBdDu46307dpptn7i+Li13oXA
         YehovLrikkVI9ktXFfNbkEzPZ/ssKAkpGyhshL/kmrB3U/ei0lWXbaHjKUAP1izIxLjZ
         mgtRMRw4OrgZf/t1aR4JeXQqyH31LwTUcwQDS3AnEbs7K9Dftexnv/M/zz+UfcP13BMJ
         PfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723228791; x=1723833591;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fLC85hmUQ86BpFFbpHzNJWBEwwcChxiWTHuQHwWtx5Y=;
        b=uudce7i+BlgIQWG7zIQBB8uvrxWVpRrIqEHNL1ZqNkMs5wF3frO4DmWtPLGvd67rGh
         H4Zr2ZI4FIl0Pq0eDNnOMErbfWjRgI95wNYScEOh5ecbjryqS6TrvSpP0bKR62B8pCcp
         taONu9MpuwUC0PiqPj2eeX1KEV9cyc3Ypj0VwgpodSjzmbnFA+p4b5rMGhy4ZYPwJIiZ
         fPOcd0EfMrmbwbznwo7Ay3bWtD3qb5gnTCiquzhyNpm+vDNCj2+VxokyVti2EZ+TdEZg
         Zn3tvlMMoIUY3stYrBZ1kDNUp95AJeqWd/Yet/8L1DR4d2MzqqS0XK8ih/MxM8qwIIu/
         7tOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQmTtP3rxgvNGJzjrIpHcUy6lQXR1eo1+Nt7wFgk6fWnNSVoBqX7ykchQREpXqBU2k191MZZhaQEsq5Siyzi6ELhMSyCp0CZrgGo4/xBKd77B5EVxrVn8fPcUUzwCqIGo=
X-Gm-Message-State: AOJu0Yz2p8fdR0gqOj1CyStNwTQKswg1RUAZ7PicMOt20riyf5sIGrza
	glASj+d4ubgLj6Ce5mtZ1XdPqmm7sN+D+KLFn6mr1jp9WE0SdRcQJC/5+A==
X-Google-Smtp-Source: AGHT+IEXi2iUFEjYClBjW5SIcjtOwJ6ekWNq275JnOhbTIbesutgI3dNe+dnUTiYPlf9wJqsCIS74A==
X-Received: by 2002:a05:600c:35ca:b0:428:ea8e:b4a0 with SMTP id 5b1f17b1804b1-429c3a22824mr15177875e9.14.1723228790320;
        Fri, 09 Aug 2024 11:39:50 -0700 (PDT)
Received: from [192.168.68.113] (194-118-229-123.hdsl.highway.telekom.at. [194.118.229.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4293e41496dsm64922305e9.23.2024.08.09.11.39.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Aug 2024 11:39:49 -0700 (PDT)
Message-ID: <7f1c948c-7204-4312-a1cc-8521b5367eee@gmail.com>
Date: Fri, 9 Aug 2024 20:39:48 +0200
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

https://openprinting.github.io/OpenPrinting-News-July-2024/

    Till
