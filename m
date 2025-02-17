Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EC722083
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 14:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739801151; cv=none; b=a4DhCPNtNiwMVKKsSY4V+ooK2iYDsXdLhF3rEwHrIUVQ74PZMZk7w1M9uCOpVhgnLoZYNpaSXz/x0y4UC8OOOhs0ahWLNJil9axUktpwN6BdSqdvjc73FjOgZ9h78TKvaRNzxviNKNp/wD06RKUdk7GfFp82j0d0eMQWsTAi9dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739801151; c=relaxed/simple;
	bh=tVWmMTJtZ0rCfS9sBOrrLPOJav13v31U3HOxg0B9+Xw=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=SiBiMgx7nOL9/PQUgGwSpnomfQNhruIrQ3C+4sW/mWtgQncleXhhVBuLBj6c0JGjbZpDFO3ijRfQYpMODov4b5EmWfmVOR5CbQBl0KcIoO1odEyGdD/Bi+psCZyGgnv32aNHSmKRGmNpA3xYNB/gvNYYpAhTxv0QoPgpUWrHDmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IXujcqj0; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IXujcqj0"
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-abbac134a19so75153366b.0
        for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 06:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739801147; x=1740405947; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ai8OfHn5y376l2myn5S9uWHAS5L4VXZLNCh+fBDjx9g=;
        b=IXujcqj0ra2mtPmfrhTIcOx8emW8uWqOa2KYUr0VgrZrRDzFoUre2dpcwNiuYL8wso
         BpelibbAIV4EkiTAbNIEB0zOs9eiJ+uQFeWIACf9UuZs8cXmj6iOC4AK6C9QpwHm0Kre
         sR9JH18ex0ccRyyVbh2Gaalga5AtCllAEckAIk905fbHtpdXc3yrNFtZvniQkarkyxfv
         /r9Ji82w+m24b7dQGKpAfZArxK8/4Vw6MLaFcSehK0cY0iwqODwd2DMcQeYcydykzz9J
         FAOJHDRyPRJeQYnhiC9IIxKrtnPt7uNmATeKLOCkEwFhZzpFmSYEkdTe/bixTOyh1jH2
         wj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739801147; x=1740405947;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ai8OfHn5y376l2myn5S9uWHAS5L4VXZLNCh+fBDjx9g=;
        b=UZtnFYKWfgdktARvx16TZg5A7duDMbLQoFQnN+hEkMVlHt5IEDBoCILJQ1ENPWeUm6
         fylbAxK/xy4MPQ4npXxQltc08UqCFbtcBCShfsPlp/E4ZhdhLFHHkYpK3N+MBp07DOt3
         HjUVU69/rFDyEYqAuDtDhv0GvnvWKZQV0nCbttF+jfoam7BAdge0qIX1ZZI9Jej6sPwl
         eiAxsZTxfZZj2Kg9VJto4j0FjNA0E+ZOGFdv0Oh/OH5Z6OLaOHkI7lnrSE8sCN1tR/Cu
         oFhDGqfuaiIEC2H+BEBVktgDYxhWE9Riov2ldwmR0ZzSxo7aNqWqkClwK3ENB4AAGisU
         AESQ==
X-Gm-Message-State: AOJu0YwBq10QDbSfUPHO8z8kbjZxJ8v60WTTAzUZTz9YrYo7PPjbMHJI
	X03907YZJvew2SmE2aC1+uakv61xkPQkESCtQTOp6GNJuS3w/VF4E5hOaA==
X-Gm-Gg: ASbGncssN5wTsasKD2y0D+7GX5oMtIWVRnJBTgCASlHNhdTH4qw7A5Y1gDfg37l7YRi
	44iMMCXTLfEV71nJ6z4MuQAXXaBf5gepoaFt3OBEKaXgQ14X0DxhbO76+CpqOz593VU0bCjzOvV
	bGaU/ze2rkSHWbBQBxTQ13KNEJXLhPUa8hvlU2mHpsHpMRDeRufk9GEDdDa+ghcBvrOPiptMkoH
	fxz6G2JcVP2vVdpsT1iw9g76qL1WVR/E3mNPtfteyOtjQ2xadROMsTyagILiB46t2+BSD67iUyz
	glMdCWoHQBUwUjYH65gUhE5SH2aUlXi3p6hDUObilBmLBH/5m1koUx0nWuQ7MeySvA==
X-Google-Smtp-Source: AGHT+IGz7gYPqoVBkavW6bFHHmgMUWxOIMTEkeaM9k5++Tw73OP7LqfyQdKQU4ho9fS44+pXdY5aOw==
X-Received: by 2002:a17:907:1ca1:b0:ab7:63fa:e49c with SMTP id a640c23a62f3a-abb711600a7mr1192033466b.36.1739801146744;
        Mon, 17 Feb 2025 06:05:46 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba532322b9sm890572066b.37.2025.02.17.06.05.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 06:05:45 -0800 (PST)
Message-ID: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
Date: Mon, 17 Feb 2025 15:05:45 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Free-/Open-Source-licensed JPG, JPG-XL, PNG, TIFF, PDF, PostScript
 files for print filter and OCR CI testing
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

recently, we added several testing facilities to OpenPrinting, but some of them, 
especially those to test software to handle data which gets printed or which got 
scanned, need sample files which can be shipped as a part of the source packages 
of the component which includes its tests.

For this we need files of the formats JPG, JPG-XL, PNG, TIFF, PDF, PostScript, 
and perhaps even Apple/PWG/CUPS Raster which are published under free licenses 
so that we can include them. Ideally the files also come with different 
properties, like grayscale, color, 8-, 16-bit, different resolutions, page 
sizes, number of pages, ...

We appreciate a lot if somebody could suggest us suitable sources.

Note that the PWG source

https://ftp.pwg.org/pub/pwg/ipp/examples/

is not suitable, unfortunately, as there is no license. The README files only 
mention the copyright holder but no license for them (my suggestionis that PWG 
publishes sample files under free license).

Thanks in advance for any suggestion.

    Till

