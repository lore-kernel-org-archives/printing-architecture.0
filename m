Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEB01547E7
	for <printing-architecture@lists.linux-foundation.org>; Sun, 12 Oct 2025 20:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760299278; cv=none; b=WVwDE6yY4LMDu3IkTN61IFK+vEHesa/z0U5ErgU37VCI0Guuzpbj2IV5SoZDfvjgNnykkL1bzkjscDf1GxuTEbg1/ptVMgj/hACPOj4Hl99rdcYDyXp5aDs4RGRk09wDZN3StHZacPRjRlzhAR3yjUVvCgXycTem9fcobAOoZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760299278; c=relaxed/simple;
	bh=UmwEoUd3aq/Sp8Bl8qDCB34k12ionbebQotZDcOidPM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fPuwfmegfEIEtv51phCEKHoZiiVjio22LzxHtZhP3anCXvshgUNYYVFMqqlzaUHqoA6P3xQpcHQgdJTuip6/NMZ1idEndpg2iLuW+APJjIgmrLKozyUnNWBCJ8/O6rlI4D2hATwe9IrICkMAIG6r36UiYa+KheDrlRTcapBry1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JAoZFqcX; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JAoZFqcX"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0CC660846
	for <printing-architecture@lists.linux-foundation.org>; Sun, 12 Oct 2025 20:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.2
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YoUqw4J9I1XN for <printing-architecture@lists.linux-foundation.org>;
 Sun, 12 Oct 2025 20:01:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::432; helo=mail-wr1-x432.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9075D605FE
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9075D605FE
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=JAoZFqcX
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 9075D605FE
	for <printing-architecture@lists.linux-foundation.org>; Sun, 12 Oct 2025 20:01:13 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso3117738f8f.2
        for <printing-architecture@lists.linux-foundation.org>; Sun, 12 Oct 2025 13:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760299271; x=1760904071; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bCvjiDt36Fyt9pEqeLEvS5JLC51R+pwWtpDSWt7CRFo=;
        b=JAoZFqcXKV3InUUUJPMZpr+iOHlLxzhEQjd8699oeqPMfp5loE/jCxli3bssAtXeVP
         HbStscLOe+Abj/xd50vf1sxk/vDncd/FbkW7Mlv1QiYaZJSZX7Eq5mQop4m7nGAN1MZT
         ANSvtADt8HOOxEFjYcjYbR2uuuWawaQr85eHbR6PGbSa3cM+ajInAe34QVO1bliiIjv/
         beYJQg299Q4mCUfgVCXZWScZEC2g6+TKUku5IAl32wlWySH8ua43AqKBxjUafHcsxpKO
         MshiCiV46fPGKJLsVemAImjGuOAnvDtGIgJ2W+SsjHRKMNnlM7Vi6jJva4eRSCHupc99
         oiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760299271; x=1760904071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bCvjiDt36Fyt9pEqeLEvS5JLC51R+pwWtpDSWt7CRFo=;
        b=nFK/DuEZzIFrExE6bu7X8jJ/YoTIHA2/ONF1i4N1SJFgEqAwapcOsFgZWDQfJSNPku
         gG8WS/hCb9D4xYgqYyKF81weNhM4QhagSW8TpB1xABTr9ayTYAahXFngOOdVQMKya3XW
         eCM7UeqCI5QyZ5Wk6g1Sof4hi9Ua4/TT8BGXG5H6i8hk+4rzf225Rfj49Oj/XUUHv7ZF
         /6lDLAwf9MaPkDyI4GWR9aEC/BrH66JOsTiLnjh1Q7IvFfzbc1olemgf/HjmX1D7h5o8
         PxMcd8dyKz/R6580JnyMaqdvskBZ5kKt19SzaQ78U+ZAj5t2vNKNorP88esSz7j2TKb0
         cgcg==
X-Forwarded-Encrypted: i=1; AJvYcCVxOjlr9TrnD7toZPsbUEh5x4avccqEU5u8LacXEQWOYuh6HlSmw7hkO7jBdQqPVNBOS6y/9aFbdQ2m5lV4MYnTTpzb47k=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YySc5dRrUisB7eEzRrDKlUlCD6XfCVpVs6zxemjxgCAsf9B2uff
	ySvvn0EfVNIGIWwX54TRklWYOcFDVJZqUcZ9n9YfDR3QpxwnXFbyUOZ8blVlWw==
X-Gm-Gg: ASbGncvJor0d663cGvmNmJnb2VO9B0B9IBg98jgL+wxWpuNSbE0Tou6yIJC8MRuLIf3
	NQazFY7WXVqDBSrmQ2BbjlKDFMqVmDstnDOs5mxnnNYrGYcZ1wm/uWqGSBdbAYoP/XqSsyZxtjl
	sjzip74VH6aCW8ti5WPy+0K6zOJKwP8q6kBA7dRZQRxFQ5PF0K6qlLv5MrM8S//Jfi/MAWQvp6f
	kAbcsNZuuagZazxSd0P3w6T0AG9QqpaIY+pPmU/VqM7A30Gvq273iiscPxLjrRojGrC1inAKlVs
	78Aavs6eiTQUfzDrRK8swM8ySb5KB1mSbR6/Eej70N2G9VxewKrU4DZXQkJz762le3u+7y9J/It
	ijP1/xXk+3hAqc71DeITVy4mjRDH7LW9a8HfkMSd210/lbf4wZy2wbtZYFeEJxgCtp2jsOSvTsH
	LFs/IOmk7eqVTARnNhYVfSxw==
X-Google-Smtp-Source: AGHT+IFKHuMX/dC42CD2xI8rxVMJw+uvfg4TU7paQmyEYM0h2DiLohrx0uofRjuyht7rQEM6eMxFrg==
X-Received: by 2002:a5d:5f82:0:b0:405:9e2a:8535 with SMTP id ffacd0b85a97d-4266e7c0240mr14223581f8f.27.1760299271164;
        Sun, 12 Oct 2025 13:01:11 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce50d70esm14828006f8f.0.2025.10.12.13.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Oct 2025 13:01:10 -0700 (PDT)
Message-ID: <195260c2-343f-4d8f-b3ae-84dcbcd293bf@gmail.com>
Date: Sun, 12 Oct 2025 22:01:09 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_Open_Printer_=E2=80=94_open-source=2C_repairable_in?=
 =?UTF-8?Q?kjet_printer?=
To: Douglas Kosovic <doug@uq.edu.au>,
 "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
References: <SYBP282MB2617A78D3E14B4D50F9D90D887E4A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <SYBP282MB2617A78D3E14B4D50F9D90D887E4A@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks for the hint.

I have already discovered this in the news and have contacted the creators.

    Till

On 10/3/25 03:03, Douglas Kosovic wrote:
> I noticed Open Printer was announced the other day:
> 
> https://www.crowdsupply.com/open-tools/open-printer
> https://www.xda-developers.com/open-source-printer-raspberry-pi-zero-w/
> https://www.hackster.io/news/the-open-printer-is-a-raspberry-pi-zero-w-powered-fully-open-highly-flexible-inkjet-printer-30948a1787cc
> 
> 
> It's a newly launched project on Crowd Supply — an open-source, repairable inkjet printer that features no cartridge DRM, yet is compatible with HP 63 (US) or HP 302 (Europe) cartridges.
> 
> 
> 
> 
> Cheers,
> Doug
> 

