Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8376E47ACD5
	for <printing-architecture@lists.linux.dev>; Thu,  6 Aug 2026 17:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786036799; cv=none; b=WnneGvRElzheCMZnBOHA4d6+bfmUxdRtDxMfSOBf8eE6bPaeDnftiwsQo1JEA/BuaipEFU6KLD5FPyVdVz98izhs7kGpCfLIjnQ9vN8TK3O/NU46PaDJ1RUeDXHP4zxzyoCUXTd3HjoOGiQCldnnjDiFqvu83QLbPH/uZ4Kldvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786036799; c=relaxed/simple;
	bh=m5y1FlxTtUIQs0Vd9rW95gCdgURbdGLGBAHgYZbNc/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=R33fTl8KnCqFtfnF0Eei2WtJyaS8HyHeHwtXnhUx8ERGsQDD1wpSwP2386kRcm3c0ebaCpQKHgnMX6lxwiKgtYGClv12OAKXsV8kY6AhoQF5EIrFbCeekYwIaY0o95yOuCqmigroxPJN1U8Tbf+7TPkumtE7wfR3NPvwt2bfxBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gEJbFaE8; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gEJbFaE8"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso16182065e9.1
        for <printing-architecture@lists.linux.dev>; Thu, 06 Aug 2026 10:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786036796; x=1786641596; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=kQ86boLKU3bX6v/ritDFf/Wl+UJlVMJ3ElIU3CX4+O8=;
        b=gEJbFaE8NY2Vwney+a8sCslbnaYkp1/uPMBpmdWnFprUmCUIu+9Sw+6NnFnG+bFMZa
         Xq6APtBmWgEZUwIVV1Z/0DzzcwfIvor3mciN4aTAu0AC2dMYurZUx/VA48LyLXVxZID6
         40iEWXHdDCXFTLPcyod5N0fO7aWzlCiaN+yH29FzNflPMzqVZ88rEBYaQ2vp6DV6MmOr
         3028akO5ZSuuxZgllz4B1IHRvT3L6J1JavR3Bdle2PneiSDNtow02So3d2rWF2N5qQnt
         mlKslDN0KmspsJbbEhbygr2fV86FH9YTw8PmkkBVNl5JeFEFCEc9PsuA+zi5jkJ9iVoX
         EO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786036796; x=1786641596;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kQ86boLKU3bX6v/ritDFf/Wl+UJlVMJ3ElIU3CX4+O8=;
        b=FTsrj0hsGfNl558naa4/psqwIQVMydqMqoKsGnxjnVcjZ6PdPT1QMPC7hQoKFMVmNy
         UYYQgsqk9/gr9dEq/GFQxhiAWXOKRQIBBUIP0b+Rhb3DAzqT4BKZy6C3eDbl3eKrq19e
         bmuc6MNzQ8qV/W/bOUgXOfukgpCcoGJl1MbEhk8fxp0r/tNz9HFP2GGGe/MSyyKVszDs
         rvG9Gw/b3fob6i4JGpkxoZGViiFX6Bpn84q5fgmzesisvnnsD6OIDUyVZwWkmhyaUpJA
         hjjoEVHdPeK1+0PH0hlidcm1DjCZ1itiOXDo4Mw0vfU+kZTi31QJT/KHo6W7CfFdNeIX
         lzjg==
X-Forwarded-Encrypted: i=1; AHgh+RoqmUew+mYq34/WntKG4aqr+8CMxR96T/7lm/+KetVt79CLuaz302uXL+BxPgG+2dgFPwsoJljxlL/6MFmCE9ywiLInSuw=@lists.linux.dev
X-Gm-Message-State: AOJu0YzZD7Wh1JMABVdO1V6Tq+q1nMSWZmAHQ8HL9NdDdtVt+FyjZZLQ
	v+1wH0zYmca+IQMForxIHCt8EN8hTrOfiidu0HwJjApYJgyYD5s7b2KKN3usuao51Cg=
X-Gm-Gg: AR+sD11oTrHlMH1gEeaqSjF80iI04wbaUDaNJkbjiSNmJBOGkTWufT/OUXz8C0y+mjV
	qcKAZ70pZf4M9YFd1NqldiFHy6FYDbPYTUjrHkugZN/WBNH43igBCtqi59QOtW3k1OCgz9sWV0s
	fyB5OnMDDdkoyEZG49EJIM3JAJopbRyRYZMsY4g6I30qjHnjkTqNYAaWMJvbe0JTvjskrX0hayZ
	Ofio1YMLKyygHpIGU/cBqa3q0QZS2kbjBAURUPQsRJzXhuXHS6Pwzlyv5cpUmUjxWhWYSOBMvF7
	+MLMZAaD8YEgp3GUBUbNZvrQHx7EGt2k7VUsJEeu3McJMg78e3El7+jYKWKbd/a8mvc17z+0joF
	QwkGHncqG2MDgLTFnWyRCwAZ5+IcuXH3kh6MdC+yeqQAM5PABX10T2+WJQGiMnubWVFkPMY0woO
	if+IMNy+xX2z2yWBnZd8srLD1q+nFIJP7fXKplqdTPgXJn7gsYV/5iVbBSwaigerICCkbzPfVm9
	W4x6hmh+E1AZ4Jdu8W0JPqfv4zgN3E5WZDnBDLYBN7CHng=
X-Received: by 2002:a05:600c:4595:b0:498:952:e276 with SMTP id 5b1f17b1804b1-4994e79e377mr154355555e9.8.1786036795602;
        Thu, 06 Aug 2026 10:19:55 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4995420bd1csm78719155e9.3.2026.08.06.10.19.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2026 10:19:54 -0700 (PDT)
Message-ID: <f9f9d69c-5662-4070-b675-68b096e62f99@gmail.com>
Date: Thu, 6 Aug 2026 19:19:52 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: A working Samsung printer made obsolete by one unsupported driver
To: Bas Homans <bas@homans.nl>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 ValdikSS <iam@valdikss.org.ru>, Ayush Singh <ayushsinghceee@gmail.com>,
 Pankaj Kumar <pankaj955956@gmail.com>
References: <CC3A107F-882A-407F-9419-120ECC3E4DBD@homans.nl>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CC3A107F-882A-407F-9419-120ECC3E4DBD@homans.nl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

thanks for your mail.

I am forwarding it to our mailing list (please subscribe to it) and also to our 
maintainers and contributors for legacy printer drivers.

    Till


On 8/6/26 17:21, bas@homans.nl wrote:
> Dear Mr Broussard, HP Sustainable Impact team, and OpenPrinting colleagues,
> 
> I am writing about a small but rather telling example of avoidable electronic waste.
> 
> My Samsung ML-2160 laser printer is mechanically sound, reliable, economical, 
> and entirely adequate for its purpose. On my Apple-silicon Mac mini, the printer 
> is detected correctly and print jobs are successfully spooled. However, on both 
> macOS 26 and macOS 27 Public Beta, printing then stops because the legacy 
> Samsung print software is rejected as incompatible.
> 
> AirPrint is not available on this model, and the printer uses Samsung’s SPL 
> printing language rather than standard PCL or PostScript. Consequently, a 
> perfectly functional machine has effectively been turned into electronic waste 
> solely because a small software translation layer is no longer maintained.
> 
> HP acquired Samsung’s printer business in 2017. I do not expect indefinite full 
> commercial support for every legacy product. I do, however, believe that making 
> otherwise serviceable hardware unusable through software abandonment is 
> difficult to reconcile with HP’s stated circularity principles of extending 
> useful product life through repair, refurbishment and reuse.
> 
> I therefore ask HP to consider one of the following proportionate solutions:
> 
>  1.
> 
>     Release a signed, Apple-silicon-compatible version of the Samsung SPL print
>     filter;
> 
>  2.
> 
>     Release the relevant legacy SPL driver source code and/or technical
>     specifications under a suitable open-source licence, enabling OpenPrinting
>     and the SpliX community to maintain it;
> 
>  3.
> 
>     If neither option is possible, explain what legal or technical obstacle
>     prevents HP from cooperating with the existing open-source printing community.
> 
> This is not merely theoretical: OpenPrinting’s SpliX project already provides 
> support for the ML-2160 family on Linux. The necessary knowledge and developer 
> community therefore exist; they merely need sufficient documentation, source 
> access or cooperation from the rights holder.
> 
> Please route this message to the teams responsible for Samsung legacy print 
> engineering, Sustainable Impact, and open-source or intellectual-property 
> licensing. I would appreciate a substantive response as to whether HP is willing 
> to pursue any of these options.
> 
> I would gladly have printed and posted this letter, but unfortunately HP’s 
> withdrawal of software support for my otherwise functional printer prevented me 
> from doing so.
> 
> Kind regards,
> 
> Bas Homans
> 
> 
> The Netherlands
> 

