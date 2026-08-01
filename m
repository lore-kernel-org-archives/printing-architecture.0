Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAEC2D0C94
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785620916; cv=none; b=c9mSEefeBMt7mXyExyNUIxwND0nZUYAQ97VSCgihBgLLOZM+7J3aaG4rMgj/KiPWaN/n1nRRrDZ2fHm09NC01+291HpUBQ83kOv3U5joC8NXerQvsIljD2Ds2a3RA2hpmLeqBswvwk/fbLYDn5hlh12BolfH8DxpWM39Gl2x4I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785620916; c=relaxed/simple;
	bh=+l5NgoipyTncMUu79eaPUlrmn4YyahKkw4HuUtQYzhE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=mJSUfDSIkenQyBn+ZL2wMZvbHQ3SbKB2G5jZEFLKuaSY0gCAJ9PiYLgulQrYkr+wlYwNT/ImN/I3xVzwU9PuLoby/5LD1Q2UWsa9DZXexFaRvjzHMaK12Bue1Krb9Z277XweU9f1xbJ731VC0X28OoXKnoxyLRERFZ21SU3GSbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M/0spTCA; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M/0spTCA"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-47fde295992so84667f8f.0
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 14:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785620913; x=1786225713; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Jf95IC8UfbHomKwu1jXVFeJrLqpKRDxPevr9N1AWrBo=;
        b=M/0spTCAU7nkTBZkWLgiywhwkgArjF5rhC+qn4dCNhB5pEw2Y6sxZK8jWsSJ1lvz5s
         ZQdxQ01gbJRi15AHdJkZLDwjigNO+dVTmkFlm2AcxTWiqt9/rEsTD+rEfmPZM9F1k+lV
         0z/zSpEgUBiqfp1m1PjwVuJibIOoNRFrhO5+V0Z2fsCFxTuLYYUYHm6dOAkO96UtbIsA
         5mXPXuBwqeZRce3u7eIXD01ga+eZ2Y6A1j/09wb2HUoMkrJ8YMlspWOFP9kwUveC6Pxm
         JGnl2DurrRKU+2gw9sPzjc/zAxcWVTF1/3YoJGf4+/52gs5dJwfYfLIJG6vbHLQUChr0
         zOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785620913; x=1786225713;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jf95IC8UfbHomKwu1jXVFeJrLqpKRDxPevr9N1AWrBo=;
        b=MSjnZa2J04KeZawupMYeeRB0O4ukEBp27CqtE0JFEzYq8u/tpe+wik5q6q89KhVv/b
         lLJ3wIkN8UVcKt6QGiYl6VjY1CrP3cwUIZdssEOGFQQYcRGi2mf9mu2i0+h0M3N5+HSA
         Ewoyf3KV3I2gJMfLc/rnHmBE8uaD9wrkLH6PCuaOWAJfmDIAvzMlB2KOxu40XquHiDLJ
         zdgQ3r+w/JjNglfP7jJ3WNAUgVgSuHnxbLIiZqoqusUemZl/HSNsO+a5lqugjtCDRQJj
         HAWKJANSMG3SHiucteCSYLHt5XLGUL6q8/YrbJT9TCNyMD/cYehxBjnGoPfBEvCoPJRi
         YnHw==
X-Gm-Message-State: AOJu0Yw0g9fOTC57qPpZBtu46hiGCgaYi4aASdknKrH1GlbhStmoR7Ob
	ABytyxbgNl5G3+B78xmE8T7Vipe3EtX63nVDtx2sXyFbeDf5DyE5clLKFUplQh+dmMQ=
X-Gm-Gg: AR+sD13ckUUiqIvPkJaB1RQmm7fwy3JfADyaS5TePH+cq3ivP2RW+KDh+yd7xGGOmo9
	yIyaBxGrF7GlnoS/Duhcup2dZND/d/LWn9MXq/Wc3iXkXv3GGcX30GKdlqhIsNTmh11JM6pRCp6
	XaLYKCsHbfYTMKZsryxsSf1rwn8C29y7oOsdOCJLSdPjjvRTC4NdJNv9OXiaoetD9XD8riE9w+D
	qkgZM+2ypDWVY/NOwkIBBRE1BcRI7jP1fgHcgzyHaNpz48ScZv2tBz1A9devq23Ki1grygcaaAz
	ENug6LW20U6TQv3kjP8JM/gAKSYd0qGotadkHETqEoD8xbuOMhIlU6BsuT52Sp8LP2iXBzFxEZr
	62OFdcchbo9an4kgnscTRRboZw5e6ZisMtO3UayNdhGT+Y/aUPkYDjeKs8LfSIoRI5hzeVAxvnF
	dU2ICG8HVvJpcKRWmsTivTX6AJ0jKPTAIffmpjbXhIV3UTmu7YTOR7uGlrXBRSkT87xmFBRJQZ+
	JrUEAp6ObwixQ4w+cIxyR/OtUoaQpLWCPpO+Fq8w3SAmdk=
X-Received: by 2002:a05:6000:480c:b0:47d:f6a5:1fbb with SMTP id ffacd0b85a97d-47fd7270145mr11010663f8f.13.1785620913065;
        Sat, 01 Aug 2026 14:48:33 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd4562667sm19412168f8f.24.2026.08.01.14.48.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 14:48:32 -0700 (PDT)
Message-ID: <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
Date: Sat, 1 Aug 2026 23:48:31 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
From: Till Kamppeter <till.kamppeter@gmail.com>
To: Michael Sweet <msweet@msweet.org>,
 AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Content-Language: en-US
In-Reply-To: <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Abdelrahman,

I think now I see how the concept in CUPS 3.x is meant:

First, in "Add Printer" you do not only allow to look for legacy printers to 
assign Printer Applications to, but you also look for driverless network 
printers which are not visible due to mDNS/DNS-SD not running or the printer 
being in a network not being your local one.

So in "Add Printer" you give the options as I suggested before:

On 8/1/26 21:50, Till Kamppeter wrote:
> Abdelrahman,
> 
> If there is no mDNS/DNS-SD active you can do:
> 
> 1. Put an option into the "Add Printer" part where the user only enters the IP 
> (or host name) of the printer. It could then try get-printer-attributes on
> - ipps://IP:443/
> - ipps://IP:631/
> - ipp://IP:631/
> - ipps://IP:8000/
> - ipp://IP:8000/
> - ipps://IP:8001/
> - ipp://IP:8001/
> - ...
> 
> Test 1 and 3 are for network printers, 2 and 3 for remote CUPS servers, 4+ for 
> remote Printer Applications.
> 
> 2. Also test
> - ipp://localhost:60000/
> - ipp://localhost:60001/
> - ...
> - ipps://localhost:8000/
> - ipp://localhost:8000/
> - ipps://localhost:8001/
> - ipp://localhost:8001/
> - ...
> 
> either automatically in the main view or  by button(s) in "Add Printer". This is 
> for local IPP-over-USB printers and local Printer Applications.
> 

You also give the option to select a network, to extend IPP printer discovery 
into that network. For example the user can add the corporate printer VLAN here.

Settings will be saved in profiles in ~/.cups/profiles/

You can also add a switch to "Add Printer" to make system-wide settings, then 
they get saved in /etc/cups/profiles/. Flicking this switch requires 
authentication for a root operation.

So you add to the "Add Printer" part a GUI frontend for defining profiles.

The profiles are NOT being used by the running CUPS daemon (local or sharing) 
but by the function in libcups (cupsEnumDests()) to list available print 
destinations. All print dialogs will have to use this function (if a dialog uses 
CPDB it will use this function).

So from Michael we need to know what the capabilities and the syntax of the 
files for profiles are.


Also, you can add "Set Option Defaults" buttons to all print destinations in the 
main view. This button is to be considered as a GUI frontend for the "lpoptions" 
command (or its libcups API equivalent, see source code of "lpoptions"). So 
settings get saved in ~/.cups/lpoptions (or with "system-wide" switch and 
authentication in /etc/cups/lpoptions). Note that these saved options do not 
require that the daemon has a permanent queue. They are only used by the client 
side (print dialogs of all portals and toolkits, CPDB, CLI tools).


Michael, am I right now?

    Till

