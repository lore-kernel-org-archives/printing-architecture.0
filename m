Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000B41E1E1C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 27 Aug 2025 10:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756288984; cv=none; b=JGSbE2tggjQg13vvNRuGcmgpKEDftNCh5oajoro5zamg/LdgJM9sEYWJUhy5W/bUJRSbRX9Ziu0xrxqOlGtD0KXR6NAyfQFnTdXJQFGyaYGlPCY8bQ1imgPDkJoRikkc6tY1TJfWTGWqenwLOuRQ5SinNBSrl9b5RXJjo7V+9fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756288984; c=relaxed/simple;
	bh=2PYgNvojLmHCPGZvbMQVjvHlTkIQxetPnVrH6Eaz8m8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=Dc/M1020LJvsuMVNltqUUPTYffYutaYpbqUzRRJhDMp0f/zDOnkRcdCZ08iu2Cy84v0EuM5j5WX9I0+HI5oUf8wVXa9Jf6BDLt0VNaMvp91jG2aTmL1xcKG2/UnUn5KVQf9rzY5qAEBbQ1G3awy6sRtnvQ7nRG7QZQLGYS+9H4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PvxIHUYk; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PvxIHUYk"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98E1E81276
	for <printing-architecture@lists.linux-foundation.org>; Wed, 27 Aug 2025 10:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e91ipGo7XWID for <printing-architecture@lists.linux-foundation.org>;
 Wed, 27 Aug 2025 10:03:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8E2E78126E
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E2E78126E
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=PvxIHUYk
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8E2E78126E
	for <printing-architecture@lists.linux-foundation.org>; Wed, 27 Aug 2025 10:03:01 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-afe9358fe77so448451766b.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 27 Aug 2025 03:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756288979; x=1756893779; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ackGPLzYutqRiDP+pYlefwqAdmm2QtDDtkUVRZJ615Y=;
        b=PvxIHUYkXDw2eJLM/0v9lVk2U+h4sGBaHc/6TtRibx7KxkWwLR/byHZTQu6uUoxu2E
         0d98pMHiuS03vRuykI4S0DIWmJJ9Q88hFjqvMm0RejRBeSVnRk8xIlZYkW6gpMkqzQRd
         dwbKq1/8ir7bAlbQk/1NbQXlrI0kxta01fg4h3cnX0gb1E/0e43eR5OfGMPEFnNQlQJo
         sTW51d38HtYLyoO8nlPLWgjQgdTJATUr8nSKreaMd4e3M0rzIzrpMkGChEsyVd3H1tc1
         J91+Z/uV/YM/yW6kGdfFXJZLlmzAqcg8fX8KOL4O48pRmzFfiEx+1B2fy2Vnwd6DqMJE
         F9pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756288979; x=1756893779;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ackGPLzYutqRiDP+pYlefwqAdmm2QtDDtkUVRZJ615Y=;
        b=tOZqcnTj2pEUMKHNDXwbOZT+YPPxYudSShRbSt/uqtwIdsza70zxU+K0KIQFndkzhY
         MRRGby36v1IidSH1Vb+MFCJjEMEbbuyE7Jm1WPQJJS7KlTfhV17L+n991gxgMGy6GN5L
         IInFaQUAAfoautULYf6jSjD03Xp6r1QCInDwhdOMYUaCOYJa0FRtqINmpRKxkjVQilqT
         VWucZoCh+p5bKIOvdTz2lYWZc4ehhVxYpweyiuk/Iy2SmuC+5Dk4tf6NdVcqEP9WmQSR
         lbeKslMN/IKvyC/R3gMZql8nvHMeqgf9M0wGFeKIiSbbqfsac64V8V/jiLdflZCuAxSr
         9Hvg==
X-Forwarded-Encrypted: i=1; AJvYcCU2Ne/b+e80zbGOuZ3T13TibnFC5jl6pJ8jlOs60+PwFElvXSD5J+egmc3AogsuWIGMz561ccPc1M/Rulb9svHDokqln+Y=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YyS8fNmZSObCuWc/Wdp8ajdLgBvZV8Pp9Nkk+bsLvgBcXyIC1z/
	6BIj2B1ZAaQfUfc0gps2AexfzYLZm3/oAsbT1x3MkLVUxN432O/uK2NE
X-Gm-Gg: ASbGnctYYLXtZNgGRHBf8xyLp31AYjVbWT64gPj5Q0dU8OL36D/DD/R0a+0xM1hOt3c
	3TnpW2IrdrLQ73VzflsNaBoUxVnZpLVTJawMcA+c/cQ7qOvV23IZsslM7cNVa3s+uqvY+4OqvXC
	M8WwGp6YBXv9kIfGHHZgp0WLQ0Ng30DfEy3yhhqgCqaiwLAWQnkQiYnuYqEHtNBDIIwVwCdC33g
	6YSVDnAiaJI0sH15CCfPuxcS8Q3engOICgRwrlJqPb70MjWGcmQum+Kvd5ppKQokbCe89Y+8NL2
	rWa16iQEno45/ZwSeqph8pfAG03htcPUkMAKAq6eKlminZJd6yMyLw5A1bTeCX92FDLvnmIqx7C
	LAGFqUSQK7/7CwFEi5HTG5eRp/enCfx0kFbafhg3H/4G7JTK35ZWQU0uJgIVd6K2FBkpq1MR+8k
	G9FKnNsCVY3udN
X-Google-Smtp-Source: AGHT+IFCTi7V7aEUJ6Z98RxYj9ToRuajQDvPQEME4RXvunGtSdMUGqKOFEo7QEqj6XdXmXk0VNE4aQ==
X-Received: by 2002:a17:907:d86:b0:afe:a429:a08 with SMTP id a640c23a62f3a-afea4290cfcmr516980566b.1.1756288979324;
        Wed, 27 Aug 2025 03:02:59 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe7194090fsm741541866b.13.2025.08.27.03.02.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 03:02:58 -0700 (PDT)
Message-ID: <38c12e77-1dac-41b4-8e5a-f54a59169f9f@gmail.com>
Date: Wed, 27 Aug 2025 12:02:57 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: OpenPrinting News
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu
 <basu.aveek@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - Opportunity Open Source 3.0 - Schedules and contributions 
published

https://openprinting.github.io/OpenPrinting-News-Opportunity-Open-Source-3.0-Schedules-and-contributions-published/

    Till
