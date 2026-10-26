Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.53
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793033954;
	b=LOi2vJ8H7MMLGncgPo7Wz+uXod08ysQ2T4iQRIDzOXpypfdb9hzHf6DgKcvLkbGyL+J7
	 fPaPCNIgjO6fAICLm4qaQWjtNT5RalPSzh2HE3YLahUl/IaqK1GydvHrXTF6jevhsD8yZ
	 +KHx4roLx0LBgiHjkII3yBNA98LVXNmYvkFhDilrwBD5/xMSzgZcsbppQEMFPoSQd8vgI
	 9SiXOnFZ5r5Yz8Pgb1A9KPxfZjDbWcVU+aR5YBUlg/EheAA37af3FGd4c4sZJuNadz9bJ
	 mOnhD3+vVT/30ic5781l+xfD5vsDW6NXpT/eBsryO0GDwixeOymwRBE17C5dc9YYbgA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793033954;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=yXqOQ+N3hjRPs914WJCV9KkuYO7VXf2350kEe7Chne8=;
	b=lL1AsE5Xtg030dfHJ1azKPuFcAfpcGsID7ujkTrYiTy76/NNeb5Jxd1YUc+fWmX9M+An
	 OjYWq+ugDAQiupgS3r5oGKLCzN0S+Dc1WUXXqRgdu7MWvwxNYXOBhQ9mEXeu7dk9kGyzJ
	 vAeYyC8+URczsN6gGQueet4iOpPS76BDkwbXKeweTN7HoGNKMAamZUUTkzT0oyf07yXlj
	 PATx409P4IooDRynTxECYqfwTbrxi0wCu0D6PXxG5UoMuAMImAjhQGiSnfRURYrakhNwt
	 JTsjfCL6StYeIbhqY6nhzfAKuYNI6HZm3E51ju3j4hciHOQek17Qb2MOjW+R+xf+LuA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=AIu9Af5i;
	arc=none smtp.remote-ip=209.85.221.53
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73297606A31A
	for <printing-architecture@lists.linux.dev>; Mon, 26 Oct 2026 16:59:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 73297606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=AIu9Af5i
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso2935469f8f.2
        for <printing-architecture@lists.linux.dev>; Mon, 26 Oct 2026 09:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793033953; x=1793638753; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yXqOQ+N3hjRPs914WJCV9KkuYO7VXf2350kEe7Chne8=;
        b=AIu9Af5izYpb05AuFMBI9Rjwdz/XFyMN1/l8MkJu/QbRM5b7Uc9ZXhpx9IplMnLhbD
         J/n0OfI/k1mkxCPR4szJufHUCB1l4nqBmkPB2hzy6kln8YqjoS+q3cuvlfN18J1KMi+x
         BOhYoTuc/wrrFiU+90d13Yiww6ErS8h8A4BBFdmHteGMzhvAxXddX+yoXvv+C1vtRVqz
         xddCfj+Rkrwu/0PXCLJeKn8FMy+urhgSD5Z4JCQSk61CxrnO+bzL7v6aanBVxyeRA5Z5
         o/apX3HqZ2zVJRb7mv7q6lbKc6vSTYBgrZeaepnl7vEMapO+zoXA6nmyREtmX3CyQroA
         mMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793033953; x=1793638753;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yXqOQ+N3hjRPs914WJCV9KkuYO7VXf2350kEe7Chne8=;
        b=1IEwQUpzZMMyOt/u2Mbt32JADd/fLr384f9HcjShJmHt/i6DejdX1Kp5QgtK+kEE64
         lg1VHoGStq+iqJCKt7X7KHccf3mPiAsmwMgu67uSiH1UHyjsIBkruBSdsPGDnUFfQj8s
         vn+If4bc3FrCxPH/ggFY+p5MkMSQoAHghvdTj12Rwgsic1DifslN28iYvUTJtkLWWDzW
         FApkCVbK55fu6mz96/EtmFP1Kl5SQmrlWLJ0fkvLbgwDp0mE2JEnRiiTZzVIGLT1+Vi5
         WsVGZWD7okrFWOFxNq+7fOnzmtibkFjD3kiTmyIadUD7ky+bPbC0d1wlSPL3TJj/kxKh
         8VWA==
X-Forwarded-Encrypted: i=1; AKwUvBwOJORWxZIusJ2v/RGS3SJX6Eu9TpGRlrp8/GWUwe0m3iw8Am3SXLeRdTvGbPYhS1VMBSvKi+uK0NROZV53PJCBC3G6KFU=@lists.linux.dev
X-Gm-Message-State: AFq9FYIl7A4yFBxhO1+4sRG4RfKX4PMy22PxwOxPr2ihbOtdfp5VSewu
	D7/dqhNG+shq1H/MMOjIU+1p6kdU2oIBL5zymiClIWRAk8u7G3KCEa/G38ncXw==
X-Gm-Gg: AYBFou0EQal6AL4WbZjhVYy1efMuYuycCAem5MbgT1+rsbNLdSFeFm1Hu26BnyaZ96U
	iFAo8mtCOoxtSwjw5/3aCJrSEVYrf0t7/aDuT2gKsGouuuvwASHIVQYE3m/LAYrKsBENUl0WTPf
	pOAGCtu5AFGrTybo2Y4JUCKm33g21rEkCcH8sinRze83cZMXqYlfCP/Xt+oUPiXu4rZtSTchHfJ
	LPPvJT6NCoUZqe0O5ueTZWNLWNwuNbksl/5vXUcCjPPyHXt+FDmKoaVQCAX7ReGomihaWudhA0Y
	E/rj7WvnoY1ghMWZa3MVlcWjDzyEuUgcdhwJ0XQcPaWsYb/7RegKtv4etWYXWn8QDYGp26YharN
	mJY9IBFBVK0JfkzUb5UNcdLwfqXRLRzrqpwSrDpuS4n3psqNz/74OciXxITkT4zVy6+pX3c53pu
	7a4w7XD66RHUfXH9tlNkMcW7wxq+jwiG+KsQXyszlZs0nE3qOluLllzoSWZGFVXj+lkKx6fZk1L
	0l2qI2UBJ10ytFGFN6bWMaeDf6sP435cGop3TDmC/QAigMTl75ycCFM2KSB1leSAtVEv+RYcyxh
	19Ass2NmPjC8QW9rsIfkLwTcGMkNQ2sJ59qmla9aaPx0cw8fVqKCxug/MyY7
X-Received: by 2002:a05:6000:25fc:b0:48a:fb1c:c2a1 with SMTP id ffacd0b85a97d-48e3eb946b0mr13252218f8f.47.1793033952533;
        Mon, 26 Oct 2026 09:59:12 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebcb8e0sm16857287f8f.29.2026.10.26.09.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2026 09:59:10 -0700 (PDT)
Message-ID: <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
Date: Mon, 26 Oct 2026 17:59:08 +0100
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Post: <mailto:printing-architecture@lists.linux.dev>
List-Help: <mailto:printing-architecture+help@lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
List-Owner: <mailto:printing-architecture+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [sane-devel] OpenDeviceDB lists the scanners SANE supports, with
 links to the backend man pages
To: abel deuring <adeuring@gmx.net>,
 sebastien michea <sebastien.michea@manaty.net>,
 sane-devel@alioth-lists.debian.net,
 OpenPrinting <printing-architecture@lists.linux.dev>
References: <CAD_QBAQv8tgP5AWTAk_YzQ+YxihAukHjVrMyFFZpo3Q7M=iHdA@mail.gmail.com>
 <dfa6ce9bc7761f0d7f30d21e8cff0b0e2075c8d5.camel@gmx.net>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <dfa6ce9bc7761f0d7f30d21e8cff0b0e2075c8d5.camel@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

[ Adding OpenPrinting's developer mailing list ]

On 10/26/26 17:04, abel deuring via sane-devel wrote:
> Am Sonntag, dem 25.10.2026 um 09:07 +0100 schrieb sebastien michea:
>> Untested and unsupported entries are left out, and so is the escl backend: 
>> eSCL/AirScan is a published standard, so listing those scanners would suggest 
>> reverse engineering that never happened. If you think any of these choices is 
>> wrong, please tell me and I'll fix the importer.
> 
> 
> Did you consider this use case for https://opendevicedb.org <https:// 
> opendevicedb.org>
> 
> Somebody wants to switch from Windows to Linux. This person is a bit wary of 
> drivers problems under Linux and thus checks on your website if their scanner is 
> supported. Now they might not find it because it is only supported by the Sane's 
> eSCL backends.
> 
> This might stop them from abandoning Windows. I doubt that you want this...
> 
> Another question: I wrote a considerable part of the Sharp backend using 
> documentation provided to me by Sharp. Reverse engineering was not needed at 
> all. Would't this mean that you should also remove the Sharp backend? (Well, in 
> practice this doesn't matter much as I suspect that only very few people still 
> use a scanner that's more 20 years old...)
> 
> Fujitsu is even more complicated: In the 1990ies they published programming docs 
> for their scanners (well, at least some of their scanners) on their website. 
> Later they became more restrictive, and IIRC Allan Noah did indeed reverse 
> engineer the details how to communicate with some scanners because Fujitsu USA 
> did not want to provide the relevant docs. Out of curiosity I asked Fujitsu 
> Europe (or was it Fujitsu Germany - I can't remember...) for the docs of one 
> scanner by a phone call – and received a PDF from them one or two hours later.
> 
> How should this be handled? Should this scanner (fi-4120, IIRC) be removed from 
> the list when the HTTP request comes from Europe because docs are available 
> there but should be listed when the HTTP request comes from the USA where docs 
> are not available?
> 
> A central list of peripheral devices supported under Linux is a very nice idea 
> (though requires also a lot of maintenance work, I suspect...) But please do not 
> put artifical restrictions onto that list, like "reverse enigneered" of 
> "publicly documented protocol". If these critria are important to you, add 
> filter options for them.
> 
> cheers
> Abel
> 

I got asked the same but for OpenPrinting and printer drivers.

I think, any device about which we know whether, how, and how well it works with 
Linux and open source in general should be listed by https://opendevicedb.org/.

Windows users who want to switch to Linux do no know why and how their device is 
supported under any OS. Also under Windows they do not know whether the device 
is supported by a device-specific manufacturer or a manufacturer-independent 
standard (like IPP for printers and eSCL for scanners). So only listing devices 
at https://opendevicedb.org/ which work due to a certain method, in our case 
reverse-engineering of the devices communication protocol by independent open 
source developers, defeats the purpose of a hardware compatibility list. The 
list can tell the method for advanced, more technically interested users, but it 
should no exclude any device.

To make https://opendevicedb.org/ useful and successful, it should

- Be a central place for checking the open source support for hardware devices, 
to save the user from needing to find many different places, like OpenPrinting, 
SANE, ... and many others.
- It should list devices regardless of how they are supported: Common standards, 
official (open source) driver from manufacturer, specifications published by the 
manufacturer, driver based on reverse-engineering, ...
- Giving information about the type and quality of support, both how much of the 
functionality actually works but also giving higher value to common standards 
and/or open source drivers from the manufacturer than to closed-source drivers 
from the manufacturer or reverse-engineered drivers from an independent developer.

The site should

1. Automatically poll the full databases of as many sites as possible. We at 
OpenPrinting would also help by improving/adding an API to our site
2. Update often, use things like RSS feeds or other notification mechanisms of 
the source sites to repoll, or, use a cron job.
3. Let the user enter a device (manufacturer/model) and tell them how and how 
well it is supported. Which driver, which standard, download URL, support 
quality ...
4. The results should not depend on where the inquiry comes from. The hardware 
is usually the same all over the world, the open source software also and so the 
drivers are everywhere the same. Only if the manufacturer is geo-fencing driver 
downloads, make this clear to the user. If an open source developer gets specs 
from the manufacturer's office in their country but another developer does not 
get the specs for the same device from the manufacturer's office in another 
country, do not worry, we have the specs and it is not problem for the first 
developer to make a driver available for everybody and the second help testing 
and confirm that it works for them, too.

    Till

OpenPrinting organization lead

