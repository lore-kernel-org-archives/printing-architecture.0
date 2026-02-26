Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAB943D4F4
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Feb 2026 16:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772121825; cv=none; b=ueJWaEKnh7JKfTOPhJPHKKnBvG4Fxpro/Y2YSSQkcx5I8AS8igoPHEbgrNQvSPlIU37WhkiYNwI0jDK3L9I56BtPpH1cTBwm0yN8c1ZnM83xxVTAd9i7qv+u2t/DSX/ZEQpWrPFq6kSZmQVSlEy+Lqjmc/AIdkggGTxSmI1W2x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772121825; c=relaxed/simple;
	bh=ENIzr4CnEufl7VniE37dBMoIPKamUMzVQoTL2/bxFzU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=K9Fc1b9gmfWTUKTZhSG8S3Q0ppC9NlTPCI24m4ASK0l81y99/IacLa9tvljYJrWwrAxWtudSDEWQpGF90VBm9YTOPrtxmXBuLWt19376wWnnD65OFZAdW4xYaLiSUcdQEsDBW29HxQ3Odjo+5zQKsBjVW/hAu2W9cjFythv6jis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=imN6jmQu; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="imN6jmQu"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0954D83FF0
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Feb 2026 16:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mvXEsUfDeisl for <printing-architecture@lists.linux-foundation.org>;
 Thu, 26 Feb 2026 16:03:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12a; helo=mail-lf1-x12a.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 488FA83FEB
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 488FA83FEB
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=imN6jmQu
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 488FA83FEB
	for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Feb 2026 16:03:35 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5a10d130b37so555265e87.0
        for <printing-architecture@lists.linux-foundation.org>; Thu, 26 Feb 2026 08:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1772121813; x=1772726613; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6PvSGMmEo9zE/SuVCI31u8unEykUuz7trIswuJ+OI9g=;
        b=imN6jmQuo36ij2q6t49zvtlbGyrDanFQLb3qg12ECSU/on1LyHHjTy7ukX+u8MI1iI
         krTYY5ojExadCgLOm54f+sONn/9eanryEKFqUj36NACAbozUfYYK8fLedPOGg8Aj5TH+
         /pzmeWsOLGwPYDaboW95xEbzGN/2lEiOrLDes5LKnKIyHdcCjxikxBvD7hgSQdy3VP/U
         UOrDi2gsC1fcASmdGrlZd+xRB2NIVr2O1C8KmIwg3XSgN5g5AdPc3wcMCuARQduvcADl
         Cv0OIY6ys9BnLOvSky7Q2nkM0IMUbheZfFCHhgg/ZOsjV4uOfkJPvG5NjyvheyKCT0dm
         5fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772121813; x=1772726613;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6PvSGMmEo9zE/SuVCI31u8unEykUuz7trIswuJ+OI9g=;
        b=ofjcydCfhWDkwp26qGm1N1Hb7t0GBxo10duJcff20MN5PdepkHtqiid2fh+qXzFlnr
         5n9fBOs0mrNTHc4HvFfmvor+1OznotJ6+dfbbYIcWOepzxdSvLwutGZSqlQgI0QuIPvU
         TGqGhgKjSLLDbMJ/9TYozVFyfB6ssB/votW3tDEL5pxTc3juVuTGohxjUNgAylz/o6MD
         XwfSCuk3CW+FCHc1wTYTI20XnKWJlfiEGD1nvLsUvxLD4p9o7wfimkiuJPIBub/GoH8j
         P1fBGj0Mm+nbnAC5F1dGtJrdOfbOuQetO/vGbAYPt8bOHz0EqNwDtrTxRiwyzIKrOzck
         ZNzw==
X-Gm-Message-State: AOJu0YzcYnWjh0vRz4go2ItOA+MhHuBpTBUGWdHK1xCCm0D72PTTlHP3
	HcWALQUelw7qSMqTPB+bK8Yzlb6RMKY01FlDFNAVSFZVE29bKeGeE/ZdcVdNGKjhlRFhvaYVH8W
	1UP0LFyE=
X-Gm-Gg: ATEYQzzoBO1Jtiip3f3Z9d42huFIpAVBSGAAtI3lhqXA5pIaZO4bMztOkaBOevKChxF
	MI8lV4O8efpSjOuNQ1DAIOakpEKy3P+8aA13Sp45Oh+PTftRb2/GiJnVk7Uf3p0Q348dJ3gK0Ez
	Nal0OC11T2YCXgAM73iwdRng7nKT3tP+tJsVcJrNYHntRnclFSgywBMB5KHtP/K3FTn3qMds1ZH
	ulewMrRQKnnAHg5syIQXRnhqpslu8ho6tAawYVT3dGx4qZTPyfV73D95iVzACwEN5Evmw6XqngY
	akfiu4ECaigvSWAh/WZcZR3/1Xvk8s78RvJombtYbwFKsOImm1uuZlAzSUtJmli1El7Vq+5BM+0
	Ep5iiYCHU9jbje6b41/f8FEKTWqgROgnrgj0VXxDb0YSy09OY3b8dL5qdQm4WVe/jIUo81shyaS
	54g+y1ng6L8SnJsaqlj7CL/uqo7ycW
X-Received: by 2002:a05:6512:602:20b0:5a0:ecb2:c0c2 with SMTP id 2adb3069b0e04-5a108a7d074mr787896e87.4.1772121813037;
        Thu, 26 Feb 2026 08:03:33 -0800 (PST)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5a109df84f5sm1047835e87.55.2026.02.26.08.03.32
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 08:03:32 -0800 (PST)
Message-ID: <6e77cb21-d1ce-4c67-84c2-e92f6ea7c674@apevzner.com>
Date: Thu, 26 Feb 2026 19:03:31 +0300
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
Subject: ipp-usb 0.9.31
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

ipp-usb version 0.9.31 is now available.

This release introduces several enhancements and fixes:

     1. Quirks can now be bound to USB hardware ID (Vendor ID and 
Product ID). Previously, quirks were tied to the device model name. 
However, some devices (currently Xerox B205/B210/B215) require reset 
during initialization to report the model name correctly. Binding quirks 
to hardware ID allows identification before the model name is available.

     2. Added quirks for Xerox B205/B210/B215, ensuring these devices 
now work reliably.

     3. Updated quirks prioritization algorithm to align with the 
documentation.

     4. Accept textWithLanguage attributes where plain text is expected. 
This fixes DNS-SD advertising of the "ty", "product", "usb_MFG", 
"usb_MDL", and "usb_CMD" TXT records for Brother MFC-L8390CDW, which 
reports appropriate parameters as textWithLanguage. Other printers may 
also be affected. See #109 for details.

     5. Added CLI parameters to control file and directory placement:

         -path-conf-files-srch dir1[:dir2...]
         -path-log-dir dir
         -path-lock-file file
         -path-dev-state-dir dir
         -path-ctrl-sock file
         -path-quirks-files-srch dir1[:dir2...]

This change, requested by Till, simplifies running ipp-usb in containers.

     6. Various improvements for running ipp-usb in containers.

     7. Improved test coverage.

This version requires goipp 1.2.0.
-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

