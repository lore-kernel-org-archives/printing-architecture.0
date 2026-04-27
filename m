Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F7A223708
	for <printing-architecture@lists.linux.dev>; Mon, 27 Apr 2026 15:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777304806; cv=pass; b=eZGFW71yzytbDnDXrhvNt6O9/egeS3sTW0LUYwcFElWVZ0H/7GSmm64VuusrMcM8HKrbiF/H0y0hK4Ooj6RhstEn5fu6Z7LtCjjXu9+8xaKDeh5RVAX3icUdvdf6nmgdZJPOvymjWkgMM9ZH0xmOmMAorCdnj3MN8LLL2VAg2jk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777304806; c=relaxed/simple;
	bh=2HrygMjl3oZMqS1+pkAYUPAoBv9zQPLGptDUz+mJp80=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=ble0jf7iVO48xKgNXZ1k4K2ksRr0aJXtienCcuOaXCIe7qywhV2H33UfQUmAvUldeWO8M/HWZYxIE8yD3X+OSSreUQ36zyseCEKAWK7geAjCJVS/S+sDPWpljFX9N58hgmvfv8g+1dG5xUwKEllM2AnYzqH+KGG4Pkj/ToOkkGA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com; spf=pass smtp.mailfrom=apevzner.com; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=PXARFWvp; arc=pass smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=apevzner.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="PXARFWvp"
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56a9076813bso4165052e0c.3
        for <printing-architecture@lists.linux.dev>; Mon, 27 Apr 2026 08:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777304802; cv=none;
        d=google.com; s=arc-20240605;
        b=beRnu+DOOb1RcZFIre6tZtI7i/z9euQ9BduDcPJQTslpdBWx+WIE+yF8C99JYMy4YJ
         R7shTm0nePuIsQX95mlywRYfIBILNYl062DCUjXwtRsqrv/ZuKgUZ0S8GZWo+K4Y9OUf
         ZFXni8QX9Jk3zMrlSwXR5/8rKaBg8wgsjd7ukD6RjjVYKGK2K3NdZ+e4xiOKqmMtfHMZ
         EGJe8gv1wH69PchqqcFKsYX9UhdfhjjeznRH3X+j2xf4glFdkDDsty0+3OZytWtXpMGL
         xuUHVqJS3CVjMzjsAZ2Hu7OVwzm7vBijHIOVB8lPCb7qpb+qQL2j19aIufDng2BCssxp
         NIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=urOm1omSIgsuYHXM8KvuHJqqJFStWZEf1vE9gKjoaCs=;
        fh=OcgVwSspKgQ6gUYmme5RbhiHqaDCXhuQ54u84qetAUk=;
        b=Gtq4wzEl/NZBJMhuxurNtMdByrdAdZbExwly8Ftb5oLigvNg3+SR+cjgdNc91vzE9O
         jIQPg73dD2i1a14ZvGped+O+JS8mYYCGsmh9lfKEviOX8wyxCKwB9rOO9vi5KgWqJ+ht
         GHbbjucinx6f8wg1ZGBZNd4r2vb28CQzyHvyZHy5e1SRNuOD1QLYcKplpAN/47wjApUQ
         Ai7dDWicXQq0Ta3/hq1iA5x3zquKU+js0ijSrzPhH/5LeVdDaboYI3HSjMoe/wzpp5n1
         Yk1Cu0swDn8Ur5PJ59FXyxBN9uEQrIfYWTdW+v8uXHNkvZCYxQXTvpiuMG6+i/tn+zi3
         r6tw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1777304802; x=1777909602; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=urOm1omSIgsuYHXM8KvuHJqqJFStWZEf1vE9gKjoaCs=;
        b=PXARFWvp32Shke8numjfMLqLMqk0OlZOiqn5AA3RXw+M3XPs9NbC1m4of6lFZCkWhv
         ENDPMZaJ+L/Ni2sxJcZXnNUc3MlXiVrA1mRMO9G4wQ8r4m2h7caQgeLeSrNnKSdCCebI
         isrLyexbEVoj13AhG89x3Yg1eLhk3+KQQmxr4++pcZG0dj5WdHB4HQQ1dFH6Js3U/3sy
         kwtj5dKUSgOIbOQsgM6SEl23F8LL5+8RFfJPizspY4FcllcJ+fVrVkppijUWMH2fUdll
         ttjY6OGLNUdpCd62i4Lrmqlli92juiExXPzOtU3FkcQjjj5n+z9EXP1QnmgkBhzPOvKx
         GVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777304802; x=1777909602;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=urOm1omSIgsuYHXM8KvuHJqqJFStWZEf1vE9gKjoaCs=;
        b=nt327ovv/iZ7dasMN2oTadreGIQtY8rlpQJ5NCdE+8sqS3TB9I8h7LC9s69Qe1PJhH
         smysRpfv7Ynbc7zyp/gja3JVLKenUC3M/vqJXkmBCh0pQ6Vj9Q+MSQdHPT6mLops76CN
         S52iQ5iONl2Er9iUKuYImlQm3ePR66yRGoWSQxK4xqP30Y3iVY4stCPUXMJU/MXheSd3
         5V3/bHkEr+ciMFePRVhnClMc7+gYIWF06FPvzRDWN24jKZW7L51+Jdl82caHWCsSQCDw
         ckh1I9iCNd5tciApcYalJNmCADGClntl2V4DEEZ3usE7DYwy6AzaZ1SWeGpF86L3cNHz
         Vyew==
X-Gm-Message-State: AOJu0YxMVjsjI/as7cLiVptvmZBCTabcu5NLhK2InVX+4Tohj9+79klI
	5hNvtVkTUhgh+q4K2D8AT5ACBCGpWLxTwmoE91HW00Rv1A6oGvBq6OtYc/Bv8TXwu18Dac+Rhod
	LX4tWfO4yuSo9bfZbLQ0ozbuiT6UFtYKfr8MA6aBADlYkd3Ydtbbwkvcu9w==
X-Gm-Gg: AeBDieucF1Ad3XQZXMWAnAqdCb7gMMJ9B7y+Eikz4GTH7y+Qb9VlA4NLY/DLuFH45HV
	1EOzoFnM1Jk1aB5YDcV2nRkr22W4yFPSxrNy0MHf0xcVNrb8BOoLh1jtVzX5ZpKVXUgP1i534Ec
	ihQZDyptjP07W+N2Uh+EEDuuVnBNgF9UsGq0RSjzdqPZkzLeu+b5HtDSTtF96l8kDs3HUDXReYw
	3EX9apvs+ueDv/n85Ar6ToCqtKOp7P3ChJx5vZx+V+6hagU1EIuWaLuKBONqunF8sQxhZOdrVJg
	4AEuClHafnSGPhU=
X-Received: by 2002:a05:6122:4696:b0:56a:9841:9f81 with SMTP id
 71dfb90a1353d-56fa583840emr17449324e0c.6.1777304790802; Mon, 27 Apr 2026
 08:46:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Alexander Pevzner <pzz@apevzner.com>
Date: Mon, 27 Apr 2026 18:46:18 +0300
X-Gm-Features: AVHnY4ITthxK2WIg645JFFkI9_HNlkceodEb9hc51P3qGYazVBibSg3gmQi2aPY
Message-ID: <CAGONzdi8z_1es_fcmBWMQc5Eomj0SG6KFt1H_YjmHW4pRH=Fjw@mail.gmail.com>
Subject: ipp-usb 0.9.32 is released
To: OpenPrinting <printing-architecture@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"

Hi,

ipp-usb 0.9.32 is now available.

This version adds workaround for "Pantum BP5100DN series" initialization
failure (some other devices may also be affected).

Starting with version 0.9.31, ipp-usb requires printers to return
non-empty Manufacturer, ProductName, and SerialNumber strings. These
strings are essential for quirks, state files, and per-device logging,
as they serve as binding keys.

For some devices (e.g., Xerox B205/B210/B215), missing strings may
indicate improper firmware initialization and require a reset.

However, other devices -- notably the Pantum BP5100DN series -- may fail
to return a string descriptor on the first attempt. Investigation shows
that the request for language IDs (implicitly performed by
libusb_get_string_descriptor_ascii) returns a malformed packet, causing
libusb to fail with LIBUSB_ERROR_IO.

As a workaround, we retry the operation several times before giving up.

--

        Wishes, Alexander Pevzner (pzz@apevzner.com)
