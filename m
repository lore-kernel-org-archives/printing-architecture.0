Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD5A7605D
	for <printing-architecture@lists.linux-foundation.org>; Sun,  3 Mar 2024 19:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709493518; cv=none; b=K1oVPE1QhQUJY3MhY8lMGazrBnzeCrJnKmh0kytJqnXYt4XxCSj0QaZcuZbUBBPTC7Li9fwchQa4DXdhwxb8BUkkhxzq9h1Rlb/qsF+M+/XPK017G8GP3Gw7fetYVeQq2dKrOLbQd/UxPiaIHV4thJej0Fy/Foo0f8EyFL1UEw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709493518; c=relaxed/simple;
	bh=0Vm3UyMnpc0hZ7n9vEo1lLBWNkcdFLFG+VNNpjShXFQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=f59cnu21FPQSoh/l35Z415MfCBF1jwSoesi1YifGHCWy2PjUv3imirxGJYjLOLYIVZ9zPBM7xQhJNaKae9QZhlNITLTUCToYiNpdMV++dl8xJ90FIDZeQ0+pHuO3XyPjCXQ/ysKAHTcGtwED3lQTN9tZ4tzL3LzoG00WGtls3w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kv0ZsT1k; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kv0ZsT1k"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22F9D81F28
	for <printing-architecture@lists.linux-foundation.org>; Sun,  3 Mar 2024 19:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLwpA1Fftm1d
	for <printing-architecture@lists.linux-foundation.org>;
	Sun,  3 Mar 2024 19:18:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62a; helo=mail-ej1-x62a.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A244881F22
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A244881F22
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Kv0ZsT1k
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A244881F22
	for <printing-architecture@lists.linux-foundation.org>; Sun,  3 Mar 2024 19:18:35 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a43dba50bb7so529588766b.0
        for <printing-architecture@lists.linux-foundation.org>; Sun, 03 Mar 2024 11:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709493513; x=1710098313; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vH8qq21xyoF7nhI7a/t27h1/iaVp15RBB/gND3PZh1Y=;
        b=Kv0ZsT1kp/OcbUqs8idhdM7liXDnc//Gmk1ZdZPlk2oTN59ZTwt6YzAaCLAcl6oFIB
         KgNXWRqfbzy0kMZQ1WQySijbFafjbIm3I+k//0KmvkrfV6qBhYdFhd6ct787rpvIbX0N
         EB+qbCMLmVfHRR6asq6F2KHn4lkJ+ZeBmdsusL29riySNYHfLdQ7/CCexhigRFSUdTUX
         t4jjVQSXjv66VmPsKrMb7/T1gKJiV617aE5nfiOeYXFDg/qM4WwJ8lRuXwksKcQ8tXOs
         6UBdgUgwfRWxfj1fUcDTuOem3/xUQDrENAHdKkOYeLYYDoGYwnsE3Oc9dLGYOgQulikg
         NurA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709493513; x=1710098313;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vH8qq21xyoF7nhI7a/t27h1/iaVp15RBB/gND3PZh1Y=;
        b=sr9slfQbpDx+gT990hiNCY9vRu3b52fBefDNB/4cS0RO8wXq4XRdJQLGUZc4+4V4wO
         GtAun8n/6qWRHiORimvLCUzL6eHS5uPlNKPOpBSJQOOwRTsMaX9+r8yDBNHID8Ge65K6
         L8KncWaNCpXY/37nMGRgEfUGudCyOKbtatw8/744Jf9E0K1bNTDhnV44T6MFUJgg5pnP
         fnW4uweRvuKNi5a858DehlC3s392a8Q09GcP7Y/yUBTjWO0E4i0Nxbqt+GZ2Uujp8teb
         TohInahPU4B+F+OHle+7+Q3T9NC/UNhJ2pNjyDsVwwt7nRtiwGskqYlxWSDZHi++8k/I
         NehA==
X-Forwarded-Encrypted: i=1; AJvYcCWOwH0yuXSuPQzrytdqJTI6sA/1JbedIEsWAN3qpz4kDTH5z1NfGm1zzVOESKI3nJAeewtRQ5jVi7xS8RtlpFgooBBYVoZHT1y4OKUSlHrB936p9sqsl5yl8Otv5DJBgUI=
X-Gm-Message-State: AOJu0YxdtGxdGQJn85Kxg6IzcRyu839ghVqylaOJXFcixrjqRyzhCw7z
	DJjj/ryrzotnygPrYVvTEQ0sfSU8G6tj8S/+Nz4VDvbDzVSLw0ru
X-Google-Smtp-Source: AGHT+IFWF2VoQqycaUZqHFiUZSnVROwhMLSk9+fhOuhJlJrOPY3KWClpTHLoGog1C89oeQIRG+a/pw==
X-Received: by 2002:a17:906:349a:b0:a45:22e2:bd9 with SMTP id g26-20020a170906349a00b00a4522e20bd9mr1120612ejb.16.1709493513239;
        Sun, 03 Mar 2024 11:18:33 -0800 (PST)
Received: from [192.168.68.106] (178-191-200-70.hdsl.highway.telekom.at. [178.191.200.70])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090646c600b00a44bbd08371sm2263393ejs.155.2024.03.03.11.18.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Mar 2024 11:18:32 -0800 (PST)
Message-ID: <fded0216-2529-4bcd-9ecf-851ed0046673@gmail.com>
Date: Sun, 3 Mar 2024 20:18:31 +0100
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

https://openprinting.github.io/OpenPrinting-News-February-2024/

    Till
