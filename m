Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AA528F3
	for <printing-architecture@lists.linux.dev>; Thu,  1 Aug 2024 14:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722521476; cv=none; b=VV7jELxYvSWnAZkQmBvcpILoZICUo8EJ04ACjSrvEnMM+gNqnap92FM0qIIlrrtibfRpjiMj3A8y/CsTFYHr/AHrlB9JIpzyjFNtCLeDEJZTIz5F+5NvLJ99yp3DfWn+eRZTJ5287tTsZWFPGZtGTUm6cyxP+mAuT9OAZ0FCqMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722521476; c=relaxed/simple;
	bh=6cohfZYy0FL9Gso/cCkfI6nLCfqexKiDfeidEZPYw44=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ahGl21HQmopT/sYfs8fXS5I8rQoB27E6+HkwrPyg/QrS8kYMNS56yS0Q0TtvQU7XDtqmqtshOWI9PycCUsJS/QIjz5z67Fv3ZC+/fYt0u0k2sAzLgOgT175F8VEq/cf8ZBkXjDNN15b4kq+X3zPPPG4rIw8UnQuFv2Kd1Ep9H9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=czRI2Knx; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="czRI2Knx"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722521473;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DweeM6etqpUkhpaA9PKChcVg9zOfbSTs+Xz3I+Ay/Ps=;
	b=czRI2KnxMz8vNdYs//tp5DN7vSsI12837abaaHAaZ2V3iKGoCT802+QP8+jQO/CVoB+Zbb
	gv09LwXpCTrze45OcDPky0VJy9t9mr840sh+5+bNxeg5iCOwOz9TKTpTQ6C67p6eRh3Rha
	cqiGs3mCmzVDI2ibx1uoVre+gPNTXA0=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-kD0PlauqNDWuCnS53MtU6g-1; Thu, 01 Aug 2024 10:11:11 -0400
X-MC-Unique: kD0PlauqNDWuCnS53MtU6g-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-428e48612acso5668125e9.3
        for <printing-architecture@lists.linux.dev>; Thu, 01 Aug 2024 07:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722521470; x=1723126270;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DweeM6etqpUkhpaA9PKChcVg9zOfbSTs+Xz3I+Ay/Ps=;
        b=hm4qSAOWSOjXdyNh1za/Hp7f3lRywZKZEEGRnCQi8GjPgwCctvQ98gKL6pQpImUT1h
         /H9cJQzsiycBj2yw8Z38vvbSqifDh8U63G1QQYJiHJ1myUdbGTabbn7GEIfLGWdtRYby
         MfCffVgJpoINVBWD13UEhzxwjayMhFyXW+9xREnuSB/P8pkL56GzwDHgc81ZD8XYUhkY
         fGEs71H898JShGmoIZtppqombHvoLLZTTk9YkW6+JxQT/buuAetC6qe5kF4tPUD6OyuK
         cXkrUvAjF6zLpcQQgFs1nzeE+uYcDCTjTjRz84NoSxRkYteZsJ4rjm0VcOJ164fJHjrT
         Iy9A==
X-Gm-Message-State: AOJu0Yyy4Zen7wh5vFAxP/U8TnpNL7tH52aMGxK5aAoMRmijsqi+o6xo
	dLXgRxDRR67kD0P0yLD8I++EiY6wec1Uz3h6NBbUFY3ueZQpmwlBEuYLOAibYvELVwpDrJ7r3o4
	EUbMoWGL6JBYxTPbJfEweieuPqXK565gI1ykbAI3MzNFI63tkhnp/hJmJ05ICLyku6R7M3qyj/g
	qCVMkLkE5AVSZ4y+KErBFeNB69iIDfu6dm95BCoPaq5oPaQNXvxRGgkLay
X-Received: by 2002:a05:600c:4515:b0:427:d735:193d with SMTP id 5b1f17b1804b1-428b8a28ebcmr26870695e9.31.1722521469889;
        Thu, 01 Aug 2024 07:11:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmFAJ6V1URnPazDC46iegcXpclPO0A3mipVjRNdWPDBeWQrFolOaf41EEEThjfwvx4GMCGRA==
X-Received: by 2002:a05:600c:4515:b0:427:d735:193d with SMTP id 5b1f17b1804b1-428b8a28ebcmr26870305e9.31.1722521469206;
        Thu, 01 Aug 2024 07:11:09 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367f0e26sm19589068f8f.47.2024.08.01.07.11.08
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Aug 2024 07:11:08 -0700 (PDT)
Message-ID: <ae94bdb7-69d6-48dd-9195-91ba6511273a@redhat.com>
Date: Thu, 1 Aug 2024 16:11:08 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: Experience with new model Brother DCP-L2600D - no IPP-over-USB
 support?
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

do you have any experience using the mentioned model driverlessly via 
IPP-over-USB? A Colleague bought it based on "Buy Brother" 
recommendation from various people (winking to Till, since he now 
recommends Brother ;) ), but he found out it is not plug and play as the 
current printers.

The model looks to be from 2023, so I was surprised there are new SOHO 
models without any driverless support these days, even for recommended 
Brother...

Thank you in advance!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

