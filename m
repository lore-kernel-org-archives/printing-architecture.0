Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB5D33DEE9
	for <printing-architecture@lists.linux.dev>; Thu,  4 Dec 2025 09:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764839766; cv=none; b=j40beEHnRgDV8f/o23yxcJZhv0WXPu+vrQvZoF+K7hBF6yUtgwS1Rnsc2wOYLR5AMYwZWtwTyfCCULVVGzPPiuafeJzOp8WHy1qa1O25jG6JkqH2tsDrm6xTV2XVl3PyshpKCV9BkH/DMjZtynxHHrgy4/q8Ct7tZAVVvPNJvP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764839766; c=relaxed/simple;
	bh=lN4qyQy4HVaDLkvJ6mMKQ6nSO9ljh9I5rYW2zxTgvgU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=E5Dt0MRsZTFA8iRbjWyUnr7SrvkLQ32Brd64POEKbQxIchdNEGlFXT6HqLktySPp8b16qxGggLoMhbNycde6ok+AqbmBkHuwWOzV7BGvrXZvBlWRlPKawZxS6OcVLbJLuMF1Y8DETluRxKqOZJSA2hJYLXvXIy9Nldab+4E7OOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XfK+pn/Q; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XfK+pn/Q"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764839763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=p+/1YZKD7sZzL/VXeXxa4Z4zfmBjymVcU7XCCTVua50=;
	b=XfK+pn/QbvqqGXIHtMKA4XH+mZpE8Df93advGA+dIoCU0c+/+stplUM4dZnnBVpHNrgn5n
	kYE7gekzvulxlSPr6vrY67oNzgmLqjnRMlcI8woPGwpjbpd/aCS+M+sBhhmYXL94UHYzae
	Ds1+sfXN9conFRTWnlynFEYjl9KS60Y=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-616-UqTDVlB5PwqAW5skwUHjRQ-1; Thu, 04 Dec 2025 04:16:00 -0500
X-MC-Unique: UqTDVlB5PwqAW5skwUHjRQ-1
X-Mimecast-MFC-AGG-ID: UqTDVlB5PwqAW5skwUHjRQ_1764839759
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4779da35d27so6465265e9.3
        for <printing-architecture@lists.linux.dev>; Thu, 04 Dec 2025 01:16:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764839759; x=1765444559;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p+/1YZKD7sZzL/VXeXxa4Z4zfmBjymVcU7XCCTVua50=;
        b=ca3BaBpwNsxhNcw1CAgPALilJwovlXLZDG1VaA9yltgZtoJP1Jg0Px6bV6MD8OhB4l
         EeiK46Vocay4QuhN7sMyM7Ayz5kk5HgZLYaf+vmAJJUD98n8R9e0Hc4jPnxNYDGZpUBL
         03fv/lURQRdFugj1X8MtLneplJWeRBfVB+HaR6F4JcW4wP3RV5QO468vJWtyDU3Rq9Jb
         ZpthIDYrNuDftf2sS+1vLFcYbA9X5tqPgcmw29ZAqWRVA7Sj1vHOigmgx5PJMYWcF78u
         DLz+h3V9mUga1YYaYXorJRrM3mLeb8may3pkWwsgUirdi3fZCuXwRa/QfB7qURqdjrxD
         yRcA==
X-Gm-Message-State: AOJu0YzeEqCfqNHiTR7DCRtOiBHAT7CkvHGR3ryT+9kAtSG0o59waFVM
	AahY0fU9yZ5FbUUzPv7DT+YudDvj63Vtx8ZQ8g3b0iLiKKfkeK0cPbo/Yl3s7LejguK/HwM2Egq
	7iwcdJqQOppgMPEi//zpQxmOIGgsJqSozqDuENMVFfgC6k1yJobjVxXHDtliPDm5lfa1auY2hbV
	Mu3rlZPAqp004EOXb/eL9pfD2+9kaL717aCjwMfKS9v22kluMJN7x8fbFg2gz5
X-Gm-Gg: ASbGnctrhtVNe28XxkluFOEd7PfNazae/MihRgyKP9jSa2IFVws3uOVQFWfJ+s99+1k
	5xztKDnoR05F69n9OmX4log0bO1z2VBFnQDmPFc4/iJKGItu4+yghs3E0pdNicA36157Hj9AvW7
	MPD39wsKnNmGZh9UkOeGPIp17pYM5BC9nv9dcV/sqZJIcGcjbUJRehKiP7wTseGoOoPT6aL6Gnh
	O1BphYAUKti9JcPjhIqzOPIymQiNp5nx0H7kDfxwpg3Fv7xwnzuyt7VwWZvRfL+lNuUdwa3MhfU
	lEGHLaKjXbtCY3NQxvgBuxASOtJ7XJJ5Km9csxJxfICWpSdHdLZF7bvUHfER6ZS/5v6xCWON0w=
	=
X-Received: by 2002:a05:600c:154c:b0:477:1af2:f40a with SMTP id 5b1f17b1804b1-4792f28b98amr18836525e9.17.1764839758687;
        Thu, 04 Dec 2025 01:15:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGi0qz1KI7rW+toc5aVAse/GNj80iKc8PL+yBd3D8Af1yKGY0gJoa8ZDipIT+MtSfyOPtLEvg==
X-Received: by 2002:a05:600c:154c:b0:477:1af2:f40a with SMTP id 5b1f17b1804b1-4792f28b98amr18836185e9.17.1764839758251;
        Thu, 04 Dec 2025 01:15:58 -0800 (PST)
Received: from [10.43.3.35] ([213.175.37.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4793093ac44sm24115455e9.8.2025.12.04.01.15.57
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:15:57 -0800 (PST)
Message-ID: <6cf1f1ca-e469-41bf-a4a7-7ccfc6d03146@redhat.com>
Date: Thu, 4 Dec 2025 10:15:57 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.16 is released!
Autocrypt: addr=zdohnal@redhat.com; keydata=
 xjMEYfKEjRYJKwYBBAHaRw8BAQdAJggn9NALyWqrgrFGPJ9RvPb7wYbskxKRKQcLv+8HpbrN
 QVpkZW5layBEb2huYWwgKFRoZSBvbGQgNEQ0MjI3RDcga2V5IHJldm9rZWQpIDx6ZG9obmFs
 QHJlZGhhdC5jb20+wpQEExYKADwWIQRwgqClCi6SZA84gODkUi3MmyRv9wUCYfKEjQIbAwUL
 CQgHAgMiAgEGFQoJCAsCBBYCAwECHgcCF4AACgkQ5FItzJskb/fbUQEAm6R78JoZSIOpu68g
 tUUp1qbfDdsfoQkbdyfws/myB6gA/A6/9QiIk50DNCmBTisZk5CFP51YNvwnyxafmE3cDn8G
 zjgEYfKEjRIKKwYBBAGXVQEFAQEHQF6Qgj5UQqUdvqvnDqygQ6Vm59nRGHbPVDTwendtM5cC
 AwEIB8J4BBgWCgAgFiEEcIKgpQoukmQPOIDg5FItzJskb/cFAmHyhI0CGwwACgkQ5FItzJsk
 b/e2CwD/SyRi/I5Il5XY5VXEL/eBsnNvvtaO0T10V4/vBMiDb+sBAK3YmRl6WStfRiEvMXQv
 OhMT+sEjx6ufQXkuPeXHvrgK
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: N1nBeKymaaC26haVp6mJdqq0LvWL8mMJblwMq4VoZk4_1764839759
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

The hotfix release 2.4.16 includes fix for infinite loop in GTK, which 
was caused by change of internal behavior in libcups on which GTK 
depended on, and workaround for stopping the scheduler if configuration 
includes unknown directives.

The full list of changes is shown in CHANGES.md.

Enjoy!


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

