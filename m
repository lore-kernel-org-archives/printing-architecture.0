Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7170E14658B
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Nov 2024 09:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732007252; cv=none; b=GIEXU5XyfWyuFimAqeJwX6fH2qaGHD/N58IL90Tr3aZP226dXJAMhbDdPiCgvsrnw74z+KJYIaSlMShg38T6RVQRrSEL0GnprmVhiOBpNndmIe0RXNTXwgz649D7b65PFM0uSjH7fjwSn0gYO7cMNVcJ4pgW4lGczvkTCUzPd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732007252; c=relaxed/simple;
	bh=IG4L0nC351FVI7msri9eAycmtUVy795JRk5zXrejoos=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ozTc0n33s9rcOD7ww+JhR5mpsnk6TF7uMXbZwU9ayLVJ8Zu9DDFKC7rbZhPFdNg6A8tK3FCQovznM7GWbpK2jiWwh3nVa7VOiR9Vfd+mIIr557drOGAs4kVby/aZSUs4ajkhOLXP3CTWUh2WccbGN01zy24uBQwd8l/+uEVBDWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=ipK07M9A; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="ipK07M9A"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5EB86F500
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Nov 2024 09:07:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KwLyC1N1KPGe for <printing-architecture@lists.linux-foundation.org>;
 Tue, 19 Nov 2024 09:07:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6CE9161634
Authentication-Results: smtp3.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CE9161634
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=ipK07M9A
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6CE9161634
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Nov 2024 09:07:25 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-53a007743e7so4475399e87.1
        for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Nov 2024 01:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1732007243; x=1732612043; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2N73gUEioJXJzZ5mlvn1kxlCcuf/Td7Le+H36phISM=;
        b=ipK07M9AQeZr5wNNTZ3u+NtaYULhBHy7+0HlmBK2uq0XaxcfDHYeoWsfvPKml31npc
         U1nSA0IKEK+wPaKYNdstCP8KUujh4L4o+5nf1jVQmM63VSDN0kdgUc3NzMivNmNMd2Yk
         vJdb68K/MjPHpLIogxnM4e5N98tLc95zlGpfBu2XZxZhRl3ZjRj9zzlW6KgkhgJHUVuC
         ZPAbW4WNbjdH4+TcaoGsSKXhtu+0qJ/4aosvjsS6ix0Il/JR4VZpKF7KfArrQPKIyE7o
         WN/BC3F6vNWxVJRsJ/tAtzlVdSYPKKSXDzWvoBUR02okWSlNw+MdUtazNPbRO/mCaLKW
         qFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732007243; x=1732612043;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+2N73gUEioJXJzZ5mlvn1kxlCcuf/Td7Le+H36phISM=;
        b=BxVrAcWo87ZKzQDH8WpsvMFeGMKRvOa4faTBV31YjZXHcIHEVopJvrXX8jitrTWaSL
         7KOqspseIbnlyRvYODdo19jcLZQHLQehfkBJw0txt7w0K/TK24jMneq2WTH0Lek1TZUS
         pZQjIbB0cNDXr4idYPCUq4MrChSC0LAZUyu6DVDgOy6muc5sgjSq9Vj6GIdbF5BNnGpm
         g5Hhrz5LJBPfInVQmdWh8WRjV2cpfJstm9tNpMl3phQYiGobdqFIy71kSVTiGJPIVG9y
         Z2Rhq1kc9t/HFs6TJbayByV0ypgU5TY50QGDOtGmE2ayLlEwiFAVagemXE59R9Za7I2/
         KJAA==
X-Gm-Message-State: AOJu0Yx5LXbyl4yFrRUChQRnyR8cNvLE4hkU8xj6Nbrt+Jqazk8Ai6WF
	BDVAOVEwEKoQ0QW70z5K9feHv6Mk+Ad7cPrGWeSOaEHQExgAQEKFF2EbLYNcLdxY/6zXhwnbFXm
	S
X-Google-Smtp-Source: AGHT+IGmeZRxmex6f5bu3i9XupEGkOyj25h/TWSS74Pbw7vHLip+pjc/4lB+dN4Ik3dORktYPGy3FQ==
X-Received: by 2002:a05:6512:3b86:b0:53d:a24b:db0f with SMTP id 2adb3069b0e04-53dab3c50b3mr6343711e87.57.1732007243015;
        Tue, 19 Nov 2024 01:07:23 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-194-242.pppoe.mtu-net.ru. [85.141.194.242])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-53dbd472340sm239918e87.197.2024.11.19.01.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 01:07:21 -0800 (PST)
Message-ID: <1793857b-57b7-44c2-a1cd-a123c828e61f@apevzner.com>
Date: Tue, 19 Nov 2024 12:07:19 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 "sane-devel@alioth-lists.debian.net" <sane-devel@alioth-lists.debian.net>
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan 0.99.30 is now available.

Improvements:

- Added "sane-intent" option. This option hints the scanner on a purpose 
of the scan (Document/Photo/Text and Graphic etc).

Although the exact reaction of setting this option is left to discretion 
of the scanner firmware, its influence to the resulting image is very 
noticeable, so adding this option gives user a chance to tune his or her 
device for the best scanning results, depending on a particular image 
and scanning purpose.

This option works for both eSCL and WSD, and offers the following 
variants (depends on the particular device):

   - "*unset*"           (don't send option to scanner)
   - "Auto"              (WSD only)
   - "Document"
   - "Text and Graphic"
   - "Photo"
   - "Preview"           (eSCL only)
   - "3D Object"         (eSCL only)
   - "Business Card"     (eSCL only)
   - "Halftone"          (WSD only)

Please notice, device may support only some subset of available variants.

The implementation is mostly contributed by Alvin Wong 
<alvin@alvinhc.com> (alvinhochun at GitHub), thanks him for that!

See details, discussion and image samples at: 
https://github.com/alexpevzner/sane-airscan/pull/351

Fixes:

- WSD: fixed ADF support on Ricoh Aficio MP 201 (Issue #334)
- WSD: fixed ADF duplex on Epson Workforce WF-3520 (Issue #339)
- WSD: fixed serious issues with OKI MC332dn, MC362dn, MB471 (Issue 
#198, PR #343).
- WSD: fixed ADF duplex on Brother MFC-9370CDW (Issue #346)
- eSCL: delay between subsequent image load requests (NextDocument 
request), initially implemented as a workaround for Brother
MFC-L2710DW appeared to be a speed limiting factor for the very fast 
enterprise scanners, like HP Color LaserJet Entrprise Flow MFP X677. So 
this delay made a Brother-specific quirk.
-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

