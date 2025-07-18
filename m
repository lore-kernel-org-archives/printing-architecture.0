Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746AFA923
	for <printing-architecture@lists.linux-foundation.org>; Fri, 18 Jul 2025 23:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752880619; cv=none; b=gPHu7LgDTKWQfS51yWdClRUqEenpQ2qkn0/wPNDZLfU/KiI4OvEOYu6ghSBOO5IIQSKN6KRlhVWe4IXkdpXkGAVIHFLKMT5lrhu/YW8FTXC6/jcKdnJx+q1kEyfmBAENJr01JyGs4VY/rfS4xJjthHzeTYgDrrL45yonN5f0gJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752880619; c=relaxed/simple;
	bh=1bl5KggwYn3NKTGJbiOUaU4BZ8oHef8WyTEbvfmTR6Y=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=DkOelO3/QfJ01qoDPs/aIvjne+OkblfgGos0rBpG69a+LRhfNftG4W2o7h2dRIC83To58kyR7dQ3dad1n498/ll0RNmiCyZkILq7HTQuj9unAeOk9wwco8fRvf1SXleVbhJWbwXmT/uSSVDGwF64emZgZwGLCcIrY5XDWR79oL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TChezBnj; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TChezBnj"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E6A06176C
	for <printing-architecture@lists.linux-foundation.org>; Fri, 18 Jul 2025 23:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AgQII-ujAKDg for <printing-architecture@lists.linux-foundation.org>;
 Fri, 18 Jul 2025 23:16:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52d; helo=mail-ed1-x52d.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 21B7E60862
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21B7E60862
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=TChezBnj
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 21B7E60862
	for <printing-architecture@lists.linux-foundation.org>; Fri, 18 Jul 2025 23:16:56 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so5056944a12.3
        for <printing-architecture@lists.linux-foundation.org>; Fri, 18 Jul 2025 16:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752880615; x=1753485415; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SM/eJV/7wnp37PC7OA666DRAqOKK//a2iwDFgiM023o=;
        b=TChezBnjhQht8hhV3b47UjiKWroS1gVraUmWIaqBFFYDN+MKYX0Rf30m6hfIX9Jc/D
         k06ZW9N343akfmuKXI+r8ud8Drt+ylCPvuWQLmKgd7TxU63+jPDfj/mhWQ5hZR+9C3g8
         8X6gM3UYGMGPu+Kz0pMn68mOeD1F+ezPo1647MarUoHkDhwkZobEXOG3TtvKkbignfn0
         q2CqtAj1WNLYkxQ2M8C1weyoHmlCNUnoWLTY+OLVYqV9rDiqUU3T2RkyqetFt6T1JO7w
         ybrjNU8tsvUmUtaNW5UrwBquGt+2wtQDilvAOYviscoHc+nS1ZBsn9rKoZ11LCyA3V+h
         a/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752880615; x=1753485415;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SM/eJV/7wnp37PC7OA666DRAqOKK//a2iwDFgiM023o=;
        b=HfGL+mcUnUxZ7+RQ5G2/pvo3gP4JVdroWMf6JyzY5Xp/OatUpBAmdAtFJvNVmX11HQ
         qnEjclK5lRVzvTlJrF2DNwlWTYtoI88vcbipiUK0wTfu3/wADKHZG3/P02KjHWuqMpbw
         9s91vv9myLupcTM02juydE5hl9k0LezZnw4myvZ8YQYeTMBiZwdZ/odt4wA7qw6EFzJ+
         lWtaVxmrRO3gV01JIIkV7Gl9JDTMGuwa3s9rlu/wdLaqIl6l0T2UyA8zi9+TohII3GZ8
         EcL6YTQ+lObvuLG2YCFIcZV1GCst5CsmdIkaW0flFsAwCMtKVtShOHK3Dlmcfaib1ARW
         MyMg==
X-Forwarded-Encrypted: i=1; AJvYcCVjSEgNLlfWsBE+yEFSTns6e9WCBUsbeMCtLvt4IZQNg/SSxgn1dqSfgEn8c9XASfj39L35Q78wJdtq6PhYWlR/L8/VCQk=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yy6K5rb6MomW7waUQPyyQCYHtIGnFOJ/Po4xOud634abbgI1383
	bQiUS+xA4a3pu4hnP7IUzqgvW5f4DWgJh6+82RgYvRDmROTB6x2fusl4
X-Gm-Gg: ASbGncswER7TwxTQnP9OU8Kz27XlvPPPYq/UsNcer2OWz86Ou9l84ZSD163xBRXdnug
	hBxUkIl9unalB/ol/X+x5FZ9JTWdRpcmY22KvmRUV0bh1k9Yh7zPlGW7U9pEAnreaVorAWXhtMY
	YpXvDigjo/PGMffminndOq85bMjucz4j338t5dxJtU/c5kGkHytcXh2zea/BFEYY5nHTNONFSFq
	zME33JpFL5uLM1pOEaCWDjUZfCOIQ6ExWKOHeXY/aSvcSqJLBHs+BngI1MtCnEDyXwJEeG1LOvO
	1au7uQcDR67uK4QJl7Lt+fU3bDWQoxZHtsL6Yoy3qGwt0l65XX6ZuGY1vg/ZkRFyPi+Eh7HlQcW
	FFgtyrY7BoA05TYFsUCf+ReMSn4yKMuoQfIviJsG43hZUzbND4GJwxHPPXe9q2ihszZwdCTY9Qt
	il8Q==
X-Google-Smtp-Source: AGHT+IENbLvtqElF6wnYDxbMzKPZLnRlww3di9X+AdbWEi6SECr1bfXysE0nlvuQ/FDDRjenDCVlNA==
X-Received: by 2002:a17:907:97c7:b0:ade:198c:4b6f with SMTP id a640c23a62f3a-ae9c9982894mr1346066866b.1.1752880614692;
        Fri, 18 Jul 2025 16:16:54 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6cad3e58sm199063966b.147.2025.07.18.16.16.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 16:16:53 -0700 (PDT)
Message-ID: <420802b4-cb70-44a8-9441-9c8fd6facf3e@gmail.com>
Date: Sat, 19 Jul 2025 01:16:53 +0200
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

OpenPrinting News - Opportunity Open Source 3.0 - We are looking for sponsors

https://openprinting.github.io/OpenPrinting-News-Opportunity-Open-Source-3.0-We-are-looking-for-sponsors/

    Till
