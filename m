Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E946F3859C8
	for <printing-architecture@lists.linux.dev>; Thu, 16 Apr 2026 07:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776323760; cv=none; b=J8zftkRArf+B+fmsgxBvb5JNwpcOlba4V3prJFQORh1cVQ9Z8UvFMeCKSMi85/QkYlDZhZk0jIJ/NVY07m5MG1wtph3Ry011xhoH9IEs3qIs2uFsQ0W6LjsMSNbV9GHYOV+SJvOBfPeGYJucg43MXI2QfJX14/dIjw4akfmYxdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776323760; c=relaxed/simple;
	bh=GAXD4+dhERes4/Y6FvEUOfC0DACcaQsnIZvw6Q9pQ4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MfKbAGFkWJ3NeFTkfuvPTp8X7r/8Ef3oX+WYJ7BsPzywWf4FgjJAGh0ivwZkngnDNOxOIwfXGdq219fheIYrf69rd8PXtC3/mcBe/7sAfXxBPhVRYbKYrerb+89KaPcsNozoXihNom3RDLdARtUKVXLnTErhT4pDIlFxOmyyWvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G8TibvFq; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G8TibvFq"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776323756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=DMIzLUNSNRM1jqlb6k/wUQf/NVQxFR1U2HxtBlrd8Xg=;
	b=G8TibvFqd+IjyTH0+UqOA0lqUkL8/KZoD3mssHpUP4i24ydnYAo0C+lOsb/lK1kHnglzka
	R9+KtC5kNA1+aFeYDv3M/ebrnZxCXBQ1cege4TS1mczV1QExH5cpVJi5q5aM/k/rP5sEhc
	H35fpvaIlYZOSeSIF+CgtSpOgOjqH6A=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-111-5VSFyDbcNNGF6YOKhWVmxg-1; Thu, 16 Apr 2026 03:15:55 -0400
X-MC-Unique: 5VSFyDbcNNGF6YOKhWVmxg-1
X-Mimecast-MFC-AGG-ID: 5VSFyDbcNNGF6YOKhWVmxg_1776323754
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-488dcff87b7so33688615e9.2
        for <printing-architecture@lists.linux.dev>; Thu, 16 Apr 2026 00:15:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776323754; x=1776928554;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DMIzLUNSNRM1jqlb6k/wUQf/NVQxFR1U2HxtBlrd8Xg=;
        b=IY4n3xV354c1BrAy4BioBVyp4YmSlUn+xqB3ezo0CAYTT7gHsrGovTmjgk682HTGCp
         HcW18tHHGLsXUC2g5HTdCzn8yWeyqSh3Nkk/z+yIiilEdpxCtodEu7aWO6eI0UaMMmPC
         TwFWXZUGhIGbDf9bLPGlbALlcwSNmmQo0IYbEVB6MIxs/KPUufp93BfuRGRib4XPpg/2
         LICOtxyiZ9lhY3IbdS20ej7dspza6ypn2jI2DIBcthcL8ALYI/u5Qv3d4pbKRvif9go5
         PPXdopMN1L7Lwb+yxO9s/9Q5Vwl2IohQLK5zJawDwHP+MZXp9GWCt5NECkPT0a9aK+Td
         +umw==
X-Forwarded-Encrypted: i=1; AFNElJ/KlkHLk1idcDH8tlVwbEYDBhweLLgJzkKx4P6NlaTfjQvmp7kFw/p2nuT3Ov9xNztlV3bEo0voLzU2evUPr74bJQ1RwwQ=@lists.linux.dev
X-Gm-Message-State: AOJu0Yy3eV7k0f/xnbrGfX3/tdWlzNrw03XqySGbzKyPipVlK1hrtcXx
	auwGfw8q75B4LMSV1UaehCeI+5NwScK4kmtIqlNtEvMr80KkVCr3ZJ1CksUp0ZVUempmy5z1wNx
	zE4zFii3756lEJsxqmjVeLrvi6VLNaMDEZ05LZDbgsCjyK+KqxqvE6l250czal13wLJtyJroEWT
	QY7g==
X-Gm-Gg: AeBDietif+ibxcOg0DA4BitclYpSoBvkM4x0Y6EyuGv7IGQWh3Ge0QOpmpHCDycA6fO
	3gg1Sr10X0HocnGNRHxtpXF9Eb6pCkJF/noSQoZ66LhY8GOgo+dqpkhbzDEaSJc0tQWX1y/0zzI
	rGUhy2ZRqzweW4xxl0G1mDKD68fyw2Q90gzivm6Gu3B51pmgWhgqJszJE7C7hPUNjNlLdsGD9xH
	XyEcg4WN5WTRqTeO6igCIzJtTM7YmwbtFttJtg5ca9EET2hDn5sI0jdlmXXr6UG877097G+mkvG
	m2o37j9WnOLzLWHDY2eDa2EtqBSdJWMVjWQFwwnhEsT2ZZGPTcMm016Jq4udleuaPL9f3nfyIIH
	uIoLoPTjJvD4/NrfGaWWS
X-Received: by 2002:a05:600c:43c3:b0:488:f453:b976 with SMTP id 5b1f17b1804b1-488f453b980mr19981655e9.27.1776323754082;
        Thu, 16 Apr 2026 00:15:54 -0700 (PDT)
X-Received: by 2002:a05:600c:43c3:b0:488:f453:b976 with SMTP id 5b1f17b1804b1-488f453b980mr19981365e9.27.1776323753594;
        Thu, 16 Apr 2026 00:15:53 -0700 (PDT)
Received: from [10.43.3.35] ([213.175.37.14])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f5818e51sm48416715e9.5.2026.04.16.00.15.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2026 00:15:52 -0700 (PDT)
Message-ID: <e40968d5-e455-47f1-ba8c-d1727f972ee6@redhat.com>
Date: Thu, 16 Apr 2026 09:15:52 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AI-discovered recent CUPS vulnerabilities going through the news
To: Till Kamppeter <till.kamppeter@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>
Cc: Michael Sweet <msweet@msweet.org>, "Ryan \"dasgeek\""
 <dasgeek@protonmail.com>
References: <d42c7f96-edf5-446f-b6df-82dcb6ebfd4b@gmail.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
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
In-Reply-To: <d42c7f96-edf5-446f-b6df-82dcb6ebfd4b@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: H2PHUAN66SrEGhY1UAAIcq0gexNzU_CM3nvwhKOMumA_1776323754
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Till,

AFAIK those vulnerabilities - CVE-2026-34980 and CVE-2026-39316 - were 
fixed by Mike at the time they were published, so OpenPrinting/CUPS is 
fixed - they are present in both master and 2.4.x branches.

The only thing which remains is to do 2.4.x release, which I plan to do 
today. For now I updated the advisories to mention the commits which fix 
them.

I'm sorry for the delay, I had to do CVE fix for my other components :( .


Zdenek

On 4/16/26 04:29, Till Kamppeter wrote:
> [ Resent to correct list address, pleas only answer to this one, with 
> "Reply to
>   all". ]
>
> When chatting with the hosts of Destination Linux, they told me about 
> following posts:
>
> https://www.theregister.com/2026/04/06/ai_agents_cups_server_rce/
>
> https://cyberpress.org/cups-vulnerability/
>
> https://cybersecuritynews.com/cups-vulnerability-remote-attack/
>
> https://www.scworld.com/brief/new-cups-vulnerabilities-threaten-rce-network-breaches 
>
>
>
> Summary by Ryan DASgeek
> -----------------------
>
> -----
>
> The attack doesn't require a user to "click" a link or download a 
> file. Instead, it exploits how Linux handles printer discovery and 
> print job metadata. Here is the step-by-step breakdown of how it moves 
> from the network to a root terminal:
>
>     Discovery (The Hook): The attacker identifies a Linux machine with 
> CUPS exposed (usually on UDP port 631). They send a specially crafted 
> packet that "advertises" a new, fake printer on the network. Because 
> many Linux distributions have cups-browsed enabled by default for 
> convenience, the computer automatically "sees" this printer and adds 
> it to the system.
>
>     The "Page-Border" Injection (The Payload): The core of the April 
> 2026 issue (CVE-2026-34980) lies in how CUPS parses print options. The 
> attacker sends a print job to this fake printer containing "smuggled" 
> newlines within the page-border attribute. CUPS fails to sanitize 
> these hidden commands.
>
>     Command Execution: When the system processes the job, it gets 
> tricked into treating part of the malicious metadata as a trusted 
> configuration file. This allows the attacker to execute commands as 
> the lp (printer) user.
>
>     Escalation to Root (The Terminal Access): Once the attacker has a 
> "foothold" as the lp user, they utilize a second flaw 
> (CVE-2026-39316), which is a Use-After-Free vulnerability in the CUPS 
> scheduler. By triggering a crash and memory corruption while the 
> system is deleting temporary printers, the attacker can escalate their 
> privileges from a restricted service account to full root access. At 
> this point, they have complete control over the terminal and the 
> entire operating system.
>
> -----
>
> Michael, I did not see that, probably due to the flood of 
> bug/vulnerability report coming in in the last days due to several 
> contributors using AI.
>
> I hope you are aware of these (or of the fact that the combination can 
> lead to remote root).
>
> Thanks a lot, Ryan for passing this on to me.
>
>    Till
>
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

