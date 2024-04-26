Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217BC143C4D
	for <printing-architecture@lists.linux.dev>; Fri, 26 Apr 2024 11:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714132622; cv=none; b=nDwG0CRty+YJDmDYiOhjIRfUTP/zSug9bk3UCgx8gptIr9NRllUEWyxaEfweFJJw1S0DdfeXW1mmivXh28mVAsHgPKXXwzJldN9X55/pk0zfScx2IikMDTQQT/qQBywqHml4Lkknrq5Ksx2R+1pdfec1m8vD3mv0XXl2KHcrcxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714132622; c=relaxed/simple;
	bh=TiCI3bGmY90wogc5ywLn2lWiLkzPpaIIiFepNJOb9Jo=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=U/fF6AKRtMESPYRFqDjNTscS+bhXQuFVDRp0uEjjc0hg16BAIBKlztg3hq3cFDMTirf9IR5Y1/2Fg/+btZkqDN4vRwJC1AS36uJtlzUBPTDlxivVuMNyk1oaPUdpmUr3BKCZPk6eewiafwh51iZuHNZMQca22MVksNONjD3n4jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HA/l3nIe; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HA/l3nIe"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1714132619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=g3wz1LOhDTUZgfq2c+5rba21kK1TXBxcbosVbjBFFLI=;
	b=HA/l3nIe88RioU/rBmVY6GBDRAqCAgf1B77R14F2slFXORy+65OrsQd1FEJlEsezbcLFCk
	NfUeuooc2cwnokXMrF4FmuLdhKV3kIYwAiRUDOwmNLwjnZCT2rHYDl7m9zpe/mRc2qKU3j
	drwIBatlS8iTm5/cwLCZArKJC8V9LEQ=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-670-JaCeYtxPOpCcS8M_UIZ5Bg-1; Fri, 26 Apr 2024 07:56:58 -0400
X-MC-Unique: JaCeYtxPOpCcS8M_UIZ5Bg-1
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-571c20c0b41so1103372a12.2
        for <printing-architecture@lists.linux.dev>; Fri, 26 Apr 2024 04:56:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714132617; x=1714737417;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g3wz1LOhDTUZgfq2c+5rba21kK1TXBxcbosVbjBFFLI=;
        b=SgRsFDfJsx0nH3sZcQyUTS1OSspE3/+FdykF8GkyVnFux5xpGGLXiUCcqRSl2NSgjE
         gdyu06wjMXof4xb1ByM9ZkoV3FqgTPsRQyfWxglOWbfEN2culBfFgqLyzV5NRSG8LG9z
         IC7E92buefSq3hYpR9lg4L3b/MPudEpYjohDhCANAEhyYF+wz9NRSbOrSaCDWJDV2eDU
         AXoVzUtKysQLVZf+lcCmvDzUg0WIutjDet3HTJ31xoWMoofY+rJ2WTo6xXLAY4T96mbD
         05f4vCd8DkPTst9nL1RyGexphvdg4NVYw4n4jR0h+abfH611mVtT+lE+I6+uw0AGOUhs
         P3yw==
X-Gm-Message-State: AOJu0YwCVdOtXGyOOEpqZgxg0DtK9lW0Uq6eX3L+GqajyDBBSEYBIpdG
	Wr1uZvQBG8B2VNE/5/Vpmsx6kah5b34syIxggW+FSlYeTE0eYQbnSf13mnYu4X3IfBPSk7gEzaV
	JopWCLVKmwPDXQOb/FHW2LaSV0y2skdxNEudsQ201HF5TIzlr+6cFHrjqIHR9DQu2ZbfnDTZrWI
	l35KDWDku2nPkmM69D+2955xVGFuSVv0lkli6FRUFyCNl6WJ+XO47LOdOJWOo=
X-Received: by 2002:a17:906:1c8b:b0:a58:c09d:1484 with SMTP id g11-20020a1709061c8b00b00a58c09d1484mr2618482ejh.7.1714132617002;
        Fri, 26 Apr 2024 04:56:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF69j0e7BVGEH9YAKs90o46fk/jP7A8+/6flFHwHhyPL4vRaec998ncAt/juCnU38x76Q03Aw==
X-Received: by 2002:a17:906:1c8b:b0:a58:c09d:1484 with SMTP id g11-20020a1709061c8b00b00a58c09d1484mr2618464ejh.7.1714132616574;
        Fri, 26 Apr 2024 04:56:56 -0700 (PDT)
Received: from ?IPV6:2a02:8308:a089:e100:609e:4c38:68:66bc? ([2a02:8308:a089:e100:609e:4c38:68:66bc])
        by smtp.gmail.com with ESMTPSA id dq16-20020a170907735000b00a524318c380sm10558291ejc.80.2024.04.26.04.56.55
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Apr 2024 04:56:56 -0700 (PDT)
Message-ID: <4b72623c-bfff-4495-b1b5-12de8c1da352@redhat.com>
Date: Fri, 26 Apr 2024 13:56:55 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-architecture@lists.linux.dev
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.8 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

CUPS 2.4.8 brings many bug fixes which aggregated over the last half a 
year. It brings the important fix for race conditions and errors which 
can happen when installing permanent IPP Everywhere printer, support for 
PAM modules password-auth and system-auth and new option for |lpstat| 
which can show only the successful jobs.

Detailed list of changes is available in CHANGES.md.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

