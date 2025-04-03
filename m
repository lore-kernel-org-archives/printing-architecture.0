Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E026319E7D1
	for <printing-architecture@lists.linux.dev>; Thu,  3 Apr 2025 08:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670364; cv=none; b=g5Y/XJ97OcymwWczAV8Xt91wfyiWQ1DbVyE5rj8gSKJM4XKhSvTGQNlSfgOW4WT7dyzILiuc395WuWUuuZaelIQ1xT/KjYeKXBtfXycrzlksIjx6G/Xgj0L6CTes560PLcoNxniUfTlZQNcUdWbvcYDAsSDtdCqL2tuAJgVMMtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670364; c=relaxed/simple;
	bh=c9/Eakk4kaXXolGXOPitOct4kE2KejXZDLY5Q5QOcdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YikXBN6FhdNrjb9T3NbSV9iw45RdabrKae1gah3NOePBxLEN0JLbQuJYHdIHpANEDCOACMmDj157PSwKzJW7Gw31iNW1HEEy6QsLNh6u/N0a8bG/i4rtf4GmRy7toNyzTmLw2fbZKnho4fJKtp0YgxhTInayclg0vqqOzbajn0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WdleqNf+; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WdleqNf+"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1743670361;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jayDAbIaL+9EEE2VUFnoqik7P6Tl2unP3oSmZzYJLY0=;
	b=WdleqNf++AA912rLIcLQoh/X78D96zWsggbfKdqI7Zc89I3NnGn2lLa0TjJme4Sjq3itMa
	N/CYVArFVGV84QaynVqPuK206x+cnNaUkuLXeMG1vpS959yRqI1/nnqRJuxVdRz2S6lSAm
	V5PuOKLSnApg78x7lUqMK2eqcasAc4w=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-580-8bYdAfJkOPyMHPNkxebQTg-1; Thu, 03 Apr 2025 04:52:40 -0400
X-MC-Unique: 8bYdAfJkOPyMHPNkxebQTg-1
X-Mimecast-MFC-AGG-ID: 8bYdAfJkOPyMHPNkxebQTg_1743670359
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3912fc9861cso284414f8f.1
        for <printing-architecture@lists.linux.dev>; Thu, 03 Apr 2025 01:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670359; x=1744275159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jayDAbIaL+9EEE2VUFnoqik7P6Tl2unP3oSmZzYJLY0=;
        b=PMJxgsdo+zqJsA0rC2pUINkJ2xTlZOkSFPrKEZTTPS5eks9sO7grDn065oWN9d0l/T
         7/kHq45i3wKCr5wpbiCayFiAiPUuYLXtMTOSam+Qj8CN/gDSBVa/M4Q2ESfCAwVhtWVq
         l04Df3fNlRCJRYHhWHZDvyjFgHNLfPKFJ/RtDbAmIGb4Lw23ZNeCx131GDyg6JXaDf/7
         K5BDKACdDArEgrYSz9y071Pz+m3zGW3c0eIW+HrE7We+3jnpgG9gGbkF0uyS9m/3Wc7c
         U9QzkVqg33trDBWGaqCivEqNBlFHqAGScP4PSFfEhRUa1dw7V+CWIJdGMEibmI5gnnF/
         bZtg==
X-Forwarded-Encrypted: i=1; AJvYcCXveuAPiDyVxmB5ajz/ftPZeLsP3qGh+IhOSMawaRWZ98Klg+Z9Y2ScyF23KA8oVQpo/oN3BOad+0tiGlofYdUrBPDia8Y=@lists.linux.dev
X-Gm-Message-State: AOJu0YwFuRUEfHMj1tmutYu8g5p2MfnJuqhe1M2peRvmy8TfRR8IVjkO
	XPwLjrM9tdr6KqVoniheE/Yc4cqtLx+YKuXJtmlep2zRN2wAYmsj4rd44waZHqoErlbI0plJw03
	aHILvDyp7HPncg138lIxYPRjyLrq6lR0lKcgj+g5HOHIGxHXZ6wUU7z09Bso1y6HcfZ7R07gxYQ
	==
X-Gm-Gg: ASbGncsgNY2lth8+TicxD8GL/YWGtR3sqiMlw6+BNw1Gc8JnAsWa0yuOCx1lDOyFHKz
	as0+4Rn1SEJ7GB0HQJQl0qTPx6egQKxBvvoWLcRdY85DpnhHfjxs1U9s7qrTvJsnES50GUD7/Ez
	7YIOUmA5APd+nHm76ATqmzq66hU43ORb6bO/bcMIZKC3Vh248Yj0PbrobHyhCDf58p7ihN2Yfpd
	X2q/910HGp6opFQfJwxFwz16UtTI8eodtCL4wFU7IaRcAxrEXOHZY0cgmb/U27Oze+/6twF51VN
	nHMAtj0aeCDr
X-Received: by 2002:a5d:64c5:0:b0:38f:483f:8319 with SMTP id ffacd0b85a97d-39c1211c87fmr18071904f8f.51.1743670359305;
        Thu, 03 Apr 2025 01:52:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHA4c/+USi3gAR5djzo4AfcNfv/0Vu/Uew8OVSDTnJBWDAc8rd1uvRv/qmfVUT3l633iclvxw==
X-Received: by 2002:a5d:64c5:0:b0:38f:483f:8319 with SMTP id ffacd0b85a97d-39c1211c87fmr18071880f8f.51.1743670358923;
        Thu, 03 Apr 2025 01:52:38 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec1f27a55sm13918135e9.2.2025.04.03.01.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 01:52:38 -0700 (PDT)
Message-ID: <b917b1cb-013a-4fe2-ac4a-c3d4b37f0c00@redhat.com>
Date: Thu, 3 Apr 2025 10:52:37 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Migrating PyCups to Python CFFI for libcups 3.x
To: Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 Johannes Meixner <jsmeix@suse.de>, Thorsten Alteholz <debian@alteholz.de>,
 printing-architecture <printing-architecture@lists.linux.dev>
References: <195f6c36bda.7bed295d81707.2073846750099631163@zohomail.in>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <195f6c36bda.7bed295d81707.2073846750099631163@zohomail.in>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 5cqOCQaemxIA2Qx7DToLa3byFXc6ZrZG7VqaSUk-XB8_1743670359
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Sounds good! cffi is present at least in Centos, so I don't have a 
dependency issue - I'm not sure about other maintainers (added Johannes 
and Thorsten I know of).

What we have to make sure (based on the example) that path to .so file 
is not hardcoded, but configurable during setup.

Thank you for working on this!


P.S. I see two mails in the list with almost the same content - is there 
a difference?

Zdenek

On 4/2/25 15:49, Soumyadeep Ghosh wrote:
> Hello everyone,
>
> This mail is after a long discussion with Till about various different approaches and possibilities. PyCups for libcups 2.4.x was written in C using the Python's C extensions
>
> The problem with that is:
>
> 1. Very low scope of automation
> 2.Very less support from different python communities
> 3.Only source of support is the original python documentation
>
> With libcups 3.x, I am planning to move to use Python CFFI. With this, there is also a scope for automating the bindings too. For an example, how this CFFI bindings work, sharing an example here
>
> #include
>
> const char* isPrime(int a){
>    int i, flag=0;
>    for(i=2;i
>    {   if (a%i==0)
>          (flag=1);
>        else
>          (flag=0);
>    }
>    if (flag==1)
>      return ("Number is Non-prime.");
>    else
>      return ("Number is Prime.");
> }
>
> int main()
> {
>      int n;
>      printf("Enter any number:");
>      scanf("%d",&n);
>      isPrime(n);
> }
>
> This is a C function, and now, we complie this as a shared object and call this from python
>
> from cffi import FFI
>
> class DeterminePrime:
>      def __init__(self, library_path="../C programme/determine_prime.so"):
>          self.ffi = FFI()
>         
>          self.ffi.cdef("""
>              const char* isPrime(int);
>          """)
>         
>          self.lib = self.ffi.dlopen(library_path)
>
>      def check_prime(self, number):
>          result = self.ffi.string(self.lib.isPrime(number))
>          return result.decode('utf-8')
>
>
> As one can see, we just need the signature in many cases, to call the function properly. Please let me know what you think about this change.
>
>
> Thanks and Regards,
> Soumyadeep Ghosh
>
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

