Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6BA2264D3
	for <printing-architecture@lists.linux.dev>; Mon,  9 Feb 2026 23:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770680366; cv=none; b=H3Z21bHr/bsowfILsJqnS9WAzhbo7ntDpeFx7kyLzr4e5dmO1Hy3naFM/sNxoEvtgL+uk836lVnhlluBhPU1xpRgK2p7Oy0UkQXinrsi+SMZpRekjHiKPkV9VRGso8egGZhIkMZmUizY2K+wUUGKrndzdh4AgImF+4JKqCHQbrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770680366; c=relaxed/simple;
	bh=VQUMPFFo8xPTTdm2IDip16YWP/7fQtAd6UCltuAsySU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:Cc:
	 In-Reply-To:Content-Type; b=fEO47dJgD4npj378swl0AP7o9fSEZH/WCTDSUvWkayMV51SG/5DD1G5VF2Z2Xuq5Ub42J8TiS1JHa9uJiBy/wTaT/wXYsWTAdxVvwHxkPFUe5mwIrmOjpTIfu5jQ5p16q+UK4WakJsFjbjGOn0RtqFw//hZy27K/uXeH8jIC5D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GoqT6b2m; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GoqT6b2m"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so41732835e9.2
        for <printing-architecture@lists.linux.dev>; Mon, 09 Feb 2026 15:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770680364; x=1771285164; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:cc:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s2EqgBS5CbHb8iALfvoS2BW5c75+4YmAE3Ts+V1gsMo=;
        b=GoqT6b2mQoNZiD2vF6E47vPlf11ciRO4Le4CkAE0m3+XXyeGph2vffFnLiiD8pN+tv
         BxLEXE2O0NnRs8aPrAdOugqIFPCyjXbh6AUs7iPI6jxA6a2lvjsfH7JujZnc8c1FJFAQ
         AacQeSCrEr98Eb8d7WQZviAl1VEKfDVH30WDVJ7oXjoonC9R5EIQ/WyWsAQ2+Fb+HYES
         vNxU6b3aoK1b+Xn9fEBcxzzfAi4vqjfDCvz8Sr/PPRPK0omsIMw7AyKdSHfZzuFp+HFN
         fwLhc2A/e3qfn0NPrw9LOAUoQmYGkbn/QO7iC0VPOAoIQ+TvxKkKgJSztitxv91f/a7s
         Fc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770680364; x=1771285164;
        h=content-transfer-encoding:in-reply-to:cc:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2EqgBS5CbHb8iALfvoS2BW5c75+4YmAE3Ts+V1gsMo=;
        b=xKLwtCwadijyv+neoQ79/CCzxBd3XjD+4CTxMQTy+WK4VfH8b2W/mb0uygFrPGtAet
         lrRqICjmEFjVSTCQuk50ipaBUn6Yk+hx1KkVj9gCm8/oecV32ozQ4fc7oNKGcSm1+Byn
         tnkoY0OkUB0cfcVmq9uExnMF0ReVbUm0wxG/jjv616jYnc/JPqcz8BhjsmXpfmji5VfP
         IwPCmyh4VWJYnFDKYJ7Fu+E7hOWKj+KLA8KECEGeFu3t5zRV7T12PH3RAUTJIp9S3yQJ
         z2oDX4bjfRin+G8Ip3BZlR9KVLHrUaeWq9/mdWL+skmCGKDVDccU+U4hNBLOS0H2QykW
         JTgw==
X-Gm-Message-State: AOJu0YylrIFbY7ZyNNEqJ5IqvusobhmHSJXcVwUBn0Mc99PrvOLcHgbA
	7+5MMMqG6JPUqbfUlfSqwbAY6m1Sa7j07PmRab2sdFgcuRdCE1/++9IF
X-Gm-Gg: AZuq6aKcOtG8Ag/p5DC0lCTtvcotdAQ22DKSkqwoKb7zXlQ4BaZEe63ZUZ5AshOJKE0
	giiCyuXIDX6bAtkRy3m4tVnUEBGWdbritw0B5hXwguiCGsh73BXYoMVx0pgXTeyUGk9dVHMeBJT
	kQyP5iUd+QZ3eApco/DU+cyRXtdlPtrmDN2dB0JkOUdkhUEQS5DqHzfk4lLx2C2u46axE4Zr4le
	BZDYV+5KT6d6LFOa6IwWyfJVt69IVE0XH4rX0uTjqHdZ1+do8PoSC5EQ0UgRLRqKWp7bYZ1k4OY
	Wn3ltVmyZgqStDG0KZIOSGXHMOrn/EMDeC+Bc6IlTrPWzSVQyKzvgoVECqf+YdTm+BAcsaXU74N
	nLd8sh4nK1nTyaVW4wpD78IEQfa6LzLcZDbFKI308poFAvqV6KrTefIpQcUG+XYE/r0BlMeom8X
	+Ovfr5mD0d3X9qOWPRM2aYqANT3ouoWa43sHZ0+FI5Nz6ltl9qo21OIZGD8RVgcD3AbJvRpTZKe
	qYybDjk1bZJjS6Dxg==
X-Received: by 2002:a05:600c:a43:b0:477:a1a2:d829 with SMTP id 5b1f17b1804b1-483507e1ab4mr4858535e9.13.1770680363437;
        Mon, 09 Feb 2026 15:39:23 -0800 (PST)
Received: from [192.168.68.113] (192-164-23-214.hdsl.highway.telekom.at. [192.164.23.214])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5ebd1bsm22091475e9.6.2026.02.09.15.39.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 15:39:22 -0800 (PST)
Message-ID: <b928f8b0-c338-4351-a557-4c11dfa49f8b@gmail.com>
Date: Tue, 10 Feb 2026 00:39:21 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Existing practice for embeddable IPP servers in printers
To: John Scott <jscott@posteo.net>
References: <1968ca68cbee9db439c5ce1133aec226b7289124.camel@posteo.net>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux.dev,
 Akarshan Kapoor <akarshankap@gmail.com>, Hubert Guan <hubertyguan@gmail.com>
In-Reply-To: <1968ca68cbee9db439c5ce1133aec226b7289124.camel@posteo.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/9/26 20:04, John Scott wrote:
> Hi,
> 
> It is my understanding that, for newly-developed devices, it is standard for a printer to have an embedded microprocessor which runs an IPP daemon of some sort, and then the printer is operated using IPP (over a network or USB). It is also my understanding that the majority of those printers use proprietary software internally, and in the absence of evidence otherwise, this probably includes the HTTP servers and/or IPP daemons they run on as well. The primary focus of OpenPrinting, CUPS, and friends seems to be running on a server or workstation to interface *with* a printer as a peripheral. Information about crafting and maintaining the software *inside* of a printer seems much more scarce.
> 

OpenPrinting's code can also be used inside printers. Especially PAPPL is 
designed for also being used on printers, for example PAPPL has a USB "Gadget" 
mode in which the system on which it is running turns to be a USB device and not 
a USB host any more. So if you are running PAPPL in this mode on a Raspberry Pi 
you can connect the charging USB port of the Pi with a USB port on your PC and 
the PC sees the Pi as USB printer.

There is also the OpenPrinter project, a group designing an open hardware 
concept for a printer, using OpenPrinting's software on the printer:

https://www.opentools.studio/

The told that they want to run CUPS on the printer, but I had already some 
meeting with them and have recommended to use PAPPL.

> What's the current state of the art for a printer's internal software stack? Most OpenPrinting software doesn't appear to have been made with small microcontrollers (which may not have virtual memory) or real-time operating systems in mind, and I'm not sure it caters to this need anyway.
> Many embedded operating systems that would make good candidates (Linux Foundation's Zephyr, Eclipse's ThreadX [1], or Apache's Mynewt or NuttX) are capable of running HTTP servers without fuss. It's conceivable that an IPP service could work by hooking into it with CGI or something like it. Is that something that's usually done with custom code, or do lightweight libraries exist that help with processing jobs, parsing options, and the like? Is there any toolkit or library that helps in making small device-side IPP daemons, or is it something that isn't done with free software very often and there isn't much precedent for it?
>

In last year's Google Summer of Code we had a project of porting CUPS to Zephyr. 
and we have been successful with it:

https://openprinting.github.io/OpenPrinting-News-Google-Summer-of-Code-2025-Our-most-successful-one/#porting-printing-to-zephyr-by-hubert-guan
https://hubertyguan.github.io/GSoC-2025

Last week we have demoed the work on the OpenPrinting booth on the FOSDEM in 
Brussels:

https://www.linkedin.com/posts/the-zephyr-project_fosdem-activity-7425544723467071488-oZSn

    Till

