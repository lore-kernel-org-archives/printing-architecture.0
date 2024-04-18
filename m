Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B5D15B13A
	for <printing-architecture@lists.linux.dev>; Thu, 18 Apr 2024 10:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713436900; cv=none; b=NvLQH4xocLyd4V+r4difXNZSUbM0HgBthzasTEkcBYw+gzSfngDZpE9xq1h4dpWbCNXPUQ80fTrEtliFcw0G5P5D11Uz64m1XkxPKqCm38aGYQomNxI1lXKo2+wm9jSxFRfS1nnf/1jWTjlPf1BZFGGWgZ6foTlMl5Evhcdm4Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713436900; c=relaxed/simple;
	bh=WyoSCoEbK7y2Ydn9emnDn+kOQhFBQJGcGqON+RCNyCA=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=L6AJSTosk4xHtshcqR1mV6MK8Zkle52viq6UHHGUoh37pQsxVp1qWxyoszk6Zgky+4zU7uM7E7RIxHNsqgUnN2WTN+2odLQjUS1hxRv1Yrpbdm/aPpshanVK/2Xs3gMBc57fSs88hz8GYGWZ9tgQ3IyHP5m9xnuqp8g+u/X84ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cJ4gSG+L; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cJ4gSG+L"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713436896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BlmrtUzdd5rJFrHq3lbjZpwlW1X6cdHX00/RRAoPWkY=;
	b=cJ4gSG+L4TH/xzLsmsTe/wuytrAw2JtT952/qfYGia1T74L6gVqPnaxaVoaaNe/FyKUtHb
	qQJ9wdAA8AuRuLYMC7SCjqZIwbEzcl6ij6yIIE5RBqOjtJEiwPbjrxiKsGsErq2ux2KZSy
	tkb+0wjYTyFvYFJkSzOWOSlE2/x7SqQ=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-sLzCvnVxNcis6V5q7jNxGg-1; Thu, 18 Apr 2024 06:41:34 -0400
X-MC-Unique: sLzCvnVxNcis6V5q7jNxGg-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2db099e687fso6698631fa.1
        for <printing-architecture@lists.linux.dev>; Thu, 18 Apr 2024 03:41:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713436892; x=1714041692;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BlmrtUzdd5rJFrHq3lbjZpwlW1X6cdHX00/RRAoPWkY=;
        b=ldHjGpiKu/T3iyzGojLRettcPVjOKSqekqT4YwZ2Fr5iYuJZrvkx+2pnDstzscfyWY
         sfhdjHCJmFBBa1sptyY8cbfzBBODGvfhhz8TM/oSGBltR/Dkxtc/QGurgopCbW/GfeyG
         JE1a5ebGg05cIpZ1lAaGMJ9j4x0+ki7+6UJBvQsyOTakscTOsMNFKyEyFEwJlWSCsWeA
         QVkTZ4Y9+ny0mji8zL3IV93qA9Ra0neRr89yPZNCbuzqVgTZhoqS9jZODNE0WpeAYI2v
         9LEQG87rt03DTf198g+bh0pBlRL4JPEWQQYPTGV8QRGonozNB8j+VGhYZac81p5x15Ey
         ginA==
X-Gm-Message-State: AOJu0Yw1kz7bZnGkYoi9ddMAjExgFHpTb3L8+VO1MDFmQ/BIJICz/mDf
	4yA/JowjR73XB2HJSjH+PQlZSpRdNqJ4QXlhzZJwPvSVJLOY9Imzv/ndsdeZJ60vhaLdhf2gsno
	8qsRnk6BNqKdyjP+3caUNS6G8XuM7J2SQJXWJZ+iviWjHPMLqYnL/2LKgrO/uTtR/CM7HNE4nWB
	K0gEAuaY+L/STibi3tqC54OXtaTach054EbhZbCbuadNs1zK6PoA7yJhX1
X-Received: by 2002:a2e:b0db:0:b0:2d6:ff04:200f with SMTP id g27-20020a2eb0db000000b002d6ff04200fmr1155285ljl.33.1713436892184;
        Thu, 18 Apr 2024 03:41:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLQdvc394tvzwy1y2oJXSIUkJmBin3Ed3TPeEoBYmpVsN+se0GHxt9AcnNQSUJLrPXo3EilQ==
X-Received: by 2002:a2e:b0db:0:b0:2d6:ff04:200f with SMTP id g27-20020a2eb0db000000b002d6ff04200fmr1155265ljl.33.1713436891692;
        Thu, 18 Apr 2024 03:41:31 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id fm25-20020a05600c0c1900b00418e2b69e14sm1922108wmb.40.2024.04.18.03.41.31
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 03:41:31 -0700 (PDT)
Message-ID: <854f10ae-a7cc-4834-ab50-b9a75ac89fb6@redhat.com>
Date: Thu, 18 Apr 2024 12:41:30 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: pycups 2.0.4 hotfix release
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

The hotfix release removes install_requires from setup.py, which is used 
for generating OS requirements.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

