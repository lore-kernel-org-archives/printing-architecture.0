Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791EC16132B
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Apr 2024 11:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712316177; cv=none; b=EduCNSCPibtxotmnEd8XQLTu5k7NtJcfmTlnalEE+d0UlFDZpOGZ4XwpulTr2XDsI7zSG4guMk+w2diQM/fR8amuE1dqAHYgOiSRcvH4kj56lBVhH6lZipgRqmCRL+FtaNgHZOSvjuQ8YeH2fu1NW/zAl7xPsRW54d0OGz6MCo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712316177; c=relaxed/simple;
	bh=19+oVY27jxdtfGOWaYFWle/ASEP52HltGR1+o/U3mgU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=Wt8izvs2L6PRSwLUbQPcdJumCSI/aZN1yE2HFF0+8QXbioLIFyvY7aFen6ttMFBcAb8454832yXjYk0AtOcHUy24PR8+QvL0Zoj5/Ih5jD4ssL7nYzeNPH01/H4zSGI+Cm+iRb8QxkQNLJVNGT8E6RnYI8aasrdA29h32JJ6Lac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VsR48/gQ; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VsR48/gQ"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09B4140188
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Apr 2024 11:22:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z8gLRZf3JBNe for <printing-architecture@lists.linux-foundation.org>;
 Fri,  5 Apr 2024 11:22:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::332; helo=mail-wm1-x332.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7075B40119
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7075B40119
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=VsR48/gQ
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7075B40119
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Apr 2024 11:22:54 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4148c6132b4so18646895e9.1
        for <printing-architecture@lists.linux-foundation.org>; Fri, 05 Apr 2024 04:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712316172; x=1712920972; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X7/LZlc7L7sfBK/ThtnHqnxneV3C1cuLVQly3m2IH4w=;
        b=VsR48/gQzRrozF9DDMaTAcirLjEuEue5Ky/HJlcKQFHTOE0XXHFBpgfEHZ0A2gjBXH
         x02CB/otT+TdSk0Kdw3iXClIjyyXPtJ0//U9kChNe1NdCXTNm78TeDUoVGGdndXC0eoE
         8b3gMd3TUnNrBDl/d7g8XTJTur/mdvrlABnH0HYXm8GqZ+JNFCVUVo8z6Le/jn7OZLzL
         4+/CRkWR5+AYvVsoja+5WqHHF/gd0wPAmnV1XN/QTsWGNK+ecFwE3xRCNdb8ZeKiDWNI
         dhXA/TZfsJRzJw8D3CA4zKu5okZZ7GcTXZV0/Kyzhhrf9LVUNxdRq942mBj8M9kamqR3
         nIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712316172; x=1712920972;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X7/LZlc7L7sfBK/ThtnHqnxneV3C1cuLVQly3m2IH4w=;
        b=qpEmy+CeZ/UWxnmbvnOeiSC7+C/un/2cTGNYZIaG3RhWecJY08f7qTHESmnlqMgGsF
         Ka66v2rF+mEs9evTaCbW501cMHKpVNsvGUs5LOf8Yc7tYVPXsh2hr68KZqRk5ez+jehu
         /gB01NxqaSm9+2ReiZKQaIBsbTbCPBmiF+k+zqtmEAmOH5knOuOR24RN2qyb/dEOcQhc
         cxg+yCvWfP8mx9lBXLMz7sIfHzaTwtsoaPuDze9pJveY58fM/fhI5k+u/68pHg0SgG+y
         o2VxaGWLLXHavNHKwDCCnrx99mf+Kau07dTQaIJr+JmzKFuIxjesVIBF4y6WaBq3Gd0S
         EeeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKDi+EU7LK3vz5No+IzGelrYlLwSCNhjsTeADHZvhm7CusLeqkCBM0gSJqtOUb/xZSEcQX5hNMQqCndXyymzC42hjdFnAWvTqdPV8PJoeQe6CZG0dEz7ZVL4fceHusU6Q=
X-Gm-Message-State: AOJu0YwsXkWaNZtFRuHeAnpZaqj2XNAKaOQ2UJuk8oAXYDWH1NSxcp0Q
	s7ybccVxhYrNFZivJb/OkWFUSi61ZQdYH6aeiTpTk78NF0m9cpTi
X-Google-Smtp-Source: AGHT+IEAMTTSQDaTTlGitOJJSwUmWYU/WoLqzfETlC6XISBudb9FyPFzCBhO0HAYr65sX2ZkLxAMGA==
X-Received: by 2002:a05:600c:354f:b0:415:62d0:af7e with SMTP id i15-20020a05600c354f00b0041562d0af7emr2096018wmq.3.1712316171907;
        Fri, 05 Apr 2024 04:22:51 -0700 (PDT)
Received: from [192.168.68.107] (192-164-134-179.hdsl.highway.telekom.at. [192.164.134.179])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b00414807ef8dfsm2632872wmb.5.2024.04.05.04.22.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 04:22:50 -0700 (PDT)
Message-ID: <ea935fec-1a4c-485a-b48d-0dae369ca356@gmail.com>
Date: Fri, 5 Apr 2024 13:22:50 +0200
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

https://openprinting.github.io/OpenPrinting-News-March-2024/

    Till
