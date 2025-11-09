Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F128234D381
	for <printing-architecture@lists.linux.dev>; Sun,  9 Nov 2025 00:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762646737; cv=none; b=fx1oOWTLPJS0ni9woIQ5BgeBmTMg0swPaBbN2ya6vzt1ByUd74qvMwTgsKu1EO1KIWrG2rC8H00/JEanVe0Y/+L5Il43cV0ABcehc5PJ6d1GcANgg7ZJ1sJcVxjPpMp9CajSYpQKVSuqEZ8VZiJHsOvflx3/LDrt5TN7f8JTMfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762646737; c=relaxed/simple;
	bh=sSZaB34FLdFxYjpTvhoHBpqMF/aLrPLzzSc3BYeWSNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZRPB4/XU1xqEWGU2MyTvhpz5D1RODeCTpZnyiGQrlXxPlIJA39MGH6t0Y7J6qL2tTzuENr5IHV3BTI76U6PRyM1JJeEhoXZelYIZctcTIDZmv+asMjcDVSHfakiHFAtpclKbefzLskbZvLezkDTBkzKqxjCuta76pFb+DYr5z4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMaJlVkO; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMaJlVkO"
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-64175dfc338so560529a12.0
        for <printing-architecture@lists.linux.dev>; Sat, 08 Nov 2025 16:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762646734; x=1763251534; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QzQiOAnz1jsZbecqQjwn1v1aYJjKvmnHiQQdcxZX1oM=;
        b=DMaJlVkO0z80q2h6olOH6eFKkBzeHlro46HFLsuOi6W4FD7iVED9nj5me4NQVt5cS2
         GFMtzq2Y6nzmxHqQwnJdTx2/25YGO4mARowXDxmhu8BgslLSI8Nz245GmkK5LUXAmz0P
         4GJ7+vPrlq1B/55ORqg/rPtGNu5Kc9Kj7DHq8RDCcazrnQEy5heWGKtw1NBgAKiDEBfN
         gy4j4f+mLqWUJe6xkZu5R2w4bu4rcjqUMseEVlqWDpm2HwazqT7v1xZb6J+JRZieRtih
         lYeLcv/f68tX1ZHMCXHPXgRdvWRFQzdxBqbYVxgrMUtoLF09B0D7LQhCJtOIenNmfgHv
         ANOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762646734; x=1763251534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzQiOAnz1jsZbecqQjwn1v1aYJjKvmnHiQQdcxZX1oM=;
        b=WDB4ZbN7tDTjxKjrdX755n7ZG+1BS/0DKdThOwPbIjD3ySVKBJbPMqoWEEiiXOdB+r
         QDLbmiJ1FUdNNFApYnytrQmTbZXFg9iD0GS+oIqWGi0FkF/qRy5tMa5675usIX1I3H0Q
         ckiL027EIj7Pw60PxxU9HxjCDq6CLZzJv5mxLLH1+YULPUTfvXqdFdrNHHsF0OoyX/iV
         ykO9IFp1wP3vFH+VlyNJ8Q7r6MNF/z0EUaB6xgEZIqtU+7t+rZXFX2TZo7SL1EHiE0dP
         odZaFV/qPoruWeYHezXbapWd4xw+reB+IPqzSirnAhV0JsPJhZsZA5QVMPpA6gLY/l8o
         cVVw==
X-Gm-Message-State: AOJu0YzN47RZYzlQjHBPd5A1PMz07jCVmnxJfNXZJPkpHQEArehUkTb6
	YA9TH1DLc7GQ/v2KXfCyb58q5PoKwuTFdnqEeWzQ/nyhWXVA59WzM5zD
X-Gm-Gg: ASbGncuBKDaX3elWkkPUebQ+3RS4j8K5hhizQDxdtXLhrZ1xFx+k2FCeAmUUjBRrYUs
	zniJ9ZXOwRmavU2oqceShfFbSk+RyurgiyngVOwJVwGP7cN3JCLW0VknnnfG1QfnXJp8efO3IVD
	DTEqAdlel6HJQokK8fTuROJmZhFAUoEg3m9/hIL3w2BHQ6zFg0sve7GK8l2+hNqPHPvkBHm9fwA
	ViVhZ+eb1SJmsnEtF63pj8yOrxHd3Ml+rgs8KCqcJ+n6Ha/BAthlTSQeCqzRqVOB8RF0B41Auov
	RfXW7Ql9DPK+mOnwtspOI6IqovTk3wJ4ZdyJbW8yJqXJckv92+3GXv9AsB/bAF3jDZKe81MP1YB
	hDSQuKqaBEi6Rl4Sxi03keFIvJsDMhLja0sxFnd3ThaFLwfmIu+WXV1unoz0AmxwBc8wRXOmdO0
	ASf8CWcpmf9+ObhtOsPZ5QFJXu95zscaZcQG55m+DLKx50w5QchDy5wHAL
X-Google-Smtp-Source: AGHT+IFBO2hh1UpRelf1PTSUeX/ZGzSq/ZXBLfeHonbSq1/D3vc03XkBNyumaoTDNfpOgZNHXSwIvw==
X-Received: by 2002:a05:6402:254b:b0:640:9b43:dcb1 with SMTP id 4fb4d7f45d1cf-6415e806cc7mr3226977a12.35.1762646734022;
        Sat, 08 Nov 2025 16:05:34 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f814164sm7732364a12.13.2025.11.08.16.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Nov 2025 16:05:33 -0800 (PST)
Message-ID: <66899ec5-bcba-40cc-91a6-4a492a8a8066@gmail.com>
Date: Sun, 9 Nov 2025 01:05:32 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: OpenPrinting/Open Printer booth at FOSDEM 2026, Jan 31 - Feb 1
To: =?UTF-8?Q?L=C3=A9onard_Hartmann?= <leonardhartmann@opentools.studio>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Nicolas Schurando <nicolas@sitronlabs.com>,
 Laurent Berthuel <laurent.berthuel@printerre.fr>
References: <3428b088-78e3-41d8-a35a-e57e2e59e7bb@gmail.com>
 <77c9a577-7159-4f29-9c2e-b16b7cdcee3a@gmail.com>
 <CAJzULcp_y4iWq+mV8mUg0BnP+XFoY6v+qrdU0Shj-4hiO832pw@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAJzULcp_y4iWq+mV8mUg0BnP+XFoY6v+qrdU0Shj-4hiO832pw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/8/25 20:26, Léonard Hartmann wrote:
> Hi Till,
> 
> Thank you very much for organizing our presence at FOSDEM.
> 
> Regarding the booth application contacts, both Nicolas Schurando and I are happy 
> to be listed as contacts for the Open Printer team project.
> 

The booth is actually a joint booth of OpenPrinting and OpenPrinter. Therefore 
the 2 contacts are me as the submitter and representative of OpenPrinting and 
one of you as representative of OpenPrinter. Initially I had put you, Leonard, 
as this second contact. So I keep it this way. Please have an eye at e-mails 
from FOSDEM, also check your spam folder. You will asked to register and account 
in their CfP system.

When editing the abstract I have also found out that one cannot change the 
second contact any more when editing the proposal.

Note that during the application process there are just 2 persons to be 
registered for a booth. I do not know whether later on further persons need to 
register (it is the first time that I apply for a booth on FOSDEM).

Independent whether we all have to register or not, our booth crew will be for now:

Till Kamppeter - OpenPrinting organization lead
Akarshan Kapoor - OpenPrinting contributor Scanning Support for PAPPL, also
                   Zephyr RTOS enthusiast

Léonard Hartmann - OpenPrinter, CTO of OpenTools
Nicolas Schurando - OpenPrinter
Laurent Berthuel - OpenPrinter

Further people, especially on the OpenPrinting side, could join.

> For the required title and abstract, here is our proposal:
> 
> Title: Open Printer& OpenPrinting

We are using the name "OpenPrinting", CamelCase and no space.

I suggest you use "OpenPrinter", once it fits better to "OpenTools" and also it 
harmonizes with "OpenPrinting". I see that you sometimes use "Open Printer" 
(space) and sometimes "Openprinter" (just uppercase "O" but lowercase "p" and no 
space).

WDYT?

> Abstract: Open Printer is a repairable, compact, and robust printer designed for 
> longevity. Fully repairable and equipped with a refillable ink system, it adapts 
> to user needs while significantly reducing printing costs. Easy to maintain, it 
> offers a sustainable, economical, and eco-friendly alternative to traditional 
> printers. Integration with OpenPrinting ensures the printer works smoothly 
> across various platforms.

Abstract how it will appear on the FOSDEM site:

https://pretalx.fosdem.org/fosdem-2026-call-for-stands/talk/review/K7JCCX7BTEHMEEGFYAXRWPEUGBGAN3NM

I have replaced my initial description of the OpenPrinter by your text now. I 
hope it is OK this way. Please tell me whether I should keep the text following 
after this or whether the OpenPrinter part of the whole abstract should only be 
this one.

    Till

