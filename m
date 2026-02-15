Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EC5284890
	for <printing-architecture@lists.linux.dev>; Sun, 15 Feb 2026 20:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771188283; cv=none; b=kAgy6+Xb6mFvRVGDNAwxbf4EbYLpJGhb31IdSDmsY0qLPc94jSD5vwYcWPGRQhdHAE0ZXAky5V+N+Hp9OHC4cMY34vcVHeKg5E+tC4A9wM14SoahJxudn+jcnyhXuytA7IjjRb3dl7zxM621E77gz5O6oGjzS9jhQWOtJRrdaYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771188283; c=relaxed/simple;
	bh=is8pkPW11LHE76Z/bI7mDi8HFMuXn+8C314Y5Ll+mxs=;
	h=Message-ID:Date:MIME-Version:Subject:References:To:From:
	 In-Reply-To:Content-Type; b=BRFfbPJYhr6jkA/B+N7brGtFg4Po9hqUmF3vsuU4h0TJrzh35uyEAwy7FIApTyOvultw3FAeuYa+zNHc5qLXsmvw9S06poAeVYBtpGiykGdXl3I8a12upde6KTV+ZvaitKabC7VlWclkb9/00ku5Ll4y4mWKftCG3VB312c9hwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h3aETjr+; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h3aETjr+"
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4376de3f128so1674161f8f.0
        for <printing-architecture@lists.linux.dev>; Sun, 15 Feb 2026 12:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771188280; x=1771793080; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=is8pkPW11LHE76Z/bI7mDi8HFMuXn+8C314Y5Ll+mxs=;
        b=h3aETjr+a8vEghm4g+QRCUhOZd6gVMmgS6OCppjBiMVLoet6fIbfonQx8rhyGdmFJ/
         pqMDkd4Sd1YGQTTIN4XTTKgYU3MspI8T9qMspio5e/eQs0jWjL3vxm4bs3ANCAwampUr
         pOAkR1TQAQrcSo0EVR+dQ2yn/QEmyIhOF42Syh/EQBBSXPL3iUnNItz5CaX378GTeu4w
         eXMIuiUj9pBofJgVhX9bw5QENMYQKiu8+L0D+O85eJmpZHPd0FJOwdKzFeh60PFi4MV0
         oOehwyqY1NjWTq7comGHxlaihr5s0vbJlC7lQcJozxHOgFqKlwuo6eay1OCYVJ/Kkgxe
         ZsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771188280; x=1771793080;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=is8pkPW11LHE76Z/bI7mDi8HFMuXn+8C314Y5Ll+mxs=;
        b=LbXAk7wq6rRWRL4mwUA8Ozt+5FpFbjzQQwzrFgLnbbczre+qw43wbbq3RFdHPFIcIk
         D4SMv/updRBBBQiLjijoki3xAdrhlXA6/ZZzTdlTF7fK9XrD70v9m4stwNkIA/g39fec
         xX4X3tZPjcXvw41SDJe5CJm5BFxaxkTbQEbsmmw9SWe0AHiEEFcO2Jn8G53kYONMHaDt
         Ugw5yQQj+As0PuGQUyq5/xaavtGJnNpgcq/bfkUSjIjcRiNuEoVc4fJ/WwPIinFoiFof
         TUE61tPNovuP83xbL60XqfrmqwU5hcuYvJcBan4GNg4wDJ+xyAp0huLxf+TZFY29vOjP
         hrpg==
X-Gm-Message-State: AOJu0YzrWSIg6dsoO51IrZke2vh+JLCHjHG3pNK7XNkyQ1S+Zi0oBWPM
	kB1Zlc6btWiNAiJ+sUxHW+su4euWCfIM6HsVfCKd/WRdzNsAxcfgLwYdA/4VpzOB
X-Gm-Gg: AZuq6aI61FR3CIbUZ2lISAETOxctdEy6/lGtQS39P0bR8EuP24hdVHyJNxIfCsp49dw
	RRhfTeIqTaIzn1w+rrJem/dP1hsqzUGvP7ovS9IkJHUgCqx1eBDNK0NfiBE25j4LeT268FyLJZY
	1X1M2emiZymXO4UVbI9o4VMjp6ro2tKWsgeivuFCos2csAYNPCd+kDRqYFbipuCPajO86yVLeTW
	KjmEZgr69iTpmb77UJhmKtjyezfZo3/F21zMqYKbYpaEzMVYFotKD2QUDHoQqCtwVpRH/E/RNip
	ZQhIWxbLQ/5qLmVT9seswMwEoi8OWJBSi4Tfkr0VJ2Y+3r28IToAet+x0FbuGGrYeN+uajetHU9
	zzazwOBbV4gJGkKOPTGbB8ZQFvMDmQp3nAjhHNE68iyU/DT8koEgldddoUCE/ZyQobCEyKslRYV
	+Zq52lm49b/SiLig8FCrrqaZ5DIk4eY0gCzxpTrUme+cCJDnGZJp6ANwrAyobFPgLEDlTLkbqGn
	5AKCpNh8b5VqHRuKgsQ7cHLFvYLehLfvhRZTaSu+lLqshXHwqwB2KvkXq+6DkLpTNxwJOZ3DY3i
	VnAYPS+opA==
X-Received: by 2002:a05:600c:1c08:b0:47a:8cce:2940 with SMTP id 5b1f17b1804b1-48379b991c6mr93079165e9.14.1771188280339;
        Sun, 15 Feb 2026 12:44:40 -0800 (PST)
Received: from ?IPV6:2a02:8388:8cb4:cb00:f51e:3dff:c6cc:eb4e? (2a02-8388-8cb4-cb00-f51e-3dff-c6cc-eb4e.cable.dynamic.v6.surfer.at. [2a02:8388:8cb4:cb00:f51e:3dff:c6cc:eb4e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835dcfafcdsm590072355e9.9.2026.02.15.12.44.39
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Feb 2026 12:44:39 -0800 (PST)
Message-ID: <d505bd47-d9c8-4f7c-bd3f-b2c5c958246f@gmail.com>
Date: Sun, 15 Feb 2026 21:44:46 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Brother Thermal printer app
Content-Language: en-US, de-DE
References: <dde9a5e4-7c04-42d0-a5cf-1b8ae20ab17c@gmail.com>
To: printing-architecture@lists.linux.dev
From: Armin Felder <armin.felder@gmail.com>
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
In-Reply-To: <dde9a5e4-7c04-42d0-a5cf-1b8ae20ab17c@gmail.com>
X-Forwarded-Message-Id: <dde9a5e4-7c04-42d0-a5cf-1b8ae20ab17c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I wrote a printer app for Brother Thermal printers(TD2000 series for now),
it is still missing features, but any feedback is appreciated.

https://github.com/arminfelder/br-thermal-printer-app

Regards,
Armin

