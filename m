Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB077DA6F
	for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 12:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727699108; cv=none; b=t2wXUhARyx7m8nNLsE4GIUUV5lFMl2C6rzoPfw0UfJXRCBEpcvgUezKzkfaF5rymkH704E4ztxtOrU+mlB8IoArwpQNFt5cvGrhi44ahcB2za7i4MEy7q5TvV3Y8ofjpu9jkA+kh7+7j59Yxetss5I2wImO55KV4ntAcY+8fj8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727699108; c=relaxed/simple;
	bh=719SKciCiiSSsXVGi494l7/LEYkvG4NscM9J73SeRNk=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=Ol+RDLNKMCtWcQ8SJawdq1q6/teR3i/2SJSBViigTDDxk9g+ObUHhJSg1l8h8uIYcEIVKCjLjIlPqPZBiaBDLocbViyyLblc1TKChVe3rP21Cxrg2by0NWWzVZ5tRQ80wz+qE9tyD/sZsn8lC6Rnd7mt5I+qjmFpW2JS+OYgfp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=i8iwSa+t; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="i8iwSa+t"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1727699106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rdpdK4cC0vdcx35UFCrtyIXM1tCZ8Bksq48q94PNdwE=;
	b=i8iwSa+txpDHYX3raAwQ+5Ppk4iXlOLcP5XPbCSbXjgfTsrItJAXBjXKG8ew/Cza0jVY+i
	gXvy9N1zxU6afn3uDTnILaWyTUVLNIi4ennkshRO6wcekdKFRlJ73mNENwvIG/8JBJkOFd
	5DS0l0qEzyOjWFngOMt1UggAJRKqGZo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-389-U2WRHUhmONS0K4-jHPEyTQ-1; Mon, 30 Sep 2024 08:25:05 -0400
X-MC-Unique: U2WRHUhmONS0K4-jHPEyTQ-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-42e77b5d3dcso28383015e9.1
        for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 05:25:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727699102; x=1728303902;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rdpdK4cC0vdcx35UFCrtyIXM1tCZ8Bksq48q94PNdwE=;
        b=c0yqWUcb3LaZ6OG14FqhxEUcWIQAIGw3Llqv0HSOt+WBNbp/Fq7tX0tR3M7Xpzw4Uu
         PJHrVJKGR8c+za+RhIu2z+8ZnWBgxTmRIxosZuVuP8zQRuKpeKeo/6toeqgSd81xrFjy
         McdL9zQLN6KeIWMTutVdVcVHSQdRHQKSZQOak4Iq1Qp4YfDrGqSAyoneBp+z4cYqYGg8
         tzKPnXkvjcX12vSAxuLKA3zgjSObC4K0xx3LD8IoSro9qH2gFHAMnD+JpMO/eGjPggg3
         6Q74mhqGSVcXcdLvo9JV9COEEY9h2bq5iO/YGTpxnLrqGiLMuHH1IxM4L2QcKMe8rFO7
         ur+Q==
X-Gm-Message-State: AOJu0YyTnC+vtxwHmOGezXe3B3d7D8vCUiWBIx+jSayj6Fw28YlFJ7bO
	4oqB9xHS4H9GGHCBEaUKVsJRiUp24+TupWXupDTDuyTRyx3i6MQoN1JHGK4YjHozk2gXO/LbU9V
	LcnBavmrGcTFyLwCW3phVfv5nyH4k06SOAccwPa/v/qVDSR3N9TCB+z4yFZ/Fq1qabXMncbQYA9
	M/oAWGnG1eSbqwNqnHXbbKX8Rwj8fNxY+VRxPIUhoYuls6IqOF4GfzO51I
X-Received: by 2002:a05:600c:4e08:b0:42c:b9b1:8342 with SMTP id 5b1f17b1804b1-42f5844aae5mr72206215e9.19.1727699102655;
        Mon, 30 Sep 2024 05:25:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE64wenyxyCSHFXhKl/fopWuXtLU8p+r5D5xUJeQx/+4BO7lc4nzJybFz41RyhHVBlM2neVEA==
X-Received: by 2002:a05:600c:4e08:b0:42c:b9b1:8342 with SMTP id 5b1f17b1804b1-42f5844aae5mr72206035e9.19.1727699102235;
        Mon, 30 Sep 2024 05:25:02 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f57debf07sm100762765e9.22.2024.09.30.05.25.01
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 05:25:01 -0700 (PDT)
Message-ID: <5878fe6b-a017-4e10-8a39-6e12c24331f7@redhat.com>
Date: Mon, 30 Sep 2024 14:25:01 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.11 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

CUPS 2.4.11 brings several bug fixes regarding IPP response validation, 
processing PPD values, Web UI support (checkbox support, modifying 
printers) and others fixes.

Detailed list of changes is available in CHANGES.md

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

