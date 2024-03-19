Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D248B2E400
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710862835; cv=none; b=TF9CowqPkXW90nau/CH/RGHXHs3dus2d5ckhiNMbBRLO4TOq2kwsGJLUsAgjbw6AlhFCvpKyfjK8xN1mNGZvHSg11S+BP77i1KwcvxpudAOMJNZiPLSXZFwzuhgYShLRLskh+DtWb2/itjrLytr24eqlIuMN99RPpvGZpLYSvFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710862835; c=relaxed/simple;
	bh=GrA6I5IPTMO+SSTVf515xGAwfMhjOFBlsfjlMt0vjBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=cMRbfFm7CBSMJ31bw2EjMknQp/NqLgvSm9bxOb/U9XYy7Iqwyrn2QyrFef7648okZjIYCQcNm2r8r1zRsEuoNIa8sQ4cqy6DM7KpQjLCtYw+1h40KOE7s/GNTXaM55vXt09Go8/yDclQgaEY20T9MdIyqgNy+a4bSEnrxpMgTug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=a0kZYn+H; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="a0kZYn+H"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A26740BD6
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 15:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csOc7FnviEuf
	for <printing-architecture@lists.linux-foundation.org>;
	Tue, 19 Mar 2024 15:40:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6EF8B40BFF
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EF8B40BFF
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=a0kZYn+H
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 6EF8B40BFF
	for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 15:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1710862829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jDRiWbHoyMfcbw2QkHrUzR5U9DDTZ+5mysMqZa3sesM=;
	b=a0kZYn+HD3eJyUIb8taQgr6F+uFZJYgRMAFADRzeyn0D7CjUVwKq3XQtWi20BZvoekIce2
	v5RkipuD4VNpXbLVwvlf2wN80vREsguj3bkniQ3aUpv7L15caQmAG7I9wnToMzBMpcX5fd
	QVwdQ6u80QyQAb8oga6UBoTEBu6j7f4=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-112-b7lJPfflNvSXsR3nxkNgFw-1; Tue, 19 Mar 2024 11:40:27 -0400
X-MC-Unique: b7lJPfflNvSXsR3nxkNgFw-1
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-33ed8677d16so1933474f8f.1
        for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Mar 2024 08:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710862826; x=1711467626;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDRiWbHoyMfcbw2QkHrUzR5U9DDTZ+5mysMqZa3sesM=;
        b=Qvc0zii8AF+BQYskfLA7sHIEwR1lRpJgg3cXCb3ONEUImx+pinMLtx+2Fp6zAGhQAI
         YLXls7iBozzdsCBLL0PIiD5UGkG894DT1oVpCbf7kJjxmPOcMjnlC9D8JCJ9UR06kBKw
         gmfEiRwHaK7IX3QBSe+8W01vP8O9LLY769+KgCCmZqMkHr9q+WbRtF36CltTuOt4gXab
         BakHHOTVUpLsLBsX4E0Rlwl0MDK80mDQ5x2XXUzP109iuSNZYUAuq3qWnTpNa/zIxfUH
         P06v0PmRMy+ea9mBfd/ZeZ3uQQmvMQk90+klJp8x7P0KNrVlafMBqXXqfvYKBeofWZgI
         LV0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAZ0CNCeE5DdXWtVj16Kd2fY+dPKCP9dpzoAhfNpWda/Q5/i4a2N7mHk3T+UUurrEk/N2AheJ6N7EXksdtb+8Si2v1ota1YdWfirawqvBGLS16S6yckbdXPoyk77Td70Q=
X-Gm-Message-State: AOJu0Yz2IiPH6mEz1vlREGyaQdidiau+7mi4cUsIEAfnWMXBFu1vt5Jl
	rMnmrjEHnmROC2Akp8wvkWdJOq+sIETHDj+l+/2OF/k9bL/B9BUhhtcQXRNJth3hYMjcxlvC8u0
	Z0AKwxqcSnfS/EbBK2422gonKxYLKQPxxwc6hqu+LQc9H57XZvepS6O48kd+8nEy4w0pmOGBChL
	u/93UNVjuACMRPjyWooWpj
X-Received: by 2002:a05:6000:36c:b0:341:9087:8a4 with SMTP id f12-20020a056000036c00b00341908708a4mr532227wrf.13.1710862826534;
        Tue, 19 Mar 2024 08:40:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwemxIi+X7dow7hqgwtFzV+6UibE37s47EXtbS/tDcFQwJIgWzM8Yo6mCNt5a0uI2tJVpWLQ==
X-Received: by 2002:a05:6000:36c:b0:341:9087:8a4 with SMTP id f12-20020a056000036c00b00341908708a4mr532213wrf.13.1710862826200;
        Tue, 19 Mar 2024 08:40:26 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id f1-20020a5d4dc1000000b0033e99b7cfa8sm7458002wru.13.2024.03.19.08.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 08:40:25 -0700 (PDT)
Message-ID: <febb2328-4ecc-4c9c-9b0b-7b2a1a48f8cc@redhat.com>
Date: Tue, 19 Mar 2024 16:40:25 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Pantum M7300FDW
To: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <7555e91e-562c-4d89-9c92-91ddc17135a4@apevzner.com>
 <2c995986-9bf3-4f62-8f74-88c056eae5c5@redhat.com>
 <161119ad-2e9a-42d3-8984-556506e402f0@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <161119ad-2e9a-42d3-8984-556506e402f0@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/19/24 14:37, Alexander Pevzner wrote:
> Hi Zdenek!
>
> On 3/19/24 16:25, Zdenek Dohnal wrote:
>> That's great! To have a way how to configure this behavior is ideal 
>> from POV - we can ship the safe way as default (IMO sanitize option 
>> should insert message into the log - admin would like to know whether 
>> something is not correct, instead of silently workaround issue) and 
>> if the user has problems, they can switch the quirk anytime.
>
> It actually writes messages to the log:
>
>   IPP sanitize: 1511 bytes replaced with 1621 -- IPP message was fixed
>   IPP sanitize: not needed - message is OK, no need to sanitize

I meant something around - "Printer XY sends invalid IPP response - 
please try to install the latest firmware. If the problem persists, 
report it to your printer manufacturer." . This should give a clear 
message something is problematic and can cause issues, plus hint what to do.


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

