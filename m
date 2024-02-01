Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87A0159576
	for <printing-architecture@lists.linux.dev>; Thu,  1 Feb 2024 08:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706776277; cv=none; b=EPD67/8pmNa5yp6dc09AlPFrQyn7fRAqY/LFbqf5MQbiPEiV0Gj3eYMWjZI+KWkrjTFfF0Qch4KSsxTSQveraoXVikmpntUM7VCMeCo1S8lwxn16QLv1CT46FGVh6W33YVsNEkEcbV5FoFVI7OPUhI2Oj89soiNBiD39HbSk5LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706776277; c=relaxed/simple;
	bh=tZn6UfqLjr/U1/Syd9IyJ9Bec9eR4fyDz9Jga5j+BaM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a5TAobSvIWyMPTugHTzV29N4QLzMkxRZu8iQCLVy2qLVzvDfxVRfD/iEwJtqbt+4pHT+sQ3Bu6ln5NTHOqyZZB6DKys+GoMh0RJLzJcWDcuBwlWZ/lliIQ+sRtzxEKlV5GUx26AwnqLmVlt10RNO+PfMZR619jTWSPv0FtxArok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lmod+tbs; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lmod+tbs"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40e9101b5f9so5560695e9.3
        for <printing-architecture@lists.linux.dev>; Thu, 01 Feb 2024 00:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706776274; x=1707381074; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iO9oZ77zPw7R5sb8I7hAyPBlUaolArlzvUiLhJCr7jY=;
        b=Lmod+tbspZbE4sxNJPrVwuhySThn9JkfhoTj7taAOVe4zbhuTDVZk09sRbF2SjUCKu
         HiljEQS2C/0v/1VIBGsh/tCpa4O8hNh6wFOBmsCbfj5YCfx8oIWu1Z3zOI3dkXy+Ua9r
         +VL5noWHZHDkRi07pr8pi77HTRgfn2jMtvgp5iq+eajytgubR9WPRpj/0q7bU48jSo/H
         Yocv55h4xX/bogmss9+L148RZ03Dnukh1AH2xx0KYwgyrrANOyN4yvdx+NzKD8BJSvlq
         ul+VZ150qL/TBOYIOWMDD7850ODnSbDjEvEjYYRmnDtrwn2nzPAJ615S5sxCRXHaHXUD
         ST8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706776274; x=1707381074;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iO9oZ77zPw7R5sb8I7hAyPBlUaolArlzvUiLhJCr7jY=;
        b=Y/OqcpfoIv5cMV4MxL2AOuMRgnY8XO7RMjifpSeGjhcLWL2GpxV2LYz+k89aodK/U0
         3cRTMVtKpOeExIQp6MXKIXV9v/KFjOqI9lAqvCrypM+tp7dXQFFn2FvrW1Q3MkaTmUth
         4b7fYfwrqC8t9b5Tf/URui8EEuyiHteDjASXlAk9xz6dsINi2g6hWnkGIMXy4WV7pNtj
         z3Jy+uEjjIHsLrp4MIE9iuixDzJlikb13QGG3LAEMHe/hhwrbUTzexZ4T9Bajy8S2Qgu
         OyrIPpr2y1Ew13IqTOkZWdAr2bZXXbjqHgpJxz51TAwbBu2FxEe6HfSP225SAH5rcLGf
         TkYw==
X-Gm-Message-State: AOJu0YyRQLbpd1XlSEGccBuTZIVqxj4U5JRKkkf28NwlCxqSucm5lNtU
	9wvBE7MN72tWDqrchd+xPMhgR+1FVpwqL1qskEKo48xJuiNY2YrX
X-Google-Smtp-Source: AGHT+IF2LD2vFSsGQB81C2IVAqu6pAb2jNdjeSAU2iVzdlRYQebrM+IKMZJ3ubEVtJe+9lU0BaKg6g==
X-Received: by 2002:a05:600c:4749:b0:40e:f67d:d5f9 with SMTP id w9-20020a05600c474900b0040ef67dd5f9mr3156705wmo.4.1706776273792;
        Thu, 01 Feb 2024 00:31:13 -0800 (PST)
Received: from [192.168.68.106] (178-191-157-184.hdsl.highway.telekom.at. [178.191.157.184])
        by smtp.gmail.com with ESMTPSA id g10-20020a05600c4c8a00b0040ef702a338sm3617834wmp.25.2024.02.01.00.31.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 00:31:13 -0800 (PST)
Message-ID: <08ca88ac-7f8a-40bd-ac1b-a622bc1da667@gmail.com>
Date: Thu, 1 Feb 2024 09:31:12 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: FOSDEM 2024 Slides for my OpenPrinting talk
Content-Language: en-US
To: Ira McDonald <blueroofmusic@gmail.com>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>
References: <c8368587-e4b1-4c63-aa9c-f16bf553ba6b@gmail.com>
 <CAN40gSu8fPyJWrF_nH0sP5qBLOfQnedU4FTGrKOdJoZ3Jd-_PQ@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAN40gSu8fPyJWrF_nH0sP5qBLOfQnedU4FTGrKOdJoZ3Jd-_PQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Ira,

thank you very much.

    Till

On 01/02/2024 01:36, Ira McDonald wrote:
> Hi Till,
> 
> I just proofed this slide deck - it looks good to me.
> 
> Cheers,
> - Ira
