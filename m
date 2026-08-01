Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369123BD1B
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 19:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785613818; cv=none; b=gyMoSRik6m0pI3cAVAH2HJVjeYiuyBGHyGdn+f23UjT3Y+QlthjoWuFlsr9rv0cCL+ZxtkuTDy8nj9FhY6Mg37ycaX0ESx7dTSoS/RpZZTMTz4XigZsjF/Wrr6H2hmeR2B4pJ2Bp8Q+qeTCIgqGgGwZ6UW0vcFvgFZKdARKqhCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785613818; c=relaxed/simple;
	bh=gCS6KJ2j+OZyHrtaRQOj2+oNDCxVwezEQvEUeiDq0E8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E+Lb+Xnv9ps+FQFsPbsX+8v52Vm87w5heeM97GyasycB2Bx4CQ+YW3Nzl3QiPC8OjerWuQ2wnU4H833B8kZGgtRKZ7rKNMpL+X3LJTz7nh1HKsqZKG8okxyFru3v+z1Q3ig5ZJYrX1nyYwLB6iuNldhnJw2KLOOFGGD5zz0WE2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K9K4hX9W; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K9K4hX9W"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-49558ce01afso6486445e9.1
        for <printing-architecture@lists.linux.dev>; Sat, 01 Aug 2026 12:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785613815; x=1786218615; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RAmMz8xpYtx1Y/oPgY68syVQbgp5Dyxrq2w+DnSaGGM=;
        b=K9K4hX9W9Tcr+YuAebYSrOMjFL77i/TrMqp8EeIsJ88nuc2PZ6oB+WJNEVzMojDHZD
         Y0sf/THMGjHxQYHn5kvSub44SWfgEkfdKGiPo2eiaOjr3HdIdLWUZV846Mg4466Azmp8
         BTyQNkRbiXpbsIS6HNtbCjizq0gwRDeRAb79ugTrBDPoNpf/iXcPKnZM5JMKMNvxxer1
         CQ0RJks0TZTv0VSfXtgn7PxQwIi+jl1tDmQOSQM5kjAs7RpvZVu07EaeLZyb/lxXfWig
         rcraNYHlyd2J2Po2dprjW5LYx7O+WOVhkLaIcX+mxcoVKnvHuhFjFkIY6V+uE5iDTMU9
         w87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785613815; x=1786218615;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RAmMz8xpYtx1Y/oPgY68syVQbgp5Dyxrq2w+DnSaGGM=;
        b=A/rXEFzFeh8siG9bPCOo+zdHzi0gYidb05iN4VuhglrR5xe4HrfdP4Q01q1rKrQk7U
         04IyIQP4f+TZ8JzKXBLUKYX6JygYSj3mAzCdelQWlFHtiGcw3jk0Pgjtak/xoIJUXXVj
         Wi87GbFqNn7F1EMGsbju7A2G+npyiAvOjowPMZ15z6gyx7UhqMj+XtP0+EHFo2JbKXnh
         e1yskzWcb6RTQxml7/BEP7YjsTbC1+uxDMOWctfpwuzg+GReL8moJdDBcnYFkGddcl1y
         RCO78ODrK4WdS/TR/sLRVIWACTFglqWIvqnOETLxH8eKoLj/Uwwr/tT+utC2Qrtm35ZV
         s4aw==
X-Gm-Message-State: AOJu0YwlgRxENWrE402U5O6sBVNU4olgo8CC8wcTp+O33CXnQw6GEdIo
	C639qBP4WB7fBzC67yCOOV5sjXLxCxteVUrDJlDLofGETY5n7dl8dAu2
X-Gm-Gg: AR+sD108PgAZZFnQsXgkOf0IcP3p4b5JXCZh6t05tB9LKADFe+U85hQmgVkUTWpsyNe
	BPorVdLmByzbzsMu7bH3Qjf0eznnPY+4mrtZfd9Aa2Klkj3wezLxBbsjwIpa7KbOD9YFu2SQ7z7
	aD9o4SAA+v162FCQersHFX9cygDjHiAA2MloFacGMmOQTGfpCijagA+rvdPRqyXEg1pduKfbTj/
	jB8NtVqrf3scR+Nsn3hTtpQ0oyrB0RS4ldcdeoB9y34XSGD3hbSbRxLFQQlubJXPe5QpnF9HP8Z
	HfPBBXvfyOIk76DNwNcOu3mH2s7xzLFAP90dW+8uQ97OTGGkAqQ8Zac9lJzqvKtF4/B3xCXFAuv
	pdEGdwSAtVCkt8pvZoPX0V0REjigxoheEtwXXw7xkaSdTwiYqrGZlumJchx0oSpqvwItHWw/YGH
	Y4Msao9qATLpbP5Iv1yaltO8JKeOLiKisAdZGjpLz1F3B4DGpdROtLC5A7B9O5Ja0FEVurdotYk
	Eg46Kq/boGPQsliSfsX56ir3p22xyY6zQdqtrVzYWJTrUY=
X-Received: by 2002:a05:600c:c490:b0:494:596e:e8c4 with SMTP id 5b1f17b1804b1-4980c67d1cbmr62028085e9.17.1785613815028;
        Sat, 01 Aug 2026 12:50:15 -0700 (PDT)
Received: from [192.168.68.113] (193-154-187-225.hdsl.highway.telekom.at. [193.154.187.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd4562a38sm18012188f8f.21.2026.08.01.12.50.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2026 12:50:14 -0700 (PDT)
Message-ID: <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Date: Sat, 1 Aug 2026 21:50:13 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Michael Sweet <msweet@msweet.org>,
 AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Cc: printing-architecture@lists.linux.dev
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Abdelrahman,

If there is no mDNS/DNS-SD active you can do:

1. Put an option into the "Add Printer" part where the user only enters the IP 
(or host name) of the printer. It could then try get-printer-attributes on
- ipps://IP:443/
- ipps://IP:631/
- ipp://IP:631/
- ipps://IP:8000/
- ipp://IP:8000/
- ipps://IP:8001/
- ipp://IP:8001/
- ...

Test 1 and 3 are for network printers, 2 and 3 for remote CUPS servers, 4+ for 
remote Printer Applications.

2. Also test
- ipp://localhost:60000/
- ipp://localhost:60001/
- ...
- ipps://localhost:8000/
- ipp://localhost:8000/
- ipps://localhost:8001/
- ipp://localhost:8001/
- ...

either automatically in the main view or  by button(s) in "Add Printer". This is 
for local IPP-over-USB printers and local Printer Applications.

I only do not know how to keep the found printers with CUPS 3.x.


Michael,

if discovering a printer by the above tests using the method you have described, 
one creates a queue with ipp: or ipps: and "-m everywhere" under CUPS 2.x.

But how to proceed under CUPS 3.x?

If I have only the local server, it is stateless, it only uses temporary queues. 
How do I, in case of not using mDNS/DNS-SD, tell my discoveries/manual IP 
selections to the local server so that it sticks with them? Or am I REQUIRED to 
use mDNS/DNS-SD when I have a system with only the local server of CUPS 3.x as 
print environment?

Or do I have to use the sharing server when I just want to print locally but not 
use mDNS/DNS-SD? Does the sharing server has a config file for holding such 
printers?

    Till


On 8/1/26 19:16, Michael Sweet wrote:
> Abdelrahman,
> 
> For CUPS 2.x you'll use the "everywhere" model ("ppd-name" attribute passed with 'everywhere' value) with an "ipp:" or "ipps:" device URI.  If the user doesn't have the full URI (typically "ipps://hostname/ipp/print" these days) then you can send a Get-Printer-Attributes request to the "/" resource to try to get back the correct URI for the printer (returned in the "printer-uri-supported" attribute).
> 
> 
>> On Aug 1, 2026, at 12:44 PM, AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com> wrote:
>>
>> Hi everyone,
>>
>> I'm working on the COSMIC printer setup application for CUPS 3.x.
>>
>> I have a question about driverless IPP printers that are not
>> automatically discovered, for example, when DNS-SD/mDNS is disabled.
>>
>> What is the recommended way for a desktop printer setup application to
>> allow users to add such a printer manually?
>>
>> I'm looking for the intended approach in the CUPS 3.x architecture.
>>
>> Thanks,
>> Abdelrahman Khalifa
>>
> 
> ________________________
> Michael Sweet
> 
> 

