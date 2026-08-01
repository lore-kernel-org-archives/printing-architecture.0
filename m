Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C9F22D7A1
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 22:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785624422; cv=none; b=lRPys5Jhp/fFBjugsy4GwDLb2HSGvw7HL7/oT/hHjZ4/tdsc5Fo64yerJJ01c0oYJGAHxq6l7QQFS79DYqmZyU7W5vc3jiqQPvLiHbyLkrq4cpCBlPPGq5KaonAFhlr07Rn7NCySnBasqkuHOuh9rQ42PJFgMe3IZZusUM8+TK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785624422; c=relaxed/simple;
	bh=cqGfoQEixheyR7uiDJVHaGi4Wlmv6ZR/j+YqoKwb9Do=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MYDYTPDopW3na4P3EsE63Yuj8+a8Zpr2Wc4p9CJ88lzPiU5IjGHvHe23tuRI1b9uZqZ2uZy/JNWoOe284NYxZcyd4wiFIWndmuBeOch+82Ccb6wURuz61c+Ql1r4it7pRZvS/6NGneiWPUQSiaiSoMx0GMde59l5+zCDvS+PiZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com; spf=pass smtp.mailfrom=apevzner.com; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=AfVN/5Q4; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=apevzner.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="AfVN/5Q4"
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5b01910b499so1860202e87.0
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 15:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1785624417; x=1786229217; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YZy/mOpv8QAiHiASpGjR12zfABTtFMjdAQzyn/cJe5A=;
        b=AfVN/5Q4+bhsj/9Fznxx8HIYpcSORXmbnnatxCiDCbdeUSMBRwY79P6Mp+ER4X7Cae
         2awn2ZvHPbtWYGduDrmbkvLSzE9PYFsO6oC2heRqmcIQRHAi4soA0tNZ29xfv/H65Nij
         D0aNal7EKWMU8HSmyHEXoPTyycksfO85Hc6n5K2aU2ISOi0986QKlHYNkVdmXRoxppPr
         x+I+VyzrY14bH6kBcyVKV1tGQqGM/ZLN7HZJv5vsKWlHVGNtCjsKvwV3N3ssP21xclYl
         Mq3NKJqc8ViKHRSBJ+APyhSWYdo45hET27R9EoB8QQTDrnnuvsUs5cwjRv8JQECOb6WZ
         aDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785624417; x=1786229217;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YZy/mOpv8QAiHiASpGjR12zfABTtFMjdAQzyn/cJe5A=;
        b=lkRyVxFV0KX1xSX2XWdG+NfKImCYR7sMTJ6cMj/0CyFZ/x7ey+asBzbElrAiAUHLgw
         6Ss0+rc7mrq9IA5sfqOBM8kQC2QFk9gHdBqs0vFghvqBKqIFPuxkGgwB5BD7fwhE0e19
         IZVuE7QaNdP8BKbjg5cjaJj7bpa9G0XJOVvyqIwnKsjTiu3pKyx/O8JPjImWhFCLt3GC
         2BeLvnh0izchZoAyhDG9DZJCHMfIPxg/HBaM1zQhxRUn7OL+/32ExxmqL8HbcC/C6mWG
         8xVUN1YdDdjNPofnna/fU34pSDsaXDBASzJhy/zZs4hQwHFr0ReJ2tNX63iufdaYuWaC
         c3xQ==
X-Gm-Message-State: AOJu0YxHpkjHNMjHaN1asCNHdVku9L33oGSW6eGcgKMvbsJJ20NkY6uF
	o8oA+dQrzDj3eWpsJsNrpoS0n9Qvel++idfon66qgA/OBgq9HwYBfVRP0NFJbb+VB8E=
X-Gm-Gg: AR+sD10I9aFBz2dSkcDuQ6rn9LVGyGiLJkKYU/xps7XFgq8zFMNYu7rbr9/QCGHipjW
	EqcS0FmoH30NTsMJpyK/IZLakd+FyfBoLyJM+yUPTVbFXmpNOIyw6UTBdiNROeoehFrMjhyNwqA
	M9rQ3hgTWCcZ3snBtoSaVA5P2nH5dY9ZqUsuno1FlOGGx5Z/QgxpCXyi1Al3DIcvx9UQ2l8GVQv
	U7vnsmIuVNeZ5gRfkxs9lCjdwLP1mY0XE/xP1doY4ehJUh2e0LMWl+lgPQHoaz1XtEVoeUa5uTe
	qMbjUWg4o167LgvIss8f8zzuJqgW5zkUapevvMl3waUOd9dHwJY3c1gI8kKMpNkWnz/s4JFexNk
	flZI8ecuDPJHxfF0aGZsIL6T1wIDnu7Cfm+Z/hXdbkt+9W9J9PVeWJvYBltxX1YgJaDmOXC+z88
	LeJ0dzCtpMU8s7mFM6oOoXC5a9IPb+ySZSVRTs9UKNLf52Mg46rMha+v7QS9I8tHeBYbOleR8Y9
	FK9eD9JJCzW+F1bdFOQSkqc4PM/wA==
X-Received: by 2002:a05:6512:6185:b0:5b2:afd7:ec48 with SMTP id 2adb3069b0e04-5b2e2349c05mr957786e87.32.1785624417032;
        Sat, 01 Aug 2026 15:46:57 -0700 (PDT)
Received: from [192.168.1.13] ([94.25.168.148])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-5b2e244d75csm1105254e87.61.2026.08.01.15.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 15:46:56 -0700 (PDT)
Message-ID: <56747b6e-5994-4691-a06f-daca98c5cb1f@apevzner.com>
Date: Sun, 2 Aug 2026 01:46:54 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Michael Sweet <msweet@msweet.org>,
 AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
In-Reply-To: <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Till,

I think this is a bad idea for users to disable DNS-SD. It breaks not 
only printing, but driverless scanning as well.

Providing user a method to somehow workaround disabled DNS-SD just 
creates a wrong illusion that we somehow support this mode of operation.

That said, adding driverless printer manually still a useful option in 
case the printer is connected to the non-local LAN segment.

At this case it doesn't make a lot of sense to probe for the ipp-usb 
managed printers (which, BTW, may have assigned ports not only 60000 and 
60001, but any subsequent port as well),

Regarding normal hardware printers, are there really printers out of 
existence, that can respond IPP requests on alternative ports but 
doesn't respond on a standard port 631? If not, there is not a lot of 
sense to probe ports 8000, 8001 etc.

On 8/1/26 10:50 PM, Till Kamppeter wrote:
> Abdelrahman,
> 
> If there is no mDNS/DNS-SD active you can do:
> 
> 1. Put an option into the "Add Printer" part where the user only enters 
> the IP (or host name) of the printer. It could then try get-printer- 
> attributes on
> - ipps://IP:443/
> - ipps://IP:631/
> - ipp://IP:631/
> - ipps://IP:8000/
> - ipp://IP:8000/
> - ipps://IP:8001/
> - ipp://IP:8001/
> - ...
> 
> Test 1 and 3 are for network printers, 2 and 3 for remote CUPS servers, 
> 4+ for remote Printer Applications.
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
> either automatically in the main view or  by button(s) in "Add Printer". 
> This is for local IPP-over-USB printers and local Printer Applications.
> 
> I only do not know how to keep the found printers with CUPS 3.x.
> 
> 
> Michael,
> 
> if discovering a printer by the above tests using the method you have 
> described, one creates a queue with ipp: or ipps: and "-m everywhere" 
> under CUPS 2.x.
> 
> But how to proceed under CUPS 3.x?
> 
> If I have only the local server, it is stateless, it only uses temporary 
> queues. How do I, in case of not using mDNS/DNS-SD, tell my discoveries/ 
> manual IP selections to the local server so that it sticks with them? Or 
> am I REQUIRED to use mDNS/DNS-SD when I have a system with only the 
> local server of CUPS 3.x as print environment?
> 
> Or do I have to use the sharing server when I just want to print locally 
> but not use mDNS/DNS-SD? Does the sharing server has a config file for 
> holding such printers?
> 
>     Till
> 
> 
> On 8/1/26 19:16, Michael Sweet wrote:
>> Abdelrahman,
>>
>> For CUPS 2.x you'll use the "everywhere" model ("ppd-name" attribute 
>> passed with 'everywhere' value) with an "ipp:" or "ipps:" device URI.  
>> If the user doesn't have the full URI (typically "ipps://hostname/ipp/ 
>> print" these days) then you can send a Get-Printer-Attributes request 
>> to the "/" resource to try to get back the correct URI for the printer 
>> (returned in the "printer-uri-supported" attribute).
>>
>>
>>> On Aug 1, 2026, at 12:44 PM, AbdElRahman Khalifa 
>>> <abdelrahman.5alifa@gmail.com> wrote:
>>>
>>> Hi everyone,
>>>
>>> I'm working on the COSMIC printer setup application for CUPS 3.x.
>>>
>>> I have a question about driverless IPP printers that are not
>>> automatically discovered, for example, when DNS-SD/mDNS is disabled.
>>>
>>> What is the recommended way for a desktop printer setup application to
>>> allow users to add such a printer manually?
>>>
>>> I'm looking for the intended approach in the CUPS 3.x architecture.
>>>
>>> Thanks,
>>> Abdelrahman Khalifa
>>>
>>
>> ________________________
>> Michael Sweet
>>
>>
> 
> 


-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
