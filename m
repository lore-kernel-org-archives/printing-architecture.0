Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6765D1922F9
	for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 14:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727707366; cv=none; b=gkKq9U54NvxSyfxdtwfgBDXV8y4m4WepOXWL3BCFZnX4TCTpBUMCel26gcIOzqHwi9Sq974iHoMDVoWg3oA52dB6eRXJ6sn+cSPgUCoPzFVGEv/rZom0EDD/HTCXKWzXHYb8D8Q7NPogcEbkcyeOjojSS54e9gqCHb2B6GQu0DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727707366; c=relaxed/simple;
	bh=W9+GnZaUAoYi0a4ZZmwhZ4oF1lU2lCS7E4xvkoKwgW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=BdV6e4hQEPfh+3Uzd4xKI/uZTEOjvhykAX68ELKqACbLBUfBg5jnr7+SFssat56xpFY6gkfTTCVq/HJ7mxMOWwwfX05iUcE1VwE+QT3R8E1idezH+qYoAUc2C16vOiJvKBXzXjOZGRCdmDlP8WHVOqeaqYrKpoT+xLNXS7ZxyXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NV6fXeLY; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NV6fXeLY"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42cbb08a1a5so41227245e9.3
        for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 07:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727707363; x=1728312163; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=i2XBz6tFqGsSz5YTQqg2m3Z6YYSUe6HKP3Tb6vwYpb8=;
        b=NV6fXeLYvGOWA4qrhx4DPDazwMXnqjuO8Bpd0WcxtbzEqHDjNa7eFLd809S+CdaV1t
         /Bzwuf+I7Z4ER/Ux1dzde/X38v11a2vAvtSeB2ntxy9Cy9pjSO0SUFuemdY7sknfMktk
         LzH0cjcud2ji2a2eH4FDUkyWOFnS/CBk8SXZNPEHaRyhFtqWLs9Iaava22Ir3GHLlnWi
         fBO0Q1Q2/tdDWUj95eSB6vyRJhTzQt88ve+bpMN+Z9kw36z1kSeSzW7HKszx1SbIuU7J
         j1lbDe8D1/BgioMCjP+EFzN7/OjHQfs3WUYX8xbNfa4OgLCr4tGCuh0gJtxnF0jKlOdR
         +U6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727707363; x=1728312163;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i2XBz6tFqGsSz5YTQqg2m3Z6YYSUe6HKP3Tb6vwYpb8=;
        b=gVOklDvuOx4bMrMnyLF3AIx8AfR9GONpl7OxzICMn5+NsJK7YtnkJ7aTrqp4z3h7E4
         eZKQGLuAZOwSsSyZUy9l3njK2SkyGy5Qq0n39y9n+ILrQa0iljl/al/05t1W3g+h3m3H
         /Nol52cuW1PAGpLSsGZZRrOtKsS1wNiC3IaFRUZbMHh5CQKtAHxgCUvZFgoP73LPY+Tn
         xR4k5IPmsexeJzeXTIiOSULDjL8jfhEl3d/TmOh0chjIM/TWN5ECKxvYV+qng5y3Gr78
         3ceDAAm2Uaq2RapHYTVVhOw8pZ63iuLp0n6W1+MD+a8gl8AP/rUrgSMOkd7F51mGQLgK
         tmSQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/+uTTAVMnC5c9mOOI1OImLhRL9HFeQbrXdolqMsIKoIVq4NoJ3twNPYqz1KClF7oD1Mar/vAzSDzc4JTqLB88QbmuK2c=@lists.linux.dev
X-Gm-Message-State: AOJu0Ywh5FDT7Qyvxw1F2fUx6eTVkrUl6CuaJhJPvwe/CbmCSvukWhdi
	ULfFKdftGaW2P+XYP0u0VekPw434rfQtGE1G3D8cWkfQAn9tF/EL
X-Google-Smtp-Source: AGHT+IG3A9oRgNYki/hESK7sm0qp+qVfRUr+C8ZP0bTkLeyrkLSesj4rxdd8xb8zLbnji03V2dHClw==
X-Received: by 2002:a05:600c:1d20:b0:426:61e8:fb3b with SMTP id 5b1f17b1804b1-42f58497f3emr82093395e9.27.1727707362241;
        Mon, 30 Sep 2024 07:42:42 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e96a52915sm152650565e9.39.2024.09.30.07.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 07:42:41 -0700 (PDT)
Message-ID: <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
Date: Mon, 30 Sep 2024 16:42:40 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: CUPS 2.4.11 is released!
To: Zdenek Dohnal <zdohnal@redhat.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>
References: <5878fe6b-a017-4e10-8a39-6e12c24331f7@redhat.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <5878fe6b-a017-4e10-8a39-6e12c24331f7@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Zdenek,

thanks for the quick release, but the CHANGES.md does not mention the 
CVE-related fixes contained in it.

    Till

On 9/30/24 14:25, Zdenek Dohnal wrote:
> Hi all,
> 
> CUPS 2.4.11 brings several bug fixes regarding IPP response validation, 
> processing PPD values, Web UI support (checkbox support, modifying printers) and 
> others fixes.
> 
> Detailed list of changes is available in CHANGES.md
> 
> Enjoy!
> 

