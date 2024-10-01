Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51F219046D
	for <printing-architecture@lists.linux.dev>; Tue,  1 Oct 2024 06:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727764145; cv=none; b=E+JHk56pmCzb89mil6r27bGRehIcZv1KeWzO1lw+upRl+VruG0crIvOiCmrSFROs45YH4PFOeTMf6WRtPgZZgx1TAoh3FW5I9YE1OVSuf4XVsWdaqCd8e7Q6MvArVuAGWQn3daoEHHC8Lgdolo5vgGB9Z2hexnJRz7NK9YVzHW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727764145; c=relaxed/simple;
	bh=owL2OxistyFmkXmOfv/u73ckAU34IAcGHt+3JBiUzX8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B8oVj8WcT028S0Fq8JnYKV9KZ5cPth9pYvtpuVgypOTuqmfboiBsNY3R2WagYVmMzyfmPENUGNDp37Zttc7wLoNNnFZJRvwUTyRf2Ujq1at4JphdBQ4Q7dcIInR4Uvni7V47C4eeP0I4tjRsHniN7o5zjYQn0ZCJLG6sZRlfMi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NGn2qGpA; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NGn2qGpA"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1727764141;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lKbYtJ6MD3TK+Q9bOKnw/icGzuD6CGbWmo/c1CZLjZI=;
	b=NGn2qGpAfMeFuoLusX4FDMTJN+BICGaS9MBcfROum6nGcdcna1Au+hjO4/w8g/extZxlqT
	nOUgGo/X8Xfp8buCU7w0U7dDs7Ccd+Gr9jVdPYy1jEIukMkpWk3Xm86doJVBKltrtwhQIK
	0T8UzuUyN3kVM62OOEPeT+AuCcNeYfk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-434-TFfWmak7M4uZsExH2WwD1w-1; Tue, 01 Oct 2024 02:29:00 -0400
X-MC-Unique: TFfWmak7M4uZsExH2WwD1w-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-37ccc188d6aso3535073f8f.2
        for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 23:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727764139; x=1728368939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lKbYtJ6MD3TK+Q9bOKnw/icGzuD6CGbWmo/c1CZLjZI=;
        b=RgAavULGl1rHS/oGKfp/F4C0cutCCx8NbCjZQK9tQ+0sPxhgikdCE//5rJHUb03SXl
         PHw+kgskq+5wNG/KrBb5IYRbhfFKWRQBrlSTD0XIFKCpL3Xo6JGzhh6Kv+glUoNcJF18
         dM80E+VBgTu/uaCM1SBJYERkQw2q4xDIRA26N4DtMd/6VdmB7tHMp/3HKG+yhjBEPvFi
         F3aya+6lrcXaRCVQEgqznRBDGSACxfxTpcJwZ7MfY+ofuhkD96tJuL5EteALoYaITSIg
         0Laj7SDVHLzoD7X3kFEXt5LXmNZF2ZkoqppvkM1TDrf+SCqGgy3Opsm8vfRJNa9+qKDh
         UavA==
X-Gm-Message-State: AOJu0YyTnesSqK1g/CwLxKfjdf/xEXysLsE9k/RtrtbxCGhMt23JwvWg
	jCxfviN4QpQGYDofcCq8Jvo4txhuxSHREJ/q+xcKg2en26MhGHqif7BzCsqC/A6hWfElygDyJWq
	flCOhi6cUdlp2z70kt5EICsmIx6BcYJNmsU8pXF+RriPXiI5qxzisArdM8HAAOZI4/G7obwFVTQ
	==
X-Received: by 2002:a5d:4587:0:b0:37c:cea2:826f with SMTP id ffacd0b85a97d-37cd5a692e1mr11903770f8f.2.1727764139033;
        Mon, 30 Sep 2024 23:28:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtg/oIRDmlsOYLMHkvBFh2IObDgmrmkKkSst+inv8EiAGgY/s2GYinaHjYB332EwddkeZTQg==
X-Received: by 2002:a5d:4587:0:b0:37c:cea2:826f with SMTP id ffacd0b85a97d-37cd5a692e1mr11903761f8f.2.1727764138673;
        Mon, 30 Sep 2024 23:28:58 -0700 (PDT)
Received: from [10.202.144.51] (nat-pool-brq-u.redhat.com. [213.175.37.12])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cd5745696sm10963406f8f.106.2024.09.30.23.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 23:28:58 -0700 (PDT)
Message-ID: <dd051b52-6277-47ee-a2cf-47f034deae7d@redhat.com>
Date: Tue, 1 Oct 2024 08:28:57 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: CUPS 2.4.11 is released!
To: Johannes Meixner <jsmeix@suse.de>,
 Till Kamppeter <till.kamppeter@gmail.com>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>
References: <5878fe6b-a017-4e10-8a39-6e12c24331f7@redhat.com>
 <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
 <aabd2b8c27f7c075ef169f49c4f70f7f@suse.de>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <aabd2b8c27f7c075ef169f49c4f70f7f@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

since the fixes in CUPS were not handled as CVEs, I've stayed with the 
current handling.

In any way, it is always advised to upgrade to the latest packages if it 
is possible.

If anyone is looking for CVE-related fixes, those are the commits:

https://github.com/OpenPrinting/cups/commit/9939a70b750edd9d05270060cc5cf62ca98cfbe5

https://github.com/OpenPrinting/cups/commit/04bb2af4521b56c1699a2c2431c56c05a7102e69

https://github.com/OpenPrinting/cups/commit/e0630cd18f76340d302000f2bf6516e99602b844

https://github.com/OpenPrinting/cups/commit/1e6ca5913eceee906038bc04cc7ccfbe2923bdfd

https://github.com/OpenPrinting/cups/commit/2abe1ba8a66864aa82cd9836b37e57103b8e1a3b


Zdenek

On 9/30/24 16:55, Johannes Meixner wrote:
>
> Hello,
>
> On 2024-09-30 16:42, Till Kamppeter wrote:
>> thanks for the quick release, but the CHANGES.md
>> does not mention the CVE-related fixes contained in it.
>
>> On 9/30/24 14:25, Zdenek Dohnal wrote:
>>> CUPS 2.4.11 brings several bug fixes
>>> regarding IPP response validation, processing PPD values,
>>> Web UI support (checkbox support, modifying printers)
>>> and others fixes.
>
> I was also wondering about CVE-related fixes.
> As far as I understand it from the GitHub upstream commits
> CUPS 2.4.11 contains (only) those commits regarding
> IPP response validation and processing PPD values
>
> "Quote PPD localized strings"
> https://github.com/OpenPrinting/cups/commit/1e6ca5913eceee906038bc04cc7ccfbe2923bdfd 
>
>
> plus the cleanup to "Fix warnings for unused vars"
> https://github.com/OpenPrinting/cups/commit/2abe1ba8a66864aa82cd9836b37e57103b8e1a3b 
>
>
> which are somewhat related to those CVEs
> by avoiding sililar further issues as in those CVEs
> but are not the actual fixes for explicitly those CVEs.
>
>
> Kind Regards
> Johannes Meixner

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

