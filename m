Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D6C23DE
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Dec 2024 18:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735237617; cv=none; b=CH1kNhoGfl0aZCBPGMwLakFwHSAp2lhzyB4ni56Tv5X38t3BaidjYVeit7GuW9dSy0En25iQVOcwv5TgKInefPUjBTSymdd2gSM0PINi6wEvKiMh8ZjOTRJRdhFb+Cj4DA/6tmQDLWEkrbLhHqcuFI+E0HqUVOJXgQu0LifHMWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735237617; c=relaxed/simple;
	bh=VuHm6Q487XrlaqaRo5y2i9In3v9bU0v3UJPAO/4O79Y=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=aK4bBvjFXyp2jZgdTE4u7H3QDq6tD3Yh8NHV2GTpyb6dftxkseIoo4+4HQjByXYGFW/n/+FEtXPLwaN+ahfI1TsnAAEbpZ53DQKD0SHVBgVStYX+qjwiwg5NOPZq48Wm/+PZdJg0efAbgPiC3kmT6ieLP563uYbPNm2WtHIflTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=XROvJ3aT; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="XROvJ3aT"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 494FB80EBA
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Dec 2024 18:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MB24s08v3SJB for <printing-architecture@lists.linux-foundation.org>;
 Thu, 26 Dec 2024 18:26:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::22d; helo=mail-lj1-x22d.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9B16380EB7
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9B16380EB7
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=XROvJ3aT
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9B16380EB7
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Dec 2024 18:26:53 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3035210e2d1so60057241fa.2
        for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Dec 2024 10:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1735237610; x=1735842410; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sBCJgk+r8Zi2bqOWfEa3GQit6JjrT6GtkGX4wF6wIdQ=;
        b=XROvJ3aT6ceteHPwftmhC4wALOpeswLs5Dph6J4jSomRR5aJAOwH3bV6wnr98Sy4eF
         dBfiubMPRaJCcwOX8+go4QY8wWIoi5pQnuijnoyICtHEiisDOaznSMauSlGucqGSnVR+
         Fh/Bu3NP+Ts6TJ6lsWLLWZXOQyjJpBHIvcg2I5WVZuZFvL7aUkiBzP86af96zBtO2p6J
         E976LoM4gBUnC43N9ZteA7qA7/9JFdWGEGo+yzddv2kdl8glbbhqAnf0egENNZa3bgjw
         7NNaRmxIhjLaCenY1uV1fwQk3NzA1SjYYHnG5TD8KKnyaUhTI51ih3s3REfXoYjpSTA3
         LeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735237610; x=1735842410;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sBCJgk+r8Zi2bqOWfEa3GQit6JjrT6GtkGX4wF6wIdQ=;
        b=CNM4Zunhb4Hqh0d3yXhjvkNCBxLOf3MdCdOd1d/gjQcdjoPwgYa735WSsT17Y8X5q4
         VbqZrYBWrjvpdL7ZTXkcZ89a8iYzjJ3054/dpOUiIjhU8XMOAOx0zD1HBN3htCNhlHWh
         1fvLRo4/AXJynQ8eV0/oAMW5MQ1fQjyuMvdAdlW3vWaN+aCW+dFDPO1iAj/Ri3RtW/7b
         qZqfMlOUf/AY0QUu5y7V0vuvDF8AGgQvY6MXg8+3IfPlDwyJEmCWMNESSGSSd8xOJKPC
         2vHmLbL0+D+gTEhRxjsne7PZh9rPSLngaiAqKieyN5bB6MIojYIx+Kx/zu9F2j7FwsKC
         DmdQ==
X-Gm-Message-State: AOJu0Yz1SQW0dcBFhpz91TzzmjvfF+Q7T8UDXVZC+iflAaK6vn5PNHFX
	v3H7GznYjBl80oaFmgX9BFJtZkeaLjGIGIeg0VZ4f5jtbSqI+IUebn8WHZAvk/EIme2HBZuzNON
	1
X-Gm-Gg: ASbGncvpF1saOqahNR8aBZTG5vQ9OGpqckifM79BJWowBu+LJs4WzeyWO8X1YBeOrxP
	yRROSg4yxPlT547IwTD6wrtDPHtfHTaPJAnKJVEmrAhEBsXheQFKB++PDrVIgayoIH/aAdHmX8+
	Egb3uGFdGiSCjNGu//ptInMbloAKRqx5L115a4ivcUix1DOExjmJs1QJg8S86bGRAVbhVMl1n0d
	M+/r08TR7iFSKiUVDL1LUpx1NYQKM3CTbEczGnzCyHWqrNzvU65bEHAbQf8MTQFZK1NI5eUCvmB
	Jk3qCP95RcDVVg==
X-Google-Smtp-Source: AGHT+IGS2cSDNkX3s3xyex2dRnVmqZIT2Jzu3I0S4M3KIs/RhG6l5cALZKhBMlMyS4Bgcu151ARg5w==
X-Received: by 2002:a05:6512:282a:b0:540:22e0:1f63 with SMTP id 2adb3069b0e04-54229533ae2mr6426081e87.19.1735237610395;
        Thu, 26 Dec 2024 10:26:50 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-194-12.pppoe.mtu-net.ru. [85.141.194.12])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5422360075dsm2227426e87.104.2024.12.26.10.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Dec 2024 10:26:48 -0800 (PST)
Message-ID: <703cec34-e755-4745-a3d7-9a1360cd310c@apevzner.com>
Date: Thu, 26 Dec 2024 21:26:47 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 "sane-devel@alioth-lists.debian.net" <sane-devel@alioth-lists.debian.net>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.31
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan 0.99.31 is now available.

The only difference from the previous release is that HTTP timeouts for 
operations expected to be quick (such as retrieving scanner capabilities 
or scanner status) have been extended from 5 seconds to 20 seconds.

The reason for this change is that, under rare circumstances, Kyocera 
ECOSYS scanners may take an unexpectedly long time to respond to these 
requests, which could lead to scanning failures.

Happy New Year and Marry Christmas!

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

