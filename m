Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24AC219A67
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 15:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742224323; cv=none; b=uTQF8gWOSFO+QJcNw4vD6vfkaMdqpQseCv9YJbMT9p8HjFmua3Mbclr79EfaHGAJlkQ/6AlqLRi5uJgKayeA3KN5sYLKJfHjvM7Xf/YGYpR5PdPrbLJqPFsdrrHs4i+e7dGyW/rjXt5BOsvBmmddgj2pI20+NBB/p++/TjR+V30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742224323; c=relaxed/simple;
	bh=kTXPI5VwNkG3VbusygCGpF6BCpi06H3PY/8UKaUsoho=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=fWbwJwvIL00/85Fl+LGy4gqH5LTL4/LMBBm31Mu4sdv2AZZGLBoOQ4j8H1aKBFp44EpT3CPnqcIGgXMIc9xm7PR4YOixcNhInQUWnQ7LsVhhSMxIN5edFCh0rXFG4sJHaz5xJHknNGdQnJ5R8ttuawfthsSVAjws8RYfE4LfAdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=GtMoVmCL; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="GtMoVmCL"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C73880408
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 15:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8pXZ4xOJBqt6 for <printing-architecture@lists.linux-foundation.org>;
 Mon, 17 Mar 2025 15:11:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12e; helo=mail-lf1-x12e.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD2518143B
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD2518143B
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=GtMoVmCL
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AD2518143B
	for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 15:11:49 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-54991d85f99so5771759e87.1
        for <printing-architecture@lists.linux-foundation.org>; Mon, 17 Mar 2025 08:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1742224307; x=1742829107; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TaLwS+1OlWIvJVeWOX0RC7H7Gf9SqVNJrjBzdEVtVM8=;
        b=GtMoVmCLBZXO6+tpTANbZ5htUm+sbXGTVtNYIRNxCZLpy3S+LXTtlLFzb8KxyH2OsG
         ULD0NTqcAHDNawR+80JGUWecYWP6fI8sLAPm5b+OmkL6dbEmiCXV1ZFsB1Ir4jMSKBxH
         nP82BCLQsQYbgSlbzBUcGYaEkmAzyMP1aPEnY4/E6NxaLutzTgonQOjRnw76qg4WgXOd
         G4xMiSp1UvqTowAc1XkzU3/jywEBwcqQuIvjRzHmbqikypPUfVRnHBnoAWzBFOk0ubkX
         kQsPs3D0yetutYI9b+bVn8gck4gCOR8sLZbJbiEd3EuBWPBuwrw3gkAQQF9jx6Zb1gEn
         Lx7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742224307; x=1742829107;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TaLwS+1OlWIvJVeWOX0RC7H7Gf9SqVNJrjBzdEVtVM8=;
        b=PgrLIJ1X9aVun1meWYTVhBOShLi594AZk707k5BKPTwQGqZtsVzYgBKuzCpH+2ZKE0
         vrgjHRlmu3KhmLre9x3kWzZscXmjNjqD5aWAk5bH5tdFzq49gCWIKmVjs0uGDhCkw+kN
         6wJ9bWDqXrtkxf7z70iE/NMgiPjqx4L4MDf0wTf9rpQ/jPnxV5eqmst+8MZ8/1cUV66I
         1FRFlMGgHW1gxOjbOhR6A755xM5t1LqrWY+bdbXK7wNe26E2CC2GB0YEhGlTvD3Hyky7
         5mD4O9KB3g6vvsGAt/RZQIUab7sV+cVdaPqodaTpQYg337OfeDeg6T+epWQsqw8FDhy8
         oEww==
X-Forwarded-Encrypted: i=1; AJvYcCU5D6L8xweckeCX3i0pHxYPXmA4SfXBr/rA+2gAPaa1vdxhGEmoghomvt9Np43jGY0S4N2dI4gTOdXgKx0JHTLGQxYCDd8=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yy2ChclICMd+iieqZdSSlegRHVrFyvHX3culnN2rXBv4W6ruwH/
	ubvFeeDybrdviKm0NixaGKH7ZTuZUC76hzupzoKDjmcKSxfCzGV+clPsHn70U2Y=
X-Gm-Gg: ASbGncs7fQyCsDBbXwy7v5MAypWwUv3QUDtqeOhnEdw7O4v03avkJmuRSCeZ9V5gc5Z
	76D56aWGLXpQQAf7j+WiEktaO3SwJ3X+1lr85nGD5NI1ax8VeUCSpAcN3QIjwEtCGjBzfzYwOZI
	XOZSeAZuMORmj8pU29usUiIkQEmlC1FEdz5D4sdNLHAqlCQ2TnXNXKMjlzcBFSu2fLoIyRlVokA
	+9vxMRItF7kQPkU50jotBVwTeqKocEVXtD1avRoXSFNX9Y4x90ikfTpGiO1eXOWnZ/BmT2FRVZV
	SFu1y1M2rLuPkhqtFunDnYi4kWmYuIhKfJxTAlHNXvk+O1ukrkSxxtiS7lSbiY8vNdMH0XKjZm4
	JH70zWxtc8A==
X-Google-Smtp-Source: AGHT+IFmo2DL9iTOApMPZe+V0Vd2AwGPTiGHHDWXSv+kB3qQri45T5DfqINZApCXs5e9hkkqXQDSkQ==
X-Received: by 2002:a05:6512:398c:b0:545:f9c:a833 with SMTP id 2adb3069b0e04-549c3f23b87mr7111048e87.12.1742224306889;
        Mon, 17 Mar 2025 08:11:46 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-7.pppoe.mtu-net.ru. [85.141.192.7])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-549ba8a799bsm1344904e87.228.2025.03.17.08.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 08:11:45 -0700 (PDT)
Message-ID: <606cbbba-a06d-45b8-9e48-82f4df5f1b41@apevzner.com>
Date: Mon, 17 Mar 2025 18:11:43 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: sane-devel@alioth-lists.debian.net,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.33
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan version 0.99.33 is now available.

This is a bugfix release that addresses issues with the recently added 
"scan-intent" option:

1) eSCL: Some scanners use the "scan:SupportedIntent" XML element to 
list supported intents in the ScannerCapabilities, while others use 
"scan:Intent". The Mopria eSCL specification does not clearly state 
which variant is correct. sane-airscan now supports both.

2) WSD: Due to a coding error, the list of supported scan intents was 
lost for the ADF Duplex source when using the WSD protocol. This has now 
been fixed.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

