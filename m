Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06D4264A65
	for <printing-architecture@lists.linux.dev>; Thu, 27 Nov 2025 15:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764257380; cv=none; b=TKRIGChOu4MsfdmWF7sEgH9Xel4tX83VTRZeqy5RZ5yMB9+/p6kJxSjszOfopDHchEByWm92x0bKdOUTcTP/6N+I0X/rhQI2/yVOtSeGwI7VxBlNAv1zD6eewV3kzXTaDNApjmgUe5ba8nmNV+0gXVZ90lY+6HVnNiKsShg0RNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764257380; c=relaxed/simple;
	bh=F9U1xsRI9MvQiYxJCwpfFiI5LoPJMQ8SNIenLTB9vBY=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=hE7W9BWNYUzVEw1VYE0HAUX+J9nmzd7i0nvWarkEpaKEOXcAkdpenP422glJYbkGymp8XwUl3wQfSz4UCU7KZi4oIgUqdN/La6GAQwM2g98+r4Icp+IZQZHMNX4y/ts/CRGWhamlHSLpt1/ZP4RSMWazfZD78+6zMjXtb+kyfAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dFFcub9s; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dFFcub9s"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764257377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=3WrtvqHnOBt3I+VgZX9LkzYRVt7ljgabJ+OzL+Lu/XM=;
	b=dFFcub9s1NiEvWbFyt/CBVi3I3YtKym88riPUzuebKxo7oy/VEsObGUZS77dGLl9Mf7xqP
	i9DWe9JouPVl3YtC4Hm9vshVjtCGbFLjJpLL0NyMQk+57EO8L931/BEO/VtR0EMHD6Vslt
	57cHKRP+wOG2/x8N4E0GGBysrg/aDrQ=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-482-6AzcMb-GNWa3DQVw92TKzA-1; Thu, 27 Nov 2025 10:29:36 -0500
X-MC-Unique: 6AzcMb-GNWa3DQVw92TKzA-1
X-Mimecast-MFC-AGG-ID: 6AzcMb-GNWa3DQVw92TKzA_1764257375
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-42b487cda00so717654f8f.3
        for <printing-architecture@lists.linux.dev>; Thu, 27 Nov 2025 07:29:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764257373; x=1764862173;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3WrtvqHnOBt3I+VgZX9LkzYRVt7ljgabJ+OzL+Lu/XM=;
        b=hLKSEFM/3YXuDO0L1OlvnU606h+VO7cMl1CA5rVGGaTrOjHy23F7b3Tx/NILZMKmf0
         dTtjaFBgExYtyn2Y+E94CRaIXrfjtRM5Pe8aEEjrC89UghmvVEa9mml06p57Oh7iMf+M
         7QqnvwPmEqqVG5Rcl1afVmCYOCy41WgdKTJGUxXH2zbhAnubyDPJYl8AsNQ4hC5bUVf2
         uQYIELIL/cwItnwn4LWYU4DanFK8KoJj6F3hX6nZyt+HTsmtPM3QYkFs3eGkMAJ1yWbw
         ZV8AA9CYpoHtBlt2w5MFgzlKGi9SmS6VibXnN/LAGbNmAZglyui1AZvRmvfB4Dny9hbq
         EQ/w==
X-Gm-Message-State: AOJu0YzIYmArBQHsBVtTkf9gF7cM4YPhJQtyiMyPIhiHHRivenGQ7Zqr
	0+CUS27QaE4rbDZ5STXRzrLkOe6ecZPYOhgK6lVynKcxm+IXWgse5jvYkKsr0H+fgq5P2H3E2uO
	1ScDc+oGao0Q7tASK8WLbdokJh1dnG4Fu8lOHoO1mawh92XqOwJrnq+2UAFLBAjiARbmPyMAj82
	BoT9/P+Dv6DmFa7+8izNGVCoMH11ijirRAJ4jmoU+ZDc6Q4jm8b05Dxa+e60ay
X-Gm-Gg: ASbGnctsH4WHJylUgPn9GpRWQVtWGzTL1OO4T1KZ+UJpQD3cn6JV4CvhpVHxrfAxit2
	pU6ictWtkCUbEWfnwG5dqiHaGEyVrLXCxhsU7HfKWWUODMKQG5yqGgA4VltrT8jkpPnlHqDCwdC
	EPPPmMpBe7H0hOUtG0PUiCnP6ugZ6fH0dgDxXdO7OuRA3AbkZpDNLuNa7SMBrAUhotB+5P7zcKf
	PJK6YYmJhE2++ajpMQF25a393zTK+erXCL9KMyinEP5rOP1VoLjauqMSTaKam+A+pN0iKwojrK+
	wlb1MMoriDJrvpqJ3Oz+61rd+lmK6AnzmpvBaGNBE0ZKgBaStWKB5tILxh4iHEASNsxhdleYcw=
	=
X-Received: by 2002:a5d:5f96:0:b0:42b:30d4:e3f0 with SMTP id ffacd0b85a97d-42cc1cf0fa3mr27096355f8f.22.1764257373635;
        Thu, 27 Nov 2025 07:29:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFjIre4/QihLKWQySKccxW6VhLK+NmkB1chebvO962GqWXn3mGG8AD4Fxl8A5VvwS1r4uSUA==
X-Received: by 2002:a5d:5f96:0:b0:42b:30d4:e3f0 with SMTP id ffacd0b85a97d-42cc1cf0fa3mr27096329f8f.22.1764257373175;
        Thu, 27 Nov 2025 07:29:33 -0800 (PST)
Received: from [10.43.3.35] ([213.175.37.14])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca7880asm4181437f8f.31.2025.11.27.07.29.32
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 07:29:32 -0800 (PST)
Message-ID: <a582d059-b0dc-40bc-b320-2b30fa000248@redhat.com>
Date: Thu, 27 Nov 2025 16:29:32 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.15 is released!
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
X-Mimecast-MFC-PROC-ID: 2R4IFYirRMTIzzcL_qCLvjRZyTv3z0Iec--AwoJIOkA_1764257375
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

The release CUPS 2.4.15 brings two CVE fixes:

* Fix various cupsd issues which cause local DoS (CVE-2025-61915)
* Fix unresponsive cupsd process caused by slow client (CVE-2025-58436)

and several bug fixes described in CHANGES.md.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

