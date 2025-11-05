Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB094313295
	for <printing-architecture@lists.linux.dev>; Wed,  5 Nov 2025 12:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762346106; cv=none; b=LwsbLyG9ByAP4G4GFnVPEPUWzK4uAh4P5U4ziVuDPIxoBxgj3A+eTK/BFHL/KoIMPEqg99Y7fRg8yIpNJzyhUyV4a0t1r39OxXgknkX4HulJ4UKVqbCiPmyi6pbUox8oRVpyZHPcbKBVZBPK52q0DtO1irNwI4uy+BEgZXDdPH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762346106; c=relaxed/simple;
	bh=ZSWJeKlgHKnXSAALpUp7hQdOZ5cr7N/NT5OiETmlT0U=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=TkOiTBgd8qlJW/QlPCcpJBhbABRc5OZTl67+ubdtX6Mt4X0QaLegm5iYtrQ4+G1CYKWPNAFDYJNwMxT8VvcX5KIwnxm3NEi4J+bVOidxxH+2Uw8/f/3fwgJMGhWvwf7Oawc00P5ZC4byi8osUfx0V/2l54dzhAG2xQvdTo8fzO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FHiZT10p; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FHiZT10p"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-429c7e0282dso3714727f8f.2
        for <printing-architecture@lists.linux.dev>; Wed, 05 Nov 2025 04:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762346102; x=1762950902; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9oZEHsRASeBPp0FGJPytQ9mm/rn1OM0+PwYkG1Tfno=;
        b=FHiZT10pnPRcDaDLbL8oOVJzr6GVu60bGT8r6Zc+zAECXTMEcwG38EOnxN5YiXZSgu
         Ih477yml/bZBUUp8RXOyfMxv/agfk4/oI+fkro3a5zYuNiDhTAySwFT24wljZllDRTQe
         uP825yBHJxHy7rkgtJlwTO03tjHSBnZh8aAY1CUCO979dTolJ2/wN0gOZ+xyVbCGIxHm
         D9/u4VUnAgwxSGp47URXnuIAKOQwCUdgkbm6GhF2WsxPBvknvPTZNMUTG8MAkdDoBbwd
         dz/dC28NLT2aThOqutaSNRegPCiSCbC35p2m+6mLKpuqA+mit1Sb+pOrIQ/GT0ZA4ZQB
         amDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762346102; x=1762950902;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l9oZEHsRASeBPp0FGJPytQ9mm/rn1OM0+PwYkG1Tfno=;
        b=HUAyx5UQOwqdwWw/LknErPGe48BPxrIJpmgnHW1C6TTOxo+PIbSBe+hdJEy6zlD0th
         UEQ1+y7+SHea+ZKawkxs9bjjBCVtlptCyZapF3tA7+bu2Wqf4bM50D9vG2uPyd8J0U0X
         CK6yDqicpYooORQtCMDTEmrMuCKS7X1GwQCaBJGvws0WJA4Fp7nly2xesfCdIuHzSE+U
         DFcU/3Fa/TCm/94vV228qkhxgi3o4ccWLi7s7XRKVnR7ROwPP3w67Bu/rfgznbzp2IkH
         hAIYcyOPAqZpuXQIC47QjOUBpYYK6ZirvoWOXSXotoaFywhrRHEMK+DurtcR54Ozsj5e
         VQdQ==
X-Gm-Message-State: AOJu0Yzj1R8NTMqWzTVeB82KF3t123rbu/Gu+83K6GjrSN6+reY+E3nt
	OWOmKuDALX6AQlyrjKtVsXDACgqu72NFTYQaX8RJ5TQqZa6F/pJ5GP+yO+x+yA==
X-Gm-Gg: ASbGncuNgERfr1U+Gd7m6pv0vzmfS6hTnNznHb0Fh1aTyebJFzhevXEvtCtDXfv+UEN
	Po1NpLUDJyomdcfzoRBm/t8/ocxtu+kF45IDvDH7qziarIZkkGuMM4L3z+IjL4X63bnlhipGvNV
	j6kwG5rNcE2MhfXvOJbkRVsNm1O+pJL1S22b1lj9jWtxVbEA+RV3IcP78jXk8Y9fgAm13QcNkqT
	1oTZ/aHrIWQU1S59Lara1D2RbLxv9zHPQ3pNINWdBawHe2mB/oDhYMaKpp5YLCYQa8b0AfSjQG1
	9E84wgOsEc4WXVq29ijipT1gALLMHAkHDjVhhTsdBBo1RbW0xstRRsnamsqKXPHiDoRwwGwvkdv
	+ppUHaqWBt7QCl/k7GENkBXFT9qa/xnkGJDwXA7a7W67wt1VUMGCZkN2PFfJ9ej9oygKEGP3+2W
	Ex/UNVJZ4omF4JEsfS2nwnmbjz4JCQbqGhGDPZxJ/HTNk6nmtVRr0OsB0z
X-Google-Smtp-Source: AGHT+IE6M80iapOE2CsviWJ3rQrHL4eG2mk721+rS1G8StokRvu/nXJlWJsyuaobhFR9remHCnCSlg==
X-Received: by 2002:a05:6000:186d:b0:429:dc9a:ed35 with SMTP id ffacd0b85a97d-429e330c1bemr2631552f8f.43.1762346101879;
        Wed, 05 Nov 2025 04:35:01 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc18f5easm10244656f8f.10.2025.11.05.04.35.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 04:35:01 -0800 (PST)
Message-ID: <77c9a577-7159-4f29-9c2e-b16b7cdcee3a@gmail.com>
Date: Wed, 5 Nov 2025 13:35:00 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: OpenPrinting/Open Printer booth at FOSDEM 2026, Jan 31 - Feb 1
From: Till Kamppeter <till.kamppeter@gmail.com>
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Deepak Patankar <patankardeepak04@gmail.com>,
 Laurent Berthuel <laurent.berthuel@printerre.fr>,
 =?UTF-8?Q?L=C3=A9onard_Hartmann?= <leonardhartmann@opentools.studio>,
 Nicolas Schurando <nicolas@sitronlabs.com>
References: <3428b088-78e3-41d8-a35a-e57e2e59e7bb@gmail.com>
Content-Language: en-US
In-Reply-To: <3428b088-78e3-41d8-a35a-e57e2e59e7bb@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

[ CCing the creators of the Open Printer: Laurent Berthuel, Léonard Hartmann,
   and Nicolas Schurando - Please use REPLY TO ALL for replying ]

Laurent, Léonard, Nicolas,

welcome to OpenPrinting!

On Nov 9 (this Sunday) is the deadline for applying for a booth on the FOSDEM in 
Brussels, the largest community-organized open source event in Europe (~ 8000 
attendees, walk-in, no registration).

I have checked what is required for the booth application via

https://fosdem.org/2026/news/2025-10-03-call-for-stands/

and that is actually only a title and an abstract.

So I want to ask you for what you want to have in the title and the abstract to 
represent your part of our collaborative booth of Open Printer and OpenPrinting.

Also tell us who of the three of you wants to be the second contact of the booth 
(the first contact is me as the submitter of the application).

    Till


Note that this mail is on the OpenPrinting mailing list. Conversation works best 
when subscribing as described on https://subspace.kernel.org/subscribing.html

OpenPrinting <printing-architecture@lists.linux.dev>


On 11/4/25 22:35, Till Kamppeter wrote:
> Hi,
> 
> I have started to work together with the creators of the "Open Printer":
> 
> https://www.crowdsupply.com/open-tools/open-printer
> 
> I had a longer video meeting with them and talked about how their printer works 
> and about the software control for it. They planned to use the OpenPrinting 
> stack, especially CUPS as the firmware and I suggested them to use PAPPL.
> 
> We also talked about a possible joint booth of Open Printer and OpenPrinting on 
> the FOSDEM 2026, January 31 and February 1 in Brussels. The application deadline 
> is Nov 9:
> 
> https://fosdem.org/2026/news/2025-10-03-call-for-stands/
> 
> As a booth should be staffed during all the 2 days of the conference and we also 
> want to attend some sessions and participate in the hallway track, we need people.
> 
> Therefore I want to ask you all whether one or another of you would attend the 
> FOSDEM and volunteer on the booth.
> 
> We will have a table in one of the halls of FOSDEM and can show everything 
> related to OpenPrinting and also find people to join our community, or to apply 
> for a GSoC project with us. And we are showcasing OpenPrinting, most probably 
> PAPPL (with additional free software, like Ghostscript for example) as firmware 
> of a printer.
> 
> Please tell us as soon as possible if you want to participate. Thanks a lot in 
> advance.
> 
>     Till
> 

