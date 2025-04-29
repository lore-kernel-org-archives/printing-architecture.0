Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6107C258CE9
	for <printing-architecture@lists.linux-foundation.org>; Tue, 29 Apr 2025 11:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745925198; cv=none; b=f7JDzWGFq/bl05EaL9qoL/UgzMEcCsQOXRVyhcFNJUrC0pdzQQcPqYIp+XVgn4z/Igqjc1beVj+EqthIOCP+TQqJuEHSJxlbGiF+k+AXlcLcRPsKOMEuVUv3tzPAOp6O+kTT1IOjIC/vERAre2i2L8vgdviY0jBg7z3pCLedyi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745925198; c=relaxed/simple;
	bh=x4bEGpbqxcaOMsYYlshBRKOMf3+SF5ozF8iaNJNfU8A=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=qPbpvglgqdQ4Eq9Xc2a+6mRVv+TAG6/uAvDS7Lhrhn7WoAOMQmi4+Fq4niupfa6NanxnnuMGNtEWOlTIgGurarJRPFWcMxaXLMovabXtAl8c1VrY9fhSIOvMMJ4eXgyO/kPs0gWTR4uCcZndSvOuReZsS0ExmQWRKO7jkT7rnjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=UyeFtqYu; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="UyeFtqYu"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A730540552
	for <printing-architecture@lists.linux-foundation.org>; Tue, 29 Apr 2025 11:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.857
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id isK65WpdyZD9 for <printing-architecture@lists.linux-foundation.org>;
 Tue, 29 Apr 2025 11:13:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0747E405BB
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0747E405BB
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=UyeFtqYu
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0747E405BB
	for <printing-architecture@lists.linux-foundation.org>; Tue, 29 Apr 2025 11:13:12 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-54b0d638e86so6918233e87.1
        for <printing-architecture@lists.linux-foundation.org>; Tue, 29 Apr 2025 04:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1745925190; x=1746529990; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GWhkYurf9K1qd4soAuHKhf0RMJQm78XZzcQM0SD+IxU=;
        b=UyeFtqYuknAT2UCrubMbDCiLp5uuZki1THYSCEiAqISTf5pc2mpwRADkLUuFzV3ghc
         mTs37U3ZcSNA5B219HLOo3yA7/s+GaViVmkr2B9UloOqWvBB5u3ogxlHFDF0Ag7ZiBwS
         HbupZDvMz6uZCEe8Vo0oC8jesOjeF2YsTqUY+0qKYMKlSV2RyiKu9nOy4aIE/5T8I3jw
         gFppBnFfH3HT6OZTXjhoSrRnNSddsdR5WRekOv5/sdm2OdYsdhiC8GECD8+WBjoELy+P
         ibC7HB12XH4b2dRMM2Ii1m7aUO1Nn1m731WXI3pLGfLRXch3ernnERCFycjdr9lCUeh5
         VmTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745925190; x=1746529990;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GWhkYurf9K1qd4soAuHKhf0RMJQm78XZzcQM0SD+IxU=;
        b=DhXyG1GitqteivenN874yT2g5PG8iRv/FWu6QnPlW4ctH3G5hQTC9c7i6Xy/nWjZue
         QhRmLXatdXkuwiItwskK0HlWPofFiw5Rjlm+5wh+xxSgr7pc4vNPgRVYlD47rTC/p8tG
         ejmiruZyLbi64EyMg4QdQ8PdBNDfjMjiju7J6sc67wR6TOjOSTDTeliNzBLwBCEVOPGh
         Eow6fm2OPQfDqhchc0QjUVyUSj0zYC1dTF4XJKDdx+D2D2dBZmsLkWs0eii8Hzh1BA7B
         KC0w6sj7P4hUt7Ehu9IjjgLyM6fvMboPyoxSiNG74RgxZ8Ng3wPIX1dzxzxFSB57bjqP
         Qxgg==
X-Forwarded-Encrypted: i=1; AJvYcCXaaTTYIQZe4xsqQcpw6bpSTMIWEu7lufFuTsjmaJNr8s1MVMbEMpwkCBf5fpFbIdNBmP/rN8O2GR1j0evqcpFLfscL/qM=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yw15VvSvAMUJq8k3N3xBn8vX5kZJO13wxuTUSThpJ2B+U5Ru7AC
	yOFwCOyCIYnOv+EVY1MBnlfJb2XCPDVwl/ZlgDVn3ZnMa+up8G9Ty2E4mun+Dn4=
X-Gm-Gg: ASbGncum0pCFqAvgahPfa18p47CjWwrYTIaFDcCZ3WbklSBNJxRSyKC2iP/Xz6714MX
	GZD4lgduX3ce3ZU2ZvhpoAVNvCesU2AU7f2eku+iunKwBZ6Oww908xUqRmu36eAt06y4JhaY32E
	nXFfkX6NiRvmoFAbZE3W+veL4PJtT6m5yx1iqt/paECkTyD4dL0fiHRhcE5OI5oh8GnUHQlPiqO
	ZIW1f7s0Zn2sBdLIah0WPGXVw9KH1v31RnLkjbweWSeMaX+9nm8x4eB8PPvz0AKAMU1CII4F2tc
	mOqd4nL3u7htrxhMPzP8lCyGo6pQ/kEmUw+RhA==
X-Google-Smtp-Source: AGHT+IEL3jMtAiWpEcBdAhuN4BBhu46mNytcdyqEH0g+zISu1SiKrI6p5tu5fxsBBHiOq0nE1v9hAQ==
X-Received: by 2002:a05:6512:2346:b0:549:8ed4:fb5c with SMTP id 2adb3069b0e04-54e8ffdb594mr4695928e87.31.1745925190044;
        Tue, 29 Apr 2025 04:13:10 -0700 (PDT)
Received: from [192.168.1.10] ([94.25.175.98])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-54e7cb371a2sm1841788e87.57.2025.04.29.04.13.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 04:13:09 -0700 (PDT)
Message-ID: <b84164e0-4716-4413-9db7-7b6c64ec8c35@apevzner.com>
Date: Tue, 29 Apr 2025 14:13:07 +0300
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
Subject: sane-airscan 0.99.35
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan version 0.99.35 is now available.

1. It fixes compilation against the libxml2 2.14.2 (Issue ##369, 
reported from the Arch Linux).

2. It adds the SANE_AIRSCAN_DEVICE environment variable which, if set, 
overrides all devices, manually configured in the configuration files 
and disables auto discovery.

Examples:

  SANE_AIRSCAN_DEVICE="escl:Kyocera eSCL:http://192.168.1.102:9095/eSCL"
  SANE_AIRSCAN_DEVICE="wsd:Kyocera WSD:http://192.168.1.102:5358/WSDScanner"

The primary purpose of this variable is the automated testing of the 
sane-airscan backend.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

