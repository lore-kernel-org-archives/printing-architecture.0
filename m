Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3572E639
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 17:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721842675; cv=none; b=Er51FyDCBkPyHYY9PYlEtp9BFcK/VfYfZyn2FT9+lpODzIHw7UoFaFu3Od+emr7IT96JWLQF7WCTpMekxE0IRZuORbWRt4lrnoWzflek+rUxmAgKA2LuFXKkd6YY9rA8+j0vBCf+Eo3tid1dtYzO46UFFg/XPWqTDCLLkoIS4Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721842675; c=relaxed/simple;
	bh=bYbMEK8+64WkG60UYbBJ3vl4Fd5zBSko2oxpRseqXkc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FvXc9XDeVtOAEzNuP5k/WA1bOixa3jl70Kdrr5UjvhOajpHSiW+GyGN8RupizQwGfwrJQL9eC87GjgakyQxc4EGGWYDtUEBRfx7ZmJ9tf81JJmrf3F0R/VPfU+VYywGtcy2CPU7jDPCdgqzMADOlr2gJ2VHvk7C+P4SuVfyZhNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=dDvZSZQL; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="dDvZSZQL"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 953F08169A
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 17:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y6gQE-KSI9ee for <printing-architecture@lists.linux-foundation.org>;
 Wed, 24 Jul 2024 17:37:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 18BA7811DB
Authentication-Results: smtp1.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18BA7811DB
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=dDvZSZQL
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 18BA7811DB
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 17:37:51 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-52f0277daa5so6161313e87.0
        for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 10:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1721842670; x=1722447470; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TQdXFbXhO5ZMcPC74k7LTw/3knmj1bF7HPjizQvPZkg=;
        b=dDvZSZQL/Abxrv3Wsa7HVepKVvDVodZjPxZJYwRRCG4VDDu5fY7rjmY7ijYODLQBfB
         m+NZX81klYnafP4TFu8b8yizOJx4taPOEZiURZ1BBjig9mGmslbdwEfCbxcbf3wR4uTH
         8YUaVUh+Nmgj7PJESokT4wPs94J2UE19RbgZyUvFe1qcYdD2SJjlz3WcOd/kfaKh7NOD
         0Wr2CeyE1TLbAT7yjCkXlpMrotJUSjyVtXmELKldfi32ilbFp+yBYngNB9r937JtgVtD
         cpLi2Twrueh3LtiEH3f8N5c3B7NFABX891y1RQ0SCpA7xwUsBtlUs7kf3koSljjZx++G
         bGHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721842670; x=1722447470;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TQdXFbXhO5ZMcPC74k7LTw/3knmj1bF7HPjizQvPZkg=;
        b=lVuezMhjsNBvntIvQI598LIr7IeZB20bpRdvxy6eXpo22a00kftuxwd6sDvz1gxcqW
         18++BgLmxWg1Qu3+ZNgjBqx/6zkYqIMWIiidsFed6gyHvToLUjZO69mNgv47m1Z7k0PN
         vFYy2UfwK29dPoRe1PVgOs8yzPF9OH9p6nGruA2hjTEg6MMpbCdxp5sNzlbBKtHDuGg0
         4raMMFNW96YQNTN4s2jOJ0SU12Z9q5oRsL0K8iUOeq2EIDGrqqKP0BEtVXFRqHj8DR1T
         aRQcy2d/FAw8v7orFalyu3nuR4cFo7kg7hUXSe1x5OX0VUsr7FiQaCXNmNQcCN2Qw1DK
         Ozig==
X-Gm-Message-State: AOJu0YzeYC2spL62v7Szpns7ozzNES+xPtBblDVokClf91NmAP5b/RhZ
	AM7JUdrl21+s0zzHo6B0rRRQeX1elr0UJdTdmL/BCChYs0ZBNM04fNsXA+CjXP8=
X-Google-Smtp-Source: AGHT+IHmfSLiL1KuyTYPN/+Iaav0RZ2pjhELlkS1kKdhiD4jCq4uikHHk1iIgrw25iXWB4g34D/UWQ==
X-Received: by 2002:a05:6512:234a:b0:52e:96d7:2f35 with SMTP id 2adb3069b0e04-52fd3f177fdmr343307e87.24.1721842669589;
        Wed, 24 Jul 2024 10:37:49 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-192-151.pppoe.mtu-net.ru. [85.141.192.151])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-52effcadb03sm1421675e87.88.2024.07.24.10.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 10:37:49 -0700 (PDT)
Message-ID: <9f1a249f-afcb-437c-b46c-642be209c4d9@apevzner.com>
Date: Wed, 24 Jul 2024 20:37:48 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipp-usb 0.9.27 announce
To: Zdenek Dohnal <zdohnal@redhat.com>, Johannes Meixner <jsmeix@suse.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
References: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
 <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
 <efb5a88c49a51289f0f9f4f9de801591@suse.de>
 <d37ef90d-a7f3-443a-8e39-d8567d596266@redhat.com>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <d37ef90d-a7f3-443a-8e39-d8567d596266@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Zdenek & Johannes,

I probably need to explain some details.

First of all, when working with external dependencies, Go binds to 
specific versions of external libraries. This is done not by version 
number—which can easily be changed, either intentionally or by 
mistake—but by the cryptographic hash of the entire source code of the 
external libraries. Thus, the library sources actually used for building 
are always consistent with a particular version of the library.

Second, no changes in the goipp master will affect the building of 
ipp-usb. If I want to upgrade to the next goipp version, this is always 
an explicit action on the ipp-usb side (not on the goipp side).

The relationship between a project that uses certain libraries (i.e., 
ipp-usb) and projects that provide these libraries is controlled by the 
go.mod and go.sum files, which are part of the versioned source of 
ipp-usb. Therefore, any changes in dependencies will be visible in the 
ipp-usb repository.

In the Go ecosystem, this is referred to as a "reproducible build." By 
the way, the Go toolchain itself contains many external libraries in 
vendored form.

Additionally, vendored libraries are only used for building packages 
that vendor them and are never installed locally. Consider it not as an 
independent copy of the library, but as a kind of cache. The consistency 
of this cache with the master copy is strictly enforced by the Go toolchain.

Thus, vendoring goipp does not violate your KSSSS principle and actually 
simplifies logistics, as any good cache does.

The -mod=vendor option is only required by the older Go compiler, which 
is still used on Debian 10. To my surprise, there is still some demand 
for ipp-usb to run on this old OS, so I will support it for a reasonable 
time. Newer versions of the Go toolchain handle this automatically.

You may delete the vendor directory in your RedHat build or leave it; it 
will not change the result. However, you cannot modify source files in 
the vendored copy and expect your changes to be included in the ipp-usb 
build; Go will not allow that.

So essentially, nothing has changed from your perspective. You can 
continue to distribute the goipp package with RedHat and CentOS; it is 
now just another Go library package that does not affect ipp-usb. You 
may remove the build dependency from the ipp-usb .spec file, but you are 
not required to do so.

Regarding SUSE, distributing goipp as a separate vendor.tar.zst may work 
for SUSE, but it compromises source code transparency. SUSE users cannot 
easily verify that ipp-usb for their system is built exactly from the 
sources published on GitHub. I believe that source code transparency is 
a significant feature of open-source projects from a cybersecurity 
standpoint; it helps ensure that our users will not inadvertently 
receive malicious code from official sources.

Honestly, I have also used this practice in OpenSUSE build services 
because it is simpler than building an "intermediate" package. However, 
it is no longer necessary.

I hope my explanation clarifies things for now. Please feel free to ask 
additional questions if any details are still unclear.

--
Best regards, Alex.

