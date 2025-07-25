Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE00823F405
	for <printing-architecture@lists.linux-foundation.org>; Fri, 25 Jul 2025 13:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753448714; cv=none; b=tHOpsJwozupW6q0wBid1YVBheGBitILW287rIZq/sIEyi0VltkwRgsz7tp7q3E9mvhGRwDKxNGXKlP6lO4HgBXqRHBCJ1dKo3tDAJaMjQOMzta7EX0LY6J37qnmdfMhl7BqpUyPYbIuy6ZAFMHIGcAPvVJ1Z8jjs//3G+mdGeMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753448714; c=relaxed/simple;
	bh=Vqb2xLqEZQeU8fJCMA13WFm1Mj/NVhzdKwFt8mVCvk8=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=dfTj7anim1iu1EwBk/IeXOsoWJO2pd5In2gKw+km0fdhqkShhdv9hhBHc/KzofRRL1HIa5nS99ATdoZmiheWBEObkMZyryNT7sTIHlSasKY1Zi2fjof+W0IQ9exWJxHirWSC0wtY07PVmlZMNLF17T79po7L3QGLncHuzK5uP9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=mqzxjKRF; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="mqzxjKRF"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44C9641CA2
	for <printing-architecture@lists.linux-foundation.org>; Fri, 25 Jul 2025 13:05:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIcHQVzonek4 for <printing-architecture@lists.linux-foundation.org>;
 Fri, 25 Jul 2025 13:05:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 79A1E40650
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79A1E40650
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=mqzxjKRF
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 79A1E40650
	for <printing-architecture@lists.linux-foundation.org>; Fri, 25 Jul 2025 13:05:09 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-55a2604ebc1so2081957e87.0
        for <printing-architecture@lists.linux-foundation.org>; Fri, 25 Jul 2025 06:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1753448708; x=1754053508; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PezoKVNrHytuyX+fXUHY+ho+kRo3cuI3p+I22/fKwc=;
        b=mqzxjKRFp0t00AtMDw4aT5LvJ0eqD+CGZjYPttxxIPsp4X1Yy0OvU68amBHnebP9nw
         YY2NEQGKBlRttqLjqLbS+JDOq21uoU7bU40WH94Mn6RvIsK99pXSbF4xSonrAl7+awzX
         RrUnB7RYpgIe98hx6SPaIIZZXpld/xcJk17kl/jk642803wYoVpZVh/rBHPGDYpx/0Q5
         8mR+f3/Cf6hXfBdd426J/IOGX7chC3mlMlo+9WdgR2f4zCceth7Ip3w7sz9S+QyuTRs/
         wwVbRcIbdAi+TttbBQ8O5Li+NRD6GFg3//RHpj3YHt2xz1BS2mrnZ3klu1hjbwNRcPMc
         IYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753448708; x=1754053508;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2PezoKVNrHytuyX+fXUHY+ho+kRo3cuI3p+I22/fKwc=;
        b=thVONtlj8qwojSl4nuvIxY5IQhZkKCpPMk4DnbOcuG1oDjP7FhgJRFlYKH5EOdIJZm
         v3mRyDBTnTNAHr1I3rVg5GaoP4EsYPNqSjBYY6bnfjrAplc4kHhFFXsAuQXyY5+E0N6s
         WX+Tmj9/6jXvamM+Q0Vlim0B9FbytqyZ8NeWgC+zuqvzLSSZK1b5qAWWeC3z2OBzCBxX
         l4sEqjtG8Ti0gClwrEg6hfDbVKddm0zwCLP3SDujPHHq9AEOvPT2eHzlG5Jx6xq/UH3o
         qSCQ397/c/ee2nDIe/pQMrSkPD+3rKuyD6C0JUJj0o1iCzRmJpJtntfUJCJZw5AKzIzi
         PALg==
X-Forwarded-Encrypted: i=1; AJvYcCXU8pAjYddafimvqG5M3Ag98ZcclfbTHX6c4ny4DaRjBh0D6pWDdbx6hjsRlxjgZjQZM4mUaNMYjGi+Mhm0QbCTr5A7YV8=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yx8GVsc9VX5fB/3f4xtOY9U3YBaFpd+EMYYionmkrSETJioRubt
	BrOwGZRU6q6ofEdP73rrggkslfM6Znb5rXeB8tFhbMzCAYHcvr0N1glj6cdZRX7j6+4=
X-Gm-Gg: ASbGncuvBDEOncPAprX2YuobssKz69VVpbJzqST67VXyMrd5isTveugZYpG4h6WrfZU
	X9FunM5HIjeRZCu2qY6r3JWeldr9VEK8qdNMTlmHhqgImO5YHyJtPrHRCtJU6VjNLyr2qzqnepd
	+7Ugzv/TMSDu5MIRQalpI6cwXHbxBlYPbOWZ1wTtLr8IxHFEviGT3gixm85TaVotRFe8vXbyC9g
	GgVAq1iEF37CjOcx/nccpmjm4bZ2P7YxBOXVq2nHqhCaCv/ZIJ9wS3XPMcOIu6dvJLCeDJwDoPp
	OTJoMZMHxL2mgzc+2fSnwSEkdPvmLzqFOmkN9eTvdMdDEA7ALsm3CWG1WUDa5kUs/jCQK6rys/k
	SCtrRDsYKLhokfHw=
X-Google-Smtp-Source: AGHT+IEGj+y/yimY6NADnUOMjCCeGOJ1RkePCNL5gR3vCOXh381/QpJsgOUOnHuk1arVJ86z1bVvUQ==
X-Received: by 2002:a05:6512:2242:b0:553:ae05:9c48 with SMTP id 2adb3069b0e04-55b5f4a7c5dmr491423e87.45.1753448707258;
        Fri, 25 Jul 2025 06:05:07 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-55b589c21ccsm641163e87.68.2025.07.25.06.05.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 06:05:06 -0700 (PDT)
Message-ID: <2aee65f7-d241-4e16-b627-4bf06a9f7dab@apevzner.com>
Date: Fri, 25 Jul 2025 16:05:05 +0300
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
Subject: sane-airscan 0.99.36
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan version 0.99.36 is now available.

Changes:

1. Fixed a crash in sane-airscan/airscan-discover that could occur under 
the following rare conditions:
   - The Avahi client connection is being restarted due to a failure.
   - A WSD device is discovered that uses a non-literal hostname and 
requires the DNS-SD name resolver.

2. Protocol trace improvements: Enabling protocol tracing in 
airscan.conf no longer automatically enables console logging. This 
allows logs to be collected without cluttering the console with debug 
output.

3. Added eSCL quirks for Xerox WorkCentre 3345: Fixed an issue where the 
device incorrectly reports a ScannerAdfJam error when actually the 
feeder is empty.

4. Improved image quality in eSCL backend: The JPEG and TIFF compression 
levels are now automatically set to the minimum to ensure better image 
quality.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

