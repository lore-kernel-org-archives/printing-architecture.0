Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B811D188CC9
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 15:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734882062; cv=none; b=rTtBMZCc1j5511jSbk+UEXw5ZJMi+R6PAwyaKd2eUij7IT7p+UtJQ4gYMCb2ZczQYAMk4w5adVxT020oMDSn57akd2jOpR9tVzqBYpq1/Dqq0FjUZDzvdIT6epsPZHQtngfXNRwt8fO8r62Fw+SWJf6QHvF4F5ULFfTU6bolqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734882062; c=relaxed/simple;
	bh=ei9sfZFXLJolHCIGL63Svr2l23B6+aVb8rlXTgSM5Y4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PicljysxUzjB07mnTBG8ygwvBBsxXx2kfG8KiYZ1b9nTkagMVeuXp2J9BCJAygRIZcMBkMx6Gu5igFoUpZyRgoPb5UOioNjPY+F2iCOQ3QYyQFKz1RgxMwiLB4DDgen2G+IN0MT2Bg7JKqKTYsZS4hMMQAWAS9kD8GrY9mQm2yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+tS13KI; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+tS13KI"
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa6c0d1833eso719121666b.1
        for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 07:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734882059; x=1735486859; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yXiPk+l/GeNt3rC4X4L48LVipk9udIN2GAQ/zfMxKMc=;
        b=Y+tS13KI8CHEthuRbKze0e2hn2cQ2VrmVVYigUbCDLAXhTEmwa8cUxNC2/VKxXr0Cx
         fyX3gNR05y+0JESaxq5IAJXVvmPI04jGnL6gh2ZCwS0lMACkZhK549WkCpGW5Ep8GJ6w
         8vvEAgZRSo5vFg1dlrib0oQYX0JBzAnd6FDUWzTBFAvX8wIINu3C0ZaEZKTeUa4qum1L
         Youzj0/gYvkCGr2eUYetg+CCi+CI93PubtCca2WZldAWnIL3iiw5RMG2RJ8DWeGe6uRz
         3faDXHcJwa1uD9RLWwchIYL0jtc858QQk+wipFURDT1LFGNr5SbMDJZjHQEB6UYptPN2
         xlEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734882059; x=1735486859;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yXiPk+l/GeNt3rC4X4L48LVipk9udIN2GAQ/zfMxKMc=;
        b=gEP8HKSEct78tD1Mo49BQhxu8yyRAdF/0iTyoW08kENb4DZbmGJOiVVaceMiv+7cFU
         xbQn1c/way+l/48LMX38Ul6tGwYiAvv2Rin9SSYdl05T4jVnF8GmeoSokdGgtwq2KRun
         tz1BVrgVmPqMXBkodJk5FPIfSzJQbrAbkbQOIQbgukiw1Kx/6ErN2UFoNl4TxSUBgMCr
         1yu+ogc1KB9qqAVE+BK2IAORgxkgXNon2HI0ODhnBkJ3RYx1wOo4X7E/YR5LBo0kMjLO
         bnqe9Gg1rMtikwpzAIneXbnds6MzA/kWHdeQBa2xR6ZOzWzjuvAHjGG3BLYimvOnEX1/
         VCHA==
X-Forwarded-Encrypted: i=1; AJvYcCXilab/YcnPajhxAh18EdyGD4MxSoZ1UkjvDkTjSL/RdinJ71V/CFjk+Vv6RONg+sbrGVTMO5tYl5AhkrXrLYEkkUNWlXM=@lists.linux.dev
X-Gm-Message-State: AOJu0Yx7c4SNp6hkIktjc7Gk1ooDUdTQa1x6RksuP8EE4ZcUWOz1kPhe
	kPY6p3ZYhp3fY/37JPbc4gbSvs9tk1z7H83LWMIDlpkHC1xCmIZuVLSysA==
X-Gm-Gg: ASbGncvGpQ8n1AL7wCpXrHrxyAU9GaU1iNRlGndtmJJO5WGXDq/60NhVhI8uDGiUxFq
	Yq75xoAFS2JuupQtmVCG+yndRso8ZjyL9189tPHLnz1bR0EA7eKPklJ5VqFVWdVPOrMBihR3dp5
	1JTaLalRwMFtXE4GiDwyQacB4+cZhEwnXBVxsTv9MyySY7bRvMUK7ixKz36MnglH/JJwJGKR9gh
	2JJ/3xZ38pzec+v14djHm1rs+EoiAx4/I+N/26QKqN7OZxp0Cx/6Lmck56/KukeodhFJW5SFT7j
	Tm+/2GEkBuS82W7dK4jEoDWyNsneD2Q=
X-Google-Smtp-Source: AGHT+IFFUVD6PRsWax0Dmvy0YGoSSCA+x8YfXH/bMe7C48Xm3MPewN0Ngt9Khw12ng+FucLTt+acbQ==
X-Received: by 2002:a17:907:7dab:b0:aa6:98c9:aadc with SMTP id a640c23a62f3a-aac2d45fb01mr870155966b.31.1734882058803;
        Sun, 22 Dec 2024 07:40:58 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe3958sm399263566b.96.2024.12.22.07.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 07:40:58 -0800 (PST)
Message-ID: <7fa0204d-0804-4d7a-bb10-ff228dea2e67@gmail.com>
Date: Sun, 22 Dec 2024 16:40:57 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
To: Rudra Pratap Singh <rudransh.iitm@gmail.com>
Cc: Michael Sweet <msweet@msweet.org>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
 <CADmOQafms3c=7FAzeX9cbvnPOYDcf9Xxe9QyKUjYEYTgJq3AJw@mail.gmail.com>
 <34cc8c02-8e8a-47ba-856f-9ce834bd4496@gmail.com>
 <CADmOQadkw-BY2vNqQtJDqi7TqGpHErVM29rkPfGAajiFVhGUiw@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CADmOQadkw-BY2vNqQtJDqi7TqGpHErVM29rkPfGAajiFVhGUiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/24 16:37, Rudra Pratap Singh wrote:
> It would be easier to pass the path of the README (or any Markdown file) where 
> we want to list the parts, directly in the workflow itself.

OK, yes, you are right. We have the workflow in each repo with automation ... 
Let us do it this way.

    Till

