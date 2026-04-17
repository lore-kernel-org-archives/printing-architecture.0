Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D18C3A3822
	for <printing-architecture@lists.linux.dev>; Fri, 17 Apr 2026 13:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776431713; cv=none; b=bHONg0jKsIFMb3a2hNpZfLOJ+cwmNg4Oj++f3N/6d9cRKOpup3xe3isATyKYEuf7NwEV5C3985pSJEyeTe5D+TEIITo/a12uHx3/aelshKfdwui9ujByUOxXN6o7lGTNh1rniw7zDpcEbkLHPxVDEkBUmyqlyl9MdV67aW0eb8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776431713; c=relaxed/simple;
	bh=iFoQbEP4CPhL8kODowVx2sFKQpUtzF5QYiWV6joCGr0=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ZZS+0nxu/LM3Pp8xtVW03fmM9INynTeTiKbS8vuvORXbASMwUFbPIvxkww85ulc0bBN5c/BcUgsvIPHCuNREgSWs5KDC/PoZ0oQEzZwYnaK4Q94kR2vRDGPCVDB90Sm4Ax5/qaKHdKJv42dipJ8QWLKyfe56/d/n6LF6oT2BwHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=SBJ+jI7I; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="SBJ+jI7I"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776431708;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ikiwnPvcEUN4Ywuy4xgWlBQbI0RdA181TuFlcxuXXAA=;
	b=SBJ+jI7IDR6kNVZUZeyGAzQ2oT8KHbGOZXRVXOlbwQh60ddrJC1R3yhsQMoV2fvUai+6HO
	uN4JGmGDJX0/Z17o0wms6CUPqJapforJNGp2/w3v9aPK7gi8Ljjf2nWsCXPHiziRCKiXPf
	r849DsOFAdWQYcpGOHeo62M1MeRujPE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-543-kfEtvpzaOtqryp2lAUFa8w-1; Fri, 17 Apr 2026 09:15:06 -0400
X-MC-Unique: kfEtvpzaOtqryp2lAUFa8w-1
X-Mimecast-MFC-AGG-ID: kfEtvpzaOtqryp2lAUFa8w_1776431705
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-43d7757463eso1063742f8f.0
        for <printing-architecture@lists.linux.dev>; Fri, 17 Apr 2026 06:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776431705; x=1777036505;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ikiwnPvcEUN4Ywuy4xgWlBQbI0RdA181TuFlcxuXXAA=;
        b=OowHfQC8EIySZDYXqcr32S49Fv+yMqxYE3ArWF+iFL62rXTF3jw1+HzOLGHzDlAMLG
         5q7d8FwU6UopaRnoEIs3E+VuyqK3QZTpZHjBZIRih2T6vxB/b2018mlgmh2PbWIAfeSD
         WR12MZ1N7K4oLN4uLZJ2jGSxz7YlIgIDeQoPVCSFO3QnrRZ9DiNxrJbIX0YnNvbfLPk8
         Fja8KeMvfBBkDtr41xwMSEE/i4ZsSYNa2qLNnPsMIleG9QLHaXQutsefk+Y/2hAQBKOI
         1KsDubKiewZF0GOAm3X4mn2heDCeWxg7FTGiRH069mPAr3+YrMZz3Pe7UKEoDCgboTPt
         4Pag==
X-Gm-Message-State: AOJu0YyADro+SIs9+32eDI2HPCp7H94eJKYXt7llxQnFnBs34vlbtH/y
	ri3RYGqsvRtLMGtvE0enl1QxmjpNxqpPjivNmeP0f6BrxAbWRoSoT0++qCchfvgZ11xDswTs5QM
	V4QVzWrFVNX3U9a29qHi8mEoTLwgKHfQJoFdy+FPfarzSB+r2xmaNLuS2E+Mc3DkXcrkAuFJqH+
	Jgsbo8KyIdYWoZNqz5O+aHWaHeCZYOeGVredK/vtPDqPVuMoN17YEm969ABoLn
X-Gm-Gg: AeBDiesT2Mw+RJLre9WMw8xZpjvFeiNP1JzpKrQ1nAgK+MdFTt40ohDwVFWvWcuWt4I
	UBJY1dsZl+vosYS0OqbdQzsDS3zwo1gTwBSn+Od3bukQSZQb8kT6fj/AeJHF8iE0T+o9a+e/nzz
	l5zh+5Cyfd8z5dSROiOd3XBexC4H2liTLLFAvzfG9wXSZKYFQAWKFphQu4yEER8xxOS4MbJYeov
	u0i5lpiPw3BWsFuzHAnT4XVXE2E1mxDpHSYbRS++X1a2u2veFDduU4JAE+0tOv5uWcnb2eIcIJC
	fhiHt6RbUYKjUEB4iZBxARW9Obf/06DW1kMgny2IN5AGM13hbXuKKmk/R+0lQW3CBi6Mx9EnCio
	B2GDsxv+5lrAptBLlBnRqxTzGLv0390Ue5HumSvqP5cg+
X-Received: by 2002:a05:600c:4c28:b0:488:aac9:7a31 with SMTP id 5b1f17b1804b1-488fb84fa4amr23976195e9.0.1776431704620;
        Fri, 17 Apr 2026 06:15:04 -0700 (PDT)
X-Received: by 2002:a05:600c:4c28:b0:488:aac9:7a31 with SMTP id 5b1f17b1804b1-488fb84fa4amr23975775e9.0.1776431704034;
        Fri, 17 Apr 2026 06:15:04 -0700 (PDT)
Received: from ?IPV6:2a02:8308:a08f:3700::6055? ([2a02:8308:a08f:3700::6055])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cb1405sm4260888f8f.4.2026.04.17.06.15.03
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2026 06:15:03 -0700 (PDT)
Message-ID: <f52822f0-cf10-4ccc-9c72-86c3dd7e0488@redhat.com>
Date: Fri, 17 Apr 2026 15:15:03 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: printing-architecture@lists.linux.dev
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.17 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eO4PTJE9585ANNOTIhAuOv4Z3YexZyDLlwUMu5UmtyE_1776431705
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all!

The new release 2.4.17 contains the following security fixes:

- CVE-2026-27447: The scheduler treated local user and group names as case-
   insensitive.
- CVE-2026-34978: The RSS notifier could write outside the scheduler's RSS
   directory.
- CVE-2026-34980: The scheduler did not filter control characters from 
option
   values.
- CVE-2026-34979: The scheduler did not always allocate enough memory for a
   job's options string.
- CVE-2026-34990: The scheduler incorrectly allowed local certificates 
over the
   loopback interface.
- CVE-2026-39314: Fixed the range check for job password strings.
- CVE-2026-39316: Fixed a printer subscription bug in the scheduler.
- CVE-2026-NNNNN: Fixed a SNMP string conversion bug in the backends.

where the last CVE number is requested from Github for several days now, 
the number will be corrected once we have one, but we decided to make a 
release to share the other fixes.

The release includes other fixes as well, listed in CHANGES.md.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

