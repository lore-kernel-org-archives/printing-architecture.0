Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C2415C3
	for <printing-architecture@lists.linux-foundation.org>; Mon, 30 Sep 2024 01:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727660310; cv=none; b=P5mdB8v/t9l5qe2U0dqAt4BS439jO/7vznqQNEv4XNcmF9SNwxUmRRDIlY5g+5TGChHlT47WYUgnd5Q0+tHEPwOlyeg7z8cQTILJRFbO0PUS68w+MgN3nTsQI/n1VJc4PVLwGaAEBu8euR00A2ojOmNmyCLHHU9O3h8huz6b1XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727660310; c=relaxed/simple;
	bh=VHX8dt9B0Lkhw/ule9IKgmuMjN+ynYNpB0v3AGeUb2s=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=dl1iBWN+HSxuiSPAjt7eboelDVHP7nP2fxaYH6p7dqhMjPUmos0COaX/V2IeUulGlDVC5hHiYBsthIeYftZF6E9bhnyHKOgXqOF4Ske4PGgIxBL9W2lAacCXOMF6Tc1KCH5i15SnTcFBtzR80YKPjLuHrJ+rwLIibZQkY1FhnMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kohwy9oG; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kohwy9oG"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F9FF605CD
	for <printing-architecture@lists.linux-foundation.org>; Mon, 30 Sep 2024 01:38:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ob4G6r8ICeRL for <printing-architecture@lists.linux-foundation.org>;
 Mon, 30 Sep 2024 01:38:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::631; helo=mail-ej1-x631.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1D958605A8
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D958605A8
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=kohwy9oG
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1D958605A8
	for <printing-architecture@lists.linux-foundation.org>; Mon, 30 Sep 2024 01:38:27 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a86e9db75b9so718560566b.1
        for <printing-architecture@lists.linux-foundation.org>; Sun, 29 Sep 2024 18:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727660306; x=1728265106; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4LmgoF57512Ef/6BCSBRwvQF4sc3XC9GzJPwbHS2bA=;
        b=kohwy9oG5JVDWoPL8Dxl/pHzZe0j5OvymJB2t8lQcbSMy4zCYLyt4ySU6fHCCS9MtM
         WYMJbPkwA6YyG7EJd75o/jREvvVJoUP5DRxHCtMmloLamTFaFMIznUKPC5Uc5ZBdvbV/
         /NdxCnCYWDZLmInPLG/9q9p4lzSHW4noXgsjQXeFzegLd0/GGC0I/onKVBR3cd2n2X39
         3ZwvI4XM8xFOvXKR7BDfGBIhiQ/0VRqE0yIFoJREWwpdXnW6W21aIgkR/eFtZvAdmkpj
         xnx/6ckbSVvlndO9d4Oqwf+wbVB2MJuJ/zlOHNQVZi6c7rpfn7UyZR9lv2oSQTkITKhc
         fNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727660306; x=1728265106;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A4LmgoF57512Ef/6BCSBRwvQF4sc3XC9GzJPwbHS2bA=;
        b=Q/j860HkcGcZBciSEersq8VbiwXrVmOQEMKFme/TUtJibjEOVA3f0bR0FCX4vLfjko
         f0KIbvk4i+hK2ipAoJ5SRA6jLdyvRq7RlZQEw48a1tVRlOmhJ+bBszyCI0QyLHdq5rT7
         dT9xFDNt74rBwnEB5EONajpCvhYJTx1N9oW4G/W3vAAzDP9N3BSqSD+I8lXM4ZpwaAiA
         o/sb9/xmjeaGvdV0NZcybARGBYQE52jRGQ6LOm03AVH3a740NIrbasTew0s3qNU7rTYp
         ImdEstJgmoM8s1O/L9Iy35EiuoKV0lhnwkGjtzsZwNBLGQKMyAi01AZNX84XMgHrvr7D
         1EuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHgHHbgx/YhW2VpkgweICR25/2WvPTWw2qGaPbOQC/d0JOpvfovQJ6d+u2L0cjR+xLeii/VqjjHLhoL2gjFAbBd7TU84A=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YzgKN3SE2tfbqmVkasuawQW1ExUfY4EvgWQM5zOARX50Gj5Oa/i
	rzY1iFFRDbeeNkXPSLPDZgMHVUYk9NYq/7rTKCyxLTL21iQQnhIq
X-Google-Smtp-Source: AGHT+IE1xQSMHyzEjtEIKuEmXSIGb0qTFj4UJnR9ipTFquM7sTafuQtbLxoQz1yNyPpi1JwwVK9yDA==
X-Received: by 2002:a17:906:7953:b0:a8a:9195:922d with SMTP id a640c23a62f3a-a93c47d5200mr1166093966b.0.1727660305452;
        Sun, 29 Sep 2024 18:38:25 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2777baasm448613066b.25.2024.09.29.18.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Sep 2024 18:38:24 -0700 (PDT)
Message-ID: <78b9630e-772a-4aeb-81d3-87fa5ff6c11c@gmail.com>
Date: Mon, 30 Sep 2024 03:38:23 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: cups-browsed vulnerability
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu
 <basu.aveek@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

an overview about the overhyped RCE vulnerability on cups-browsed:

https://openprinting.github.io/OpenPrinting-News-Flash-cups-browsed-Remote-Code-Execution-vulnerability/

    Till
