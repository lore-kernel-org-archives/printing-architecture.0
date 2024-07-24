Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5C5158D7F
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721828272; cv=none; b=EJ6J0dsLg7gtmeZ/e2Qie3YJzWXOj8iPZEV+0AzaNhpWsyOcEuiHFRe/3ZEMS1/BqkjYreKwQcSqsi68P2hqZF9MzVmLHUCMNguHLItPC0lsZQnpgi5hY7wmNZlsQmg/jni+R8mIUTBoCYiGUQk35dCfLieGAgd0uUZeHC3pttQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721828272; c=relaxed/simple;
	bh=LReTN3YzdL8VloK6N6mPqDoCIFDHED5vtFuvtoUBe/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NalLku7QEqftlGfmrNprxLLbD6vTzmJM4ghkqHsHtUCnwC5nTCQwrlEA1ViwFVsD/IEb59pUnQxE/OS4/m0JR42lP+LIP/H6+3TRJFToRPhnSAXtsbWDSf4oN/YiJj/3KaePuyNITQ0TSM84bLNkx0U/ri404UochegYb4cHlg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jLBHMHyN; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jLBHMHyN"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D0E34061C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6wVz76Lg8NMv for <printing-architecture@lists.linux-foundation.org>;
 Wed, 24 Jul 2024 13:37:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12E114061A
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12E114061A
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=jLBHMHyN
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 12E114061A
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 13:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1721828268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e3onekJ05K16X21O+LsGFcJINj8LnDjzE+iY/Jzx7mk=;
	b=jLBHMHyN49VaDUl1oLatdBvKvooooyLxBG2nAqf70gN6zs83AOh3nYsGTksg66Yksnc2sh
	9pWyytk4nlaptZWQRl4z7PX93f2oZP9Rh0XnOSB+6QR4DZh5Fbi1IPmSZ2j39rrFXgrtex
	M4cSMlanJ4U376vYgRty+lYarpDkPWI=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-108-zreT01NwOruBxqW2-7SJTQ-1; Wed, 24 Jul 2024 09:37:46 -0400
X-MC-Unique: zreT01NwOruBxqW2-7SJTQ-1
Received: by mail-lf1-f72.google.com with SMTP id 2adb3069b0e04-52efc9f200aso732818e87.2
        for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 06:37:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721828265; x=1722433065;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e3onekJ05K16X21O+LsGFcJINj8LnDjzE+iY/Jzx7mk=;
        b=JSO/E5M1FzjfRjZKsjfcM29wk8ELliDZMc0CdJdNDF74rcEWzH7eSW/oJVUVFUC98Q
         Em9AQ7W1hj8Jqmf7Ge6WHfLrM6D4QKbnOPI0oHcnTPg3/r+gDf/8ebliUdopo71NQfop
         tJ+9+ZgQ+yKhz5AoDDoGYmxOy/ttMOcoivWlqFibendeOKQJZS3MZl8ct9sPYq1lrXGS
         MaXNPHMXlHQG1Fj8hD93c9v1yISXAiYMPAFGtjUpJxnBpCpDqZtPTtb8Ul0L0NaG9gNq
         iHzZRC4hW30wTkxdyqaWfPGR/8GDosmc2KJaT6KWq2+4X8pXZbyLcUSTz8TTUrP7pSDZ
         Y9YA==
X-Forwarded-Encrypted: i=1; AJvYcCUfn26y2xUO8FdG4bvBW7zI0odURrFA7P6mO4eqUxDFFXen/nKc4oySjt6OlaJbKRUT8v1YHxvA2y/Nk8kqegahuCJcWZ0GUiYLGHu9AUWMl9kZvxRjIO35Yf0nmU/Pejk=
X-Gm-Message-State: AOJu0YyGZsIUqe9X1pWHHyhOfah3i/loarU43/pYmua8hwSrGD7LvoV/
	4yx6tN3umwBPF2CvDEgwQ1UbwywXcFPerJ6172RoUEMAzfKHBug53JjlkGNOLj+bD2i+FeATPS9
	jq9dXYFopzn3u8UMDfWhf6KcXpwCrhlnEFVkfEl1SDP/w02Ss10fUDOoK2cTsQb6s2bSE0KqeOO
	xDfYSZ6y1jdtOA
X-Received: by 2002:a2e:83c5:0:b0:2ec:5933:a62c with SMTP id 38308e7fff4ca-2ef167d4dddmr100762591fa.22.1721828265404;
        Wed, 24 Jul 2024 06:37:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZYtV0JANgqN8VlBvRZKTHcnsLDwK99IFP3tNpgpWlwornPhgLsP3nlfN3Mh6FbI5/yjFkiA==
X-Received: by 2002:a2e:83c5:0:b0:2ec:5933:a62c with SMTP id 38308e7fff4ca-2ef167d4dddmr100762421fa.22.1721828264855;
        Wed, 24 Jul 2024 06:37:44 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427f9413823sm30304155e9.47.2024.07.24.06.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 06:37:44 -0700 (PDT)
Message-ID: <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
Date: Wed, 24 Jul 2024 15:37:43 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipp-usb 0.9.27 announce
To: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alex,

can I somehow ignore vendor dir of goipp at the moment?

goipp project is already in Fedora for several years, and now it is 
already cloned into the newest CentOS Stream, so making it disappear 
would be more work than it gains.

Thank you in advance!

Zdenek

On 7/23/24 21:41, Alexander Pevzner wrote:
> Hi everybody,
>
> I am pleased to announce the release of ipp-usb 0.9.27.
>
> A few hours before I've erroneously issued a  0.9.26 release. Please, 
> ignore it and sorry for inconvenience.
>
> This new release brings some bug fixes and improvements.
>
> 1. Previously, after introduction of [uid auth], ipp-usb attempted to 
> obtain localhost client UID even if it was not actually required. For 
> example, in the default, permissive configuration. If client UID could 
> not be obtained, it could cause connection attempt to be rejected.
>
> As result, ipp-usb didn't work in snap, because snap configuration 
> effectively prohibits ability to obtain client UID (this problem was 
> noticed and reported by Till).
>
> Now, ipp-usb obtains client UID only if it is really required by 
> configuration.
>
> 2. Fixed [uid auth] behavior on systems with IPv6 disabled in the 
> kernel configuration and only IPv4 is enabled.
>
> 3. Fixed allocation of TCP ports for devices. ipp-usb attempts to 
> persist port allocation, so once allocated, port is "bound" to device, 
> and if device disconnected and then connected again, it will receive 
> the same port. Strictly speaking, it is not required neither for 
> printing nor for scanning, but this level of reproducibility should be 
> convenient for users.
>
> Due to mistake, at the moment of port allocation for newly connected 
> device only allocations of currently connected devices were taken into 
> consideration. So port allocated for some device could be reused by 
> newly connected device, if old device was not connected when new 
> device arrives.
>
> This is fixed in this release.
>
> 4. External dependency, github.com/OpenPrinting/goipp, now "vendored" 
> which means that copy of its sources included into the ipp-usb source 
> tree. This is a standard Go practice, and consistency of "vendored" 
> libraries is strictly controlled by Go toolchain.
>
> As result, there is no need to package the 
> github.com/OpenPrinting/goipp in order to build ipp-usb; The ipp-usb 
> package currently has no external dependencies at the moment of 
> building. It should simplify packaging process.
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

