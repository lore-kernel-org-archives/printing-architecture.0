Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F147413D628
	for <printing-architecture@lists.linux-foundation.org>; Tue, 23 Jul 2024 19:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721763714; cv=none; b=ro+p9cK1H2s2JbX7LNg7MsR9C49FC2CKltu22kMpDsg1Wac/IKEWowptCAMPBKMhU6rWYUhNL1WdVSJHejde9FWmrFPY5hp8OJIOovkmVkQrN/SSPPbrVSf+wOK01VDxb1OiFLwSLyVaYeXgCyEPD/Hn9zNiTODsY+7TYPWG3es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721763714; c=relaxed/simple;
	bh=WqXeQaAxKChwS8xMp+SId/asBqqynBGQfMxO1gULDLM=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=fjDDJMH6Z0utL6LGRYM9JpnfBsYbgpExHzQM3SQA/MkQmmJYvq/9/xua9R5INU09y/Tid5uUf0GjDsLHiRQ5J+bXWnye7o+NgRDE79h8eLVR9fUvoiKYhD0E/hiTaurYz7HJ1KO9VwA9qrVwQOKbuzAm0Vd8IT4igEAFnHmwW7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=MK1rs5uo; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="MK1rs5uo"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7986840465
	for <printing-architecture@lists.linux-foundation.org>; Tue, 23 Jul 2024 19:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4svjSUrGyo7k for <printing-architecture@lists.linux-foundation.org>;
 Tue, 23 Jul 2024 19:41:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E0BE4004A
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E0BE4004A
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=MK1rs5uo
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9E0BE4004A
	for <printing-architecture@lists.linux-foundation.org>; Tue, 23 Jul 2024 19:41:49 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52efd530a4eso4937834e87.0
        for <printing-architecture@lists.linux-foundation.org>; Tue, 23 Jul 2024 12:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1721763707; x=1722368507; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhqGWqkyDNNc5oO+6qa/em3QyL4FswoTpAoc4+2tcpo=;
        b=MK1rs5uoIldqEc/fqXDTAasBZD+yHvU7G5JIkXh/L4hJyYdQpcBcCKUTPlU1Dqlmmz
         tdgqUkSHNtOFqO4co5YliJdAs1TXbMosRaAdlYHQm+tFduF51sn/c/EqIxwxWA6bQVrH
         dZ9ViZupQtQC752gl5ZptgS0lh/JACJmNiw2JCEQhLIlBgVlkPDD3j9n3THKaR2Iyi5F
         K3B2662MYylJdDmrDAOTGRR9KkgxWJVCGiVUqceDkmGlZCqcMrix7a7g/7jUDLIIZXRw
         FyKuUl9IeoQPy+ra4xoc1jsKD1DxiYZnYula54umkrq+RZLPlKTXIpa5V6s9URntJKYD
         EHIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721763707; x=1722368507;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BhqGWqkyDNNc5oO+6qa/em3QyL4FswoTpAoc4+2tcpo=;
        b=oERMM3tASxqzOv+ox42aetDW6ORKYrDQXuAiv84A83b/+yzYdbBJQnutSQ2P1O1hIf
         Gxo4OE7+mDkdCBm0dHFQwhR0j+gsoSjY5Rim6NUavGGISkkN8NJmPzm23LrvUXxskSr0
         prp/e5bcspyMujyXlYS4LlQtZZfY01WCrJv8Ci9WIjFEfQH+VVBAynRLI1X+3yXmotDN
         v1U6Gfs9SxIWE2aBpptVmJMlOd5kLND1eIhPZXbRpDj900dQexRrM2MR1k+FpOEV3SwY
         zbHIqlTUI1SlR4/kCTTrLBjQjWRIbl9LEtHWfiCARO1/PnmZ7A/1gsuaPAOmceZvgL2e
         FHiw==
X-Gm-Message-State: AOJu0Yxfw58jOadtRG/4/3geY9RkKnpoZe2WFOX4oS48quOoUScxTpvy
	EzRC9j1WV+PYlBxhiciQ+CkY2x8LeJBkBqBqF2mudXwnqcDgwanbef/ajnnVxIRH51m6mLqXZ5T
	K
X-Google-Smtp-Source: AGHT+IFIWPd6FPwGynIoWL5yP8lRumK6PvqWpbNj+gUMql2EGozxJWWSZcza0G3/HKABKs3bWQrioA==
X-Received: by 2002:a05:6512:ba1:b0:52e:f95c:8b with SMTP id 2adb3069b0e04-52fc4046329mr3173296e87.16.1721763706568;
        Tue, 23 Jul 2024 12:41:46 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-151.pppoe.mtu-net.ru. [85.141.192.151])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-52f041e0bd6sm840139e87.198.2024.07.23.12.41.45
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 12:41:46 -0700 (PDT)
Message-ID: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
Date: Tue, 23 Jul 2024 22:41:45 +0300
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
Subject: ipp-usb 0.9.27 announce
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi everybody,

I am pleased to announce the release of ipp-usb 0.9.27.

A few hours before I've erroneously issued a  0.9.26 release. Please, 
ignore it and sorry for inconvenience.

This new release brings some bug fixes and improvements.

1. Previously, after introduction of [uid auth], ipp-usb attempted to 
obtain localhost client UID even if it was not actually required. For 
example, in the default, permissive configuration. If client UID could 
not be obtained, it could cause connection attempt to be rejected.

As result, ipp-usb didn't work in snap, because snap configuration 
effectively prohibits ability to obtain client UID (this problem was 
noticed and reported by Till).

Now, ipp-usb obtains client UID only if it is really required by 
configuration.

2. Fixed [uid auth] behavior on systems with IPv6 disabled in the kernel 
configuration and only IPv4 is enabled.

3. Fixed allocation of TCP ports for devices. ipp-usb attempts to 
persist port allocation, so once allocated, port is "bound" to device, 
and if device disconnected and then connected again, it will receive the 
same port. Strictly speaking, it is not required neither for printing 
nor for scanning, but this level of reproducibility should be convenient 
for users.

Due to mistake, at the moment of port allocation for newly connected 
device only allocations of currently connected devices were taken into 
consideration. So port allocated for some device could be reused by 
newly connected device, if old device was not connected when new device 
arrives.

This is fixed in this release.

4. External dependency, github.com/OpenPrinting/goipp, now "vendored" 
which means that copy of its sources included into the ipp-usb source 
tree. This is a standard Go practice, and consistency of "vendored" 
libraries is strictly controlled by Go toolchain.

As result, there is no need to package the github.com/OpenPrinting/goipp 
in order to build ipp-usb; The ipp-usb package currently has no external 
dependencies at the moment of building. It should simplify packaging 
process.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
