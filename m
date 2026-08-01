Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9F4737646A
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 23:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785625900; cv=none; b=BB1JuY9Jd4JgIKR0hEH1yVERb6LKiJ4EAEA0hQz0VJ2tCewF4ZexKOkqS/KY0LZ8thLDB7ZbpVMz5xYedfWzENcICZDTnIkeI+/zu3pIONa8FuxKvbBveX1P8KpSCYWG8nV/EweF4yR1ueds0ao+dRpP1amaXFjG9r7SrM2FyxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785625900; c=relaxed/simple;
	bh=yZpBWDlFIUG28A92Bz3T35XK/bwHnntYhX8vb/KZ5Os=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HHZsMUhv1NlU/L5EQn7AHDxBBalXx9eD6kH09AaCSnBFc9vAyq/XaR88kM+4R+BUQoz7et3VwgWEHh/jd/OlL8rqGKx7tH6hff8anbpaQHZSJuvtHAY+os19sEZddIZ70PzInDOcW8JhnUEIfIo28gBWP+25T1MfBEfLL6XdqQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=oy4lt/qD; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="oy4lt/qD"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4954d29264cso4354685e9.2
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 16:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785625897; x=1786230697; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CZYxCocaQdq97d1deWapk9QDK45BN/8J1njfHtYDFA4=;
        b=oy4lt/qDDEEzOlFNMQtKeor6Ceb/3OomOrEbu1MjzSJzWUBq+4iDrNP57E+pwls/Wz
         8C1BPs8LAEtjp4+2If+RTxhAENav+cWQw58uXgHua9SS8QhjfA3QDOPJApSSjT4TAaWE
         h/6rI/q9JLW+bCFkTnTxCh3XvQ0nlzy1vrbCp8Pf8Qnra+ZCaLrUvFQdSdyBnq3y8IUu
         7rE5bhYYQtwTVLlshFnqVacXfsqUdblAJRFZ+7ITW3fuKB7vhF4zKyPcUvlTUVbaUCso
         CEaqvpOvrEPphq1nWvAvs3UTovLdV/wa6rPXzo85qdJsucfJTDUGVckgNpeW3hSupln+
         d1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785625897; x=1786230697;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CZYxCocaQdq97d1deWapk9QDK45BN/8J1njfHtYDFA4=;
        b=MeEQ9+HvEyMNMNj2Fpw9WOHCJXCaPbUHrFLTMwmZE+42k2AIZ73hbuTBcrttwLg181
         k8O+wv8iN0uu0qqw0cXBMaRzVvA42BrcUu0qROQKzmNjM80D6aX4ukzDCNgGg+IhMzKX
         eCS8ibvTf8h2wFq7uKzSnpDhIdODqKMluk9DJ7Mnx7Y4sZ82PB8a0VOfgEhWmiyO9bo7
         39Q5dvu4c2RGz/3cwr3BKi4Er7amVpgi9bnjOOJUBCXgdAgLNl+nuv1uV3jJCh26z3EE
         wEqbfB5owlRZZ+c1mIRtKZcRZ72PNQ6RQi3U8yJWJhNAPmy/LoNITlBosz87djt5TOJF
         qttw==
X-Gm-Message-State: AOJu0YxLRFqc7xqcKxLxOQ/QmqetBFmjooKYc4tRvHPhVAEiBDOSQakG
	/RermAkktSnYf7AUbXzuCXSwRnetAPaBnuIkrzquF/fUf2sx9uuIZvf1
X-Gm-Gg: AR+sD107O6VLss1u2MJi41jGMqvR0XazGT8uX/PblYH3fzVDf1LjiiKbJTTjqxVaSRy
	eWJyYUp8ul38t9o7ciGV3K9lkXyIWq6UvxYjqpyJSTIi3Ir1VgYmdkQS18YeBR3UI6a85BOPG/C
	VoHnhN1zyu2WjhswNQRCXsLaFl432zbg5ZVD2ZPAn8Kb651yWxSSWIy/reJgXAU4UIsqcBPVjBR
	UK6fmhC/k8XxGZ55KVMyZK0xkUkcQTJ9X672dYxiT9gRKh64w4tbj8mUUIzNrQL1TUKJ5LzV6mn
	v37yD6L7WNcFF1pvasu4BP+IPa+I4pdxtb+hv60DjpHZWnrRlmfT2q/TOrFKdHOcbc+Ttkmvjdy
	t+/x41dlIwftwb141/k/E8Mwnhm2rCyzdNUfeYLir07x4aul+v2P0W6FBHl5mUWTNxJZjPKbcOw
	w0AGmzz3AHhafz+eycyWXBYtJ2jDpmiYMbFDYsFAB5PjCz2BeiHvm29FPnlo/LrPS2bFMJhxB/6
	qNZWiBDgdGonWMG9ITOiBu2mkHqxSD3QNbrTQLOkeArXQV9A6G7Uhv6YA==
X-Received: by 2002:a5d:64e1:0:b0:47f:86d5:d1d7 with SMTP id ffacd0b85a97d-47fd72bb318mr11725778f8f.6.1785625896768;
        Sat, 01 Aug 2026 16:11:36 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd45a0ae0sm19693399f8f.33.2026.08.01.16.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 16:11:35 -0700 (PDT)
Message-ID: <54abe364-7f93-4740-aa73-bb4ed3b16ae0@gmail.com>
Date: Sun, 2 Aug 2026 01:11:34 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Alexander Pevzner <pzz@apevzner.com>, Michael Sweet <msweet@msweet.org>,
 AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <56747b6e-5994-4691-a06f-daca98c5cb1f@apevzner.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <56747b6e-5994-4691-a06f-daca98c5cb1f@apevzner.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/2/26 00:46, Alexander Pevzner wrote:
> Till,
> 
> I think this is a bad idea for users to disable DNS-SD. It breaks not only 
> printing, but driverless scanning as well.
> 

There can be corporate settings with DNS-SD turned off.

> Providing user a method to somehow workaround disabled DNS-SD just creates a 
> wrong illusion that we somehow support this mode of operation.
> 

The printer setup tool needs to work for everybody, also those in said corporate 
environment. And if DNS-SD is on, the printers in the local network appear 
readily available in the main view. So the user sees their printer already and 
so does not click on "Add Printer".

Also, the printer setup tool know whether DNS-SD is on or off, and with DNS-SD 
on, the options not making sense in "Add Printer" then could not be shown, to 
simplify "Add Printer" for the users who have DNS-SD on.

> That said, adding driverless printer manually still a useful option in case the 
> printer is connected to the non-local LAN segment.
> 

Yes, this is important and "Add Printer" should always display this option.

> At this case it doesn't make a lot of sense to probe for the ipp-usb managed 
> printers (which, BTW, may have assigned ports not only 60000 and 60001, but any 
> subsequent port as well),
> 

Probing for IPP-over-USB printers I only intended for the case of DNS-SD off 
(and there check more ports, perhaps up to 60010).

> Regarding normal hardware printers, are there really printers out of existence, 
> that can respond IPP requests on alternative ports but doesn't respond on a 
> standard port 631? If not, there is not a lot of sense to probe ports 8000, 8001 
> etc.
> 

Port 8000+ is for Printer Applications, not for driverless hardware network 
printers.

    Till

