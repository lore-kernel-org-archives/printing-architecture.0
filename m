Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB40427126C
	for <printing-architecture@lists.linux.dev>; Thu, 27 Feb 2025 21:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740691689; cv=none; b=e72ojtvtWYDvPASULrbsvKkm6dkBogvNiLxSxJSjO/AflQXS+1J05A6CnvlH159D5lyJlZRtzI84sB1paDdeuqW4m5ST1DSKvgag0lZl931QFN3j2u36J+YD2ltCPoKCtapYM2IrSYxXQIYPnaolYutd0Ai2J8iksHsForWORyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740691689; c=relaxed/simple;
	bh=IbhFrwvrOeKF+rXRRkZ6fqZl5K1adBxM3bk6gjsCr2A=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=qshexbo03tg7tS8HPbo+ZZ1IvZwUlgAtw7Ydj7wU/jsLyyiVqmSuSp5ji2GjuTdJHG5YlChttIS8IpJ2LPWJqgUquw1kCJYdTZLwUby33Ln192bLpMyj5ebi4UC7lUh1rG/wMioG4U2eGqeXQ4rg3o2iXep71PMMPUzdXW6NXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fd1Izv2c; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fd1Izv2c"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43994ef3872so9888735e9.2
        for <printing-architecture@lists.linux.dev>; Thu, 27 Feb 2025 13:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740691685; x=1741296485; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oRDBPJLvEEnaQNddtrHjN36HP6FLHCQ7Z9gf28EHYyQ=;
        b=Fd1Izv2c3TJXS0ICgdgcJH/Xjag9IEliX0dAqsDkcrOXNWsLJfN4eRfhlXsRuaIi9w
         jhLSOxsb2hWJouynEXKuRb5GS4Ds8ppWqQvMdz1ZP3MWUB07Ujfbfn2EEfYBlCzyUo17
         HxvwhiRuHacrGpjd6y6en7y/BhkZmZEyQjhE4OnJMQQDgGY4K7iASs2dCbNxVOs/0Lrs
         VuXNinMGsDL6m0S3c7o58jK2rZRpTlOgzzzi37XWIVq6p1lt6jPwSO6g/10FQwQ9H5Wo
         32oVJpTQNxvihkJcM9UtJ0O8EcidGprRZ+MEcx7l67RUWLGUZ2eoAedDDL12vwOGj8v2
         CFuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740691685; x=1741296485;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oRDBPJLvEEnaQNddtrHjN36HP6FLHCQ7Z9gf28EHYyQ=;
        b=FVFqdXxznMR9hdMqozwzZsi9oS1VSkXyv85kNjPh0xtXv/WgutQN7fZdFRujegX7oY
         rJj2Es1+hiyvd2IfUgmwnefN7LsHPCbiolMPf+M52rhQNtoZf7q3SikFFZb/FAF9UcSW
         UUijStMhKVe3WMWdcvdFpLKAgsCiFBYccF+GLr1TXuHXnJYpylcGKGKQ4TLteuqmeoJm
         S/Zhlkxc8vaKpxITOXEOGjSg6CkZW9dXZFqeDXZh0Q9RAKbczTNB+RS/5MekSNzcCgOx
         uKkzugEVM1rDH7REkaA+jlsy3B2JEtWRPwFGGAlAHe/cEtsZYVxf6MTrGWSk6U7NoIAP
         FT0Q==
X-Gm-Message-State: AOJu0YzBsOSHMwHJrpqHNk/HhRTBt7xtO5IfWL+keXi25ZEtp/zWfBBf
	z9NTietL1O3KH3RAMzBCIh5di+JyqAO/uSjLS/jb+8tQF4BX6aiZh61HLPG3
X-Gm-Gg: ASbGnctJxZPLQ91wcFV7mDPvWy4uqVvb4vH5zEBJ2/4O/cyVB+rHFlVKYgN4pCklx6c
	WGHqnTCiAwdmwc3X9PWedn0Mh1Clqu1VkJmOs0NKeyijP5yG3256bheU5jsWkifZc0Dmy1ZDmKQ
	ILkw+Gl29n2jYUegZY4wVLf0o/lLkmZy+Zup1MHJkVexLXgq+xfbdX0oL4flLyBShFpB+XLVeGs
	GAO12PUUJ5JNqFylXQDubU+YSVrG5tlvWjOitWBU2c3MlW3oUsnW0+1RQVV2MjiQlvXaHcq/JiS
	tisqZWXrVLFWq5N4b5USb5ksuIc9JMfy9ur/noPyw4emvD9AXFGY2SUwlPQ2YHqXM37tj5pcdNB
	B
X-Google-Smtp-Source: AGHT+IGfToLFNCCmfh5Y8Nuxgn7cVB/wHpfciWjeTGN/ug8tqLm7opitPbAMfy8gnxlOv3RMA93n+Q==
X-Received: by 2002:a05:600c:4f89:b0:439:9a28:9e8d with SMTP id 5b1f17b1804b1-43ba6703767mr6054925e9.12.1740691684387;
        Thu, 27 Feb 2025 13:28:04 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4844c2bsm3133541f8f.77.2025.02.27.13.28.03
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 13:28:03 -0800 (PST)
Message-ID: <f207973c-2a80-47e8-997c-9f496d55310c@gmail.com>
Date: Thu, 27 Feb 2025 22:28:03 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Google Summer of Code 2025 - Linux Foundation accepted as mentoring
 organization! We need mentors now!
To: OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

today the mentoring organizations accepted for this year's Google Summer of Code 
got announced, and the Linux Foundation is one of them!

https://summerofcode.withgoogle.com/programs/2025-ao/organizations/the-linux-foundation

This means that now we have to everything to get amazing projects going this summer.

First, you are probably all actively working on finding contributors 
(open-source newcomers or students), familiarizing them with your code base, 
integrating them into your community, giveing them assignments to learn about 
how things work in your project, ... If not, start with this ASAP and do not 
accept candidates only showing up during the official application window in 
March 24 - April 8, or even worse, only their proposal appearing in the list you 
see after the deadline. The earlier you interact with the person, the better you 
can decide on whether they are the right one for your project.

Technically the having gotten accepted means that we can register mentors, and 
as in the other years we need as many mentors as possible, 2 mentors per 
contributor project we want to run (usually they do not give us more contribuotr 
slot than half the number of registered mentors).

If you want to mentor you have to register as follows (According to the official 
e-mail which the org admins got today):


     - Returning Mentors (who mentored with us in 2022, 2023, or 2024):
       o Log in to https://g.co/gsoc and agree to the 2025 Program Rules and
         Org Member agreement
       o Inform the org admins (Aveek and me) that you have done so
       o One of the org admins will accept your request

     - New Mentors:
       o Org Admins have to invite you. So tell the org admins (Aveek or me) that
         you want to mentor
       o They will invite you and you get an e-mail from GSoC telling so. Please
         check also your spam folder if you do not find this e-mail
       o Follow the link in the e-mail to register and agree to the 2025 program
         rules and terms. Tell the org admins when you are done.
       o One of the org admins will finally accept your request

There is no deadline for registering as mentor, but please register ASAP, the 
sooner your register the sooner

     - We can see that we get enough mentors and do not need to chase after them.
     - You get important e-mails from the GSoC organizers about your duties and
       how to proceed. All these e-mails are also available on

https://docs.google.com/document/d/1DFlES2qkSaVRnUBaODNtdD3eY5M0hFPfYerSyxf85Pw/

       but it is always better to get them right when they get posted.

Please also join the communication channels of the sub-group in which you want 
to mentor (in case you are not already there as part of the sub-group). Please 
interact with the contributor candidates who are introducing themselves there.

Also see our project ideas lists to find out which projects you prefer to mentor:

https://wiki.linuxfoundation.org/gsoc/google-summer-code-2025

Important is also to get the candidates interacting with the code base. 
Therefore please let them first build the code base on which they are supposed 
to work on and then give them assignments, like bug reports, to work on. Only 
accept proposals from candidates who are well onboarded, do not base you 
decisions on a just a proposal you find in the submission list after the 
application deadline.

And keep in mind:

     - A person can be GSoC contributor not more than 2 times
     - A person cannot be GSoC contributor any more if they have been mentor at
       least once.

So make sure you do not want to participate as contributor before doing your 
first registration as mentor. And ask contributor candidates if they already 
have been contributor and how often.

I hope we will have a great GSoC 2025 with all of you!

    Till
