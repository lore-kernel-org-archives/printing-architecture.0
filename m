Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AB018CC08
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 15:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734881300; cv=none; b=qqdx8EC6NBrsB7G1dzmxRWSDpfT2N2RH43O+q3ONJzr1ZNDcNfsyX40INa0R1CXZrx10fVFodBlP8WgSnpavCB3nOhOQ9SmzRBLTgj+HsPvBeqmE1qE0HR3xoz5423hWey0F1IJk18NqnkvWrQOluKrAzBBRsU43PkdxLMhE0O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734881300; c=relaxed/simple;
	bh=aHuwl9I3n/kzF1fbiHLqSz+GvoU8GO8DL+lO1RAR9ik=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X5jcCCJ3aDhY9DsvVKK/g3iaGVmJUiDr5AbY+gtXAYs1/s31izMZQ6Yd8IxZa2l15DVtvqn/JORo91bjF8BrRdXWlFkq4NbIvlvSxEdBZrAN4AVHh6NYgTD2Bztr2kGgeM+AyoSky66SPucjDK+YdnRQttzl+KlVfDOglWSXmjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+CuI6hk; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z+CuI6hk"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d0f6fa6f8bso5525602a12.0
        for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 07:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734881297; x=1735486097; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nQGvP70+46SxhagZzs2dN1jG6gIK1Moy2AQsr/t0vok=;
        b=Z+CuI6hkuFr01M97Oe8nE/b8nMoVMzlrDYPbkStT0P4xpi7Q7dxQG9HZZY5YfBWTtg
         5NH8ePKtOIICGjxD7rTLO27Mp7iFzBilFFMGZprbN0IlkvLRaYi+2mRBFQyz+1uA1BI1
         BTMug7pOWGTw62g/Z7LZcRTd0nHxcukfjOlD6QR9KBbDs7migPk+GQBbtJS7TM1nwu/n
         L3RV5D4oEKNg+E9VXEf4mFzsyateXjjmD7kTycqvZXIVsqy6yWmgurCmf0NKskTC+MN/
         mmPmTnZd8b0fbDtVmBwcd4OjanIg1q+eXKKpEhcU3XLeNUm7Xd5QDOud9sDl3+WadXGB
         Q/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734881297; x=1735486097;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nQGvP70+46SxhagZzs2dN1jG6gIK1Moy2AQsr/t0vok=;
        b=UQTrAOWaPm0mk9lTidzAxqkQSb8GKYO7jCPxVbyzPFx10DSald2YiLjoIozU4MoydA
         4t47t7gd8ltiINsMlW3Y4GVamKh6Ffs+gFrhhUBb7zKKo/6zn7K9ILTymTAOmP+WGOIt
         jm0D/glpMYCLXJg2yuxtRQ/n82XhBpkcb5XkjOp5AKjRyUoB6G6+z3nZxKTxCUhskUjx
         zp8/oHnVvS9h3Gu/ainthR/8woYG6YPSh77S1mIZCHV3GVts2CeqfexGucoX9s2wgm0C
         XDL1NrG0Tmfoy+cYa/JcxEX7+fJg2SC5YEDW42ZekhVMtdskeVmog/zMVjE95JOFPxKu
         sl6g==
X-Forwarded-Encrypted: i=1; AJvYcCUwI6QfQs7ypIRkEuGdIZ+oWpjYeyecBFKILJN4bxZ4aX3k4AkCap8kzUeoFllWaM+uUtXrktZjav1xMxpDgPjq20U+xMA=@lists.linux.dev
X-Gm-Message-State: AOJu0Yz26Acd8VB0dYIYVB1Rb4s9V8l5vw2Q5kI2srt5L/jw0Dfg0OtW
	C4ygIwORzyRqMEwiJvws13gf+EiHSj60RzJGMX+TitBaeaVBbGgD
X-Gm-Gg: ASbGncvfEb5A7pKeBOZNJmK7rNRzxAV5N6pDtgseF8wtiO/BQsQMH5IE3BDkek27r0z
	z16quNi21rMQOJ4jEHpzrHtu+LhSl3JwdreEEsXK5/hS2dedX3iHCDL3SZeAaTyV/P1xuo/I4qP
	HAKf1uGa6dZr1rin51yIAvCR5iae94sjP8OKvLPKnIHwZ4edQ6bE3dnK3igDbs+6cZopzXfD+qR
	GTLsjWcO9KFo8tPZqLicjN+lBtFV6qYttPUF5NGZ7OWVJ+yVhPEPwD3SSZUHo+0Vx5+MFl++zLj
	cXr/iXy+1UCsn/GTF/Pr+bssRL3+8ZY=
X-Google-Smtp-Source: AGHT+IFfh44CpjNxUZmPA6c5WMzBh06962yfzZ6zlQmf5htXjFpT4LjTXqrhJ6yzZth5uIcqPJz1mw==
X-Received: by 2002:a05:6402:4004:b0:5d2:6993:ad91 with SMTP id 4fb4d7f45d1cf-5d81de06586mr7847964a12.32.1734881296546;
        Sun, 22 Dec 2024 07:28:16 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0eae3b3dsm399784666b.82.2024.12.22.07.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 07:28:15 -0800 (PST)
Message-ID: <3b1a4273-d204-4192-92a8-2bfa303b9d8f@gmail.com>
Date: Sun, 22 Dec 2024 16:28:15 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
To: Michael Sweet <msweet@msweet.org>
Cc: Rudra Pratap Singh <rudransh.iitm@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
 <ab8c4c52-279a-46d4-bf5e-49662f49c8ab@gmail.com>
 <2FA93208-38CF-4CC4-B56E-999C1C24000A@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <2FA93208-38CF-4CC4-B56E-999C1C24000A@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/24 15:44, Michael Sweet wrote:
> Till,
> 
> Given that the "component versions" are *not* part of the core CUPS software, putting them in the README.md file would be confusing.  We have an INSTALL.md file for generic installation instructions and dependencies, and in other repositories I have included DOCKER.md and SNAPCRAFT.md files that document both how to use and what is included in those forms.
> 
> I would strongly prefer that we keep any component versions separate from the general documentation - prerequisites are normally "version X.Y or later" in the generic build documentation (i.e. INSTALL.md) while specific packages will document/depend on specific versions of components.
> 

OK, let us do so. That makes it much easier to find the correct information, 
README.md is getting long otherwise and similar info in the Snap and Docker 
parts can get easily confused.

    Till
