Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5911D699
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 15:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721836407; cv=none; b=NdZER75fXnS5UsG5wmbVB82FUqDBo3a4UDPW15og/rKOJHlAEIMPmIbjxYI9j9JomgjY+9Lx7FSvLb7rGxGeN1zLWrAWas4AbCOPf8BrV6/M6xgbeep40CDDYMygRD02xDH6rGpe0pTsUpa2qsYvFpP+asm5TdOQ2dJw/uQMlxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721836407; c=relaxed/simple;
	bh=T2G4wSL9lbn9t/HRZCwnSMMTkMKLrncOU6KTwv7NGWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eyMJydNrt+yT2ZvgAxtC4e3PIKIXphyLvNHT0f0w3d3T4hrBnfLEpu6/MetyF6UxZPsbUcPYJEJAX1caMnkNavQEba2RtOwm+KyOGlvNqdXpQt4G/DRCE+VG94z9QM0Jn9ZfdZW2qUx14k+tmSlVnFJfMl9VmzssbJ+xUNv8hEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Pu2PyMHu; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Pu2PyMHu"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0636D4067A
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 15:53:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HwbaxRhJiyB4 for <printing-architecture@lists.linux-foundation.org>;
 Wed, 24 Jul 2024 15:53:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6936740678
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6936740678
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=Pu2PyMHu
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6936740678
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1721836401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PM7KkWrb9mTYrQr2UTaRU/j21lkkQmEnEOQJk8q9NZQ=;
	b=Pu2PyMHuBTRF3Cpd7s3Br2+NEfuAvNwqxjOGqxWfGqvdA7xjGX+iWe2oOq21FGkSyaJf+C
	T8nvz9BvVhDpOVXNmY0eEhRP5Ofq/1w6wO9eUE6ScBc8zbkpkhbGTJwnJhHH3c/wkgGD8N
	3L6jIT0PS0H9p9Gz5peEsM04y3T3x4A=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-482-rAa9FCdtPJaEO_9TUELikA-1; Wed, 24 Jul 2024 11:53:19 -0400
X-MC-Unique: rAa9FCdtPJaEO_9TUELikA-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4279b07cd45so46521275e9.3
        for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 08:53:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721836398; x=1722441198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PM7KkWrb9mTYrQr2UTaRU/j21lkkQmEnEOQJk8q9NZQ=;
        b=uYLfZjoMy8g55JO8C/Ne9nGVqv6YjWBQt2EdzcjNQBDE7/uhtBcEdwKi/LRkHoaoVZ
         aiEXpPoCndMl/PIy8gRYehCeuf0y2PqVRNCkIKuuvwX4XquBvMvGDkr6jAAKbwmH9P86
         3CxjUeijFmewJb5ka0ddZ38BvNYWpcQyhEZ75sd/ALbTjhFTWu1BtS5Pe/RvPUc2pP36
         h7BtEm+0F5Wu+B9AMGidpcg0wV7i+7hc2ylULYAiCxsp+bFmB7urIr0FRGUdkPkXJIJD
         VAyfCdzC3eEMKYconf0cGjcrWgqUEYRpIQOMctIMmyInw1pZqZ+DdJn/GPPK7co3M+5O
         7row==
X-Forwarded-Encrypted: i=1; AJvYcCXXjW6MY8vRfgQ86j8xu98zL+Mpfaaf3YulHnsEKkVYpvS9X6Z7ZuimJ8uTUGOto7PtEMnuqAzA52RQy2E4Yj8l3eNBaXNkcl7jJgRcM3ojK1mI8JtFtuCyE7L2Lxz9zqg=
X-Gm-Message-State: AOJu0YxGyL5iYFrTxR3GtLmGel7FqZzmOqiGU/7/Z4V5ONHivTGIgAth
	nVUopDdtCXDB03w2E/2495JMlANUQf0d40ZhzDKMXPLopiv33QE9+GQ6vvOyoAYD/2Ybf7evqPc
	ZJyDIhhNiKuhLnPWPlex/BQFuUCpRy0EhWs0uNwLduwm3xxYGLRyAgbDAyewISMKTse25JlBAGj
	GsNpAr9/cKX8s7
X-Received: by 2002:a05:600c:4513:b0:426:6353:4b7c with SMTP id 5b1f17b1804b1-427f954cc02mr17826245e9.8.1721836398623;
        Wed, 24 Jul 2024 08:53:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtaqO/PaOsh5ZeRp8t8inCirZP0LuwP8mfXQfuJQTmuEKF6D/FR7FEt7tpU6km91qOvhS/9g==
X-Received: by 2002:a05:600c:4513:b0:426:6353:4b7c with SMTP id 5b1f17b1804b1-427f954cc02mr17826065e9.8.1721836398182;
        Wed, 24 Jul 2024 08:53:18 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787cedabsm14690367f8f.84.2024.07.24.08.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 08:53:17 -0700 (PDT)
Message-ID: <d37ef90d-a7f3-443a-8e39-d8567d596266@redhat.com>
Date: Wed, 24 Jul 2024 17:53:17 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipp-usb 0.9.27 announce
To: Johannes Meixner <jsmeix@suse.de>
Cc: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
 <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
 <efb5a88c49a51289f0f9f4f9de801591@suse.de>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <efb5a88c49a51289f0f9f4f9de801591@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Johannes,

On 7/24/24 16:14, Johannes Meixner wrote:
>
> Hello Zdenek
>
> On 2024-07-24 15:37, Zdenek Dohnal wrote:
>> can I somehow ignore vendor dir of goipp at the moment?
>
> I don't know how ipp-usb is made on Fedora / Red Hat
> so I may misunderstand things here.
>
> I guess you talk about some additional vendor.tar.zst
> source file?
Nope, Alex added some version of goipp (around goipp upstream commit  
94c92a6d5d2 ) into ipp-usb 0.9.27 archive itself - there are some 
differences, but it does not look critical, and they are in the current 
goipp master...
>
> At openSUSE we have ipp-usb and goipp as separated
> source packages in the openSUSE Build Service (OBS)
> see
> https://build.opensuse.org/package/show/Printing/ipp-usb
> and
> https://build.opensuse.org/package/show/Printing/goipp
I packaged goipp and ipp-usb this way as well, back in 2020 or something 
- https://koji.fedoraproject.org/koji/packageinfo?packageID=32067 , 
https://koji.fedoraproject.org/koji/packageinfo?packageID=32248
>
> Why separated source packages?

I usually am against bundling, but sometimes it makes sense - if we 
could say ipp-usb is the only project using goipp, then it could be okay 
to include it. But this could happen only in OS, where it is defined 
that ipp-usb will be the only goipp user. This we can't say for sure for 
github project, where we don't know how many  users forked and uses the 
code...

So I would go for goipp being separated as well...

>
> See my
> https://build.opensuse.org/request/show/1157901#comment-1919874
> where I wrote (excerpt):
> -----------------------------------------------------------
> please describe via an explanatory comment in the spec file
> what the additional vendor.tar.zst source is,
> what its purpose is, and wherefrom it can be downloaded
> (exact upstream download URL) so that others at openSUSE
> can understand what that additional source is,
> why it is needed for the openSUSE package, and
> that we can verify that vendor.tar.zst in the openSUSE
> package is the unmodified source from its upstream URL.
> -----------------------------------------------------------
> and my subsequent
> https://build.opensuse.org/request/show/1157901#comment-1919883
> where I wrote (excerpt):
> -----------------------------------------------------------
> In this particular case (additional vendor.tar.zst source)
> the files in vendor/github.com/OpenPrinting/goipp
> neither match GitHub master code in
> https://github.com/OpenPrinting/goipp
> nor what on
> https://github.com/OpenPrinting/goipp/tags
> the tar.gz for v1.0.0 nor v1.1.0 result
> (in contrast to what vendor/modules.txt seems to tell)
> so currently the additional vendor.tar.zst source
> looks rather "suspicious" - at least to me.
> -----------------------------------------------------------
>
> I wrote that in Aplil 2024 with the XZ attack in my mind
> so additional sources that do not match what one gets
> from its "well known" upstream URLs are rather scary.
>
> I would recommend to
> Keep Separated Sources Strictly Separated ( KSSSS ;-)
> so that others can understand what "the sources" are
> and can retrace where "the sources" come from and
> can validate that "the sources" are unmodified
> upstream sources.

The archive you speak about looks to be added by someone from community, 
where here it was added by goipp author.


Best regards,

Zdenek


P.S. 0.9.27 can be compiled even without vendor dir (I was afraid it 
will fail since it is missing and Makefile sets -mod=vendor)

>
>
> Kind Regards
> Johannes Meixner

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

