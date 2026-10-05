Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6434CDA31
	for <printing-architecture@lists.linux.dev>; Mon,  5 Oct 2026 15:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791215268; cv=none; b=Jn//nz4TZbqJY0NurEDg+CZS9MUBOhQozD+lou4c74fIcMsMutJMxN8OgDPbmRsXJyWn0Kwxf/tsKt5PBuLyeqQR7LI/6T0vZfEqLea+yW0Gae4bQrNq56jaGQ9jda6tMKdHsBh2HLd6FhRAe+lNShe9F1xjnaQEnua1LtbxA4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791215268; c=relaxed/simple;
	bh=rfSiVip9U5/+EnrIgh8T/ovHOeWBNm3AWLF5ZVWF2ys=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=YS17UAX+BzFmEoCmyn5e0A5OuCzbdZr1hZA+5izp7aGPNSdKz8PfqLUWkfg8HKHhycIpKNu271ENzTVvKPSH3NpZxYdbXN5jBRPzrEOB9mMl8rC1Af+kGTcmB2bG2Ojdw4EeFn1ZmfUXIAEak/zpC/8Al7/iX/4v6keuOshyFv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LE34D9GW; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LE34D9GW"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1791215265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=Uy87WkbkiNlWvu6SaEbAG46kXIV08UL3WEb5le1AV48=;
	b=LE34D9GW1q9tYKwHfVpHsDaMjuN19Et2nUGyPW1xXF4YVXhGh+J50TLSRYIMYaSOUsr9qo
	Xctsl0thljQA6UcLzLvbbAbmTpI9fXdZCaNzDOVKGCgSUnfcjeLARHEScDNimQj3w1urn2
	m34F824kxLh62xwbrGyCh+HdASd1X9M=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-198-PkaO92cpNJae7inoFUkIiw-1; Mon, 05 Oct 2026 11:47:44 -0400
X-MC-Unique: PkaO92cpNJae7inoFUkIiw-1
X-Mimecast-MFC-AGG-ID: PkaO92cpNJae7inoFUkIiw_1791215263
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-49953abe51fso14383655e9.1
        for <printing-architecture@lists.linux.dev>; Mon, 05 Oct 2026 08:47:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791215263; x=1791820063;
        h=content-transfer-encoding:content-type:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Uy87WkbkiNlWvu6SaEbAG46kXIV08UL3WEb5le1AV48=;
        b=1rnepO4d8OqbJqC2mgnrdOqNFhSlY4ncK1YCdPIqCUayM+t2cW+k4pryTm1woDU+Eu
         TsybMyioqGXWFA5g2gkcnLbUU2dRuzw1hbDkabVxCVUIvZb80GL8Z3jMeTB1tcGhC8OV
         6I8BhdDYK4f84QcQYOZtEHci13q6HcVCwDk1Ql08rJh/ZrR33WHH4bIKKAyvDce2SmlJ
         l9n2jluOGJiifmfllSkAFmYn3GkXAM0hhNYpRsWteAiua+202WeesYOSg+vgBWH0kjso
         B8UN62Er5HRN6Hxy8kX69wg7t0UJqq22EHEz0RhoB2/sxHiCMyhJ2NbuRqVZn4MksWfG
         nQbQ==
X-Gm-Message-State: AFuF++k1/onjRRF3PoQqF7pfW2BwWUQy+bPRldbg8FJkadaEswOz7r+b
	TyjbxIQroh+dLPXG9OE9jiGFLLihHdSoMn8SEBd6ZgTpDOUz9GpV3Q/o2LNRoH3fk+wxf0PEX+c
	L9lY+qFdCvcpPAY28eXFDzl+93vx26S++FFdiqyuVuIclPLqCWW+SrojZ55YT3H8yJ4+xP5EqUQ
	hF3TYWaQw4g/boP2JCM1a5ogbraVmb4suXs/RDpXCh37mhgfHeNroJce187T61
X-Gm-Gg: AYBFou3J4jZkU6n87J6hM8KNxunKoAb2zkq9c9Kxwm+GOcLwwCGL0qJMPMTae3rWM+8
	XI0BxoXWX52V/0WTTeHf6u2hcCpxd22vbpXXec0ONGyH7r0qQioyjfHlcO4J/v7XPJp6Mne3+UU
	yLYB+Rqo4ONU9KDCxyDNnqVhFYxJsck+NZTCwKM5CIH+idPIV7aDi1eMWJqM5+/bjn0vRm+sqhg
	bU3uFIR6xZlyT1VQ6YuFwHIpwVC8BdnXFwdAJdPwqxGdHnaYqrPOvPPpieTwF1Ujy2NST6EE/s3
	awX6vqAEkS64z6YaqZTPFh648KRfHd/guosu2vv3FTbtGUo+qx4ki70sQ/BeXaA=
X-Received: by 2002:a05:600c:6094:b0:4a0:2488:71cc with SMTP id 5b1f17b1804b1-4a0276b2222mr181739955e9.32.1791215262839;
        Mon, 05 Oct 2026 08:47:42 -0700 (PDT)
X-Received: by 2002:a05:600c:6094:b0:4a0:2488:71cc with SMTP id 5b1f17b1804b1-4a0276b2222mr181739585e9.32.1791215262385;
        Mon, 05 Oct 2026 08:47:42 -0700 (PDT)
Received: from [10.43.3.35] ([213.175.46.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1788fa0bfsm813325e9.15.2026.10.05.08.47.41
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2026 08:47:41 -0700 (PDT)
Message-ID: <9ccacf77-ea32-4fb3-a7d9-d64b589da7fe@redhat.com>
Date: Mon, 5 Oct 2026 17:47:41 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.20 is released!
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
X-Mimecast-MFC-PROC-ID: c0a0aHjuvvdzqaT6pe-LkRw0hys09vmKN0vI3zfbf0c_1791215263
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all!

CUPS 2.4.20 provides amount of bug fixes and security fixes:

Assigned ids:
- CVE-2025-55480, CVE-2026-61702, CVE-2026-87875, CVE-2026-87876, 
CVE-2026-55453, CVE-2026-55467, CVE-2026-105326

Several fixes use GHSA id, because we changed policy for vulnerabilities 
with CVSS < 7.0 due long waiting time for ids from CNA, which we take as 
lower priority vulnerabilities unless print admin rights are      
required for triggering them, or we explicitly mention the advisory is 
security hardening, and not vulnerability fix.

More details in CHANGES.md.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

