Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAF2243376
	for <printing-architecture@lists.linux.dev>; Thu, 16 Apr 2026 02:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776306594; cv=none; b=K2ivGCZr2ztdbk32nqKBnB+/tue4dObYDb6KQQLw001MyVnal+OSgG2FWu+XZARD6qs6bhbvm0IuY3WtCHri69LmTpe7Kzb7TEHvE5lvffa8y/XB3N7eMT2q1LThVMQOPZuyyG0vr+95T9Ik844AWDrmfl/DX+eZmNfI7OLIpT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776306594; c=relaxed/simple;
	bh=7tcCjcHIHLqASTBPeeocsbQ+BkuEUHEOWYKMmj88tEM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=g0/5YpfFFawGr1mPrl4jTn7XmyslOnpayv/1r1vI873hoVjbDjTNKx2a5GJMuz4X0GQNvH7rZm7SNBE3g1epGADXeaKK/T/hAnBFGqRZ39exgPnoxeV9+2gTkcJb0/mAByKolGW0H2qJgi72rn143qkJVuZAbyyeQ0CNXcbSaj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cr7YxhHq; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cr7YxhHq"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso114743255e9.3
        for <printing-architecture@lists.linux.dev>; Wed, 15 Apr 2026 19:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776306590; x=1776911390; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HxwbXk3Q3VIWWYNM6Z5neyxoNE35JuJ9qeeMlqhZ3zg=;
        b=Cr7YxhHqH2gcmhQur0hbH5d0UrUXYyFhHBpsu9WtdGwvrCzcD3AzsEBPHY+j+euljr
         t60zlSzOvYr6aLzIt/M+w3Tru9JmX5mGHupBc2LbiaKdSO40+iFQDUkF2mJb6t/gec/7
         iGeDI5Lcer5vTX3EhGkj1aKBCSdp5d+TQv7Ao+d3RFfMpxOJBQvCrCt7iUbH3aYIj8vx
         6Vqx3QbEqao8NFKMqDvWA0ZVrGpd7pje1ZfCZoVP7oKPwkJsuwFUSdktJbqvEYTUf0f1
         OAobDSgq3SiKq1In5jLOkBFmRdw6wY/tohP4JvaNbZfayol23VVzWjYwf2hGQQJD8eQl
         NRXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776306590; x=1776911390;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HxwbXk3Q3VIWWYNM6Z5neyxoNE35JuJ9qeeMlqhZ3zg=;
        b=D1kAcEuha1uYO43K2JGBXrNMpaBgYbeB7AKrmFSKWgmt7tcvWgB6cCebax86ZREJ3a
         rA/PXcrIc8CokLTvw70lY7bwQOkE09o9yE+77Zs/tfxlrDnu+yfsZVcfwkhboTV5M3tK
         B+82qWFk90bpekW+eKYYMa5FM3Ll4xDaCcjHLyjL9WtYs21NjCa/KrSzrTcuplj86KEn
         37QXxl2y683UylYExnqcNopMXBKIy1yie/9o/r8cSTq/2oW/MlW3orqAMtsmQrQBgCYX
         FpsgoDVuMjut760+wekxSRxtzbE25LDE5bufDmEE6/peWdTo6f75Zz8Xi+YSRiHFGwr9
         Zupw==
X-Gm-Message-State: AOJu0YwG2HgnaFPEpWprz7VZ/ll6fgezTt6mp9oo4E5sjbg2DW9N/evl
	4KQNNp4idUk0E1A1cQlpx9r8IC3fKB69O3I17Wq+mrw95e8OuxuKhS8rsuRjPQ==
X-Gm-Gg: AeBDiev+EjakfUsCekREHijej2aroW9KSg5O5mJYR9tq7WL/vTo3mO7Et85SW0JDqsc
	sw7h+pgmBgy4z961xTUeUx2ayAUXxx9Lpx6EzKZxBPjJZMxNumy8r8DnJDrQeTkGJhlXk6dmcCl
	0l+4hp7UZpD/2LOXXWwNYSnwNnl/9f+ikizxjxEnis1HQrLAr+IN1cLNIOC2BUPCsVD5hc0yY7l
	rNJcC4QXl7db/J+nXcvFPamoPXrGnmkbpL1TgiknBLZN+kPwtEHo3Fgj03PY0p347t/NXSSGc+w
	SKCWDsG1DJEi6S620QxxZ9UChfoePQfUaPqklatXx4fT84xZscz1sAqA811RhU4KpxvuWLP8RPs
	tHw6FIW0C2vfjK3BEloHbHcShOsNj2mkfsh6xc9eC18f5y1Sk0bJ//y1pSw+boa6cONW5nRcM+4
	JQsol6hgI6i8Y6tWnI2dEL88ejN/LQTGgqORH80A/ajKSX5qcCMZq5MDLahbXNXszVjl5Z02nEl
	JkCvTbl/pw6JMGXaA==
X-Received: by 2002:a05:600c:3150:b0:486:fcc7:d6a with SMTP id 5b1f17b1804b1-488d67f4c4dmr337264205e9.13.1776306589641;
        Wed, 15 Apr 2026 19:29:49 -0700 (PDT)
Received: from [192.168.68.113] (192-164-23-214.hdsl.highway.telekom.at. [192.164.23.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43ead35bf1esm9896063f8f.16.2026.04.15.19.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2026 19:29:49 -0700 (PDT)
Message-ID: <d42c7f96-edf5-446f-b6df-82dcb6ebfd4b@gmail.com>
Date: Thu, 16 Apr 2026 04:29:48 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: AI-discovered recent CUPS vulnerabilities going through the news
To: OpenPrinting <printing-architecture@lists.linux.dev>
Cc: Michael Sweet <msweet@msweet.org>, "Ryan \"dasgeek\""
 <dasgeek@protonmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

[ Resent to correct list address, pleas only answer to this one, with "Reply to
   all". ]

When chatting with the hosts of Destination Linux, they told me about following 
posts:

https://www.theregister.com/2026/04/06/ai_agents_cups_server_rce/

https://cyberpress.org/cups-vulnerability/

https://cybersecuritynews.com/cups-vulnerability-remote-attack/

https://www.scworld.com/brief/new-cups-vulnerabilities-threaten-rce-network-breaches


Summary by Ryan DASgeek
-----------------------

-----

The attack doesn't require a user to "click" a link or download a file. Instead, 
it exploits how Linux handles printer discovery and print job metadata. Here is 
the step-by-step breakdown of how it moves from the network to a root terminal:

     Discovery (The Hook): The attacker identifies a Linux machine with CUPS 
exposed (usually on UDP port 631). They send a specially crafted packet that 
"advertises" a new, fake printer on the network. Because many Linux 
distributions have cups-browsed enabled by default for convenience, the computer 
automatically "sees" this printer and adds it to the system.

     The "Page-Border" Injection (The Payload): The core of the April 2026 issue 
(CVE-2026-34980) lies in how CUPS parses print options. The attacker sends a 
print job to this fake printer containing "smuggled" newlines within the 
page-border attribute. CUPS fails to sanitize these hidden commands.

     Command Execution: When the system processes the job, it gets tricked into 
treating part of the malicious metadata as a trusted configuration file. This 
allows the attacker to execute commands as the lp (printer) user.

     Escalation to Root (The Terminal Access): Once the attacker has a 
"foothold" as the lp user, they utilize a second flaw (CVE-2026-39316), which is 
a Use-After-Free vulnerability in the CUPS scheduler. By triggering a crash and 
memory corruption while the system is deleting temporary printers, the attacker 
can escalate their privileges from a restricted service account to full root 
access. At this point, they have complete control over the terminal and the 
entire operating system.

-----

Michael, I did not see that, probably due to the flood of bug/vulnerability 
report coming in in the last days due to several contributors using AI.

I hope you are aware of these (or of the fact that the combination can lead to 
remote root).

Thanks a lot, Ryan for passing this on to me.

    Till

