Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A59604D5
	for <printing-architecture@lists.linuxfoundation.org>; Wed,  6 Mar 2024 12:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709726513; cv=none; b=ae7nGDsfJvr5UNJ0vbHYVJNY8dIyskmTTvPkzTrJy45hJtilPrs4g1CZRYEybDVkHHuvLbeuF3rj2mn0QuVoUGFIuU+kEWcS5g7FPF+M5prlPzxjPeP7fT5rRARcT4d/NihtddJiYlxmac1lP8IDjykSA1iVBi/KEtndKp3pcFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709726513; c=relaxed/simple;
	bh=SYj95lge7YSpLByIOMzTxWUk1RkBMnaN7nTEYNEtpqQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IsJh6YBJ38rErQEQgc9F3zBxuFop8K+KuorORoXnlZwe30TV4lAWafo1f9ewR9NXjCA3KqDHnzrj1EmnYXsJGMuJdCV4hwaBqYWg41B2+v8H0kV0NBLpjw5padHeIinjgZIwTRPtw1y2qGp+2J123xJ3XZcoCrGiL2c5gxy0orw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hWSFTQ4n; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hWSFTQ4n"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 570BC40500
	for <printing-architecture@lists.linuxfoundation.org>; Wed,  6 Mar 2024 12:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2J58t4FqTsgo
	for <printing-architecture@lists.linuxfoundation.org>;
	Wed,  6 Mar 2024 12:01:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B2B1405F2
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B2B1405F2
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=hWSFTQ4n
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2B2B1405F2
	for <printing-architecture@lists.linuxfoundation.org>; Wed,  6 Mar 2024 12:01:50 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a449c5411e1so686253166b.1
        for <printing-architecture@lists.linuxfoundation.org>; Wed, 06 Mar 2024 04:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709726509; x=1710331309; darn=lists.linuxfoundation.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OxKjQTRj7PB7cUZl0T7Mi/jJCMrUzRwjTKU2gpweZgo=;
        b=hWSFTQ4n6SWMYoR6dWfSPaL4CnJb9WTLEYN8suU3iz9fr8B8/vw0Zsf1oQ3Nj19i3x
         oVWRIKkomL9l+t2TqWwZCLW74OdeVD+L/vsfFq/8ERXjrmTKVpe6A/t730TI7oEvhSs4
         B85bEunTes+LcoPLkGSnjb/oZZSrYiKinEf8Lg7QWkmekRP/6lNv4soVNfd2XL1IUtyM
         kkH7p5sNpTIcgUrOKNq2GR2C0jbA7n0ZRZvjJADej57sLU+XERbrjQdcp3kaHZd08LC3
         WVIwTPzTNuY4UpTVfxddXA8lRGxjVE5VeNLAJWKmYPrFRKCScaG4sUrWoV15JBFYN3GO
         upmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709726509; x=1710331309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxKjQTRj7PB7cUZl0T7Mi/jJCMrUzRwjTKU2gpweZgo=;
        b=enB+Iof1sMGKcTlySL+oW5d4WZnQ0xz8/Gjw4Sbe0Etwrl+Tu491Srq76qL7GFOe2Z
         Mco6X0PVgF13c/lDR4ohrKIVLmBrOK88QfrT+h9SwmyymL9LY6zEaNJGAk8GgDEMXFwU
         6sKrSuJPuCednmJqEP4CJGzwXq0482m4KG9SCvkuLRtPwqOlPeGAYWgELf8Qi4Ot6BWm
         vpn2593j+d35yPoE0x+XhXq2sQDGj8l/70QIDgaG5uqKrWbJVK2QEcNE1b8pjYlqxBTr
         BJ71ZromFIy6ViZHJjZSwH3MjajwcUhh1xPuNLOsDGfhSH5S+Soln3hbjgvxiGmOCKnf
         +T6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXxFWI5ucGThfhqYtUmjrpsInp/HJ9wwMNQRfF0AjUca8eb8OhYkKvQv14c7nFr/q50PSZJariYEJNtvIlFnyS7c+fXNQe9SUI1C5SzicSnoWE30kNbB4g6AE8bHIS+tw==
X-Gm-Message-State: AOJu0YzSJVl7H3x9pLl2KsGsaIeL4amfQKd2VjwUwiZYQo+UBdVLTLLc
	tnDUn7uyT+CMhCviMtbq5Y+NULInqHcQSgO6LPJ4qHr0EhcUUsTb
X-Google-Smtp-Source: AGHT+IEV761vnJSHZHuWNQ28zMRP8XZgbI/fpfPckeGH8iMLFZQOE6sz1t4N2KEFakA6adnsb7pmow==
X-Received: by 2002:a17:906:4156:b0:a44:7ad0:8069 with SMTP id l22-20020a170906415600b00a447ad08069mr9952034ejk.72.1709726508629;
        Wed, 06 Mar 2024 04:01:48 -0800 (PST)
Received: from [192.168.68.106] (178-191-200-70.hdsl.highway.telekom.at. [178.191.200.70])
        by smtp.gmail.com with ESMTPSA id f17-20020a170906085100b00a45b6e84e00sm756195ejd.75.2024.03.06.04.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 04:01:48 -0800 (PST)
Message-ID: <d786d4b6-5456-4250-998e-abdecb4944bd@gmail.com>
Date: Wed, 6 Mar 2024 13:01:47 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fwd: [SC] Draft May 2024 F2F Agenda
Content-Language: en-US
To: Ira McDonald <blueroofmusic@gmail.com>,
 printing-architecture@lists.linuxfoundation.org,
 Aveek Basu <basu.aveek@gmail.com>, Danny Brennan <mdannyb11@gmail.com>,
 Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>
Cc: Jeremy Leber <jeremy.leber@lexmark.com>,
 "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>
References: <3EFFAB21-3445-49B0-901B-2672DD0C2921@hp.com>
 <CAN40gSvwaETcapL42DOkGgCLtsGbP8hVev_iQKL-r3XNox=ThQ@mail.gmail.com>
 <234B4709-0873-49F1-86DF-3DBF98D47D1F@hp.com>
 <CAN40gSuTCnD1G0_fzSkgF71ndqDa1qHpLbWbQe4i-TCBFHyw3w@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAN40gSuTCnD1G0_fzSkgF71ndqDa1qHpLbWbQe4i-TCBFHyw3w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/03/2024 01:14, Ira McDonald wrote:
> Updated draft from yesterday's SC meeting - OP and IPP list of topics 
> may need work.
> 
> 
> May 2024 F2F Agenda Rough Draft
> =============================================
> 
> May 6
> --------------------------------------------
> 10:00 AM - 10:30 AM    OpenPrinting Plenary
> 10:30 AM - 11:15 AM    OpenPrinting : GSoC Project Updates
> 11:15 AM - 12:00 PM    OpenPrinting : ChromiumOS Printing Update
> 12:00 PM - 12:45 PM    Lunch
> 12:45 PM -  1:45 PM    OpenPrinting : CUPS Plenary
>  1:45 PM -  2:30 PM    OpenPrinting : cups-filters • CUPS Snap
>  2:30 PM -  3:00 PM    Break
>  3:00 PM -  4:00 PM    OpenPrinting : Printer Applications
> 
> May 7
> ---------------------------------------------
> 10:00 AM - 11:00 AM    OpenPrinting : Distribution mechanisms roadmap

Is "Distribution mechanisms roadmap" about Snap, OCI 
(Docker/ROCKs/podman) containers?

> 11:00 AM - 12:00 PM    OpenPrinting : OpenPrinting and Ghostscript BoF

You say "BoF" here, should this then be more an open discussion session 
than a presentation, as the last session of the OpenPrinting part?

> 12:00 PM - 12:45 PM    Lunch
> 12:45 PM -  1:45 PM    PWG Plenary
>  1:45 PM -  2:15 PM    IPP WG : Status • Charter • IPP OAuth Extensions 
>                        v1.0
>  2:15 PM -  2:45 PM    Break
>  2:45 PM -  3:30 PM    IPP WG : 3D Printing Liaisons: Status & Guidance
>  3:30 PM -  5:00 PM    IPP WG : IPP System Service v1.1 • IPP Shared 
>                        Infrastructure Extensions v1.1
> 
> May 8
> ---------------------------------------------
> 10:00 AM - 12:00 PM    IDS WG : Status and Discussion • Liaisons • PWG 
>                        Hardcopy Device Security Guidelines v1.0
> 12:00 PM - 12:45 PM    Lunch
> 12:45 PM -  1:45 PM    IPP WG : Strong Device Identity BoF
>  1:45 PM -  2:45 PM    IPP WG : IPP Everywhere v2.0
>  2:45 PM -  3:00 PM    IPP WG : Next Steps
> 

    Till
