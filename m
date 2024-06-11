Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2811EF01
	for <printing-architecture@lists.linux.dev>; Tue, 11 Jun 2024 14:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718115939; cv=none; b=OTPQ7n4Rtna8sWzWpdLg0YIK7QJuNtpn3lVU5JO5k7EBvpqQPnuGcVijd7r+EHMpfveDF5ajm8a3sIgMkLPU8sKQEwZicg+2zDf1NRUiJHO2a9hW1q6WnWyNYpBvCUY4G+ffHKE4jPMzh7LR8d0Js5D/Pkt4T7fYGZCwJ4LIXsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718115939; c=relaxed/simple;
	bh=JyHT9GfdZD9ysbugj8k73Z5Vb4FMAM6IvLwj4jqph4g=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=VrQcP84qlKvr40gIHg1V71FHUzlYwY9wtLIGsbzH9S1Llek0dJtx5YXBllQXuiqs9lVFB3rqBtONYjLb5o6iQAAiPF+X/R3z2RYkcYuBrp8XihXc9dhoFWbcvhr+doAjq51k03BSOTeVKhEbTOwmdm0Dbj3AJOYPmLC1uSOYCDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ISQyXlna; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ISQyXlna"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718115936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2bG58HwpHQ4Ak8Vj3KVLyyQmU8M0+m439sOJoHjYJjU=;
	b=ISQyXlna4eIv7CgEfM/43cEnqu1vRTKkxOJDEkg/bqP+YfBm/eaHasFzg8OU3m5cAyHx0t
	EzZRFjj3Uu2Nz4ooLBQofrtqg6ItokNIN5tPyQvZfg4flhkVRxs/UDhnJhHPXME7SaSkcW
	yEVLVsaS/HzxhWdjIgozKKhEAuYQ904=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-172-yrprKAJmPuuGzYc7sT-f-w-1; Tue, 11 Jun 2024 10:25:34 -0400
X-MC-Unique: yrprKAJmPuuGzYc7sT-f-w-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-357766bb14fso3729502f8f.2
        for <printing-architecture@lists.linux.dev>; Tue, 11 Jun 2024 07:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718115933; x=1718720733;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2bG58HwpHQ4Ak8Vj3KVLyyQmU8M0+m439sOJoHjYJjU=;
        b=RC7WLRbwIzWTSqntUaAUM4WYcORh1zdUXkpV05RY/yleLa3NNlfGhKMIegSt3kS38P
         f+o4kMqjEmTCcFu+HnH6eYrgUykxz1LM3tzqsLugLOU3YcILPFjNLk1jsbF0ByqZjSX2
         2LPAcvsuqHSbwwkIlpB8yxtUiSZ4jLXAxoGBLbNfg20mnhcQ2mcPhWEW/LRlM1wrgI0F
         clNAtDyfc1tTaqso62fIuVa03ZhAOFnCa5LFnWRulRGIvd4cJEIblG17o5IO9+jOXxpD
         pCPDLN0gCoooNlUGWY7zBHqqdjgox5RuWkOaf+z8mZqVADstETDmsm0iG4TkxKY6/y8F
         N29w==
X-Gm-Message-State: AOJu0YxrjdYr6HoKoL2BCcQlZo1gV1YmHDzQ+eCK3WZkx4R9A6J/Yu54
	UtQYSs/4jo3oA2TMoTCeFZRkTKztyPBKspf8+MB+2mwHUsZqnH2WItp5WSgWGwe5+7XmowV0AOQ
	1a9QAOBu+j3nTOcWBMeVpuQA/gLV8oLmX/0vkP81LJ4wck6zGI0NybCIPxFDR4cf4OZh/n1A3LG
	iOyxZYRHLGFhynzpAeXkcWhHWKBpacE0qlrY1AaZqOZbroMWaxcklBZ9v2
X-Received: by 2002:adf:e507:0:b0:35f:1b02:6467 with SMTP id ffacd0b85a97d-35f1b02650fmr5870890f8f.71.1718115933033;
        Tue, 11 Jun 2024 07:25:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFufFCioMhhR8wO9KNllUi9epEBLcG/9Qs54cgjGUbq8lAqwMLqULBWtCZvtzWAOFwadHHTMQ==
X-Received: by 2002:adf:e507:0:b0:35f:1b02:6467 with SMTP id ffacd0b85a97d-35f1b02650fmr5870873f8f.71.1718115932582;
        Tue, 11 Jun 2024 07:25:32 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f1d3d7b11sm7766989f8f.28.2024.06.11.07.25.32
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jun 2024 07:25:32 -0700 (PDT)
Message-ID: <fcea1b59-ba26-4ebb-9c9c-ab5e5ab75bca@redhat.com>
Date: Tue, 11 Jun 2024 16:25:31 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.9 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

CUPS 2.4.9 brings security fix for CVE-2024-35235 and several bug fixes 
regarding CUPS Web User Interface, PPD generation and HTTP protocol 
implementation.

Detailed list of changes is available in CHANGES.md.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

