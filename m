Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7E155757
	for <printing-architecture@lists.linux.dev>; Sat, 22 Nov 2025 08:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763801963; cv=none; b=PBqlpYqVaNNtOvZ0Oa49Yd7bFX06VFaHuoEmFBlKzjBTP9KPxSXkHxluk/cj6+8IS0/fV7F1srtXqS3PsHWHGQExJJ9TT2ADHEHvwcTdkIgWrZh84gXzafvqYe0Grs8rWFoXoLFjxncJ8mi4VzkIhusWL81z6FxC+4wi9Yb212M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763801963; c=relaxed/simple;
	bh=HizNKeIWUpqDXt3Sj1IKgoblSY/BgnB0+jxMp+I3jjM=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ethjtBVBcyPnqTfsSeUXDV+9BPalByUNhaiNmB8TRzrBRFw+nVNlP5R/E7hwdIMmJ80+WPjFN0kbU6OBQHdhjCeOEA9+hRNOvCqJ2mAAejoG6AAcBakUiTRjn5V+Bzk9CquhROrqzJluyUNBVLE8gD7FLJmWNhkqe6Lvlb1OKNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lXBHUPhK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lXBHUPhK"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so20146595e9.2
        for <printing-architecture@lists.linux.dev>; Sat, 22 Nov 2025 00:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763801960; x=1764406760; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vz68IrqnPaDUAPlphZQaHG3/6k6JxSStwvFNojqh/tE=;
        b=lXBHUPhKEM7XcxN3fdK40+oDgqnfUQ10TPyeDuPgLJKGYItPJdlcRfxl7m/eLDauYi
         M15UmJAwr/PiY5wnyST28lDRdw6UqUI1vzEwD7ko5txyTg2JE/Fo9doZiPgm3J32SNZu
         36rfixwGXp7ZsEOcyQ/MJsE37y8MpYP0ohdJJ6AMR+tz6Pj1qd7ltAHN/ELy/WNTCv1X
         aUCmTgW0Ah0T9gCBBHQMl25zJtmRD17aVgX47WPHjTsU+p7hFsZL2H4skEYo3rXooRgM
         HFnhDo95T9EmGjZPpXabvmKEYGYt5HTFBy7Hwic6aHtP8A9B0yBLQ+ZJoE5UWz0xAc8S
         vp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763801960; x=1764406760;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vz68IrqnPaDUAPlphZQaHG3/6k6JxSStwvFNojqh/tE=;
        b=VBQlwydMgVkwG3twmF3cTM66blcdLW8+OMSc4V5/pVfUDMEkgvLOPYK7ddIhcpV1s4
         CJS+BE3vfsJk/xbuqGHPVbnvutmmcRSRbdvaSAVqTPqW7QPZZDReXnlEhmr1Svy0d5rm
         3IoLo3wrjmyT8U7vgDDys87AbS1lcbJdp7lgjCCYwK+b0ILpZ0sCeam/G1fWChxnbUZq
         eR5arKADPfksCSV/eJttYNMWcuVRSPIQ9coUvsH2iOxymvmOFPevApNzFQ3z4uIsqt56
         808L+8KmLnTtAkMfNxDS5PRQob6wbIHeU0m9/mXynAnKi7jzKVMxwgvzIp3prwQt/X2y
         iCPg==
X-Gm-Message-State: AOJu0Yy3/98osx+Sk4+pQJ0qe2IOcf/jBFEAjpqAc/Npp3qkPXsTmAnx
	tRZQ6/QE6K0fi4I1SqjmkIbB3/x45V9FKSZ+S6ZMENfhJq7BrQmLcfuXGktBlg==
X-Gm-Gg: ASbGncuWHOXWVcG58j/JQOfIpuautwIc8pfN21LH/xnA3KEUgoOveIngGVkm3dUl5GS
	dCK4o92NTwXY3yxBe9TSqJaTAHNJ3342v/KC6RHaJniUZyBwBQ5kK+W7DRz4OqcHkSfGVWo5P0s
	vFUf13vHGrmmTIZicBFmNiVe036BgW3s19FiFY7JuAiyayMBEh7fJIfTJ6XMHAApJvmuvHfGNcB
	s6GxyEHyzb/Z5450ag1CQBTJ1iQ3lwDcm2E+qE48f+mRXI/OqTVjEhbI4UUzA7/cQ5HwiCyzIBl
	EmSWagnW5LQMWk3aOrNAT6qV9ydxm1ZE63umtVA+m8QqLDpM4OFX8gz3eO7HQWg3HDK3hNZ5Poy
	UKPlDDHTKurvcVPqqZUlVCjNBlDH1L+19SVHzX6Hn8Gc3RXpTr9aBXXrhH8N40kAOtAgwewsGHO
	dRXpRP3tmbAbIxHZHSBqVv5Esfs5wGRuguVtQEsx7Fq3e0LYqQLVcyWNCaFCdcyzaQylU=
X-Google-Smtp-Source: AGHT+IHqMpZjTXixfAqHOmO6YQf0gp8u96x7utts0I8D0liDgnkQHQU/hvhRTN0mOKJIkPkDgnAP/Q==
X-Received: by 2002:a05:600c:1c28:b0:46e:53cb:9e7f with SMTP id 5b1f17b1804b1-477c01c11afmr60317105e9.18.1763801959895;
        Sat, 22 Nov 2025 00:59:19 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a973390csm101313835e9.4.2025.11.22.00.59.18
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Nov 2025 00:59:19 -0800 (PST)
Message-ID: <e7ef0277-42cf-4665-9b69-8635046c47e7@gmail.com>
Date: Sat, 22 Nov 2025 09:59:17 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Winter of Code 5.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Next week I will do our mentoring organization application for the  Winter of 
Code 5.0 (we participated already last year, the program is run by the Google 
Developer Group on Campus IIIT Kalyani, India). The deadline is Nov 30, and 
before that (ideally 2 days earlier) I need project ideas to post, small 
projects which can be done in 6 weeks part-time (alongside with the 
college/university classes).

It is a very good method to learn about the capabilities of GSoC 2026 
candidates. It is like giving them some assignments.

So please check your area and if you want to make use of the program, give us 
your project ideas (title + description) ASAP. Please follow the organization 
application link below for details.

Web site: https://winter-of-code.tech

Organization applications:
https://www.notion.so/Organisation-s-Application-Guide-Winter-of-Code-5-0-2ad489c63bf480d0a423d3ce5aceb69d

    Till

