Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E1A36D
	for <printing-architecture@lists.linux-foundation.org>; Mon, 25 Nov 2024 01:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732497475; cv=none; b=rOaw0Bo2HgAOPC+djrc+s4LXmS47EHYylHY/VKa8cXLdYMBC6v0Coz1z48xu6AD44iySOHioLB1p3LI4OqhVp8xT/HocyRZgx7kEw0gOb8/PCAhV3BRlMCajzd3pMt+SOj0zRQsCz4/MDdcrc5JGL997TYJsMGFtQUbudwj7CL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732497475; c=relaxed/simple;
	bh=xB3BlVadjsPlqsGnCx0qPDH03K20Cd1QWaB/IB2H0KM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=SaQuMo21UsMdsdSSMa3qr1zUuaNm5RfLVZWkO77fSpCNQFLpSJ95UGRHg5sg9nY+ObKX3SIe5K1JQaxX94QFZ3E0bplRG0I4yKPE+NnMLPr3GAayLw3kkLPZ+/o8OpN44hL7T3WhBhKAEMtxjQpI6i6k346oLnSI/HqZDQ4r3gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dAl9QYhB; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dAl9QYhB"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AA5741C9E
	for <printing-architecture@lists.linux-foundation.org>; Mon, 25 Nov 2024 01:17:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 46yzatFQVEc6 for <printing-architecture@lists.linux-foundation.org>;
 Mon, 25 Nov 2024 01:17:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::634; helo=mail-ej1-x634.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C79B143335
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C79B143335
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=dAl9QYhB
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by smtp2.osuosl.org (Postfix) with ESMTPS id C79B143335
	for <printing-architecture@lists.linux-foundation.org>; Mon, 25 Nov 2024 01:17:52 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-aa520699becso353651966b.1
        for <printing-architecture@lists.linux-foundation.org>; Sun, 24 Nov 2024 17:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732497471; x=1733102271; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOFhp2s1DujTgVvlAac+vPubQOgKpg7Rs9X65bJDB+Y=;
        b=dAl9QYhBzztdn6bv486LB6Z4NuT9Qd3cOq8NBoPPnjfJWuzX34cdNbYElNWkwgVt40
         HIdbtcE5xqHJEiwgfoai51tjhNGTVp2OC6/pO6NmPA7CcSQDfea7rt0ARJ47r13YBUbF
         jljx+wmiv6Wbwu5ckLqNc5+Cs+6aAf9qwufQ7SoAFQTnqMvhpb2X5MBAjeNGM+t+rhXR
         gs4cXf+4FvYFzRuKXxoc56mLmkEDmhrqYAFSNJRqH2Z6UWQDXzinDSIaQ2EmhrWkEeOe
         pCPlbm/l1RL67p1cK7fhtJaObm2z6AlGEBmLaiFCIY7So2R71tW1+gafW92G7eNG1mZd
         3eKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732497471; x=1733102271;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZOFhp2s1DujTgVvlAac+vPubQOgKpg7Rs9X65bJDB+Y=;
        b=gkLf4Je7P9p/F1/redFJV9FXpgoILXlzyLVnKcrT/nT8EaGatUlcwzkKgQ8JvM7jff
         neF8UdEaD8syG1kRARuWBTteYMAPZCt3DLYraJN7SvgupYdUsY/KVRU+5uYdF+h3bXUq
         zzk0XCUZW1aQzJrxat8P3BYyzv85M9JpUEVUx+vnUe8sPsxyh3eJhnqio3kTjjljp1tn
         FXrQ6KmBVUl7q3b4WM5Apg1FS9HpI7x4JFnvqGrHSeTGzdI3S3zH57sXShxao+5DPMtd
         HTsj1OL/2jtVxv82ACi1lm51ZUe5QLiZO2CH8q37AFsKAk70QZnz4gxGZT8pSpP8cIiF
         WICQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhCQtxz/HWKbpa4ZGQrvQ4kzmTc07DbaVOACUp3nsCNec76EQ+McEZE2mS3zzsR7WIAEPR3xNT4dGQ5tGb09H/0trmSIs=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YxM/2XFXqocvwOAi70utGSziv7o3U653oax4LYUtM4GNlPif0Nh
	yurrJc/TBRJ9PBFb73DtGEus04awOjqHvRtcZaSigWAo3z0U70Yr
X-Gm-Gg: ASbGncvK0WvujHRppdjdh9qGIQQnD7r/cayzr9Ci5I3dKXixyE2emObCMtMcn4MX3Qj
	QCgyu7AodF+R1eJznt5ntxXDqbfES5tOcgZzABY+G2K7XPgH20sIT078xWQeZUfPeQKngIJd7Y8
	cmAFZGFBS5VAY9Tu52t8WakIpTpIo3+Dwjp77gg81XDq/rhF40GY0Qk5KenpnjjZPAIjXNPMz3m
	RgMMTT+eglQsBInjOAB4KPOPaI3cvZM+t/G4wsvUYB6W73mNsU0zfFxOoRA7ilT3u5n32q/vdeV
	V5P2S5m2XUqwb0bD+HdvgscG
X-Google-Smtp-Source: AGHT+IExFQy++7zL6V0k9t+FvNhwjat21OvqYNnjToIVlPof1qdJe0B60wXvvNDd9wP4tx1XGc/Phg==
X-Received: by 2002:a17:906:32c9:b0:aa5:1d08:dacf with SMTP id a640c23a62f3a-aa51d090340mr734365566b.13.1732497470497;
        Sun, 24 Nov 2024 17:17:50 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa55195b32csm71025366b.29.2024.11.24.17.17.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Nov 2024 17:17:49 -0800 (PST)
Message-ID: <69ecca00-3435-44ef-bce3-70ce200e6c73@gmail.com>
Date: Mon, 25 Nov 2024 02:17:47 +0100
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

I have posted the newest development of the last month on our website now.

Here we go:

https://openprinting.github.io/OpenPrinting-News-October-2024/

    Till
