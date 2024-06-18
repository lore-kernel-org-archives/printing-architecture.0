Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CAB2139A1
	for <printing-architecture@lists.linux.dev>; Tue, 18 Jun 2024 11:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718709757; cv=none; b=NaGXx9E0TJdNkWVfrpGxFRGf4N2Ey9nzST9DQv/X2V/MZmMtkVnojPklLwawqtVO90oLqXv2vcJT+M4UNI8pBEOZreb6tJDwt7+qnI86Co5DdygcHioWMBc43SahK9oPdg0yHhv440uN6HCY4GeKpU5EbyCGpgm7YLwvQSNE2KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718709757; c=relaxed/simple;
	bh=7yh1nAKGqTsFTgSFYsDzXX8ssbdpFg6wFbdGn9Jtb3g=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=iTQX0Sq4+/Oy8cjCUXCWVeQ2KzHcYB134AYsmTRzPE0Gt3HQnWBkrsLf9jq0qwTt0SOG9YaAOuhKhEfz4/JTVjB6+bK7lyy2ffddJ5hjbudAL02TevaJTCvQMe8y6uTKEd0Uzi46gxkhs7UqhGdki+WcCSNhRN3msoZeIrN2YAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dtWphAz8; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dtWphAz8"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1718709754;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=27ACWk2UX4LVuKO1znN5YgZKQx6jyz4dx/hI9D4aw1o=;
	b=dtWphAz8/k3ANHSNq+sEHMqoFzlxW6Y3PxwZ6jUYpug+GAfJYVcBRUeY+zTWYDAEpA/5M/
	KMaM6cJrPKV1sHO0A9dbXLDtO9Sr+KL3uTHwolDpNp8UmWmNoZnZXTS63aOyUB1OZBxhge
	ZBGSeUvqBmFFCbudQqTZkko5o6Xv62U=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-156-JXZ8Sc5wPnO3dfgvkpynKw-1; Tue, 18 Jun 2024 07:22:33 -0400
X-MC-Unique: JXZ8Sc5wPnO3dfgvkpynKw-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4212a3ddb6bso40535905e9.2
        for <printing-architecture@lists.linux.dev>; Tue, 18 Jun 2024 04:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718709751; x=1719314551;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=27ACWk2UX4LVuKO1znN5YgZKQx6jyz4dx/hI9D4aw1o=;
        b=mb1K3m/8SbrIn/GDJ5tug2/0S3xtLS8OyLk9TmHxZv8myjNrSoNVUVf9L4qe0fpavW
         8K43UHplphsOk1efvI02qg0mUwOdHW/K2RZjIm9mDJXJDq3afdCFJd9dELA/lQMvqJIG
         rfrLLJdOQKQlLYw2gfWey9pRuv+wbWQCiT5YHAED9Z828mc6uRWOzdwiM+e0vPc0WRFZ
         GYgIK+48i3OMOMU32ePRp5lfhzZV0alDI+VOCJ3aVGqUF9r5vYQkJLGjt2t0hP7mDXv5
         LTycWbI+NnoxE6p/uG7i+gaE7jpmeMmE2tQzcnhnu1QfJhVDDKRLbTn53nGd1tH3xpr3
         BUdg==
X-Gm-Message-State: AOJu0Yw0k0BRznHWf4p2wi51hdp5zC1np7GJ7Tcgz1MCJxqiiGf5oWyi
	TEbQ3h8tb8qih8uFltPhvhYnqGsSUsUq5/sRLPtNsbbTZ7GmIsX9Ljy8eVSC3zxXD6us8r1BtEZ
	Aab25+HeA2Jd9X5PJx0P3rZ95AVU5iACcH2M3FWeKVOTrZDfjTQp6QLkT0regXI3y+vZv6md8/o
	Fa7kHA2a1OMXkGud19Ym9cGd5t+0AQM8p/q+QRe0+p03x/Ummj74MFpGXc
X-Received: by 2002:a05:600c:4586:b0:422:62db:5a02 with SMTP id 5b1f17b1804b1-4230484f8admr121720565e9.32.1718709751631;
        Tue, 18 Jun 2024 04:22:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkP7RYPFsY4VlnZ4k5uDaaSIcf5fqgp1ISksDxCaoj8Okgone2b42fmmHli+A1SDFS92T/pA==
X-Received: by 2002:a05:600c:4586:b0:422:62db:5a02 with SMTP id 5b1f17b1804b1-4230484f8admr121720435e9.32.1718709751167;
        Tue, 18 Jun 2024 04:22:31 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9ccsm220021155e9.5.2024.06.18.04.22.30
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 04:22:30 -0700 (PDT)
Message-ID: <a7a42040-e767-4518-bf46-651b68908291@redhat.com>
Date: Tue, 18 Jun 2024 13:22:30 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.10 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

HI all,

CUPS 2.4.10 brings two fixes:

  * Fixed error handling when reading a mixed |1setOf| attribute.
  * Fixed scheduler start if there is only domain socket to listen on
    (Issue #985 <https://github.com/OpenPrinting/cups/issues/985>)

which the latter is fix for regression after fix for CVE-2024-35235 in 
scenarios where is no other listeners in cupsd.conf than domain socket 
created on demand by systemd, launchd or upstart.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

