Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C12913B284
	for <printing-architecture@lists.linux.dev>; Thu, 11 Sep 2025 13:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757597543; cv=none; b=rCrOJSMz3WRPLdugfvtBCvfDcWY7gnESufAfaId3sPwKX891czmeCLhF88Hr7yauT82Z9ZbmMnYFBta+NQbITwaxXDFgZIEMPigQzSHk6qOq9YqTntLiYX3biWlCnFa0qdwXnHm/zAQlRtg0eEhl1vDcNrZW7v8OqBjOu20NTgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757597543; c=relaxed/simple;
	bh=1dQy1zvDdLLVVT0nT426PyrQfgauzUQUYwJ3eEstjnw=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=APieS0TZ9YmiAh30ngKPvXJBsHEPDNah6Xsvji36AhPrLjYqmrh0XguQytddXimpr0Cbb2OS/l49AXveigh68ieZVBt/IVOsrUenFhO8YYfoD52d7mz2pz9DfTxBQANKxwmRL8IRuhUhjovEj8X1nnaQ7vhV/nr0J6fxZZnQ0OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=daR1blNb; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="daR1blNb"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757597540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mj0UolF5/gsImpRddFa9lT2+mIyjz2KKm+wN1NdGgCU=;
	b=daR1blNbqnUzIKibd/8SARTkFPcoHhGHZDDiXOzHvBcBm6yJ0Z9VKPf1tHuuyR55TjCDWY
	JnREyOCzv1FbZZPJCs6J/tqvV+pVeV8PWkrQELbsMefde/VrAvSLhsrj/0ciDqQcAd0hKi
	blYijjGAah1VVkA8Ho0JzIwn/5nft6w=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-67-tghbtvFpOi2jrOXTb54auQ-1; Thu, 11 Sep 2025 09:32:18 -0400
X-MC-Unique: tghbtvFpOi2jrOXTb54auQ-1
X-Mimecast-MFC-AGG-ID: tghbtvFpOi2jrOXTb54auQ_1757597538
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-45cb6d8f42bso8052565e9.2
        for <printing-architecture@lists.linux.dev>; Thu, 11 Sep 2025 06:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757597536; x=1758202336;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mj0UolF5/gsImpRddFa9lT2+mIyjz2KKm+wN1NdGgCU=;
        b=IKy4iC1zvFrqrIN9NIJUjgOHEnX8guoqEfIlQRgjg1PLU1XztGISXYOVQuomEJRwDh
         tfobva42yQ3Q7opC+o2/IRbiFXY4QATN4vdxG5alMP45hGPSZCnAyCq0ivw8qam66xmj
         Wz/GyaSYfjeAKClXwK+j3hygc/VRB58m8uMArCk7Aw1SfB+5iz0tmvRm7Ec30grVdmJE
         XPjuiwy9JAeTffs/U3QOk46NRklZ3ogl8xyPWNCxgkiPnlc38199jXRXXVklUlGeSpiy
         j56Bw+VeS15lkY406fnPRjkIu6yq93EzizgyIh5dUOMgUttw+DeM6Ei6BSzJ2HuQLJa7
         zYIQ==
X-Gm-Message-State: AOJu0YyHs0cwDP7ey416Jq6ttd5bkb9R6WFB8GD3FkNttGKqBVaDOuF9
	tckBDr6+BN0cNm0XVsUkFVVEtra1kfcKmPrTWMY8tBOGUkeLDtnQo3pKvNyOc62o4/m8wjLbom2
	CLw8jCyM303w7pNV2fRH1ad71tfmpYprW2z3glLeWj/nGuyo+NkmBlUjPo3QtIEOoe1YFsX1KBj
	xSBVoXf/pXRjp0VWgoQKvjQ3Shz0afHfvg7xEbP9cVaaHz3C4PEFQHw1ZVGLJY
X-Gm-Gg: ASbGncvRbwGrDOTOkMbd+NxAChbWZWnyEoDJAScTMFpkgpcbSsvqY3oDM8CfEV0bz+Y
	ojP/ALDuUAj1PJSd8fdDDTsHHEnlZPOcafHQqbmbaH2bMOfZnx6nGLjmjnKUdbu3Oc+Ky1VCluD
	VQjpRpHh+mGksCv+y+mqKGeNsekg7PvjNUfofn14c4YYAw5qGzsfxLWQbeWD/uUms/TrbW6e2Cc
	tg7NSLUYCUIudvWXhDxudOXgwaPgVfIs2UJYCJPtaQ4T3YfaYf3kvwqF35FDzcS0efRnfKQQ06B
	pBboOaUqA3XCplmaijGTbTvoMp1sranMfFFMyg==
X-Received: by 2002:a05:6000:2584:b0:3e7:621f:3c with SMTP id ffacd0b85a97d-3e7621f05e8mr1245382f8f.2.1757597536511;
        Thu, 11 Sep 2025 06:32:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IER32RpV6kof7Kx3fMF+6d/2JnRdXJ+VXoykby9whgnFRX+qrt1mhr8mYDEh9oJxGhkxhiK+A==
X-Received: by 2002:a05:6000:2584:b0:3e7:621f:3c with SMTP id ffacd0b85a97d-3e7621f05e8mr1245360f8f.2.1757597536012;
        Thu, 11 Sep 2025 06:32:16 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760775b13sm2586675f8f.10.2025.09.11.06.32.15
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 06:32:15 -0700 (PDT)
Message-ID: <16c85145-d3b7-4f7d-9cdc-19af9cb097ce@redhat.com>
Date: Thu, 11 Sep 2025 15:32:15 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.13 is released, containing two security fixes
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hx1VFClra6KeKuGen-hgYKfbWa5x2-aVtayfRZBaXKQ_1757597538
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

The release 2.4.13 brings two CVE fixes - fix for important 
CVE-2025-58060 and fix for moderate CVE-2025-58364, together with 
several bug fixes.

The release includes a new feature - new attribute for printer and job 
objects - |print-as-raster| - which allows enforce rasterization of the 
file for IPP Everywhere/AirPrint printers, which supports PDF and raster 
document formats. The feature is useful for working around internal PDF 
issues in the printer firmware, for example missing diacritic when 
printing a PDF.

The detailed list of changes is available in CHANGES.md.

Enjoy the release!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

