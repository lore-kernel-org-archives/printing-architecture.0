Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACDF2FDC20
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 May 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778773837; cv=none; b=Bj6ST3nXnGGrszbyBdhKZctB2aMd7XPp5O1/mKVotTAkprjxCZqfMyIUynBuxnp8RkEbC6TMfB+/U3VGkswf374jiCADIss1CZdbz0NQb8p3uO2lw/nvof2HwoZ3vcwBDWCshHP74BcHQQWknc3WChn5AVXJ2wS+slpnywivtQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778773837; c=relaxed/simple;
	bh=FILNsb0BMg3OxZ0ISP8iQ/b8WcNggMFFlwL2MiXoL5c=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=JdGpZUSyJkuIBa0vde4WdorEH63VVlNx4/2XE6KSORZhvyBHjnv004y5/J+MrGJPMylZYGIDk5pJDTBYgB81UtuID7IiatDO6AELsfoSR+QEOPjPvBbLh4cVfSMCnc+CINCRLljFsEH+2HfaZjwMefaSEXNudb+09ccrJNDpl/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=SBAkhMpl; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="SBAkhMpl"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C5E7640738
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 May 2026 15:50:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lx_BbMfgKkTA for <printing-architecture@lists.linux-foundation.org>;
 Thu, 14 May 2026 15:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::236; helo=mail-lj1-x236.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2EF2940737
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EF2940737
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=SBAkhMpl
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2EF2940737
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 May 2026 15:50:31 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-393a44854d2so63077321fa.3
        for <printing-architecture@lists.linux-foundation.org>; Thu, 14 May 2026 08:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1778773829; x=1779378629; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3w66ucqmBDpGXASPuFqOXSYNi2FOv/Wx5ID7LjQRdMI=;
        b=SBAkhMplkzkDbf5d9uXGLsK8ADoh5kzWoc2AjPS7wAjlcouMY5OGqRIDw2wgGS0AHv
         QrtBiw8fTiX2rc/LaoH6g1NvbT9t5syckKrkTAIHnRKO97jSxduqHGrCnmMd9OdFT2aL
         uJ30G5owzuOnEqZ69QhKHL4pTbQi+UarjGX/JiPWz7oFXNtaZbWgF5lKXf7kTckQ6LMX
         3MueddGhMSgVUoYCUMCfwdfM39xDBXL//b7HVlpgvAX9PUrfDnFgPBHd1wE4N/NrmLM0
         cxL5utpLfKs86VOsIytAtJgm4NKz8afCezWSL+pxtiECsRxzfBKatLcTqkB33Z2xoOzu
         sPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778773829; x=1779378629;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3w66ucqmBDpGXASPuFqOXSYNi2FOv/Wx5ID7LjQRdMI=;
        b=Jv6ku60zrLFO6bn68wUUDe3XY2T9BhhBC+0v4l3S8rMTdbZjbiUCL0dK2UwW7V78cO
         YCznHQs6qI2PW4r6zJH8Y5Ni+od1YrX9wHznPExgB9CR8yIVpfrfQk5Rv1dzXFt3bb7u
         q1gPokxrYlI+TYmrurU565ZUvoxmc44tfAVmhZNlqPzOZIq25IEXxzj7EEgjIvWRz0wO
         A4VQCue4a0n0mNxN0Gk+TN1k2/lzdnIbHkY7WsW3aQX5Fp2BH36JrjwwehPl025G46sg
         itqDNbPp1w9jmR+dfpl3giD2c6KTTeGvUZekPJbQUUUoT0yoH9U4mu+f6B80PS3me1wr
         DklQ==
X-Gm-Message-State: AOJu0YxdSQlTeN6KwZ8a6WAuCHxwm+37JDcpGqb2P8k0vnN87OZNXz9j
	rPupxxPntklOpZn0gIUd19HvT81vpjusJrmkKEf1wa2V0cR9fbeMPLgQsASt/waYc7D8IkSuzMg
	FMqj6Hh7vsw==
X-Gm-Gg: Acq92OFpVDx18PzYGCz5/AERXmgv1eedMc33tHXuGUBwQfRSvU8J1CHclJRiSvGUzwE
	5euIZPzTrl8kVqohXIcDR57+ZdoYaqoG5ZgqvRNzt1BVK6JaQ0sgAgMHGl+4lYB5+1LjpF1u1mw
	1EGfE7wwNyJzgzaNvoepDAYyRjHjhSvbkP/S+RSSZ9/BoeHjeNLVh1OfHy41TFHgVJGPgVDqGlq
	bX6TLewMWO39OiR4t2proSZ1nVD4a7LROFMhSgb8r4VzLohjdIBpMnfyve0yYCBUMKgxYbOllUS
	BKZHYXHefg2v9HvJKV2/ok+tpg7VdQYIxDYdvdqt+XSCCVlt2NIxCYkU6tAWJgx7GyjG5Sy394i
	uocMSB73Fysn6HhUSnzWMrVKZUY7Aa9qJCXpmYtNFK/fSN/sfGVuVuuFPlMGfgbkb+M8y1J0/8l
	8WYMuKq489MAwGt/VHp7owkBpeG/yQRbbToJQ+cXrFf0MhfCBJLg==
X-Received: by 2002:a05:651c:510:b0:38c:63df:82a2 with SMTP id 38308e7fff4ca-3944b7bf6b1mr30832381fa.27.1778773827705;
        Thu, 14 May 2026 08:50:27 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 38308e7fff4ca-3945cb44a08sm7441351fa.38.2026.05.14.08.50.27
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2026 08:50:27 -0700 (PDT)
Message-ID: <a8d314ac-69dc-4461-a380-cc496b2e9201@apevzner.com>
Date: Thu, 14 May 2026 18:50:26 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: ipp-usb 0.9.33
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

ipp-usb version 0.9.33 is now available.

This release introduces a specific workaround for the HP LaserJet M406.

Because the changes are minor, Linux distributions currently on older 
versions can safely skip the 0.9.32 update and upgrade directly to 0.9.33.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

