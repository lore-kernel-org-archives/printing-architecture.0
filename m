Received: from mwweb08oc.mail2world.com (mwweb08oc.mail2world.com [74.202.142.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46922524C
	for <printing-architecture@lists.linux.dev>; Sun, 20 Apr 2025 04:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.202.142.113
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745122947; cv=none; b=Sd9glG13K5waJzcWomYWLrgtldrDm/yN3TKGVd1KcVaW7bFXa0QKsy+9EzhUXejOToF+XRz/gXEKT1Dzi+Mq1IQ12oykotTURxMCv3yIgQUElVYc07y8YizLnEnam95menmk0QAGGzqPXCqjh6oAl0HpftibUWExpqadHLM/22E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745122947; c=relaxed/simple;
	bh=Y0ar17YYf3dFEG1VYBzZnV4pwbK4Acd9HvNrDmbhNJE=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=TM+sQL17PPXlnoAXvgBE1YzczIvUmTpHBUM9NXVrFFVT8B8vm31n7WTSQWOo7vqKaEFuK6ploV8KJldlt87b7K7JNoHGthT0f6pOw/Wfuk60M+C+dAcWz7X6T6KUq4EwbgDSXuUeENiM0OHibdAZO6bRNOSSJg9odlj43DyoQ7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=shentel.net; spf=pass smtp.mailfrom=shentel.net; arc=none smtp.client-ip=74.202.142.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=shentel.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shentel.net
Received: from mail pickup service by mwweb08oc.mail2world.com with Microsoft SMTPSVC;
	 Sat, 19 Apr 2025 21:21:18 -0700
auth-sender:gheskett@shentel.net
Received: from 204.111.66.52 unverified ([204.111.66.52]) by mwweb08oc.mail2world.com with Mail2World SMTP Server; 
	Sat, 19 Apr 2025 21:21:18 -0700
Message-ID: <7d8ad828-b355-416c-b2f6-1542d0919944@shentel.net>
Date: Sun, 20 Apr 2025 00:21:17 -0400
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Exit behavior of system-config-printer
To: aisuneko icecat <iceneko@protonmail.ch>,
 printing-architecture@lists.linux.dev
References: <f364e80a-cfe9-47ca-ba7a-7af5fc881ebb@protonmail.ch>
Content-Language: en-US
From: gene heskett <gheskett@shentel.net>
In-Reply-To: <f364e80a-cfe9-47ca-ba7a-7af5fc881ebb@protonmail.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A00211B.68047628.0014,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-OriginalArrivalTime: 20 Apr 2025 04:21:18.0622 (UTC) FILETIME=[A9F0DBE0:01DBB1AB]

On 4/19/25 22:50, aisuneko icecat wrote:
> Hi list,
> when I inspect the failed systemd services on my system, I came across
> the following failed udev configure-printer@.service, which belongs to
> system-config-printer:
> Apr 19 22:51:42 liquidice systemd[1]: Started Configure Plugged-In Printer.
> Apr 19 22:51:42 liquidice udev-configure-printer[29612]: add usb-007-032
> Apr 19 22:51:42 liquidice udev-configure-printer[29612]: device devpath
> is /devices/pci0000:00/0000:00:08.3/0000:65:00.4/usb7/7-1/7-1.2/7-1.>
> Apr 19 22:51:42 liquidice udev-configure-printer[29612]: Device already
> handled
> Apr 19 22:51:42 liquidice systemd[1]:
> configure-printer@usb-007-032.service: Main process exited, code=exited,
> status=1/FAILURE
> Apr 19 22:51:42 liquidice systemd[1]:
> configure-printer@usb-007-032.service: Failed with result 'exit-code'.
>
>
> Is returning exit code 1 on "Device already handled" intended behavior?
> I believe this could be misleading at some point.
> Thanks,
> aisuneko
Probably already claimed by cups-browsed.
>
>
>
>
> .

Cheers, Gene Heskett, CET.
-- 
"There are four boxes to be used in defense of liberty:
  soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)
If we desire respect for the law, we must first make the law respectable.
  - Louis D. Brandeis

