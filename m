Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C7D35E4E8
	for <printing-architecture@lists.linux.dev>; Thu, 11 Sep 2025 16:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757609939; cv=none; b=XRMDtxPWVNKuP2A8RBaQDc0odgCGEWrHg3/5LYQ8Zs8o5Q7UaHMUozmeLmWLkccmcylOcE64NbVYa4etcuLnFXAt90XjitRUMgqRbQdERKzBSuncAhf5q9paMAKvsHuGbETUnRCmc5cbB1pikzl7wq+6xA8LV4fWMBgXV4Ryk/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757609939; c=relaxed/simple;
	bh=5c0W3aj4rJdQ6SRDz0S0GADni+NEYMqSaWeqeuIlEKA=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=gmJyysrlQz8J2mRrjzLgeU21FKLc6V+DQfmfq4FOfM12Luw6ggcv2he2AGyUgpyM7owa+mT+L/QH/Cz2Qi7rrKcgFXKxLx4PdrpyXpvXszEVfEJwgE25pkxlLpKRu1dB4taH4EmmDD2UAt82hU2JH6oJPcoT6J1QxtYkamIsY9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SV+VrhFy; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SV+VrhFy"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757609936;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nZyG4QWS9f6o4n5Ntrg/PiM5t4eiaufMU7L2kBI34N4=;
	b=SV+VrhFy6R6iCLbsyXWLAgCPXsyKK4364zEG1ESKmGUqg4wLXjVKKH0WL7NURwf6lFSbar
	qOyJus8ycPUiszS6SEJE2xBtSsmm28rGk6HwwsFtZnI1tGZ2VJ4XeZ9Y3Yw2WxzpLiBt3y
	wdhcZaRwllkSleXV6gTo7EcVOMgZ6u4=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-359-yA3wgZ8AO6qnmQUEmg7J1Q-1; Thu, 11 Sep 2025 12:58:53 -0400
X-MC-Unique: yA3wgZ8AO6qnmQUEmg7J1Q-1
X-Mimecast-MFC-AGG-ID: yA3wgZ8AO6qnmQUEmg7J1Q_1757609932
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-45df609b181so8236505e9.2
        for <printing-architecture@lists.linux.dev>; Thu, 11 Sep 2025 09:58:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757609931; x=1758214731;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nZyG4QWS9f6o4n5Ntrg/PiM5t4eiaufMU7L2kBI34N4=;
        b=OYQLwSjgm3h1VqsmtcUGVW2m0vr7iPITv0y5ZyvYjxBqXFr/LRteA8YJyac43u0ryw
         toV1MeyRUniY99SeXBDOAVjjBQ6hV7xYpVwEPtaEhq3NNUjuybmfFLsELCs4VTCtmlHD
         py4x7oj9p3uuSWnNGAWd912mj19FRmVq+O7zWQOfyPvTEb3pcKadpl0PTLdoNPvv2HJq
         NjgbLUKjDcmS/dEPZN/mvOOc2zs999uw/M7irxGY7m7/pQxhXXCwxoSUoKdRejGmu550
         kTnf2Z0+EJJPJB/7yyjh0WntKabqf5fo5pCquUENKhPUd25WBuzkU7SiwbRvviclU98/
         JVQQ==
X-Gm-Message-State: AOJu0Yxdz4ZQPbyAWb6cp5JRggQSvH1CiN/CB81T1TPR5eSpPy9FqHDY
	g/Ln78hIM32hID6E1b5E+w3Ef/GYLCW8FPAOA3XxlNUjMWiruuHvjyyKMFlH1HEtLu30zEeLU3r
	7BmFrTRIBhI6GPQ9p1+qFInSaan/af5XZmp3rHte7bUUqA7j8O7KMDueYQDYOmXT53fSTVOBBHD
	hClRhA5WFqvQ+UmNYbgv12OgNAjxCJLu/JVdQXts8cIAupBMQOnT6M7xqbAaQK
X-Gm-Gg: ASbGncsrRYF/tLJq9sFJh3SK7ov+jPeeOYLj/UFnHoclWA5YN3p1P+978/czCwH0iPa
	e/mS1qH1GRUDhFleqNrMAX1j5nsa507zr+xttZNHd0z5qpakxUgjpyJMAvqGd1ekPeTU5Mu5Xdm
	3kHNrmmxtJjeYR19CF5DRhn5AYhwmxUII/zztT7uV5hCQ1BYuIp0TPk2YCIq/e88lqS4Xz3yT59
	OUAAH/RPk6ntEkefcwG5NjwsO5TuTUMQqbzt37kOcWYd+YqdoMhnc0wANEW7FEPpb4dRSms6mza
	NpynvHOTopK7E36ar8vnLP9Sw3Z1m/FzzR4TAw==
X-Received: by 2002:a05:600c:22d2:b0:45d:ec9d:5fc3 with SMTP id 5b1f17b1804b1-45f211f6790mr1508485e9.18.1757609931297;
        Thu, 11 Sep 2025 09:58:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEG0KUcYC/dnl+fRFfR1eCvaGjb1VBA1F+3vhaP59gghiqIz3bjZExhir02nHvAq59ioDWB/g==
X-Received: by 2002:a05:600c:22d2:b0:45d:ec9d:5fc3 with SMTP id 5b1f17b1804b1-45f211f6790mr1508275e9.18.1757609930880;
        Thu, 11 Sep 2025 09:58:50 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017b3137sm34393335e9.19.2025.09.11.09.58.50
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 09:58:50 -0700 (PDT)
Message-ID: <128ab48a-d5a5-4a64-88de-61df5d71c4a6@redhat.com>
Date: Thu, 11 Sep 2025 18:58:49 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.14 bug fix release
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AiJT5e1XP2pHB1-RhRLmUe1wvitiQu8JTXBCpmxtcpY_1757609932
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm sorry for the issues with 2.4.13 - I've created hotfix version 2.4.14.

The hotfix release brings fix for installation process of localized 
templates and CUPS web UI home pages.


Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

