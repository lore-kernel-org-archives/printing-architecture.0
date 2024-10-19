Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389E414A0AB
	for <printing-architecture@lists.linux-foundation.org>; Sat, 19 Oct 2024 21:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729371761; cv=none; b=lhOrThMrzdxbSPUrrai9MzSVshyWeH2hCxiEBEUCkbkiZPfEmC/BxuQT5nopfrYws7OGlrK8DfGFaH9OOS+tnlTbDQ1UuhtsgEnJHDOd/NxkSv0yXl0MNCSmR03NhyrjRbGaliN4/um9Y0YoSk4lqdsZISo7XO4w9Akk/Yedrrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729371761; c=relaxed/simple;
	bh=/UgaCGDb5WViJiBthN2uC5GhKAjceeo5O8lCe6PWfsY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=fQfh8j9W9FrbAQK75bgfLw+nY65eROKxxVvzQiuGs3PQL9iDG4sq3JYfxFiGSNrjkK4eXErez7mqfBNUzu5cFE3iG3aYy724vqpFLm9U50WSRIC+OQ5ktQxJwwE7OrMZaajHSUpDtb+wmEj05Se2uUCenvPtys8Hwn9q8bLu5gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fHYf0GKw; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fHYf0GKw"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE96280E9E
	for <printing-architecture@lists.linux-foundation.org>; Sat, 19 Oct 2024 21:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RYOWgHQq7mra for <printing-architecture@lists.linux-foundation.org>;
 Sat, 19 Oct 2024 21:02:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8ADF680EA3
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ADF680EA3
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=fHYf0GKw
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 8ADF680EA3
	for <printing-architecture@lists.linux-foundation.org>; Sat, 19 Oct 2024 21:02:38 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a99c0beaaa2so531813266b.1
        for <printing-architecture@lists.linux-foundation.org>; Sat, 19 Oct 2024 14:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729371756; x=1729976556; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CXD90Dabtjjs4fJFEfN+XQKvlVbONtas4lISiLBAcdU=;
        b=fHYf0GKwzEtt9zp08lLd1xyfyXl9sbh0yNmZHWcZKC6atz8WdvR4ig7SLjXe6RIGmX
         zQJ5EOrcd5/WGf3VfZGPqa9+TnQaQYBAolksCBLr5CB5ZIIsXJL5BqhbkdV7d2ud7KYz
         ITc1OmNOcBhOT1BQdM0FpdJILjnkCn5jsqgzYiLs6mXAJX/sl5BT7VCusCuG31jpjwU/
         SayifvFGj8K/6pPbzieSe23SQSu9pSvoABTpgI7F8il7DcHhixBhkBeeyNMe6gRLCYpG
         0rViq8eaQRBzFauQc2q39XiV8+LYtY2I3lB3zbQev1FM+4vNgjQrH64Q8ROEosUQmwLF
         PS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729371756; x=1729976556;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CXD90Dabtjjs4fJFEfN+XQKvlVbONtas4lISiLBAcdU=;
        b=gV+N9yfQO8YORmJo3qWJlcJkzIV/dQVIxajyt8mFvpwKuDlH4sGaK7Jz4cioMBJt8l
         dSj49Q9QWOZxP1/6YpMNUD9WIy1mmwD0UjKPxOPAHh+83Eqjx9NXUTf2CMKYj5b+6Nnk
         kB2HbiyuxuRr91yS1ZQ4DHG/XfWG+//HUmtVJJXSSEBVLRdOYW9WelBAgUoSSCDJHmOU
         /dTRfxUwnxq3PrxPOpL9hFn5Cnb2IyWXYNlopRQKhoPvhoJfBfvfV7w+KB3qvQ5yMmY4
         skC7kn3Ww7/U+dZi9ZHNGEfXa057XyNlmlH1/TzcRiihkTBOmtypt0jMI6eXpKNE74HG
         B2Kg==
X-Gm-Message-State: AOJu0Yzmy+vjlrQq+Mi8mbJliNqPr8zo1J3HaU1F7B8F1t65hb3hPvSq
	xfROaZegZMlpJzLcJ5WEveLwJE6V91SgiGRts6QkQpL8eeWlUxOivBBXFQ==
X-Google-Smtp-Source: AGHT+IFBuF9pyWqkX0ftHOXUnRO29HH5grCMFhQDlSjWaJPV7A8dxkAG3kzb59vNZ34dPHcFv9QGfQ==
X-Received: by 2002:a17:907:3dac:b0:a9a:bed:e564 with SMTP id a640c23a62f3a-a9a69c9ea18mr661956666b.48.1729371755404;
        Sat, 19 Oct 2024 14:02:35 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a913706b2sm16289966b.121.2024.10.19.14.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Oct 2024 14:02:34 -0700 (PDT)
Message-ID: <fc5ebeb5-aef8-4640-b1eb-5ad1a3a6b356@gmail.com>
Date: Sat, 19 Oct 2024 23:02:33 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: libcupsfilters, libppd, cups-browsed: 2.1.0 Releases including
 vulnerability fixes
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>,
 Thorsten Alteholz <debian@alteholz.de>, Michael Sweet <msweet@msweet.org>,
 Sebastien Bacher <sebastien.bacher@canonical.com>,
 Ken VanDine <ken.vandine@canonical.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have done 2.1.0 releases of libcupsfilters, libppd, and cups-browsed to 
include the recent security fixes done to prevent the Remote Code Execution 
(RCE) and DoS exploits reported.

See

https://openprinting.github.io/OpenPrinting-News-Flash-cups-browsed-Remote-Code-Execution-vulnerability/

Also included is libcups3 support for libcupsfilters and libppd (can now be 
built with either libcups2 or libcups3) and filter workflow testing (for build 
tests, CI, ...) in libcupsfilters.

And note that legacy CUPS browsing support and LDAP support are fully removed 
from cups-browsed now.

Here are the releases:

https://openprinting.github.io/libcupsfilters,-libppd,-cups-filters-2.1.0-Releases-including-vulnerability-fix/

There are also GitHub discussions set up for each release.

cups-filters 2.1.0 and 1.29.0 are not yet released as the fix of foomatic-rip is 
still in the works.

    Till
