Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F14C3FD12E
	for <printing-architecture@lists.linux-foundation.org>; Mon, 15 Jun 2026 14:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781535105; cv=none; b=bl5eQIQ2kqfcUSYaC+6MFAkdMObogFEcPRQFh1FG23/tq04cS1gyHI12x9pJTd/vLR/HzaHqfEeqplc2Y1qpsrpWzfW28xyD+1dAtRPSCMhc3U1GwjfkJZ9XXU872MgFEUZy3jYbQNlKxZ4ZS5EyLxglVQEeI4ClfC91cpM+bhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781535105; c=relaxed/simple;
	bh=peu4Ld7a8jyAQTtKW6nRFK0sSgGWS89WQ5oS2DyF4A0=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=YCnVIcPe6881lHUk5sdQ+fRUwqHbmuMXt+SsGslhGX9MU6X/y7ovx5JLJIPNUATzZMb7H+YWgF2lMyEFcW6nfYFq6ho8VFrAbhXAm5amtJCu1m3NW1E0LUMH6u2k9xGIXsl7toxnD8oA5GO4gS6/Fw7Aq89RiE0ZMAAL5+fbvdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=GY3elF6C; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="GY3elF6C"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF3AD411C7
	for <printing-architecture@lists.linux-foundation.org>; Mon, 15 Jun 2026 14:51:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GxQviYum2FdZ for <printing-architecture@lists.linux-foundation.org>;
 Mon, 15 Jun 2026 14:51:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12f; helo=mail-lf1-x12f.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D9CDA40291
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D9CDA40291
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=GY3elF6C
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by smtp2.osuosl.org (Postfix) with ESMTPS id D9CDA40291
	for <printing-architecture@lists.linux-foundation.org>; Mon, 15 Jun 2026 14:51:40 +0000 (UTC)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5aa2c25c632so3499648e87.1
        for <printing-architecture@lists.linux-foundation.org>; Mon, 15 Jun 2026 07:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1781535098; x=1782139898; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rr2RGiCUBD0BExnogKEUwMKz7aVnU78V8buMcwiYkeE=;
        b=GY3elF6CjT5rEnDseM2aiy7BTDk7q59LdP/78R/QGRiyJ+46W2iSMq+zBHPLpFHcIi
         LlyUX6iWSdyO+oX90q1PO0NtVP+VGXYu59D5Uiu5+3mzt77k1anDVPbKwf+hpVbpVMN/
         gfnCXaScjn8lpVAwTe/4/E2zES4QQuo2vIja8l3T5WHM6sIonLayq6xuZOjaBVla9Il2
         /s0xm/YTCgnGSIctIEIXa5Emy7Gf6uNiEvB+/VMyIbrFT92KQ9ijylpKDO6czVQ44q3l
         5dQiHOt8Brt1keN1ii0H9PC+2bYSZWbR4APY0WJ3j7ewIgt6SqhbexR9kZ5+yLHOo4sz
         K+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781535098; x=1782139898;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rr2RGiCUBD0BExnogKEUwMKz7aVnU78V8buMcwiYkeE=;
        b=o8C9CZAEqIyycTdH5bQlCkDG1s0hED23aQOysc+UQ6k8DxNRlgub5TXLFh1akUFy5q
         PXNPv4De+0o/4uLDGLN7qQ/fYmyzW4eIEEJ3upisWHQGBDdzzk3aopPIxKppNJuRSpTX
         9hf8o3Hecznm503kKkXVHvLBF9XnX1Jegf+DiXnnLEb49PNDpTTTH2YkOfSTC4c1zrH4
         J4YtmqWZZkoUR15qDXjwzY7nrf6gQdRUNNYw09t5iEJilnPynK9TxUajuaSwbToP0Meu
         hYVYfo6JliLBQy7ik6pPppFELvWhoQUMsaJbLuBSbnYbnKLV/bYmD8ax7WxE3vnwe2Z9
         8KnA==
X-Gm-Message-State: AOJu0YygOtGboJXHJkeXUJisd3eSZKSKB7r8JSmXvzSgVLSuoZ0cob6x
	VLFyBeiiN03Io+3PAZjsM5vTnIl3bjrA/OrGQ8V/r+L1PkhLAtWyWhVOqZJ9MpiJRVEQXz6PqgP
	DEyxPjvI=
X-Gm-Gg: Acq92OFstGy3reuSbHrLprE0XLa1KHX63+mp3Xk0ogDd9d+mu77T7aF/dlzycbSRBsv
	Wo03I8Eq0HUoD5Z1xEV+oclpKhfyUk0nDf8C9A3uXYypsioznaNlMMgzXx0mmQTSEe6Qj1E2JD6
	c4sWt1hlUhs2/vcG2LY6XEceC8+S3UjHgsszD7UWELtgb/FTqN9nLE6ZjzmzYd67TCChY9Fn5pM
	xrj9nXMzHizPi6TxJE9rZTZP98bK/wjq/mB5e82LM5/9mZ/yimOuu78cYxtfr8VnC99hiKid/Hk
	rTMRAGYemeGUHpVBpbNsNhz9OvizrAZSA1rxv4TnFtnt3MfAupmbpiu1+fKXV+6LP9iDfOwXmIN
	HQq6Wv4Xn6KtTP+qV1SR12w0Xwhmm76Sx+XEimeNDfvKpyEvtmno8XNfL0y/Od40kjPFmQ5eEWR
	LjW9/9bscOyNg1G8OHWY7FnqkNTtv/ATARModskK/P7xriZIEXA0ZadvdI06s=
X-Received: by 2002:a05:6512:6208:b0:5aa:5ef9:a33 with SMTP id 2adb3069b0e04-5ad30dc3180mr2736797e87.25.1781535097744;
        Mon, 15 Jun 2026 07:51:37 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5ad2e1b5031sm2851375e87.79.2026.06.15.07.51.37
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 07:51:37 -0700 (PDT)
Message-ID: <d4e5312d-b047-4392-96f0-4bb1e17c2312@apevzner.com>
Date: Mon, 15 Jun 2026 17:51:36 +0300
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
Subject: ipp-usb 0.9.34
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

ipp-usb version 0.9.34 is now available.

This version improves support of the HP LaserJet M406 devices.

1. USB configuration mismatch workaround

Some HP LaserJet M406 devices return a current USB configuration value 
that doesn’t match the bConfigurationValue of any existing USB 
configuration.

As a workaround, ipp-usb now assumes that if only one configuration 
exists, it is the current configuration -- regardless of its 
bConfigurationValue.

2. New disable-scan quirk (applied to HP LaserJet M406)

This device appears on USB well before it is fully initialized, 
requiring the existing init-retry-partial quirk (which repeats 
initialization attempts until all device parts are ready).

However, the device also reports scanner availability via its IPP-USB 
basic capabilities -- even though the scanner is not actually present.

This previously caused ipp-usb to enter an infinite initialization loop 
while waiting for a scanner that never becomes ready.

The newly added disable-scan quirk resolves this issue.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

