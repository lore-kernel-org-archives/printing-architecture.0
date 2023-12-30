Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BDDD2FF
	for <printing-architecture@lists.linux.dev>; Sat, 30 Dec 2023 23:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ls73PFGf"
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6d9f94b9186so2715438b3a.0
        for <printing-architecture@lists.linux.dev>; Sat, 30 Dec 2023 15:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703977749; x=1704582549; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A5pGUPpOB/bKko/eZa1uZj9O2qswLpWp3smefvilcl0=;
        b=Ls73PFGfh/tonNNnKvhULCvDi6hudKBevpsyXYv0OnnHwq6JuD+ZJvx0lRFUYYu9b9
         YXUV5E5B1LgnkypLnEt6iBwSRHcMVZgpU057rmpFG0sU9qrwmmU371GYPtBLrxEXpJaw
         uxjLO7XOCrx7TgOoOcjQmUaXF4Y8Kp/DFRZQ6Lmf4i/sTmFUHKZdNUgaiTvxwyj3JND3
         x5/BVTvmGPUEsv9//bPVI7gLcAHDV08VnVCUFvpSwhI4qD9KcTaryfpmrROdDkBFzm+Q
         J+TlnZ3UqnO33Vv5SuvMlAqpqPXXR3a/8VA6sosV/JJ5eye1Iw2kWLDUXcmhd1Nyxh34
         zr1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703977749; x=1704582549;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A5pGUPpOB/bKko/eZa1uZj9O2qswLpWp3smefvilcl0=;
        b=TYnzywYUs/sH1aOZqYVvOXpBVtyQUrFJyUDXezZ5b/W1K4qk7L1u6HgMI0scJVkmiG
         naXcA+jg8FT6ujSyas0FcrVleISXWgkWyjsdFn711Q2MnBVhjlZI5pL/UC0pGi+LraLy
         E1ZstAmzhfJAXTD54DK6InbcK5BIm3EU3eypdQ0fJw4z/D2UXpEgQygD9trJuQ5Pxv26
         E1EtM3/DRdGUmKMQ7Oh6X1Ww/r5+i6FhI2cCkkdgvJU1Wju/uJgBRVWHONF/8yLUGK+A
         iv2R8AAlHXOB+YDr4GiK+rcoHyXIt/2nXk+lR9WyZ+hqJFobpxSXW6MsGH0gE5+Ogm18
         eVgg==
X-Gm-Message-State: AOJu0YwB3/U1rmYru2RB6spmryaYmCdmaKNrEIVusH0wiUo8I7CsjQ7E
	9MRYWHnk2LNZWqdfqzT8Mi6Tg81fRUU=
X-Google-Smtp-Source: AGHT+IGlPPyaIPDkqjquM2Y7YgtFsyCDY7LCTeFy802MDoa3jSMwJEhqXehN6I3D2Xy+r4pIubh9Rw==
X-Received: by 2002:a05:6a00:17a4:b0:6d9:ba6f:54ac with SMTP id s36-20020a056a0017a400b006d9ba6f54acmr12543329pfg.54.1703977749354;
        Sat, 30 Dec 2023 15:09:09 -0800 (PST)
Received: from ?IPV6:2804:1b3:9402:c81c:6cdc:325d:74d2:bc82? ([2804:1b3:9402:c81c:6cdc:325d:74d2:bc82])
        by smtp.gmail.com with ESMTPSA id du6-20020a056a002b4600b006d9b8572e77sm11261245pfb.120.2023.12.30.15.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Dec 2023 15:09:08 -0800 (PST)
Message-ID: <b6af3b62-9d5e-40ff-947b-6cfe7e662d8a@gmail.com>
Date: Sat, 30 Dec 2023 20:09:05 -0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>
Cc: Michael Sweet <msweet@msweet.org>, Akarshan Kapoor
 <akarshankap@gmail.com>, Kate Stewart <kstewart@linuxfoundation.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: libcups3 with built-in copy of PDFio?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Akarshan Kapoor has built libcups3 for testing some fixes he has done on 
libcupsfilters and libppd.

Here he has discovered that the current GIT repo of libcups3 
(https://github.com/OpenPrinting/libcups) contains a link into the repo 
of PDFio, and to build libcups3 one has to clone the libcups repo and to 
clone the PDFio reo, too and link it into the libcups repo at the 
appropriate place in order to build libcups.

Mike, does this mean that

- PDFio will get completely built into libcups3 instead of libcups3
   using it as external library, linking to libpdfio for example?

- libcups3 has PDF handling/manipulation functionality as an integral
   part?

- libcups3 is part of OpenPrinting and depends on PDFio which is part of
   your personal repository.

So now I want to ask, should PDFio now get promoted to OpenPrinting? And 
should we have a libpdfio which libcups3 should use?

And to promote repos from Mike's personal GitHub to OpenPrinting, should 
OpenPrinting perhaps be somehow made an association (part of the Linux 
Foundation) which can receive funding (from members and one-time donators)?

    Till
