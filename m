Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC1AC121
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 06:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711088082; cv=none; b=uaOhVYa3sJheKGW1ViKi2ApiFdrY6hJbandQlt/RpvEGSoDCfytxONB8IVOWOoB1yK0qf+a8kN2UDwoM3iBCSJYi51IPgC5/MvjHZqANdkqzZ5I1K6c3WEKxcAVJK3GinwSbt/dcr+sjI52x3yU5x8KEu+1a9WJf14q2O+5szTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711088082; c=relaxed/simple;
	bh=T2PSDIgPXOCdHwTwczr9YJy/wszFyySxF/Pbtym3efw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=jXUa4FBK3BprywDOh2zLgU43AZ8LcDSogb145Hn4FxFiZLOVV7dlvYOejZKGJmMx9mBumGhmkdmERMCJtE4bdv8KtmCoRtWpHLbGnAsZHReUP6yJClhCPIctD6OlC3U2cqKbe1lvRBItjXqnsv1iySIZ2+jImZPJB/NfaXcT60s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=goe5ArpN; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="goe5ArpN"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03705416D3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 06:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSht_BP1_nIj
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Mar 2024 06:14:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B9BAD416D1
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9BAD416D1
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=goe5ArpN
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B9BAD416D1
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 06:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711088078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kxB+/Lo+aKjR8uTfYJKAm9ht6M4qIuhIcqKV6a8crZM=;
	b=goe5ArpNDnpuVJtvYIU+h30NHZxmUqN/xEtHaD2kbPlMjlrbom1gyckefl5F64ilGUeh1K
	uJeTI9xHic9VHIJ+bCOLVGgn9KTJJqOvyOFv4DaphHjUkXbEa7gYM9oHQ4ckgnkXVC0h+F
	2LTnQRz9HEaCV6o4tvPFGtVUzUmwhFI=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-262-e04S3o2aNbyTPpLK363kug-1; Fri, 22 Mar 2024 02:14:33 -0400
X-MC-Unique: e04S3o2aNbyTPpLK363kug-1
Received: by mail-lj1-f199.google.com with SMTP id 38308e7fff4ca-2d48517c975so13209511fa.2
        for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 23:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711088072; x=1711692872;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kxB+/Lo+aKjR8uTfYJKAm9ht6M4qIuhIcqKV6a8crZM=;
        b=dnwmWC/dIpNA0qqqKFyW8NxqifXRprP2Mc/fKNB3r0AB2Cb5sKEszOqGt1DEBRFrHs
         Vo2m4oG+CUkrwWnQCuYFdHBec8wxP6avC1CSRn7+TzCBwOJTJwNOP4zsEyla1gLLpCXG
         /onQ7B/1k7x/Df49am57hNda9suuynsGquvxj1DHIzIX6dKLeqOofCFU6Uwc5lWp/Rj3
         qsTpWwq5fv3rixd6n2VD4LZBhP4UIRRD46EXygvCBvtstKxdVVUIGT+Tx29pde7Gm+Io
         j0WQyIkpnZIZCTIM56C2HDaZnLljt3HF58C2jUPh8myxhwT+Cb4V1OZsrL67Qg3uOq48
         ESqg==
X-Gm-Message-State: AOJu0YxSg9X1T/IAd3DUBW2kU5vQLCTg/Xj5XWrVlGDCAEKoNUqC64gV
	0b8GhLcVelpnD/zMUI1ewI//29nXZ7kI2xTzhMVedc5eT6AvQX2sku+IQralNTAT0vsBpU1G3cI
	bPKI0XhXx+R5dHUEtPMnLU8ti/IgNnaCR+56RJNwd6/5P2yPYJ3C7nqncqVMl9VZH7mQjExRn2X
	/QkzF4ZveLVGYB
X-Received: by 2002:a05:651c:19a1:b0:2d4:5788:a2ee with SMTP id bx33-20020a05651c19a100b002d45788a2eemr1112781ljb.45.1711088071907;
        Thu, 21 Mar 2024 23:14:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0RGkhsZONqbPnJXniYxVtg1D410gxACdCYi51E1jjcr5TJubXCVSqxjHmLxm1ArW7cOvexA==
X-Received: by 2002:a05:651c:19a1:b0:2d4:5788:a2ee with SMTP id bx33-20020a05651c19a100b002d45788a2eemr1112766ljb.45.1711088071544;
        Thu, 21 Mar 2024 23:14:31 -0700 (PDT)
Received: from ?IPV6:2a02:8308:a089:e100:199e:9192:902f:470f? ([2a02:8308:a089:e100:199e:9192:902f:470f])
        by smtp.gmail.com with ESMTPSA id fc12-20020a05600c524c00b0041477d83499sm1980244wmb.16.2024.03.21.23.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 23:14:31 -0700 (PDT)
Message-ID: <ccfacbad-52d7-4a42-8ab5-9bd014b7fdc4@redhat.com>
Date: Fri, 22 Mar 2024 07:14:30 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: A couple of questions regarding IPP specs
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Michael Sweet <msweet@msweet.org>, Alexander Pevzner <pzz@apevzner.com>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
References: <5c414fd9-204b-4c9d-a829-1a6f368bd42d@apevzner.com>
 <84EEF38C-152E-4779-B1E8-578D6BB896E6@msweet.org>
 <6035865d-de29-4f8c-b5c5-94c999216ee4@redhat.com>
In-Reply-To: <6035865d-de29-4f8c-b5c5-94c999216ee4@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Sending this in plain text...

On 3/22/24 06:30, Zdenek Dohnal wrote:
>
> Hi all,
>
> On 3/21/24 19:41, Michael Sweet wrote:
>>> In the CUPS sources, in the ippFindNextAttribute(), I see name is used twice for comparison, with strcmp() in one place and with _cups_strcasecmp() in another place...
>> That would be a bug, they should both be using strcmp.  It dates from before 2011 so I'll have to do some serious digging into the old Subversion repository to get that history...
>
> Fixed in master and 2.4.x:
>
> https://github.com/OpenPrinting/cups/commit/1aa0b7bd778
>
> https://github.com/OpenPrinting/cups/commit/d5b249e3c74f0
>
> I hope you don't mind pushing this directly without PR - I guessed the 
> issue was discussed here, so I took the initiative.
>
>
> Happy Friday,
>
>
> Zdenek
>
> -- 
> Zdenek Dohnal
> Senior Software Engineer
> Red Hat, BRQ-TPBC

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

