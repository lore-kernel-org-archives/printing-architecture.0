Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F8B3D9DDF
	for <printing-architecture@lists.linux-foundation.org>; Thu, 30 Jul 2026 10:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785406861; cv=none; b=K0rXrJacXZRJDQwnenWs5Wn38u92bQgsCD8dGRqyBLfZ8quuhh8MomLC6ZeEm8L6LMx8YgV+g+R+T5zLxeVGZeWdFtZFKNUYmzbrfcnKZp9SZ2dVl6iBrwfSN+rQP6twhLVaZm0OYEUo9C29RE4NCU1rxZBe9FLLfMCdXiOf+Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785406861; c=relaxed/simple;
	bh=Yp/NGacF33RbCxs4v6FKztDvfnzdiJ8K3MfJEj+az2w=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=r5nJuvUSclVzPVLGynTKU0zP3a+ERyvMWJFVp3kVdj1pmdIljzsT1gyJv0cPixZ6bJZVAkbkY6iq+cr4bLACfhaf/2T++FFikpZ38zQ8mnzGdyTf9EOSB95hM5pH7QopDFHGLbR8x2FyUSJT/8VeHhWN3/KEdp6P7dnWiEKcaWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=moHoPFwz; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="moHoPFwz"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A861401EE
	for <printing-architecture@lists.linux-foundation.org>; Thu, 30 Jul 2026 10:20:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id guU75HA-omhz for <printing-architecture@lists.linux-foundation.org>;
 Thu, 30 Jul 2026 10:20:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A9E9A40026
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9E9A40026
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=moHoPFwz
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A9E9A40026
	for <printing-architecture@lists.linux-foundation.org>; Thu, 30 Jul 2026 10:20:56 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5b021916bd3so1869445e87.3
        for <printing-architecture@lists.linux-foundation.org>; Thu, 30 Jul 2026 03:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1785406855; x=1786011655; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-type:subject:from
         :content-language:to:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=BEkSbStHfuoLYOrmjbApGBPd19Lef5wNbbDexUefzYo=;
        b=moHoPFwzDbxt+hbHhIWfbWehzI6vZvGMPASdR915ME1cBqC4VJ6RR630A91dqPk5cb
         0j+hbmN60W4vEMqfHNMedadDybcMnArIQni1bdtWZpG1XTcahT3mPj6w0CezDZLsS5Db
         tqmDeWzkdI4L8SQ7EMlKyrLBxTUii3v3gt4bLaV0QLwfN4QnmrD8DlRLgXvAEK2VVBng
         KZdN5yIGmrbMjQhO2/beKe+YXISP87iIYm2jodHikyj94aDVmW1wakdJX7nU8qq4Mm6I
         V8jbDX4BWX9pEyWu+bfRsDiMyFL4NXIHSs4KLfrbbnz1qLIqQgBAeONH/Q2bBz3L9MWT
         wVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785406855; x=1786011655;
        h=content-transfer-encoding:content-type:subject:from
         :content-language:to:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BEkSbStHfuoLYOrmjbApGBPd19Lef5wNbbDexUefzYo=;
        b=NBL+uBckVl34bgm5d8ouhMyLrP6b+dHVRNpBqzvv59NVyLz8YXZjAsScjS5MZcnzdn
         Hd+tpbbJcSm1Xtm1v6NTbwCR6oQxFbFUxvHOYtkZ8TljxpxJggeD95SB8mEKlCpxoyQ4
         +/xvtmASdHLppopqmLA6f8A3Oi9ugHMLnNmfRs/4ZWXo+gR/MqgFrG9yhEschbddH8Vt
         19xCBIymFCDScW/ApARG8XGRsqyNf3q0+gE5/GKH1zLr+IvvHhmnYu6ROG1cWpwmnjdf
         jwZuMTRbH6RVPEXKb9JyK6DxoSu05b6mJPy8wg4ZYlvdakPlRNt+Pl+D4BYdDmxGYm7H
         VPew==
X-Forwarded-Encrypted: i=1; AHgh+Rr35q9v9FUN7a+xFuyYodFkvQSErn/yGrLzutKWMh4RP/m2hRLbQ28lN3+Tv+me8PlOFcUg217um71FjPWpEVcHb/bQGrY=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwSZJiLt0ne3V8LIEdztRr8E/5n6q/PJY1Ibjerr0xumgnCR0JL
	5MUPwoSFXbap0t7mYG2L2aNSLmeWLzvyBGyuh1JoD4XQnRzje60DKOInhuPyeJzGzbs=
X-Gm-Gg: AR+sD12rRDf9b5nmLKPqMjm3+RokDFiUCwEqsnIk4puLqTqr030JhQLzKJxXNmFdxH8
	3/BIMEA5mIv5grysmtiAgNLjJPPZSz+IRZJLKKiLBXsBc9lk8EHa+u/QVidaVDEGgxrKjQ2v9KR
	Z19O5gRVuUafCXas5DNzz4eExtnsNNlG5I8nsUMtLpwXj8kQIodVvt4Cl8Q7JOihopNIQeToxe2
	MA0VOVftCtNEKChE250Lod3Vd5d0yeMdRbAI2owt+PtTPLISUtJ83Xk6IyoSFrEPHpM7v3/aKIb
	S67IkhDIRppqX8/iLZgnZ1m8k/EiD4X+uGnObc6o8hDcl9nkmastoAVAWj6J5zen9Z7LoXpC+gT
	WNzK3nIswNqa3FMy1YRMJ3gYLaWngVpgzIVgeyJonfaZ4LuUKMFgH/K4U9ku3h+TXdwP5nOmv1g
	WtadVSA9nPxsZn03aoJ1HF6/PAIgl29OXUCZAhJ6/LjZYkHU0jvLUIbp6Ln/mob5sw2+l3VwlVz
	ziEcGb6E1Cb3al3b0pLsg==
X-Received: by 2002:a05:6512:6884:20b0:5ae:b900:15b8 with SMTP id 2adb3069b0e04-5b2db387410mr226567e87.55.1785406854443;
        Thu, 30 Jul 2026 03:20:54 -0700 (PDT)
Received: from [10.193.236.173] ([94.25.172.223])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5b2db94fe01sm252695e87.20.2026.07.30.03.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2026 03:20:53 -0700 (PDT)
Message-ID: <26d84e11-f319-4813-9e96-022201982868@apevzner.com>
Date: Thu, 30 Jul 2026 13:20:32 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "sane-devel@alioth-lists.debian.net"
 <sane-devel@alioth-lists.debian.net>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.38
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan version 0.99.38 is now available.

This is a bugfix release that addresses the following issues:

1. Fix assertion failure on invalid eSCL response: An invalid response 
to a GET /eSCL/ScannerCapabilities request could cause the backend to 
terminate on an assertion failure instead of gracefully returning an 
appropriate error code.

2. Fix use-after-free crash in device discovery: Under specific 
conditions, a use-after-free error could trigger a SIGSEGV during device 
discovery. This only occurs when a WS-Scan device returns an endpoint 
URL using a domain name instead of an IP literal address (for example, 
Pantum-41B931.local instead of 10.88.128.41). Currently, only Pantum 
devices are known to exhibit this behavior (#404).

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

