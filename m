Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E281EC01B
	for <printing-architecture@lists.linux-foundation.org>; Mon,  6 Oct 2025 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759739365; cv=none; b=QvMt+soMgR/HRi082DHPgrFNtE+kiew5Cqvz0XB0MkxjlX2ZA+DpbyF9zNAxSM7nO/Pjef9hV2biSBV9av1LbzKF052tuFpYKy13rfPpvgUJ9TK9sSsfJ0Rc5nLVcTYugXY80gaKpKwxy3IaJM95DyHklwAww6HAump+KwSTjuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759739365; c=relaxed/simple;
	bh=YnYadZjbfUkvQyabIoSIXq9vkfJlkvYNCYZrAd+9Vpo=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IxQzyNO3lxtYCKRCmnN3EmNZk/Eooz+8jZDVg7jF6wWDxaiNf5VOKWT+gmJxcpQ2TQqngMsQVNd4p73hSEJRVNhLPu4nPRHsGk9jgDar2ZrYSS7CdsK1g1aS/iBNY7fRD4CrsIYs9J6LVCRFgNxjNhv/K3h9DogPbz7cUPj395U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TGemhVI0; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TGemhVI0"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E58161090
	for <printing-architecture@lists.linux-foundation.org>; Mon,  6 Oct 2025 08:29:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.792
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XmLIFxGQT-bL for <printing-architecture@lists.linux-foundation.org>;
 Mon,  6 Oct 2025 08:29:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6BCD7611EA
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BCD7611EA
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=TGemhVI0
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6BCD7611EA
	for <printing-architecture@lists.linux-foundation.org>; Mon,  6 Oct 2025 08:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759739360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MHGXTpXa2RV6KU1kQXAB+DAFFK1cvwE7y3DKA7QyLJ0=;
	b=TGemhVI0I70K9rBU7lVpKVCHFVc8N08E4C5hHFSBbbDzbcS7GO8CkSwfNBYBGXoMUHowOk
	uz4sOqx8Sz/5e6G0kzZn2J5FQgaaAe4dz3fTMYIG3NSAuBUZyZisdDwLvMUn7vxIuzuKjp
	ZcnNC5v5nAehop/M4iEu3Yr6C5BhGLU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-oxIMlvQaO1GIgjRaZVKefg-1; Mon, 06 Oct 2025 04:29:18 -0400
X-MC-Unique: oxIMlvQaO1GIgjRaZVKefg-1
X-Mimecast-MFC-AGG-ID: oxIMlvQaO1GIgjRaZVKefg_1759739357
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-46e4fa584e7so18440225e9.0
        for <printing-architecture@lists.linux-foundation.org>; Mon, 06 Oct 2025 01:29:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759739357; x=1760344157;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHGXTpXa2RV6KU1kQXAB+DAFFK1cvwE7y3DKA7QyLJ0=;
        b=LcDKZNMv2NajibWHfw1jAhBuxvwrd5h8QL5P7mQmDRfiaUSU73vyZfgFKSZl/ViLnl
         FAPcTLcfVC5LCjYF+x4OcTD4odFYxBPIViKwhk/LktvS+IGXhD+byrbdFyJpIlr4Ds8a
         2mwq7i9H27a4KYSJwyOMT4DK0RbVKzAjJUn7b5Zax/o7sCGF+298VS8sfR+MuJb2RcPg
         w5iD268qov18Lb8ZHz9EebSKnjuI038jAzFsIw+Udxo93RijKd+y01txRDonv99XTp8J
         OSegzPr+Fq0ZQfb2NVdVj4yjXpGEQ5/m04ucu7RXYn7BTtvOyujZXLBJ2vDbwAADbBh6
         bgmw==
X-Forwarded-Encrypted: i=1; AJvYcCXErGttQBdWIYkWx9ZsgmRO3iRlSVUBefHuZMJ4Ka/FCZTBUlUm/y+TWL/bRoSA7/ZXcQADqN2/zGw1q3oXa/gHchPwIOs=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0Yw/JAYerOs1NF7XNRY0xbPXPVMVbibn6lLKZgDWL/+UyasNdF7y
	W22l3OT49gbuWlxVLIs7Ig7uU9zXtylHXN/RXIjkMlsGQWnDlAqXb+i1vyA83AUyn7c3mV5Hyfb
	Zw+CE2gXQ7LsIEr0bQfYgtpOwxwmJari2QBaahJo+4uaFMYfIxv79l7YHwLKLPrLA0k1BUJXeQy
	LRwLS5OQlYmls0JPRp
X-Gm-Gg: ASbGnctbtYKhCcYB0BpKEkLZWef5DUNSezQHriBxUYUdt9CgrY3eYrPCFJBjjlTBH5z
	cvmXbpHT+ewcS/iGM9Bb703CxiLYbQ1BcLw+eP3NP8oL6jcAD1nZbp+Hm2eqIZ17X2ObzQQWmdS
	ERe0OXy1nFZwY/rKzlBI8iDPt0eYx7VfAW7YXRePNuJFdHvgY8md7yv7SHOlZd47FPQu1SVliuM
	1TBXOkgJm1mdomi30SvCMBOtVW3xXElgFQIhWdqlBFUJhepH+qfziXF1vDKAU8FHd3F/5Dr3GVf
	1IubQ7+waQSm2wEnykcCoWgSQBgaBnUcOK8NzVX2wiQ=
X-Received: by 2002:a05:600c:1383:b0:46b:932f:9201 with SMTP id 5b1f17b1804b1-46e710ae7b2mr80102565e9.0.1759739356679;
        Mon, 06 Oct 2025 01:29:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVgDMtToMNBBb7YXnrfOwXEqtuwDDJ+pQDNpOukrNIE5L0uSc1z+/ygGkwP5y+Egjsq7CkRQ==
X-Received: by 2002:a05:600c:1383:b0:46b:932f:9201 with SMTP id 5b1f17b1804b1-46e710ae7b2mr80102445e9.0.1759739356311;
        Mon, 06 Oct 2025 01:29:16 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e7236267bsm159103555e9.16.2025.10.06.01.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:29:15 -0700 (PDT)
Message-ID: <65025754-f089-4a87-a4dc-458abca25f66@redhat.com>
Date: Mon, 6 Oct 2025 10:29:14 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: We should announce our releases on
To: Thorsten Alteholz <debian@alteholz.de>,
 Till Kamppeter <till.kamppeter@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 Michael Sweet <msweet@msweet.org>, Alexander Pevzner <pzz@apevzner.com>
References: <9f07fe2e-154a-4a9e-b2a6-99a83c2c0f82@gmail.com>
 <33c3a352-a2e9-455a-b9d0-65350de28749@alteholz.de>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <33c3a352-a2e9-455a-b9d0-65350de28749@alteholz.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JDy79jPDjTSHNHhtc1qnQUpLGu08YjHhrHN5ihewHyw_1759739357
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

in my case I separate social media and my work, otherwise I would be 
working even when I'm on social media :) .

So in case someone would like to handle the announcements on social 
media, I don't mind, but myself I wouldn't like to handle that.


Zdenek

On 10/3/25 13:56, Thorsten Alteholz wrote:
> Hi Till,
>
> On 17.09.25 01:07, Till Kamppeter wrote:
>> Perhaps we should create an organizational user, like @OpenPrinting, 
>> on Mastodon, for doing such announcements.
>>
>> WDYT?
>
> yes, I would like this.
>
>   Thorsten
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

