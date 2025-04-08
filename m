Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464BE1B4243
	for <printing-architecture@lists.linux.dev>; Tue,  8 Apr 2025 14:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744120898; cv=none; b=GhDfBIHG6s8Kc4qYUrELqofLmwTgJJUPMrTVn0GMDYos6c82jjKmti89k7Hfr5KbYadAi4W21m1MU3uvGnKUHCso/J9HpEb2Gk9izstbxinyU8QgYthKeVD4sNYTeNMY0o5Seiib2JHcCihPTW0gzIs0XS2JOpf4x4ItuFIOfno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744120898; c=relaxed/simple;
	bh=nQVckOuymTr/HwJM14XHbidsvJTu3ICGDJqqvKWmggU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=a0sFVNprIBj7j4wIFe0QLlZBx7yDvbev3DFWXr8/8XI9P1O7WPEfGIey9X8uVDYb5MTF9HoEHP6ljDBHz9wlgHIWvxOYvERyAFJ5zUk7+dcyiyKYchy1g2zJiMT/k9HLlkQtayq9ziTYcL+9wKOooz5LuJSZH+U3IZucYaLycME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DbLDFGFy; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DbLDFGFy"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744120895;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NkAWOPfPy7EiBE2HctVrq2QX8mGp0Jr97+uU6K75OzE=;
	b=DbLDFGFyX1ToxiOiHKA0Hg5AMIdHwkJFI1P+azOBbW5oa73kFH9VFjULtA/EpPE3ELl6JI
	uTOlvQlnSoxlC2XsHQJym6ANcFR9GMqINpCJufHc8PFFXYpxdSj1cXXENpOa2+boYnGd3W
	WYtt3/XiZV7ikcQft1ST4Mjvwutem5I=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490-lbdx_lvlP6eEZnRi4-8hVA-1; Tue, 08 Apr 2025 10:01:32 -0400
X-MC-Unique: lbdx_lvlP6eEZnRi4-8hVA-1
X-Mimecast-MFC-AGG-ID: lbdx_lvlP6eEZnRi4-8hVA_1744120891
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43efa869b0aso15730695e9.3
        for <printing-architecture@lists.linux.dev>; Tue, 08 Apr 2025 07:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744120891; x=1744725691;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NkAWOPfPy7EiBE2HctVrq2QX8mGp0Jr97+uU6K75OzE=;
        b=jdJWKQvAzcDmI24xWnRwxv3ZiNWRBRFbnLlKh4D6nZNmzAtaTjz7iRUvYKOzZltpbC
         /elAXnj4nF0INHkal2bnq+16oNeB2e0YNMYpfXI4xglFKmxiOqnIfNo2wQXOLQViU0k7
         YVL9rVlTTPkIdhOeEQ4SS/ix90TLkNsqAY959ibvvNpX3s4gqcR8u9SCUnSGGued5jDI
         Uu0S5DtS5FA/YV1Xio93lgg/XChmQRDQux/60088TSmIpve+CuV9Xajka3jZIs/rN2OA
         96/RrFNITlw1zaTwedr/t1+BvJrGhryOWxgmP+EZS3l5dNWsjGAobhDekJ5NixYK1GrD
         DXhQ==
X-Gm-Message-State: AOJu0YwkqIvaZbzux5ExuVypZtVDsc1OgWHkJMK+I8tc012YWu/xIN6C
	JgX6tyFAionSt5BUzKlOvma6z8tc9Gco1PWjx27DeU+4P2naOlW3JSJ7SCveK9fJc2JJXvoEISu
	JRdQKoeQbtEopaKHwVa83vgtZE2PYotkQCWMqBQyLtZJV3mDOI5CK1E9sl6Xx5V53Q1K0B5aH1p
	UaR+ZhffQdyCBd6ElUT7wioizULY1EBYiFT+qeI72VAp3lrnNoo7vmrBc+
X-Gm-Gg: ASbGncvQUEGDv/sSJUCs3wNTRDfIZdE3a4RzYK43qT5yc9e4Z83OoR4MVFlYAeCwGSy
	a0binwlE7fbTeWE/l7i4DGNFUYpTDYWOGRDpD+jyQIVRUXKySdqkLMoJyZXLPtHzqhgb5jvSCCB
	Yf/cEo8dFz2/LutG9I6dXPZL2/dLAssi4rcFJLx5F1kwHaOK4iZDx67BedZdlarHzqC2db+6kF2
	V673O+WqHkWyFvg95gy8/j5PPQlNFnsfoycAzovrh1HV0XjnRLnZktfuz9pREG4DLthx6IFZB9b
	HhemWyLOp0Nw
X-Received: by 2002:a05:600c:1e13:b0:43c:fbbf:7bf1 with SMTP id 5b1f17b1804b1-43ed0da49e6mr195022035e9.30.1744120890717;
        Tue, 08 Apr 2025 07:01:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQSaKOGluY18bHgnkXY0jnQds/g1OUfOxl3NWv5ggoLRJorRvaq9kTpSdFVJjXmrFznFEjzw==
X-Received: by 2002:a05:600c:1e13:b0:43c:fbbf:7bf1 with SMTP id 5b1f17b1804b1-43ed0da49e6mr195020885e9.30.1744120889873;
        Tue, 08 Apr 2025 07:01:29 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec16a5776sm167448465e9.22.2025.04.08.07.01.29
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 07:01:29 -0700 (PDT)
Message-ID: <2a915be4-20e1-4dbf-82af-3c712c3529cb@redhat.com>
Date: Tue, 8 Apr 2025 16:01:28 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.12 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 12hqx3M-JdXxeVT4wRr-i82Ufi5cS2EdAWyg2vGeQYY_1744120891
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

The last planned release of CUPS 2.4.x series (the next will be 2.5.x 
series) contains several enhancements among set of bug fixes, such 
following cryptographic policies when using GnuTLS crypto provider and 
possibility to opt-out from this behavior, logging job debugging history 
if print queue backends fails, or raising alerts for certificate issues 
in IPPS backend.

The detailed list of changes is available in CHANGES.md.

Enjoy the new release!

P.S. I'm sorry for possible duplicate email - the previous was rejected 
due sending format being HTML.

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

