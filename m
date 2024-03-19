Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99005A782
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710854749; cv=none; b=YGgj4/YY5Sby3OffIpcHnHOHcGiUdArsDNRgfHpOYhAJ4XQgTtHjimxHTsKyxzoFAFSabbnZqJkA3DtCRRGVvbXQ3SOWzmiJ4HlMt8ZhRF3TyArExyEk0vJ7MLSmSJ6rsHr7V7OrVr9ev5N3huFLgGuWz9jn3uYV7PpN2FfQZP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710854749; c=relaxed/simple;
	bh=y5cLBjnqS+JZUezyn7un+W3ASX2881N/AzIFntUNdV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BYyMutLteAQUpEiUWM4+XHpCYKDV8sU55r241moyZnirFX7F9BdIuxfMLPZnclkC0aPgDx9VewVMW7Yz6uv+8jugIgmwfzdDtTkLAuKb3AMR2LE7XRpjUfDOFI+1bgjR6piqQG95WrpImMJrTi7D/uXzDFvcIW+mSp5dbW9v42k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NLbx0SKm; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NLbx0SKm"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49AA060A8A
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfM23_ZftRHM
	for <printing-architecture@lists.linux-foundation.org>;
	Tue, 19 Mar 2024 13:25:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8568360A9C
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8568360A9C
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=NLbx0SKm
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 8568360A9C
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 13:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1710854746;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h1WcYAI7/xHm5rprghyorwak9vj06xIo7ePKiJri48k=;
	b=NLbx0SKmQvojBjGPFcovXGdZ83aT/TsbpLXXpbSUx0ZBt8FjqM8sajCCiXALblVTg9CV67
	U5Tk60/UVhZ8XA02fPmCgSdoK/BJXAvoeo8e7iE38xsE1MhmUK5LKVkqqXSrJ16Y85M7sN
	zzDq5244QQ9v+Z8HG0V9jKgh8SzWvKs=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-693-gpXAZuEVMHOGX4jFzCiD4w-1; Tue, 19 Mar 2024 09:25:44 -0400
X-MC-Unique: gpXAZuEVMHOGX4jFzCiD4w-1
Received: by mail-lf1-f69.google.com with SMTP id 2adb3069b0e04-513decf1c8aso2958697e87.1
        for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 06:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710854743; x=1711459543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h1WcYAI7/xHm5rprghyorwak9vj06xIo7ePKiJri48k=;
        b=cONeIbsX4hhn69z6knsw8BF6hI87U/XbLP1y9s/1nvdIP7FPJtMEej6H67LL8oTlF1
         pj6pp51UPwf4FMNRuUAufXOqygOiniZ6VJ1+ygsvydAKmgeHoruvP2xRQJVs2/C5dB8c
         t92kRRJ0aRQ6vOZljojDpysiaJOPO87zc516vQUKV9fCmi+fJaN7OO+YMPXzA4iu9KgD
         9pX+E9cDmSVm7evbOuQcghl2Bs6nn3451NdaQtMrnYwUTfC9SIaNXh1GuJ/sI/7MiDhB
         Rp1WZHJ3nnI1sFVSkb/IPNrAqC5Rgim0JP8sW39LnBj7fW7r5j0dUFDejx2dvjTUsQAZ
         gzSQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+V4uVBPiyvEuf0yupR4pnK7nHjkc7pATLskUEv5zaHUxx4vEenIq5RtuAyGsb2MUxJuVGSeAEN3NUu46Ba+zN/NV/qt6dTEiOku87+YUMLsTehZ3YDPIy0NPS07aZef8=
X-Gm-Message-State: AOJu0Yx5Znc275N8JCSnEgct7yx2LPQsW9AYnZvn043/6ldHHpUQiDhB
	MCNl4O3i17Zs6Kzl7eg04iWGUPiLY2eXPQ70AYWLtCkvXxYs7hSitEweHCFQjsNYBVbdBrMuSnA
	ajBvnsFLgvNRlP7CrOTirOw2soBDSmek91LDdeVkMgToYlvP5ryBb9m1EZRs0VcIboaEgjx8z5O
	xwdtZTDzXz8uAb
X-Received: by 2002:a19:6455:0:b0:513:9d80:f776 with SMTP id b21-20020a196455000000b005139d80f776mr10168052lfj.30.1710854743207;
        Tue, 19 Mar 2024 06:25:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv9zsmrCXHPpgGquCThtuOz35YIfWDna2hzWMdBa40wGkeKfm0krsRK1Zp1j5erR5nfcjBIw==
X-Received: by 2002:a19:6455:0:b0:513:9d80:f776 with SMTP id b21-20020a196455000000b005139d80f776mr10168030lfj.30.1710854742795;
        Tue, 19 Mar 2024 06:25:42 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id iv9-20020a05600c548900b00413eedd36a4sm19308375wmb.39.2024.03.19.06.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 06:25:42 -0700 (PDT)
Message-ID: <2c995986-9bf3-4f62-8f74-88c056eae5c5@redhat.com>
Date: Tue, 19 Mar 2024 14:25:41 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Pantum M7300FDW
To: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <7555e91e-562c-4d89-9c92-91ddc17135a4@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <7555e91e-562c-4d89-9c92-91ddc17135a4@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex!

On 3/15/24 15:27, Alexander Pevzner wrote:
>
> P.S. I observed that my patch to ipp-usb, which enables devices with 
> similar issues, was not accepted by RedHat.
Yes, I tried to remove the functionality based on security concerns that 
were raised here, but completely forgot about that I could (and have to) 
do that via quirks...
>
> Zdenek, if you choose to pursue this route, it may be safer to 
> blacklist this device in your ipp-usb build. Otherwise, ipp-usb may 
> hold the device while still providing eSCL but preventing access by 
> proprietary printing drivers.
Thanks, I totally forgot about this!
>
> In the latest version of ipp-usb, I have transformed this workaround 
> into a quirk with three options: "reject" - the old behavior, "accept" 
> - akin to 0.99.24 behavior, and "sanitize" - ipp-usb rectifies all 
> broken IPP responses. With the "sanitize" option, this device prints 
> over USB using unmodified CUPS.
That's great! To have a way how to configure this behavior is ideal from 
POV - we can ship the safe way as default (IMO sanitize option should 
insert message into the log - admin would like to know whether something 
is not correct, instead of silently workaround issue) and if the user 
has problems, they can switch the quirk anytime.


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

