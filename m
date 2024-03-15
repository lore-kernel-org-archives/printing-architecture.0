Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EB73BB3A
	for <printing-architecture@lists.linux-foundation.org>; Fri, 15 Mar 2024 14:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710512635; cv=none; b=PLEHsl7RrZXVheRNUIkYK1ZzYL+qFAXIEb10Gji9JHQ6BY+qa6dLLphT7yJw7yTxdxlZYbAjSVDv/VK/C7xalu1TSYtw9UPg22Vu56QcMgZiFmjHfzbwtbHLBA5pDN9jqfbLYcRrUEFgN3Rl6msDixZia+/tM/sZceGinjdh5Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710512635; c=relaxed/simple;
	bh=yEFtH0mqTUXwehitt3wE0SbOpStN9MzKukA/XKyp0OY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=ojWjRHD5yRruUrW3KHlrhChq7Jq7tLR3YDWY/Ksps0wKjD56gfXZHeuqKGnCoE+u1j2jwPEfGNZsdweoKIqfilGTscp0NKOgPnRMV6qYj3VmJezogqoGXPXyDG1O7mXCaRzB1zMxpzXlXZXBG8XVfO3WKxW6MADpbs3YipeEVxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=S3ikVA/e; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="S3ikVA/e"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C232822D3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 15 Mar 2024 14:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-p-xQU7dIgx
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 15 Mar 2024 14:23:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7DB908226F
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7DB908226F
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=S3ikVA/e
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7DB908226F
	for <printing-architecture@lists.linux-foundation.org>; Fri, 15 Mar 2024 14:23:49 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-51320ca689aso2454660e87.2
        for <printing-architecture@lists.linux-foundation.org>; Fri, 15 Mar 2024 07:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1710512627; x=1711117427; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pqT0BNVQMgNvkYVQXZAa4R6pavnpZfLh1vXyuzGFCCM=;
        b=S3ikVA/erdDxa3EHyhmtlCGVMj9Yq4tEcemX7XqNNWJNniHdF3y0s6Re9sFCkgtdxU
         pALYQiqy7c+7qfxxyVEtXzB81GLUE4+7n7CMG1tsShAmLwfPQS0qeq0giXhPsE6NsdkS
         VZS1v80/GNhHo8lkCroMblHeEpATQc3NiIUxRNzJUt5MlleDlATFm3nbu7vLUKt6jWKQ
         Q1c7pYorhEo89glqigU2Xa1zFy3hNw5tUOkz/ga8i0hM6XJR3zzPlXLwh4Tcs3fzOIdN
         3bO9yLRz5IZY9DVe8eTJvXOqXs2aH9WPZ8RQajfCZRKFhdG55z2N62a4tXTRi6LQkmcT
         zb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710512627; x=1711117427;
        h=content-transfer-encoding:to:subject:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pqT0BNVQMgNvkYVQXZAa4R6pavnpZfLh1vXyuzGFCCM=;
        b=rWINFqcn9JGR+RrAoqxF8nXmlN0nLHBRUYHmwpHUoTlBH7T7nBeoWXRn81/GHvFJdN
         qbcTEzwXYgFuSjT9jU3hMucEZAOj4Jsn+SmERCgwTB7zoi8KAuanf0I+4CJ9R2gRKbOn
         dWqNeybJWrvt379hOKKvNCjYSrY3TAXnaxMMuZdM8g8CBuQgmTMtkcivn6Xd+2iDdscM
         7pvltUCfuQv0hzwA6PyjwIXnrweptn4psZv7TFin+TdYPVARyHSHt4YZsbUbmuxtIueo
         gD5HePLHkuUb+NBKitEUDYgG1p0wARtha09TooFHJiwgFufZbNIBXS8ly9lNSq/ic4yT
         O1hA==
X-Gm-Message-State: AOJu0YwSASgWwMinmGExim2O9cXaSnJlViTjx/ffBXQJKzZ6jUhR01oe
	jhhUCLw2WJ2H5yF2UpDjS3YmofXNoadA9XpK0zVmtFdGFXZHzP7N/9icwZtT+B/OQup5KX/TCug
	o
X-Google-Smtp-Source: AGHT+IGA59njMMhFeguukAwPF6+N2f85xrGfHz0VAyg6J5zrkHDlpzCS2RlemnyHLKSFQ133ZAQmzQ==
X-Received: by 2002:a19:2d08:0:b0:513:c43a:f0bc with SMTP id k8-20020a192d08000000b00513c43af0bcmr2423423lfj.4.1710512627041;
        Fri, 15 Mar 2024 07:23:47 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-142.pppoe.mtu-net.ru. [85.141.192.142])
        by smtp.googlemail.com with ESMTPSA id m21-20020a194355000000b00513da68c536sm225423lfj.152.2024.03.15.07.23.46
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 07:23:46 -0700 (PDT)
Message-ID: <bb31aff4-2b72-4aeb-925a-c7924b80f110@apevzner.com>
Date: Fri, 15 Mar 2024 17:23:45 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: ipp-usb 0.9.25 announce
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi everybody,

I am pleased to announce the release of ipp-usb 0.9.25.

In this release, there are two notable changes from the previous version:

1. A new quirk has been added to address the initialization issue with 
HP OfficeJet Pro 8710. More information can be found at 
https://github.com/OpenPrinting/ipp-usb/issues/75.

2. The introduction of a new quirk setting:

    - buggy-ipp-responses = reject | allow | sanitize

    This setting determines how ipp-usb handles malformed IPP responses 
received from devices. It is important to note that there are two types 
of IPP responses: those generated during the initialization process by 
ipp-usb and those in response to client requests (e.g., from CUPS).

    - "reject": Malformed IPP responses are not accepted. In cases like 
the Pantum M7300FDW, where the device fails to initialize printing 
support, ipp-usb will continue to manage the device and provide eSCL 
support, as seen in versions 0.9.23 and earlier.

    - "allow": Malformed IPP responses are accepted when ipp-usb is the 
final destination of these responses, as seen in version 0.9.24.

    - "sanitize": ipp-usb not only allows malformed IPP responses for 
itself but also corrects them for clients.

For Pantum printers, the "sanitize" option is set as the default for 
handling buggy IPP responses.

P.S. Zdenek, it is recommended to use the "sanitize" setting or consider 
blacklisting Pantum printers entirely in your RedHat builds. With your 
patches to version 0.9.24, ipp-usb will still manage the device and 
provide eSCL support, but it will prevent proprietary drivers from 
functioning correctly, resulting in non-functional printing.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
