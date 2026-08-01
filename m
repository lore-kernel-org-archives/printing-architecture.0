Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85846346E64
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 21:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785619303; cv=none; b=IFYMB58GWr+JQrNkGJu5hrFv4z7oI8oObqmQ45vffLk6mDdO6kHwNo9s0+mBnned9ffE6eTysaiAjBXgW6ss3o/RY5aaGcf+Ku7bDzC00/usUyN917nDMHXiDFRPqXfi5Z5MCUP4iwDrslRTP1Q+9hgQLWxBWj7J0ZeHopB7BUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785619303; c=relaxed/simple;
	bh=HqJui9VVQZT7vGHA/5PJDIpr/QiYrrXgIGyNBcMrlYA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k9h4JwjmDgGKLG6AYuhU6k1VPH4ioBAiP5iI5q0DMBW1tXj3P/AiRGetGjpoaL0lrN0W5X9tzTVSL7gfx7Al2VOu64gV4K05BVIKG4hRNPH9lpgtINE2uVexbJ9Bv/iDdwrlaR7Bbg/0Sf6nuZvlFoKQggMV10HoJ4MJQAn3LJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ODtIY3Gd; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ODtIY3Gd"
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47f7854678cso977479f8f.1
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 14:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785619300; x=1786224100; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TrOEQw11XHPkLTaFUFdtidGtSq8rxwu1DZVZW7thfp4=;
        b=ODtIY3Gdk8wfaKr2HTLHOiU3zLldbGUDrJGBp5AMWwarEdMJ3vqFTUjACsKxw2S4MT
         w5cBJYFmI7o2dY07o0P1GjbdT1DKrE4j2BCoAN/ftYLADcTgQ4e5JN2/1mJZQK92/tkE
         4NnXagcKvBGbxlbapPs0iIGj4XW1DHXhvfbUEIyO7UOvLsCBRW6ihJ18Slx1UjarTy1g
         U4st9MVLNAwG8CRJKAYGTtfRrt767fyQuj86q0fAxL/AK3wr0ApBtUYtAa1h/uBzdp1A
         k6H+gGa9sN2YOxrXmJ0B6P0bE/GrETkwuTL75rG0YMlHnjoHR5sGe7hJtns4vAzaa41e
         /ghQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785619300; x=1786224100;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TrOEQw11XHPkLTaFUFdtidGtSq8rxwu1DZVZW7thfp4=;
        b=nV5TuiUFEN7P1THD0JUGec26LbvfnaJ8nWpyuDlkUk0AryKU02QqXKvB4/eFPwmUsI
         bS+rNx3l/FvPTQIzGNJWFozIFBOvmTl5szvHKfej1eiLLO7qW/LF8DQUEPAc+no9ca2J
         VL5ILWaa9oofg/EOn1XWOMgVPTwmqeue49iAdYLNA/6Ocr12nBW31GMz9aXyA7OfMtVF
         DUFTqvf6ut2WM6ZYk1BCKdYs8lqAtSFVV1D+dXhgyv3qekps7+3YKBZjxyejA9M00KmG
         p8lMcE34IBl4Gkv0Mcf38i/SvWzKlVLsxwh+af/V5LaaCsTxM6dber8f3oFH1ekUC2T3
         IWjQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq8VjIXatwltsmfOKQRUGPUuEc0c+4fenouMMnMSpieKmqmsJo4EALoLN2gPGBonHpTnJRbmeqqQoVvATjTS0sPum6ciYo=@lists.linux.dev
X-Gm-Message-State: AOJu0Yx/WGCqPIJ2Fa9tuyW4BDjAhCegQdOWSA04YbcgWAVKYHxS5xaG
	7zAn2mJ4l9Yzm3X1swdnifKiDkQK4VCtmKDCdw3Jm7256c0ZYt1LKUUd3WRoAZjUGQA=
X-Gm-Gg: AR+sD10oUo3dtDQHjB2DDg9gCRFkSRszJB7vZOcGqSsnyI7J/wRKsdiqheQuFLhCsU/
	UbO0LGUDl+TpmLN9j3Pox4OPXKNvA0P5aeHzCRGGJ7oTmy2kPQkuKn/pH1ll2lhGoMxdrBWY52w
	iS6RPv1BVDoSmUyfbguPoNqUHbclljr+yDEe9BxbfDU9S3MUdEe5+InCqCLabz/ppUYCnfJ5jU+
	niZgJrR0MrBxKFNBtl9VDYe0eGb9c6MsRgClE3SzNDDCVqjh1aNfMyYuvdnXDqRGBhEslS6j0Ht
	/oDaoAAzbo8E10qsJOY8wdufpBskMMtvrUUtLWd+BSycqTQReygszzjTscKGETjcrliLTzgXZYh
	x6CwpmZdz4tLvGrnair49i9j5NbdhQyx9LRurI0LGHNgI4Ft4n7LmK1KJ+44DJWAHldUhVvCjkc
	F1FQSG9oXsmwE/2pnvLoMvlYlxlZk1bCUOtzyBzwVl/omd1akXWBSVrwZ7w645QNtFWLl3E7QrU
	UbfGo13DPKguA3DCIU5UT6qg9/QUdgWweyUjpm5J4tg/1sI+kC9nL9O0Ic=
X-Received: by 2002:a05:6000:b44:b0:47f:81c4:36a5 with SMTP id ffacd0b85a97d-47fd72a8cdfmr7424376f8f.15.1785619299445;
        Sat, 01 Aug 2026 14:21:39 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd41d0064sm18087644f8f.5.2026.08.01.14.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 14:21:38 -0700 (PDT)
Message-ID: <6ac225de-ac78-4dee-805a-37db7b15937e@gmail.com>
Date: Sat, 1 Aug 2026 23:21:37 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Michael Sweet <msweet@msweet.org>
Cc: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>,
 printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <BFC15E62-A87D-40EC-8462-BCC9B6CD2593@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <BFC15E62-A87D-40EC-8462-BCC9B6CD2593@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/1/26 22:41, Michael Sweet wrote:
> Till,
> 
>> On Aug 1, 2026, at 3:50 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>> ...
>> But how to proceed under CUPS 3.x?
> 
> CUPS 3.x uses PAPPL 2.x which has different operations and attribute names (as part of standardization in the PWG) but otherwise works similarly.
> 
> The Create-Printer operation accepts the "smi55357-device-uri (uri)" and "smi55357-driver (keyword)" operation attributes to provide the device URI and model/driver name, and cupslocald (from the cups-local project) supports the following driver names:
> 
> - 'everywhere': IPP Everywhere/AirPrint/Mopria/Wi-Fi Direct printer
> - 'pcl': Generic B&W PCL printer
> - 'pcl_duplex': Generic B&W PCL printer with 2-sided printing support
> - 'ps': Generic B&W PostScript printer
> - 'ps_duplex': Generic B&W PostScript printer with 2-sided printing support
> - 'ps_color': Generic Color PostScript printer
> - 'ps_color_duplex': Generic Color PostScript printer with 2-sided printing support
> 
> The PCL and PostScript drivers are extremely limited and are just there to support legacy Samba printing basic support for local (typically enterprise) laser printers.
> 

So when I send a Create-Printer request to a CUPS 3.x daemon (both local and 
sharing) an entry in a profile (~/.cups/profiles/ or /etc/cups/profiles/*, 
latter only for sharing server) is created?

>> If I have only the local server, it is stateless, it only uses temporary queues.
> 
> It is not stateless.  It just doesn't have permanent queues and doesn't share local queues with other systems.
> 
>> How do I, in case of not using mDNS/DNS-SD, tell my discoveries/manual IP selections to the local server so that it sticks with them? Or am I REQUIRED to use mDNS/DNS-SD when I have a system with only the local server of CUPS 3.x as print environment?
> 
> We have been talking about this ("printer profiles") for a very long time:
> 
>      https://github.com/OpenPrinting/cups-local/issues/2
> 

OK, so they also work with the local server.

So this means that our printer setup tool which Abdelrahman is working on 
creates entries in the profile when manually adding print destinations, either 
if mDNS/DNS-SD is not used or when the printer is outside the local network 
(VLAN or so)?

OK, so we need to settle on a format for this file so that Abdelrahman can 
implement that.

>> Or do I have to use the sharing server when I just want to print locally but not use mDNS/DNS-SD? Does the sharing server has a config file for holding such printers?
> 
> The sharing server is more of a traditional "all queues are permanent" service and saves the queue state/configuration across runs.
>

Does the sharing server not get its queues the same way as the local one, both 
by discovering printers via mDNS/DNS-SD AND including destinations by entries in 
the profile (which can be system-wide now)? And it adds rules for how to share 
these printers also in the profile?

    Till

