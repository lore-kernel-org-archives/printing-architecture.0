Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBE31B943
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 09:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711098394; cv=none; b=sTqfC8HieXe3tC6A8faCytZiERJYul3ZDxYsb/hQ6Wm0OfT4XhSOMZuGUlwCHkQGGIr1QeNvQqXPBrY1vS26yZMq79zjdpMWofxoDcHncFKQkJQITFnI+NPkwazLpmVcDqtVL4mxzbdkHoY61ZFwh2QaqAqEy05mw0w5ia1eLrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711098394; c=relaxed/simple;
	bh=QIBc3CDMSsWpTpjZnQm2vVWN+tndzA/pg3orCGhcjPs=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ueSvVgA73UT0rZPEj5ApyXqox4LXH4alh/4FQ5790ZCZv8GqdKYTXWk7LKltsQXEN+EavlF0C6JkU5Qmv/50klHiDKRX46Pew1OMWwCgEg+PCXWJsrZqtC3YsWUjvijvWvPcqYoeDrd/OH3G936KHwoBdcHKYZq+DCu1Ek8qB2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=HXDhgS3G; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="HXDhgS3G"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 508A341734
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 09:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id szgrDwj9mmVH
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Mar 2024 09:06:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4EAF416D8
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4EAF416D8
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=HXDhgS3G
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E4EAF416D8
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 09:06:30 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-512b3b04995so1238016e87.3
        for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 02:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1711098388; x=1711703188; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JR9NSa14CHlV5Dsk4oiAXBtIc+kjOB0budN0WZ8txsk=;
        b=HXDhgS3GJOJ58dIeGekVZhXf43oULWo/Y2N9Sn7UPtC6lu+ou0Dv5bChIq/YAg1c9V
         bLw+PW4gOv0FW7MyN1Xs8gCAx0GsE/SLxaDbBTJ9bX8Bhf48BPlD5z4gx/Pu/mRRkF0U
         F63ip/E1FSO2ltWpbs7ozo5nwSuxVVQZBw7UEsr/iszUxPSYAQKzuL0QapyI0oAnxW4s
         5fKTlblabWYFTKNyjOwUTNWQl+8Qt3QBuMS/VFz3d3Lrm1j0a4Cn1TXb01i9SXYaBYRq
         7nFEExYUF4Fvr7pwhLr3e4AbYNxfoHq3rUAVZECX7/J3gxxg6EKp5iV0fkm3dlpratEI
         uScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711098388; x=1711703188;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JR9NSa14CHlV5Dsk4oiAXBtIc+kjOB0budN0WZ8txsk=;
        b=EWbLLsd7IUxpGj3FZ5tYOgjN36+pI7Al2OOKiNHb+yhk/VorXJXIcW6eYK2UaCG7bs
         1zeHnVdAJ1/FQFg9aIiq6Tu+QaxtLyCU7Z2pmvV2Z4mhiBPI+CrqaRkRNnVTl7k67PPn
         IHzH19jID9nd0FVx4HOa5/sHOsU+GxcuQfP4L3HVfM2qEexBKGmWWbNBzDotBNboO1+B
         f0g5TUQ++bATbUuHUsr43C03GfVs1etz92LyhVCE55v/15IrW00SZ9tMWjCvO/tVsfk8
         Ef/xROCak87DVJ6Itwcpa3U0jS0EYwlaUdzzZ+CPmH3R0neUZO0NggWo8dPc9PiSQfpr
         UCgw==
X-Gm-Message-State: AOJu0YxxIFZF/iYHY1boP4rNcOWTC4UaTqmlyYXKwA5KcOa9pMQAXdsx
	gUsCzNoQm3X0jatZETZs8enpGWU6li3zHOUyMddd5kczaJKPWiqRYX/Fe/SGKRtLMxgMiQ146YG
	1
X-Google-Smtp-Source: AGHT+IHYPjv1Ecn+qLc51ZCOd09n/fHOyQX0dZzyTPsfgUE4rabH46SNlhZ4K7MyXO05H9Pk7vI2UQ==
X-Received: by 2002:a19:770e:0:b0:513:e918:42e9 with SMTP id s14-20020a19770e000000b00513e91842e9mr1103032lfc.62.1711098388006;
        Fri, 22 Mar 2024 02:06:28 -0700 (PDT)
Received: from [192.168.0.6] (ppp85-141-193-150.pppoe.mtu-net.ru. [85.141.193.150])
        by smtp.googlemail.com with ESMTPSA id h5-20020a056512350500b005159c7939basm78980lfs.185.2024.03.22.02.06.27
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 02:06:27 -0700 (PDT)
Message-ID: <6eb5d746-bbce-4b50-8dde-1c8afcb32187@apevzner.com>
Date: Fri, 22 Mar 2024 12:06:26 +0300
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
Subject: CUPS & IPP_TAG_EXTENSION
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Everybody,

yet another question regarding IPP.

In RFC8010, it is stated that IPP_TAG_EXTENSION is encoded similarly to 
any other tag: starting with 1 byte of tag (0x7f), followed by the 
attribute name, and then the attribute value. However, the RFC specifies 
that the first 4 bytes of the value should be reserved to encode 4 bytes 
of an extended tag.

On the other hand, the CUPS implementation encodes 0x7f, followed by 4 
bytes of the extended tag, and then the attribute name and value.

So, the question arises: which approach is correct, CUPS or the RFC?

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
