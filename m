Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2418C008
	for <printing-architecture@lists.linux.dev>; Sun,  9 Nov 2025 20:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762719800; cv=none; b=JSJcAWfoMwoSaRFlIAYq2H7SzNWa//OKJm3+DerIMuhhrXM9/l8aocaW6vOwpKNUJA/anh3n2OWvvi2zOhrMyqBLy3zgv4Ya4RW6D0rFB0xdUVCVO+InK9ZYvPT518dnkLOIxGpO2gQ9qVflu0jCqDXXdtO5g1w0cn+hnuLvnL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762719800; c=relaxed/simple;
	bh=wOvAuoiyLVw4KNlzC0Xfa2MIpzOW6sazXb2Hg3Q2qUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u+6wiY+b1R2MA7LnuhAtTa+J6fwUVCgkguqC//soJzyxDtN7T4PI/1FjGy3fxwiU+iOOOhGHm3Rzd9Cse1k5mYjPYcafDAiUzlsDGyH7G2hpwNpX5PtZIjStINwvanLjY49H1Llr1gtA7/LoyiAP1dLB0BU8mhK6lWV4DeNGntU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BpOeYQGo; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BpOeYQGo"
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6406f3dcc66so3995817a12.3
        for <printing-architecture@lists.linux.dev>; Sun, 09 Nov 2025 12:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762719797; x=1763324597; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=piM8JnUIOhLi8shtu6ukxdUvTydhEAzgNic6IccZkYo=;
        b=BpOeYQGoxfUnDfPbNCqTB38hUQVuCPFCyHne4fcyFdBLwv8C/lqoujUJefO8eE8dac
         ++jt14bitjWF49dDW0DU8t/Ygi4uJmGDbNnAUdlnz1l/VFptbm1X3FYWwfNsrnLBEdlP
         Rjauia0XGGumZgGyTHAPRiOhaqz5D1TRrf8DrL9lvEXxj5B9StFIm07BY0If837nWH0Z
         b2U31r3o0FWi+CKrTr3b3x1wj4k0OXuZkti51UP+LKUPou+FNBNerR4DhjDC5fBLDO4g
         ZRCfBtyggI0Dz+0z+nyzTbVep9xeBFXDrXinqnwzH0yF+XYDPI4zfzBHFJffZ4lhSgPY
         HAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762719797; x=1763324597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=piM8JnUIOhLi8shtu6ukxdUvTydhEAzgNic6IccZkYo=;
        b=dK5jnYsyHvlSiC/WP98vGD7D2QCnIh9JEmZV+WmeGd6FBnpoBNftjVaVQ3JZXHf01v
         MsSTAmtP+uHq5z5hu6NQWZYHzfr4NzfY770qYaS1NWXHeUHF9WcsntdiQYazK8IdekZJ
         JqxkMuC1tp0+y8bhgzRwJRpovmlIjhIZGaD/Wr2OGbMpkguLW8HHVRnUXiZYJMghqPv1
         DGb2H6Hvo+YjdGPUO10iyD5Mc4voh999K+nGvLQveNU3PPOGiwNoOm78uxdbTUaCYKYY
         ZjV7JRi/BGpXJsXzNse3u9wjbspUtxHm+qri0IIh2foHpavsD26fl26P+SEfOHFZby/x
         45NA==
X-Gm-Message-State: AOJu0YzzXCNariFcH+jU2j7cBlyoYkn3QLBRRp1uxVZZMv9V00/OUJC9
	LfOfMG7ONqlONGtb3t27UEt1eu+0EyLTj3PHc6tEA2Yn4TmDL02pEdCY
X-Gm-Gg: ASbGncvfGy9tHtoxyWTtTsseBJd6iIUHpy4HbIwJVuleHEzcVPylsKa1MHlLyOufhCi
	Q4ilH61nVgh5x0Nq1LU/+m+SPkssl5GcPxsTiS07muFPlo1lNi8y/w9gAEiLQQzv2e/FnAMmLXE
	3klK0X3dncuuC45nfxGavcGUvpIJGPeKV73s2eS0qhbJV4BVbeKR+NnJS/oFnT0YDZ5hzokljX8
	QE/CBwv+NuBXoOPBpFzoexrzS3jfxNwFPT1kQhyi7ZbWPTM9O74RwX3Ej2Km3EEb1hyLz7tEI3t
	TVi3NEwXym+v0EkClFTnxN23VjQqcrqvsCc5xSKwsCDcfQrdP2S/REQfgtjgXLHyBHnlxHS4DcS
	IfbowezkASSJy91l7oMDq6quPlO1+sBXm6+y2fjo92N5EBUtXRZy3qL4oMs918tPs5yMESBZpcW
	iYSA/8cgLMKNo39FNvlk4QBir2ohIL6VXVmJ+HIqfu6QsvzqBTmhF3vLREtBB6kWTu0cytykT2W
	CSUlw==
X-Google-Smtp-Source: AGHT+IGIgGX1538q5WBNNP+QuJkY0RBW1Fcx/39nEJrDgcuFQZ8tmtop0JChxOfFId0DOF8NsX0zWQ==
X-Received: by 2002:a05:6402:3588:b0:640:c8b7:f2bd with SMTP id 4fb4d7f45d1cf-6415e828ebamr4471865a12.29.1762719797378;
        Sun, 09 Nov 2025 12:23:17 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f86e9d7sm9671158a12.36.2025.11.09.12.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 12:23:16 -0800 (PST)
Message-ID: <39a23d27-ed05-4fca-836a-18a7a043b473@gmail.com>
Date: Sun, 9 Nov 2025 21:23:15 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: OpenPrinting/Open Printer booth at FOSDEM 2026, Jan 31 - Feb 1
To: =?UTF-8?Q?L=C3=A9onard_Hartmann?= <leonardhartmann@opentools.studio>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Nicolas Schurando <nicolas@sitronlabs.com>,
 Laurent Berthuel <laurent.berthuel@printerre.fr>
References: <3428b088-78e3-41d8-a35a-e57e2e59e7bb@gmail.com>
 <77c9a577-7159-4f29-9c2e-b16b7cdcee3a@gmail.com>
 <CAJzULcp_y4iWq+mV8mUg0BnP+XFoY6v+qrdU0Shj-4hiO832pw@mail.gmail.com>
 <66899ec5-bcba-40cc-91a6-4a492a8a8066@gmail.com>
 <CAJzULcomDPWTJKtyWv4Bu-tpquh8qEjK7WAyp-4j4Nz7AwxF3g@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAJzULcomDPWTJKtyWv4Bu-tpquh8qEjK7WAyp-4j4Nz7AwxF3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks, Leonard.

    Till

On 11/9/25 18:50, Léonard Hartmann wrote:
> Thanks Till for the abstract. It's well described.
> 
> Nothing to add for me personally.
> 
> Have a nice evening,
> 
> Léonard Hartmann - CTO
