Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE49A132C1F
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 17:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711041936; cv=none; b=ADCtO4SzF6JpxEeF6eVEzazfieapOwChWFwB2Z3fNoRNJdEeH9qmG48k9VGP3H4xBKUDNd1dvKqsokBYfy7l8/Rd+QvHCXt+wjOJb/IOd1A4axZarD4EbGF0pXE9AgE/1xZ7Ia0H66yfIe1yTj1jBVF4Dn0iINe3VyZ2z/0B/X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711041936; c=relaxed/simple;
	bh=EZuZN6+AYCgxjyvWILIgUYOzgesYOkpu0eLmPC+8jmI=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=IkGSp7OMsF+SFla1FYtv8VW5PVs/22q59CHXh7me3E1HeQwWrQzPZrOsEpkmQvu6byI4Yep0ZZWJolri8ljJNJdPe5N6NEJ9DTdd+oF/ZCLQuJae8whbNcE9QgBlmz7lZ3XhhxzTNIuG6AZf2X6PLvheDZPyhGuvYduzuHRb2Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=HyJZj4A1; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="HyJZj4A1"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30ABA60EF3
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 17:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HlepwyHot7G0
	for <printing-architecture@lists.linux-foundation.org>;
	Thu, 21 Mar 2024 17:25:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::12b; helo=mail-lf1-x12b.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 271A860EF1
Authentication-Results: smtp3.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 271A860EF1
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=HyJZj4A1
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 271A860EF1
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 17:25:29 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-512e4f4e463so1540772e87.1
        for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 10:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1711041927; x=1711646727; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2i9j4DT2Oh+G2SbOKsdymvhL+mJCCq3OJ7WCNCUTdjU=;
        b=HyJZj4A1cb0hRaobz0e2BDatnm+eqHFsh54YHQfC1xLxrXxehX/c7EMTARaN7h5Du5
         G9r7ZCHuu4ebDdCqcWmKRRriLT5LnNDd/DFBaOrjakCDfHsfdG4vglBWdPYTLrDaHcfH
         Cf81s9O6giIk16/+77GSEwAoZRDtPaeYoiyszhTjqbYBCmIthEigQKxb//zjWSnAfOHn
         s0xAb4mjwOmLK2e0XkBbUwmjB7Cm5yVMl2zDqtoKTD4p2ZMBics5+5nQz8cFXLSp4xWO
         sjVhR1mJ4jxZhXT6T4Ln4KzgkBdGqrhx5TlB/lRgigcl9OfkhrUeTzt8QLsCQCTHOTVb
         kxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711041927; x=1711646727;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2i9j4DT2Oh+G2SbOKsdymvhL+mJCCq3OJ7WCNCUTdjU=;
        b=qAKZQojTcYAYxqjX5dv0SXtScJ7Tj/yWWXeiX5BiJ90dUVobSAWPp6fAaLQeAjMIp0
         qztJGfpQMeUVPTmm6hAxU+qloK2waYmCO62N2f58/N90UAOvRKgzl5Q75yAbse6rZohE
         bHGufm+xMppcQOikBmmvfNhmDetmoFZIv1YmNaPpdcEq1cGa+prUTqOKJdskjRNI85zq
         FG9vEzW2u0gDZLuePScRuNAmL8YEvoidmqe66IaoeRYcode1mfp7dzNaDoKXxyoNDzPO
         N5IUWSYJjkKnujcSyaa4aTUaaV6AOpjFr47rnTWWhi4UCcJHngeeHAKgPz+3x4GsTBCP
         uuLQ==
X-Gm-Message-State: AOJu0Yz3cToZ27yu/y/GQlsgm4zdIIFn0tzwx6zUARLPUsfuKnldSr7p
	5SjYWNfxoofyPXs/mg1spoJzDwgKuDlSNuM3uBr1izU+PhDBy46JfGoTfe8SDv/Ktplo9cqbnQS
	1
X-Google-Smtp-Source: AGHT+IGXfTvsMNtIva4ggBYAUiuOIsYI8dUc8muxAFNydFD+WI+KrvXcA60sKwcy3kT7fQV0X5o7iw==
X-Received: by 2002:a05:6512:557:b0:513:1a94:f9ff with SMTP id h23-20020a056512055700b005131a94f9ffmr18209lfl.3.1711041927059;
        Thu, 21 Mar 2024 10:25:27 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-193-150.pppoe.mtu-net.ru. [85.141.193.150])
        by smtp.googlemail.com with ESMTPSA id q1-20020ac25a01000000b00513a76b310esm16022lfn.60.2024.03.21.10.25.26
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 10:25:26 -0700 (PDT)
Message-ID: <5c414fd9-204b-4c9d-a829-1a6f368bd42d@apevzner.com>
Date: Thu, 21 Mar 2024 20:25:25 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: A couple of questions regarding IPP specs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Everybody,

I have a couple of questions regarding IPP specs.

1) Are attribute names case-sensitive or not? Is the answer the same for 
top-level attributes and for member attributes within a collection?

In the CUPS sources, in the ippFindNextAttribute(), I see name is used 
twice for comparison, with strcmp() in one place and with 
_cups_strcasecmp() in another place...

2) If two or more attributes in the same scope have the same name, how 
the conforming implementation SHOULD behave: ignore the second 
occurrence (seems, CUPS does this way), reject such a message with an 
error or merge values?

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
