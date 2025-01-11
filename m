Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2413A5C96
	for <printing-architecture@lists.linux.dev>; Sat, 11 Jan 2025 01:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736559540; cv=none; b=oMaxzCA9WH9wFOkQ5/1dqgIhN+k8qQZTxQJcuUC1E/H01qDsn7gGib/GByh7ibs1VeP/H9Tpoo+0mWsBVquigjl6baWveXX9bKfSOdmHey9Xq0EtTAUpQPnUiU1jdT+WQcfkrl4QU/FsAJrSkwBhr10dVMBbTSVEm8Mz5OQyMUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736559540; c=relaxed/simple;
	bh=TNOrcoDb+qRS7PzzwkTfH1FJHdYmry9bLVw+GxfeMpw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=hbZJkAE7lladLlnP/i36gegR0ysLxiR5bmOUYk30TtuglHxyUlETgW+AMr93zyk6nzBY6q/04OgppiObmQO9f31/eU9ZGPr+ay/XgQ0ZCVdoGDxrlxVJe5lIHoZGO1LSp05vm5nY/P3cBz89kndoNfN377nRW0p5UaOr2yoI18I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gcFDQf6B; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gcFDQf6B"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaf6b1a5f2bso691161666b.1
        for <printing-architecture@lists.linux.dev>; Fri, 10 Jan 2025 17:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736559537; x=1737164337; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfoEldlrn4ngXBUDmwNnxSJKsYj1yWe1tkIYKkZlosQ=;
        b=gcFDQf6BVrn7qqxw/1qbn15/2GKoPS9b2pQDeWPfzrAv31t/RCQsqmOkiPhYCyJqom
         54TrzRISCQ8jXHAqbxiD5/umPak165IgEj1XsoLYlb+E0ue2a6JwJJqzXAW9qfxkndWs
         jAwoVNDN/fMZr9JOLgHX0sDAa+ho8XDfu15mN8GDlrJXK+7U0D1y8YbRphcUpJ0JXVoM
         1osahodi6uo5iXdg3STszTucqtCn0fRhcPc9ARHyzFxObc2rknOmq+tUMOfv7vxq9DS6
         1foDRV2/dhZFnzNeNNjDyRVxFZJhm1JookKqQw3l86+4gdQzPAUFNgv9hV04pyanJOAX
         T+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736559537; x=1737164337;
        h=content-transfer-encoding:cc:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FfoEldlrn4ngXBUDmwNnxSJKsYj1yWe1tkIYKkZlosQ=;
        b=tyfKBFk+VxOIuIN4SoollnqDVATdhitOaoyPy87DkAxrXGSX0hzzN9BdFtB3lLuxbL
         hTX2LhLfywFVnQEDjyOSGYy51nTxfdp0KzsMx5qXMM5eOPVOXFuIWaDYTyr8HxDuRT1T
         NRst09uwoaBS5SlgY9anUDhZeOp+SwmehYPUa9+x9PAjIPFR6HHapPJsvFvuIsvr/Ozj
         QtLUO0RcvOwk975tA5i6xESeEmqxEwxW/FOF6fwjiZMxPm+fgkMXyAsfVB7kOPMRAELF
         W+lY3hys8I+jWBZdmqeMzhto4UEnV+P8K1NXK79m0sP8SNtbyQ+72lu0WALMBRwrQtyJ
         wdAg==
X-Forwarded-Encrypted: i=1; AJvYcCUPEWaaHaddXRbiFWaDoF80vDdj/Uao31vTpVRvWi/Yxd0YbPMTCO63STI0eCmk6LJlfLgfZs3mJB3fr1aMb0jWWwxVFoY=@lists.linux.dev
X-Gm-Message-State: AOJu0Yz3PPZJC+SXwY7/eQvyCeH9Da8vSEKEoGzRu5UeHZjybqOWiwmz
	V+uKFnBbgp8io6yed4NM5JMngVzRlu7Tv68wPprdQvODSdIW7FyY
X-Gm-Gg: ASbGnctDBnE5o7ZNG+Z1mLmyWSvXPUoSftENAgKwHJhCCHAJlFV0kTDpnkPIHaRA3qs
	Ywa9Bv6tHiOWApF/vQ7r8f31qm8jR9hZDj+RpbNSZHu5GT3QGnOdfegTPaksqWzkkThybVG/S7R
	2pL/cAVYdnCnGnmG0JsI8Pjs0RLPvFp00jZXA5rAjiw0QHcIhf+4HRbmESd1g5Qh1sEBehLor3G
	ohjld4OOH97U5ckCN6UxX4+KunyGQWo9+73l0VdfGkBN8aZU7hVoWahdXg38/BApwv1+2kurCL9
	5yGct3QufAIXGGdxGALkwtGqg0lOKrM=
X-Google-Smtp-Source: AGHT+IEy1371/ABaVuOsXSx52ht/0mUB2LrKR7Y+691g8nKaf0TK/WBStsjXpCLXsY4xFwKPtVgYLA==
X-Received: by 2002:a17:907:9447:b0:aa5:b1bb:10db with SMTP id a640c23a62f3a-ab2c3c2833bmr717422666b.1.1736559537097;
        Fri, 10 Jan 2025 17:38:57 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c905ed3esm219973966b.33.2025.01.10.17.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2025 17:38:56 -0800 (PST)
Message-ID: <13afadac-1fe3-46e4-b440-b4c82677a1ef@gmail.com>
Date: Sat, 11 Jan 2025 02:38:55 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: cups-browsed 2.1.1 released - Long-standing stuck-with-100%-CPU bug
 fixed!
To: Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>,
 Thorsten Alteholz <debian@alteholz.de>, Michael Sweet <msweet@msweet.org>,
 OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Cc: Debian Printing Team <debian-printing@lists.debian.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

We are now releasing version 2.1.1 of cups-browsed.

Main change is the fix of a long-standing bug making cups-browsed getting stuck 
with 100% CPU on 1 or 2 CPU cores.

Here we go:

https://openprinting.github.io/cups-browsed-2.1.1/

There is also a GitHub discussion set up for the release now.

    Till
