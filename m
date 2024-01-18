Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABB7125774
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 14:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705588126; cv=none; b=ZFPaXZDQhBD4aVc5p14tZhqJKx0Rduf0LqStRonNBrUiOQx+zccFHTeQbGJbpUUfB4s5JkdB48VwdevgtrW4+a0lEJJF+8gZQMLfmpHeLyDR8cToQYkMtuAU6k76vMUYmpFvl58MAwYzyq8+6FEHGEeGOJb7Hrhoowho0fXM9q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705588126; c=relaxed/simple;
	bh=259e2FXiEazFz9hedXq+1XX84H9yH5D9V2E0XSnlx14=;
	h=Received:DKIM-Filter:X-Virus-Scanned:X-Spam-Flag:X-Spam-Score:
	 X-Spam-Level:X-Spam-Status:Received:Received:DKIM-Filter:
	 DKIM-Signature:Received:X-MC-Unique:Received:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Received:
	 X-Google-Smtp-Source:X-Received:Received:Message-ID:Date:
	 MIME-Version:User-Agent:To:From:Subject:X-Mimecast-Spam-Score:
	 X-Mimecast-Originator:Content-Language:Content-Type:
	 Content-Transfer-Encoding; b=VZDgiZE2BFgonPQCy5CZMviueJ+hxNrO2v9rxtDXJwFE1Q+Q6ykSNKuDNU2J/r8KLfxhxkqX01f34lYJXEzeKFU/hDEsDcOhrjlaxD7CwH6672TPOl47OIct/nFperCvwDzpLFQAFvQynpG/qMIMCL+iTFlehU4jrbEMUlbRW/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gYcM7WRw; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gYcM7WRw"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1247F41F15
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 14:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1247F41F15
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=gYcM7WRw
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZ4KqzDHdsGM
	for <printing-architecture@lists.linux-foundation.org>;
	Thu, 18 Jan 2024 14:28:44 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2C37F40179
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 14:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C37F40179
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705588123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Eec9ZHug1q9n12P+EI2traqacPf/RvSViG++Sas7UTA=;
	b=gYcM7WRwkKIor3oTHQvkiK7aAWifTkNlzHJpMPsL8GhNprkBCNlcLx35o2pDWCZpxHE8vS
	gtaj0eLfn4XCPBO6vRWPYaK9UrFn6it8mJOa+D8hdACSB73JrCEZd+hFU7RFBVjNwanZQe
	FsVKPhIRQQcHadcZPvyBrQwrGbd4Pbw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-135-0XbKqJ_0NsSeWW-SQvDlUQ-1; Thu, 18 Jan 2024 09:28:41 -0500
X-MC-Unique: 0XbKqJ_0NsSeWW-SQvDlUQ-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-33770774fe4so6054967f8f.3
        for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 06:28:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705588120; x=1706192920;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Eec9ZHug1q9n12P+EI2traqacPf/RvSViG++Sas7UTA=;
        b=nAnBlY9SYMRDkqdGvJtjmjqdrUuRW3SpuAJa+R+Ca6GZD8Fg5taYPu6xLRuxcWOOIS
         JZzX/P+3hPRTIllmcMD753jSGPUpzBL+13pWvvLrfgqL39rNf/AzUmztdSNYF0YtL7J3
         tGVA+7ZVAllvTkCCwDcyR18UtHeqvxNhqjNlJ3+FHjbUNrsaaEE3AeKQlgZmSLHqZ8rM
         KmRRm87fdJTTUKP9H4U59U7pnE7T0bzqDSEd92Tl1MdZf7BDM82F7XKSW90OWCALLl2U
         rVgdGQFkUFekJBJH444zGHsL6t6l6So/ELc5hAm+tns4aeL6jCifJizPHLiSt4s6EUgs
         HRoQ==
X-Gm-Message-State: AOJu0YxBBa94JVwPOVg9JDR0qyYQtgn2In2G1/6Eq0NOL3VIIJy+IgeB
	Gib5QcPc+E9FxtPxLXBjcQxoD7r2XSR9t27npv7w18ZF0mM5fARLHbAj+cTDGT0Kuc9VUehOaXN
	KKxCpmO2cmFSwldYJcY6+AYdzZiWQEeTWE7O2QzT9oNjGHPVwc4SVpVjAZuqtDP94Llu0Km9SNy
	PkIVmc4RSJbvgVINBq7kO6yCgAr1+RIVZ3BroDVSk9A3NbqoU5WgBavhfQGUCZmg63KVE0yGI=
X-Received: by 2002:a05:600c:310d:b0:40e:6703:cfb1 with SMTP id g13-20020a05600c310d00b0040e6703cfb1mr708614wmo.15.1705588119877;
        Thu, 18 Jan 2024 06:28:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKfLATr0lCeWP9hg22x2GxpTqQcypE7NcSgbeKp8nnjv/YSDf5bnTUoE6WurGnZxVQUIYCZA==
X-Received: by 2002:a05:600c:310d:b0:40e:6703:cfb1 with SMTP id g13-20020a05600c310d00b0040e6703cfb1mr708603wmo.15.1705588119408;
        Thu, 18 Jan 2024 06:28:39 -0800 (PST)
Received: from [10.43.2.21] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id l34-20020a05600c1d2200b0040e89ade84bsm5492147wms.4.2024.01.18.06.28.38
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 06:28:39 -0800 (PST)
Message-ID: <eeece40c-a883-44d0-820f-5ec9bbaa0510@redhat.com>
Date: Thu, 18 Jan 2024 15:28:38 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: Printer's IPP response declares AirPrint, but it's missing
 urf-supported - workaround?
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have user with HP Color Laser MFP M178nw (probably rebranded Samsung 
device, user made it work ULD drivers, which IIRC are from Samsung), 
which passes ipptool test for get-printer-attributes 2.0 and claims it 
supports image/urf and application/PCLm - image/urf is chosen - but 
CUPS' everywhere and cups-filters driverless fails to create PPD because 
'urf-supported' attribute is missing in response. Only 
printer-resolution-default is provided.

It looks the device worked at some point both via driverless ( 
https://github.com/apple/cups/issues/6031#issuecomment-1139556275 ) and 
IPP Everywhere (https://bugs.launchpad.net/hplip/+bug/1863316/comments/2) .

Is it possible to use printer-resolution-default and others as fallback 
when generating PPD, or is it against standards and can bring additional 
issues?

If it is rebranded model, IMHO there won't be any updates for firmware - 
there is one firmware update and user will try to install it, but in 
case it does not fix the issue, it would be interesting to see what we 
can do.


Thank you in advance,


Zdenek


[1] attr log of ipptool https://gitlab.gnome.org/-/snippets/6419

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

