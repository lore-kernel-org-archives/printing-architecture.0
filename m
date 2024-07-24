Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6863E1581F8
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721829583; cv=none; b=nR8KL0/kHvE1wJr9w3djHQF+BNAHNmIH72TpU8r7lEIYUY3CdNbjZ6TnqvNG/K9QqGiG3dAEZASSRPKjvMmOF+4EsXa7Pz7IRJB4xIdQsL3xsLvd5QhYV+hPrVT7Ay59O1+42bH3oppErlYn6300Mpa9k0k540e3moxhDip8B+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721829583; c=relaxed/simple;
	bh=K7NiudV47Fgrkzm7B4DDY/c0qkXhLIu9SIEd67nCb74=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=q3xyOEsvQVwLHzJv9/PlN98CYMPHO1VAY3iiO79zeI2E1/QhomkLzSFrT+h63J//XPZYp0RI2W0QWFzIzC2lDaDyivYvbyct9HT09BG7kBnKGYgafD44iokwrvofptNQejQ76Wl3EM7jwjCKE9I6CZ68Z9t9t1UL1+JbZt5StP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=i+RCZTK+; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="i+RCZTK+"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5A536086B
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:59:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xac8r_4TJvVD for <printing-architecture@lists.linux-foundation.org>;
 Wed, 24 Jul 2024 13:59:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::232; helo=mail-lj1-x232.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C0E96077F
Authentication-Results: smtp3.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C0E96077F
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=i+RCZTK+
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 2C0E96077F
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:59:39 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2f01e9f53e3so38247801fa.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 06:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1721829577; x=1722434377; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MuwdayKjlZGoTNBxNC7Ajf/Ts/UA6OaiFyRFqAhUbz0=;
        b=i+RCZTK+nA4VCFGUb6vno0CVsYJLoRYLt2EzJDU+Imw3ZjxHY32St6D0aOzUMUQtQI
         G2FflwfJDnKvObiWxes1rsooAMW3fqE7o/DOuhc6BKK+FnMpXc9744CqihhmbiUEvTil
         tXBaDrqUrPz4fAVCOw+PymU1DUUhDqEXNDWdSRebHDSzZ+Iz+Kp84bUXtEW3EYxoW+tb
         iVQWl+3EXv2Eu94WpQQzMFr+m/onk0o8aBwU9N63nGMqkmm0fbWc69FnkAUU76/T3soH
         HyvP1iErhSIIy8GA0dUcIF0p6xUKkW9MJyoBn5X2XhWn+uz8UAEkf1iHy9uzPJDxsAlF
         XnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721829577; x=1722434377;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MuwdayKjlZGoTNBxNC7Ajf/Ts/UA6OaiFyRFqAhUbz0=;
        b=DN2PTX98RQ9P0VibisKeGuamQMODMAK9Dyd4ijahXiFWqCvz581TA1ID0EQiXvxLP9
         AWwPhK2DNOmhKWgdZmh7JKswzf6kymCJTdHMpeFa5GUpyD3Qy9iQpsKIGW1z5Wuzirh9
         lpwADkf28wyxN++QR3d1ZiXWuyAMKaYYASod3lEEYvJuv5s2LpPMAxhGeZUBK+PlGELi
         DL/zZ/Fn8my2yMasatLfYAUNo0Xh/PhILqiWwIMYHIfNDZk/K/J3a1XXhb/IW68O63vu
         NoLfcBkpw9dIiNcQeceYAJ12MjrQQ2lp2k4m8fdWLlE5qJSLnb8bmi9wqzgowS2lyNVw
         GoCg==
X-Forwarded-Encrypted: i=1; AJvYcCX7VwA+who9Ga+3/JjNJpAiefndgWXrk3u1qRe3QuaB3LKcAuXCgz2hklyUJ8I/JeHzqnVF2k5dmuyZbInD3r6iUWuKSFdc6Plzfu2jXqqFsJt7Bo4ltwrz2OhJEO5WS3k=
X-Gm-Message-State: AOJu0Yx/3V2fJnmC+KipmxEoe4To+mHPjeednw0B/M6eRLdblFK1A7hJ
	9+y14D+oC6Wa3DMf7QmXw1HfYuTP0C/BOpWlbIrq0bjAtCE8yeP4pzuEekVE27gEyg0FIt6HkhQ
	B
X-Google-Smtp-Source: AGHT+IHj3gaV2MuLPbMFWjwxOeppl4jfnbknesQthcX0NI8IPfcnuP5enyklymVApzXHsMK289pFzA==
X-Received: by 2002:a05:6512:1104:b0:52c:c9e4:3291 with SMTP id 2adb3069b0e04-52fcdab33e8mr2383209e87.60.1721829576463;
        Wed, 24 Jul 2024 06:59:36 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-151.pppoe.mtu-net.ru. [85.141.192.151])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-52f04aac368sm1038946e87.283.2024.07.24.06.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 06:59:35 -0700 (PDT)
Message-ID: <b2bc0cd2-1996-448d-a93d-2964f9caf4b4@apevzner.com>
Date: Wed, 24 Jul 2024 16:59:34 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipp-usb 0.9.27 announce
To: Zdenek Dohnal <zdohnal@redhat.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
 <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Zdenek,

you don't need to ignore. goipp can peacefully coexist with ipp-usb.

Alex.

On 7/24/24 4:37 PM, Zdenek Dohnal wrote:
> Hi Alex,
> 
> can I somehow ignore vendor dir of goipp at the moment?
> 
> goipp project is already in Fedora for several years, and now it is 
> already cloned into the newest CentOS Stream, so making it disappear 
> would be more work than it gains.
> 
> Thank you in advance!
> 
> Zdenek
> 
> On 7/23/24 21:41, Alexander Pevzner wrote:
>> Hi everybody,
>>
>> I am pleased to announce the release of ipp-usb 0.9.27.
>>
>> A few hours before I've erroneously issued a  0.9.26 release. Please, 
>> ignore it and sorry for inconvenience.
>>
>> This new release brings some bug fixes and improvements.
>>
>> 1. Previously, after introduction of [uid auth], ipp-usb attempted to 
>> obtain localhost client UID even if it was not actually required. For 
>> example, in the default, permissive configuration. If client UID could 
>> not be obtained, it could cause connection attempt to be rejected.
>>
>> As result, ipp-usb didn't work in snap, because snap configuration 
>> effectively prohibits ability to obtain client UID (this problem was 
>> noticed and reported by Till).
>>
>> Now, ipp-usb obtains client UID only if it is really required by 
>> configuration.
>>
>> 2. Fixed [uid auth] behavior on systems with IPv6 disabled in the 
>> kernel configuration and only IPv4 is enabled.
>>
>> 3. Fixed allocation of TCP ports for devices. ipp-usb attempts to 
>> persist port allocation, so once allocated, port is "bound" to device, 
>> and if device disconnected and then connected again, it will receive 
>> the same port. Strictly speaking, it is not required neither for 
>> printing nor for scanning, but this level of reproducibility should be 
>> convenient for users.
>>
>> Due to mistake, at the moment of port allocation for newly connected 
>> device only allocations of currently connected devices were taken into 
>> consideration. So port allocated for some device could be reused by 
>> newly connected device, if old device was not connected when new 
>> device arrives.
>>
>> This is fixed in this release.
>>
>> 4. External dependency, github.com/OpenPrinting/goipp, now "vendored" 
>> which means that copy of its sources included into the ipp-usb source 
>> tree. This is a standard Go practice, and consistency of "vendored" 
>> libraries is strictly controlled by Go toolchain.
>>
>> As result, there is no need to package the 
>> github.com/OpenPrinting/goipp in order to build ipp-usb; The ipp-usb 
>> package currently has no external dependencies at the moment of 
>> building. It should simplify packaging process.
>>

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

