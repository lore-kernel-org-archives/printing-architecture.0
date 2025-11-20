Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A762D24BD
	for <printing-architecture@lists.linux.dev>; Thu, 20 Nov 2025 23:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763681519; cv=none; b=cqjxi2QiacWIi9/ZfOPxiy4ahpRhtdGl95wOTf0ZPdpb/mq+WyzQDpdxP/Ujv4PLrDaqL9Vse6J9sCIS324brSBQP/kH6J379KB5NmviV++UoFJtNlvPToXYNjLxKP1cEAW8ACChS5wiSNZvlfleisBX/LX8nXQUXBqunqRNHO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763681519; c=relaxed/simple;
	bh=M4CUgsbwWJRJLsNe83izGRNuRQg3VwLDVOsQcwm1uIQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=OuTNWeg8DdH5q+1p1QC0lQP0Pbm0zlE6KOTTYjJsWBYnbshNqDkF0qcXoKwH3ha5u0VFRSo5bQz7gIqNu2+2qt0v7s+t7bKUKw6pNHpP9zzO3r+4nqW5FInQ0ThjAZ29H77wvv2wfaSfcbyyp8hjXnLeapboEQ805EDcR1LworA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AkM9A3Kr; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AkM9A3Kr"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779a637712so9615575e9.1
        for <printing-architecture@lists.linux.dev>; Thu, 20 Nov 2025 15:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763681516; x=1764286316; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VdoCawakKqiHmdE3RKtpFUwlpCH5P/0NRD/AoTfrOO8=;
        b=AkM9A3Kr/TZyLwwpU7shoBqvR//TOLPpylpHPCWlmMwHO5fjNbk5ooda+3cYwFAr1c
         hI2c4kL107v4oG6Pq/0z9dcqQg2ohctvz3lKE9El7yvoHY27muLpSCeI+siMt6Z9KQ3T
         8lfUxkffm92Y51HDWsifv8txr3RYkbPLX16Kl9KcvacA1uP+n13VpN3ITcTYIdtn92Zn
         LN3MB6/4CoybStP8GTyBoUGQG1hJZ+0Kjsq7QuZjfw1omSoLHtPOOvuxV6p7iAix8WlB
         Cu3kgQVF4e7F1VtTPlZAdaNjuMbEmweQS2tYCBeJGxDGM5JlM3zCQWknijJzDy6eVtQL
         juIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763681516; x=1764286316;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VdoCawakKqiHmdE3RKtpFUwlpCH5P/0NRD/AoTfrOO8=;
        b=JpC1WQ9gpVx1JS1A2ftP8OWnUDWvH2TMHcEQFjrC9f9SxtX09qZdfZ6+ETOYD3wC67
         QYZ7Uu546xUT62jhzQjnP6eTVGOFOEjgrx9MuvjCAZX0g6HcXXYIzPXV+DHuv4hUCwfv
         DZr4bSqHCufK9mV182N6EdULd4cwiuOT1k7Ja2c4oZNpLM917gS6Izrhf34TXbHEFVE8
         sN7JVOamsKjftcZC/JUo48QSpL+rl/V8XyaZdCCC1WqDeguQPFsSLFE89n0ZteWKvpg5
         jCN0Gmar81BQsA1yOA/S4Ad8fHiSHRcnnPD/avmHWb38txI7FUZnMg2Ubys6azmVgpyC
         yVTw==
X-Forwarded-Encrypted: i=1; AJvYcCUh8iqtxUfW6Rgx84XR8YLKPwC2EXLznFOPK+bmqzKlQZdln1EA707dVmincKZsRRckhYjywpuSn2UR/qGwgxkLVE7fOMk=@lists.linux.dev
X-Gm-Message-State: AOJu0YyorFfn9nM2gdcyjw+MX7fbITFly0/WlAFuy6MYtnR8HUJRz0pD
	R7NswULJDaL2XEJIKlX2Hl/2S3BgkxMmqsnW4hWM2M4Iu5cqgb+Vymsf
X-Gm-Gg: ASbGncv64qOYQkTqzMbSbeQFZhMWR0CMSRAVerdLGlnbZ94BMhhMZZlgvxV73pxfxiF
	P0sJtYf9ROXkxTsWYvcjbvoX6qWWRbVM7jVEKVnkVBWtN7uhMmBQwpFRIFvKmCkvX4rmjlYnwA5
	KeOr7lawQvKTriMOIpJq7w6pXAOahQkQNb09L6i/Vq24GsTRxlNZS9sAhPSSeDIvQ5/JniG3KXL
	MBSoQlDUwbLn1HHpeD5CNol5K355YDCi6ZwGpH6kpsEYmp2EH2kqtH4CtuAv6k8/czxf8mqc3w6
	JPnIJO75sBXKSm+3QOvCnYdIq71zvAJqA3HpQwN9HHgiLx1IsIyBTb+sSMDOv/SfBXdJwFNuZ4l
	B2apVqxbC61j7V5k2Hh9YGS3rb9pK5cJlLckHYs692r99NWpv9Rnbsg914zcPJLM4ILbDZqIQqO
	W/4e2HLnTP57kDaStm1+R4G2RK/uXoeC8GsFgbOQqRHWh6xWpsZ3USQFjUKwmB/WE7GUs=
X-Google-Smtp-Source: AGHT+IHILh695TvmessHPGdXSUq94TT80oNg8Z9C2rrfEi5HWHpau3BGFqSBmlHE3pIEhl8iB6mXtQ==
X-Received: by 2002:a05:6000:310f:b0:429:bce4:20bf with SMTP id ffacd0b85a97d-42cc1d194fdmr80258f8f.55.1763681515553;
        Thu, 20 Nov 2025 15:31:55 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb8a29sm7903908f8f.30.2025.11.20.15.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 15:31:32 -0800 (PST)
Message-ID: <736cdb5a-824a-49bd-9cda-acc4127cc87d@gmail.com>
Date: Fri, 21 Nov 2025 00:31:31 +0100
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
 <basu.aveek@gmail.com>, OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - Google Summer of Code 2025 - Our most successful one!

https://openprinting.github.io/OpenPrinting-News-Google-Summer-of-Code-2025-Our-most-successful-one/

    Till
