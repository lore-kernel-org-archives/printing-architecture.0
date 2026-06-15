Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AD52E7631
	for <printing-architecture@lists.linux.dev>; Mon, 15 Jun 2026 21:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781560026; cv=none; b=YmsJoytOaANpCzmMmNziEi9QNdRv2S/IJRS8UWTWwOxD19292SE08ieIGj2GyWmf/VEdaE8xqebPlTosWHTdQ2XjBhYx+xyKgXPLGbVdj8MQKRz2RbTAgyyc5c6SIHyBt4F5fyRuP3F7tlGpaTYgAHaw7qJEmlbk0IBVhrhDnYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781560026; c=relaxed/simple;
	bh=7rX0uyHyOCHuWJaL8U/6ubHjsfFH5DEMvGU54XlMR+U=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=PN81UA986O2ikZZyx98cYmn1FPOp5dX3PZXhUz/UEGFbM8fETszXwbUs1OR1EwagrUYl4piKUixOFHcJ8e9gxDpQdReAExOuVMCBrXoRQiPb3wLW58wHJ0EBpQS4iUi+1xWDpLOYmIPbucTgCV1NeoZYrH6UFeHAphULhzD8PN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X/QSfSsH; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X/QSfSsH"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso27534395e9.1
        for <printing-architecture@lists.linux.dev>; Mon, 15 Jun 2026 14:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781560023; x=1782164823; darn=lists.linux.dev;
        h=content-transfer-encoding:autocrypt:subject:from:content-language
         :to:user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LYsGrTJxk2kPRZ/jt7EHo1rSwyEFNYpnuvN7cGNwHfw=;
        b=X/QSfSsHaP68MFfzMpXHe6M7DGNd9tedAl4Z469Cq4HmvLOdEetB7t31Hsov36UkDP
         YRee0YZCN1DdyXhYlD6Rctq1UwLdUoSt7xBSoLCxYFcPjTLvPTrx61BXZDkaQ6pAdu5T
         hb8XHvebwrom4pe9pcTO3BRmM7XHNcJj1OapNMpj+TmYPeVbl75yRvu4lGNLRR7T5n91
         eZuSK9XZ7ABjjTu3HCdFcuSF1j7rQtKq6GATv6+9Wx9CMezTh82/eHDtAzfw6GLFl/q0
         QeOAhrliW7ACZwEM5K+9XVaqNXrjNveRTP67tBYWU4UHXxoYexjet2LYNm65y7547T2H
         1KLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781560023; x=1782164823;
        h=content-transfer-encoding:autocrypt:subject:from:content-language
         :to:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYsGrTJxk2kPRZ/jt7EHo1rSwyEFNYpnuvN7cGNwHfw=;
        b=aIRXmThkf/Ld0BSy6H86h4DRrA9kikrPjONmWURP/yLsPTwKTIGlo0u5v44IPTXItn
         SvM1ciysrZfyoTU5Jb0TG/XoLtkDcieP8DyAl9Bd4Rk5wd9Pz4qVZzdkoZVkTkH2nf+w
         Klp+dpUs17VrXRDJIKskGc7unZWj0M7iUftYSYiAQiuuj4irsO1Kp2sEpBF7sM+bXi5/
         fxWA1PDyB6A6GvKNWrkn88TF0jqtL+3xTba+Jzmh3bteHV4olvInHfusUjowAl/DdKk2
         VGimOSHfKXfF7Zcpr9xm8hLAiQNqYyC8MI4u6coXjqN63jMv632FY/0coZO/dyJLHVOo
         VhkA==
X-Gm-Message-State: AOJu0YxU0yrTpZf5E+UNfA4MztQH4oQ/d6XmyCq5VLvjfGNGE3iTvGTZ
	UeFH/tZQcmumtD4tmx3Y4p6UTZTa7tITn6vYOZeEv1YxqhhQraBilFlVfGj6Kw==
X-Gm-Gg: Acq92OEBheg68hOAkHtiUWCyVrRMUtcwbVhBHO/0h24lQl88Sdzn2b++tNZpd/sOuKs
	3mH3EdQhwkmcMWPKPkg7HXL41R1dgga/YgDs7fSyejlrfwCjPsx4NJ1hT7VbSk0s9QORqvymx8L
	GbUHSQrfqQr//WNtNd7u6M1nCBwmh1eatt9c/ZxsIQzB64pg17rQgRqiVa6pWD/+VHtSYtp0Zvf
	+4SCOLmB5ghHx6EBB4itwh15oGyDwLgxSgJ9B8hrAGm1FpGbshgCncm6Wp2oOrCAPBW8MELBvMA
	jF9TZfEkU+Ss/NH5engOEescNgtxEw0UCsWVwLrqkx8imeb8znVuRWoY6aXyClMpAinaaSfPD9i
	c6yReEgjJR1w/7NH8cXPot35wCWBqV6KBaV6s8yRTnppLtxCavbTXEzD2yJkSJqWUhIWDKHgmmE
	azL7Rn2h3Ia5u5YOwn+/92eF2kdykkwx7eMZt1Ra0wx7r/P5NhmlF2SJwu8N7pTcFC6cnvngOhf
	DhGUpxPGEGSu/BnrWDblL7QnUm37wMFrD5wL+DMTVhooA9l5Ijh/EkA2HM4BlcgYUfD5l+EG3Ft
	RqCncn4FNQ==
X-Received: by 2002:a05:600c:a15:b0:490:bcc1:4edb with SMTP id 5b1f17b1804b1-4922ffbe135mr11888005e9.27.1781560023312;
        Mon, 15 Jun 2026 14:47:03 -0700 (PDT)
Received: from ?IPV6:2a02:8388:8cb4:cb7c:d34d:9898:b592:199d? (2a02-8388-8cb4-cb7c-d34d-9898-b592-199d.cable.dynamic.v6.surfer.at. [2a02:8388:8cb4:cb7c:d34d:9898:b592:199d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2c473bsm41954984f8f.28.2026.06.15.14.47.02
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 14:47:02 -0700 (PDT)
Message-ID: <1afc196c-d7cd-4484-b7cb-9ec434a85d01@gmail.com>
Date: Mon, 15 Jun 2026 23:47:01 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-architecture@lists.linux.dev
Content-Language: en-US, de-DE
From: Armin Felder <armin.felder@gmail.com>
Subject: handling of printer-more-info in CUPS
Autocrypt: addr=armin.felder@gmail.com; keydata=
 xsBNBFZDBZ8BCADf3RKYMuDmtictpoInQ26wCIRUcRFgI/8NeVtZGteBLfdLNobXU9gSX5kZ
 kCU9ZtfmT0GQ+sGNgvq69X8JrrchpwowonwCwaaQpZ5VlElzkXPTJdXbmHfKljQPVeri2HTz
 Rc54/8WXx3y/mj0P724uIE0GEvt58eZ7UkMQdrzh7LS61NR2fQZrDX4f3IrAcush60JftWUq
 SWAm4lnbbJ5NX8Gb4z0+v0URtJ8oXI+zpEtJ2xUv60O9ME1/YTQ0rCT1g16Z2Gb6ZQzRK3M/
 mWMPAffn6JKfmQZWprPU2MR1nRcD0ocl1S6X23+Ch+kBBk/VQLBDCY0D15JiWsrqTrbzABEB
 AAHNJUFybWluIEZlbGRlciA8YXJtaW4uZmVsZGVyQGdtYWlsLmNvbT7CwHcEEwEIACEFAllB
 M8oCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQVv6ymGEcC7QxSwf/Z/aTWD+fIIDo
 /MMYjk4wCevt7rPd187XUF1eZmAbQcmgfFn4+iJgSkKo+fy0DXdL15Tw3SBIgmK1DfI4KMOt
 02Le1tbjvPxBf5Smp3rxvdQmOYw/DPhkABFOZ7odprpqBP51lo8FoR7/c5QjCdzEVy2GcSOi
 BxCNAe7zJiAyrAEqdFgYP0XC+6sDZLhJ7GZlBw9cRR6z0j2BWu8ymd83Ub/EqsNyLy20vAZJ
 7sQAdSHosnm1cJyV2KLu3f2/ne/V0YxQ99BBWFiiBsCxyzx15vRvCVmAdbrOoVFMp4N4c5BH
 7AVeNXc3O8zvBAQ/8YkzNXiDSCQPg47N7tqefFkJZs7ATQRWQwWfAQgAuSLc/8HqE8jWgzhq
 eDJUmhvTIwBDjV/zGA6cnUxn2U0nWn4KT8ouXeqIjR7zwVUJ+WIANzdJp0HQerTLuMGd1gtD
 xLxJ8w7yb3IF357lU5O7T9YSzUojHNJ8hE6d8h79U8q3igf29Shk6/7iPcdJvPGWEhudwBld
 dbcIf2eWhGZH9hM3Ffj0rRp0kOBHcHDAuB0B+1Xuv0hwqn2mLSiwB7fVetLkYe0fLRLHlziS
 j5OCgM6/pL/6rpqwZVyXB72FXGS9HFdzomiLOWipCciVOAAQbvR3CJ2iLFQ/MGqv6beRsR/k
 d9ZNuLXmW0FE4ttkXtedfJrPdhk9xzfNFx4KTQARAQABwsBfBBgBCAAJBQJWQwWfAhsMAAoJ
 EFb+sphhHAu054gH/3dvXgWSZPdmDJ0T2513qWLPUGZO+9QnCKWJv30zWAioNk4sPxl1oSIk
 /jnBRGzIyKYLk+puhS0OcfESy439Yje0/gt+v4sPshEZFN5gnxHptJmi8PTu2uF2NTeDlq2s
 d0dNQF6ycKS7fp415qiivo3kK8chlKFKRz9HJ5rcbEFrnbmrlqXLydOM+VYws1EQrr1m+4LU
 xfQR0NRN+Bk1gdr9czxXagbVNQS83/XOZFFmcJpM6C5UJfQTUYAjRMvNaqaqzMpnYNSUlj9y
 AJTsCb6LEZTkQBh1kVECvS7Ax6RZ8LgmcHnk+OCJ/32yIJ+5TkwVH6urBkWAGhf3clvtBWc=
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

my printer app exposes

printer-more-info (uri) =http://127.0.0.1:8142/Brother_TD-2020_(USB)/

to cups, but in the web interface, I can not find any link pointing to 
this uri.

I think this is a bit confusing for users, as they only see/use the 
operating systems printer settings dialog,
which points to http://localhost:631 , but from there they do not get to 
the printers own page,
  where may settings/information not exposed via IPP (always on, 
reconfiguration of generic buttons, phonebook etc.) are offered.

I would suggest either:
print dialog -> cups webpage -> printer webpage

print dialog : -> printer webpage
                       : -> cups webpage

BR
Armin

