Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A06AB1643B
	for <printing-architecture@lists.linux-foundation.org>; Thu, 16 Apr 2026 01:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776304768; cv=none; b=V2N4PD6boYLNQu7MosMdiVwqkN+19dsI0tTNHuhbQxfZemvU+RoLUNo9X9dBuxq3R3fr9L5W4jAjOzbxM2jrGFFW0JYKrQJ4cJmBV1A9dBONsUBEoqMmMQmvexZaQI0FvXA8/Y4L7tRp7oHmBt4zEVq9jf8WjGUQHg5H1BmkjpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776304768; c=relaxed/simple;
	bh=FdWtMbmfRNdGlWnO4jHsYPz5xYu1vMn9EGjLHwGVOzA=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=FjMOlHH5kXCd+YFqqfMFsEOoHyZ3q7B/HXS9gEa2jOVnjUw+IHZ1Czmjlj++HmfBqBIwompMAfNUgJ9pCg4q0I7cke376cwnsbSK/Y79PnvtW36p+vqZvpLaOKw0dwQpce0cLyzdQoZbqH9D9Fh3U375weBU7xExqsp8kA5jXOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ck7rHb1Z; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ck7rHb1Z"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 548E980B1E
	for <printing-architecture@lists.linux-foundation.org>; Thu, 16 Apr 2026 01:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Je9AcXbvq0FU for <printing-architecture@lists.linux-foundation.org>;
 Thu, 16 Apr 2026 01:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::42b; helo=mail-wr1-x42b.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 316A380B0D
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 316A380B0D
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Ck7rHb1Z
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 316A380B0D
	for <printing-architecture@lists.linux-foundation.org>; Thu, 16 Apr 2026 01:59:25 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-43d43e09de5so4441658f8f.1
        for <printing-architecture@lists.linux-foundation.org>; Wed, 15 Apr 2026 18:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776304762; x=1776909562; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAbqyoJJclaDJlyyf4WpXGL9YSZUpr2JY5uYjOXqFt4=;
        b=Ck7rHb1Zcf4kWoNtAkiax1m15HF3xdUD5DaDBW6r+OJAGlFYAGdtB2P6QHsrgVw2Rl
         XjEZXE2HB53+3VfPNgmPpCBD0fiI+v9lguxDW0NdQeBxLm6TSiCd08sNJDF3IKncs+Ie
         N3nSKJuRXvGpidWyWAU839WLtF3Wu4w6jNJlG25itIcD/+5uxvqez+Lc0DYFV6Prlduc
         Vts99JwSE9WlqBQ+63HN2//Mw0Cvkbqe+vG0YrKTxjlE666URFfym7ct4DyiAbC0Ypch
         AJCIxf9T1rqn8O+ZyeF2kNk4ymDuRiaM79X+YyO8s3YsNdIE/wpbTU5P8ePcEEGBcoYV
         NNNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776304762; x=1776909562;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OAbqyoJJclaDJlyyf4WpXGL9YSZUpr2JY5uYjOXqFt4=;
        b=R5Y+V+ToCiSC/feaHAjdxCwMuqb1bixg6XQoT+rJS8paonK34zEyezkrS54Hn0Dxru
         EecgNaCf7rnDnxaXQqQiV0Ii9yt7LaQgVtKWDPDrFhby+n8b5I305gXpeEo9COVyQrtF
         HyrcHqzJZjvMNvrYiGEhqU7lJUbISHz0arnYBwp58ZffW2Ijuu322CJ+bps+53AIt3oS
         svbH2g5zWxaNlUJLIggKqDs2mtx2J71XyiF7xS77n7vNd4OZOOyRC7DR9W4B03OJMIg9
         PLAJKiQRaH2DuFRfhGcMkKdLw5vfBUudJ/Bcp2MQYmhliS5szMRbj1DlU4wTGCmdqhYn
         Bvwg==
X-Gm-Message-State: AOJu0Ywf5XcONnIeMvJ894YyBtAja3vMkNZ7+dVSX2owp9cAaMu05Ckm
	vtmj/t+SIdyGUM9nYmrliQ7t9rYMzR0wdC29LGvZT9EvLHwX5d47giYhhYDWSA==
X-Gm-Gg: AeBDietphvP3MA6qmAc+n8z4EY/UwoqRgoPFbrA+mchjp44SZwkdC6nMTM+cF0OCNFF
	K9r/RmMXy5V/t1EKIYQMmwbb0b2qo7VI6x2XQ0P+4c7SqaHeRfEiYxPm01aZ6F6rIqR6fFO1rnr
	eEyL37u0GsjWHiAvrEzN8Jzs27WTHHwH3gAE8/pi3lWF+c4+HdG6IlFwD8LTSgP0Q/6o836LRfd
	jR+w2FNfLpIG24zBCPcM3BDilf9m0FBBIiu1Ugli6RZ+kd8ejjPjg2mnceZtjhnEYtkHdd6up+G
	ffnLyF5wH521UAOQdNv1bYtr79/joW/WToN8RO1m0BTLSsqY8nxp0oVYGdhY5L03L+NiIeFINLS
	hLTost5k6rsZ7fUqwtoeQZ6OmH2pU/wCxxCiQpxKcaxe7w2fExOoMsYII6nonq4sORt5/3FbJCi
	4QRgG3YX49rIN/8GeBScjiPkn3jNPUov0/yRSqkPF6JNd2MbghQ3QThJeqfV9awwpvT6VS6sZs7
	NF4xTzy3NAOU7LI3Q==
X-Received: by 2002:a05:6000:420e:b0:43e:aa88:f1a2 with SMTP id ffacd0b85a97d-43eaa88f439mr7908690f8f.32.1776304762079;
        Wed, 15 Apr 2026 18:59:22 -0700 (PDT)
Received: from [192.168.68.113] (192-164-23-214.hdsl.highway.telekom.at. [192.164.23.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43ead33d518sm9989726f8f.6.2026.04.15.18.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2026 18:59:21 -0700 (PDT)
Message-ID: <54d940f6-b2ed-4b31-aa14-92c4591516a3@gmail.com>
Date: Thu, 16 Apr 2026 03:59:20 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Michael Sweet <msweet@msweet.org>, "Ryan \"dasgeek\""
 <dasgeek@protonmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: AI-discovered recent CUPS vulnerabilities going through the news
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

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

