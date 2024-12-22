Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617CA80B
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734876205; cv=none; b=I4ZXezxWDLbVR8ds6/SxFEhdR0qFlmdD1m97kMa7E/qd4id7TXk8vHEy1JeHi7IJNmaxv29q187psIPkFi+uzwD1sZ2znpfI4x6ysJfuCasEWBAH+/l9dybWL6Ei9Cp3trcyqHD7T0Eg+JCDAzjnHlyRhKenZ5rJWqwwfiSsfLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734876205; c=relaxed/simple;
	bh=3Cd3YHsII97lqbXyPx79Y6NsdPUNzOpNEScOD3MZrJg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nUDMlWgmRcxcb/SXH0mjR4qkd4IlDzq5fOeclaGNpxNxNlpDbl6wF8S6lg7uGSQmsQc5qGG0bhkLkD+tjnnx3MFzJjExBQEiawR9y+0VcVEGAUBLZwgIZg1/0izjhpY5mC08wHIJKlitV8RkHU2nBoir20+B3oLObHqPXDApx1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NbAOfOIs; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NbAOfOIs"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa689a37dd4so344143166b.3
        for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 06:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734876202; x=1735481002; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+bqhiUKMEC8P6FAt7eTE4Kg1ceMJJTbM0aDaN28JYyY=;
        b=NbAOfOIsqyGmkp2qzZWYKklV88TVDnIOzJ8j5SXY0vP5QIo9P0Jfgmw2Mk7kqy37Dp
         C6HzZRxL1fUfJVLu7Sgeap8GVQguiYuuBBxnymwRiNGqWk6/ynrUigURyQIOOW/Yiq0l
         d/hEyVY6g7NAZvlIM25TPnl6Bk4skMG1o2zDjqgRm2SJZQekZfiAvjl800W1UfIShKDj
         l/LGO/VGg1A4mywuZ05LUAwhPG/feU/pz/cFeary4gqND/MQILkzyP3viToEaoNfHWOA
         /izQuem2yQduF3/E8MoZxxqjSda4VEejjDaQHSxzZDeovilapP5xLYU/SAO3dyZUS6l8
         r/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734876202; x=1735481002;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+bqhiUKMEC8P6FAt7eTE4Kg1ceMJJTbM0aDaN28JYyY=;
        b=ouDWaN185mzpzZP34NYUUEaiU/JdP5Cco98Z3thSBcn9r1Uu+v4tL0Um+bshJKyawr
         fQbSyZzYfM2nGIfBV4Hv7oFRGqJAryr54GxWwrSsX9h5uTqkyqHvUOt6B0hQnd0YUPVi
         +OXxxNEkuyLRiVImuwskaqsk2MlH5WJqn+o8vUwrRnXrYbAMH6QciP5BEyPNiN7XiRZN
         AMzNdGFpg7ro66HMRKuiGtLrp4v42a2sa4WBzyrpbfJqggtSxp3hwy0G+fQwLxORGNcA
         Z78E+SsVLBLE/N6eMXu6FW+soqSfdP/ykjnyk1y/5j/h3bN9Puv7Y3sWGvbgMtudo7wS
         7d2Q==
X-Gm-Message-State: AOJu0YzxeW19DuihiMPbYd4lu3jtue1+QaNIsUrBD6XZbQVVLEolfGzH
	jEgYYboem7MKlBsu6I2O6dDqeH8Ijj/O9Q8KoldE5bx3bPW1bKux
X-Gm-Gg: ASbGnctnaDEuj7BO6UnZ8ErGAEPu6IP4OKwD7p7WEK979IJ2r6J/FAtncKi0KAccrh+
	oqo4kwy+mrhtSJgB3Bac8cuEqPA1/Y6B9gCOuAeF65BjNcgrrRghcL2TjGAiuPXmwdj9g4PzDz6
	1fyS68TOF1IGLd/IzaPh7wdzM5ZGA6Uq535Fy/FULLivYk5At3T58gWdHNy+ep+N2mTgAXqVKh/
	T1hppoM6QcDZVxuXYC7Mm1LKGOT3Zdls82Ib7jgkxeJ3/jE3LaoiiaSduIYkN4VXxzLiAiCVcwV
	nEyoC+3OsgvCtDDj6nt/T46sJgT9nP0=
X-Google-Smtp-Source: AGHT+IFq+6JgXmOB1+0Ao467aOqwpFiylhmlna5HE96cflCXPSd4aZtnp2sLp6nesniIkuW+MxSBOA==
X-Received: by 2002:a17:907:2d2c:b0:aa6:8b38:52a3 with SMTP id a640c23a62f3a-aac33787557mr692771066b.50.1734876201445;
        Sun, 22 Dec 2024 06:03:21 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe41f0sm389110066b.114.2024.12.22.06.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 06:03:20 -0800 (PST)
Message-ID: <ab8c4c52-279a-46d4-bf5e-49662f49c8ab@gmail.com>
Date: Sun, 22 Dec 2024 15:03:19 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
To: Michael Sweet <msweet@msweet.org>,
 Rudra Pratap Singh <rudransh.iitm@gmail.com>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/24 14:43, Michael Sweet wrote:
> Rudra,
> 
> Just to be clear, this is a separate README.md for the snap and not the repository's main README.md file?
> 

In the repositories for the Printer Applications and for ipp-usb we have 
described the packaging methods in sections of the main README.md. The lists of 
upstream component versions used will have to go into the appropriate sections, 
one list for the Snap, another list for the Rock.

There is no problem to have the documentation files for the packaging methods 
separate, or short sections (with version lists) in the main README.md and long, 
in-depth documentation in separate files.

Then the automation should also support:

- Having separate component version lists for the Snap and for the Rock in the 
same file

- Having the component version list in more than one file (for example README.md 
and a separate documentation file for the Snap)

    Till


    Till

