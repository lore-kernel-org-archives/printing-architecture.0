Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAB72882CE
	for <printing-architecture@lists.linux-foundation.org>; Tue, 16 Sep 2025 23:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758064074; cv=none; b=Zsh/pPgCbPCA+5cuqxEFA5U9UszjtrVC0eqN7+eTzdwoqCQ1KDffPUfNeElSZz2yW2nhrfaHsk8tkFyXsaJYWK7+lWcoISpZ9N+//Rn56pzz91nVfHmQqGZTsHkTCXSh3dYPh4nrMBx9oSCSCB0X5M1jS3QoYt7OUvZwAEA6+lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758064074; c=relaxed/simple;
	bh=4UXBuqyvsRNqWDRIfd9ViSirM6jFxJRorBpopk2hHjs=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=s2cT8TtpWjKbwoLRAllRGD3dV6HNRSXXEOSRZU6Oaa6S5mi4DrintIl+XtOGP+w3xU0SNFhndUYxHk1VsUlV3DAQB7grjOOiXpGAZaJPWha/BXeZ4P/QCqpBZafgYm6x/c6Y8SLftclJlO5IGgtlzDCVoyNNI8GRXiEzPV4AwKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dwxGiwZz; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dwxGiwZz"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B72F83B88
	for <printing-architecture@lists.linux-foundation.org>; Tue, 16 Sep 2025 23:07:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8FtpUFkmbchj for <printing-architecture@lists.linux-foundation.org>;
 Tue, 16 Sep 2025 23:07:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 95E0F81E10
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95E0F81E10
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=dwxGiwZz
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 95E0F81E10
	for <printing-architecture@lists.linux-foundation.org>; Tue, 16 Sep 2025 23:07:51 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3e9ca387425so2412248f8f.0
        for <printing-architecture@lists.linux-foundation.org>; Tue, 16 Sep 2025 16:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758064069; x=1758668869; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DX99+xVyP+vh4ALfzKJDJ1brkXzi9E5tm1JCQUE2GKw=;
        b=dwxGiwZzdfIR+cEaxpFFsYVsll9JiUDUM5FyQU6nbA/4kr3wl4xhI0JyC64CzJHer/
         Esw9tNBAheuGW0H/27GnCIFnVhXKWItLWbsmy5QhkujzTkAt9DB6tysKJDNDb6569iE3
         uqALuJMdUzMIR3qLm6OoqEokFGR7uzwAR4cv7MtGrtwrQV2/7H3M39Tg/BMbSE4Ddoxo
         EkvzRKcbut0ukXo9MUg9sv5JS6DLzHgg9v04QczoKrv28Zl6pgzM/muNukzstNW8EBO0
         DJSzdfyjDv93e+3wAGcemFHn8NjW1wp4yMa25JGckwh0l2wp+rc2iyknpBdgdBulj8Pp
         Lwpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758064069; x=1758668869;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DX99+xVyP+vh4ALfzKJDJ1brkXzi9E5tm1JCQUE2GKw=;
        b=dj4zk+xCHw7Xbyv3xisHuqXA0nvTMhPqSHqA40azoMNGnTP48zA/f1o7PdMJP8ol7r
         ij3SHD87yMhhtdjw5wElDmg8Nr0PNrO4CkC86fjL84NsRNO/PWi000J82iDvYz6vfSHA
         SDoeLKY+2YpGPPmTYFToQwm62HpNSqaMFSHNi0nSh00GReGZ3ycErYY6Tku1BV0gBFi/
         rt8SrNAHQY5+0wMk0WcFYnj0Sj8kVJm9XU/rfGi8JE8/FtIAHl6gCXQjiM6o59wPXhIy
         Vp5jbr2gTnRK299h8u22WqH8Ox+k7B4ONKDkP4m0OfUWRpX1WmrNQ6GYJubPfPYrwNtP
         98QQ==
X-Gm-Message-State: AOJu0YyxhC+IZOVbgNRKjuVG7o0mwTN8e76mK8m3PUSFpq6m5ZVzrD0y
	Xc7ZPUx8qOKuMhhAR8+s55MyDDRvJ7Ht8mCBNL9da53SGLzc4RwEF7f4Ehc/fA==
X-Gm-Gg: ASbGnctelX1o7/t4wFabvB6b4GcNYKs5kate/aoFFj+dD+5cuJZthPzXlyd2AcrepBO
	hLeqYOuH/EbhrgFekzr4lcgBEUMuskx4gFP8ixDirnzPJygtdY94bmJOf9veP6v0dEm3qOEO6hw
	IEfv6uv3vqdBkCywgKNgzcejnyGfSBG8PaKzPwUDpxXHgnUgwgXIaFJEE32dDMYoVxsp0bko92c
	nhRmAFPA6N6wzSCLk1+dy8bPrUWsi0z8VvufxsV4/MkdCihWo4k2AUmGSV7j8VtoH7llFEzx6+5
	LHqD8XdCqXWyyY7OBsn6mSeWB8im+slxQLbgC1mMtpvCl/SHL5e7BUt0nbvHeDDph+XBkICZQTb
	P3Lct7yDBjtCR6GObIVjay/ro1HHyGXnniOEC70IqIxRk33SLvisYCv60pDZyG3GfHo/ha7nuCk
	H/MgM+cFiuoqOO
X-Google-Smtp-Source: AGHT+IE/t8RPnnFWW9giD50MA3ucudY4kO5D4aLhHBeCt2vWnKp3R1OJrPU2VNIXFwR5RimjANuMcg==
X-Received: by 2002:a5d:5f84:0:b0:3e4:471e:3c91 with SMTP id ffacd0b85a97d-3ecdfa57728mr63563f8f.63.1758064068618;
        Tue, 16 Sep 2025 16:07:48 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760775b13sm24170228f8f.10.2025.09.16.16.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 16:07:48 -0700 (PDT)
Message-ID: <9f07fe2e-154a-4a9e-b2a6-99a83c2c0f82@gmail.com>
Date: Wed, 17 Sep 2025 01:07:46 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>,
 Alexander Pevzner <pzz@apevzner.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: We should announce our releases on
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

we should not only announce our releases on OpenPrinting's blog but also on 
Mastodon.

I have seen here a post by 9to5linux announcing our latest CUPS release:

https://ubuntu.social/@9to5linux@floss.social/115186755345861307

Would be great if such announcements come from us.

Perhaps we should create an organizational user, like @OpenPrinting, on 
Mastodon, for doing such announcements.

WDYT?

   Till

