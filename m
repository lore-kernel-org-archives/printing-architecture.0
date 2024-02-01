Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07F6374
	for <printing-architecture@lists.linux.dev>; Thu,  1 Feb 2024 00:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706747225; cv=none; b=R7lOzuzTdIinA2Lr+Dqwtp0VCIfJuJXO0DSwylILrjymlFCGrHhrugrAPybHspIFwf5pP5bXUST2v/ZmXMZFUnCY35+JjHwAQUdhFbrprULP6VPifUto6yHfNo9DUUS4Ht2fDnGr1iKbrypEhbHmwWmQwU8YVvoYH+mqMWmJk88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706747225; c=relaxed/simple;
	bh=IEDpUwetL/CrUZCMvAuEb0ReFbPobDTQ+6S8hVAktVM=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=EG/iiytVfNoCW83hznaDocHkGZuMmHH6KRtAgME16E7v4FjKfsJNPibbW7XORZkf5Pr3ABjAYDw20kshNrSUbI8x2KT88OPJwjPgefAkxrS5zt9nswPFX4Kc9jgvP4kcl0IzyqoUAEM8Di87SMAhqkhkBiABeECmHxCygnepXOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mRNJh3fS; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mRNJh3fS"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40ef6da20feso1621425e9.0
        for <printing-architecture@lists.linux.dev>; Wed, 31 Jan 2024 16:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706747221; x=1707352021; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIifKIvLriSgIgj499rEMbBAE0dr4G/5Ohqj8/vz3jo=;
        b=mRNJh3fSWck4z3gzGDYnP2VQVC6t411SrJnViqq6J/qhmPTcbWZVhuY9OELT1VSSP2
         lVr/FLerGVWiPmVcvw72404yRnPz0B7L20jj3wVOLUU3nJ1mF6r1t8xVqLFcJuJRx5Ha
         YApqeBk2veHRuVeB8eczFZMdIwVZxyb+VX6IDWdgluMfvmah1PchGK4yNi262qKg1vPo
         566Q8Daur46i3tmyxwP5mhaBMQACXDjcCcMjKiuxx3YqNkRi6chG1odki+IyiuP4ncgU
         E+L42ShCQycpL1haY0bFzN0qJ4MAlgPhQymxmchoYg49WZ0t5jMGIeb+JPK2gKFdJjZ/
         dVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706747221; x=1707352021;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zIifKIvLriSgIgj499rEMbBAE0dr4G/5Ohqj8/vz3jo=;
        b=MsYzvAdrfpLzWFE/LXDooNfNmyYEICIYOovL4nZTPUyK+Jyux2OSrDF4BeZkfCRPzS
         aLbCGexE2/ikPH0feN39mbEtNGqNcrmZYqWbkFrKfvJso0wGhDuoVQFcRGPS3vhYlUz6
         bsIoeDL79hhcpT8Z0iY9kWKCP/y0G1mXOUv2im1+N6Ju9S6LwehckxRW62SKLzyoarXb
         B5Bg+xDE2yAGEi2iOf8BZNJwCymnMv/7VH78Horxy4QHtydL8FXI4THeRli3ue+Ocvor
         uP7QMOjz9vbKuFv/G2v8eg1S91lceZnhoZwB14BG07ebFunonsQQLdjXXxreS6oTg2fi
         pFWw==
X-Gm-Message-State: AOJu0YzPRbNtfEAHc7URRvcqUHgqAP1DssTP/lkcKyxUlnhBtfYjxLs+
	OIg4yiL24kuD0qyz9RNv4SiDJQzaJy6hlwEiPDU5GK2prYz0RcSgfiw6B9yZ
X-Google-Smtp-Source: AGHT+IFonZQOnjtDUZg8zpKVx2Up2zW8QMYv7Eoxm3Ji6f+662foRwdXOpYMC52i4ZueSf14UArwug==
X-Received: by 2002:a05:600c:19ce:b0:40e:f14c:e1a6 with SMTP id u14-20020a05600c19ce00b0040ef14ce1a6mr5406696wmq.6.1706747220573;
        Wed, 31 Jan 2024 16:27:00 -0800 (PST)
Received: from [192.168.68.106] (178-191-157-184.hdsl.highway.telekom.at. [178.191.157.184])
        by smtp.gmail.com with ESMTPSA id q13-20020a05600000cd00b0033b0eb97a61sm1078614wrx.57.2024.01.31.16.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 16:27:00 -0800 (PST)
Message-ID: <c8368587-e4b1-4c63-aa9c-f16bf553ba6b@gmail.com>
Date: Thu, 1 Feb 2024 01:26:59 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: FOSDEM 2024 Slides for my OpenPrinting talk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

here are the slides for my talk on the FOSDEM:

https://docs.google.com/presentation/d/1m8ng5PJKcnvxvja3WHckfgXOdGdG1UD60pVARbJCQE0/edit?usp=sharing

If you have suggestions or corrections, please feel free to add comments 
to this Google document.

    Till
