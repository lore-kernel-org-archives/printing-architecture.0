Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A343763EE
	for <printing-architecture@lists.linux.dev>; Mon, 25 Mar 2024 22:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711406067; cv=none; b=O4CD01ITXsQef0zcV0ICPS4uLzKaNti5794OFO995njX2OjuFbgtTWD7JJa7yFAhapcs+woynlohD8pOlglGnvXENFIpbrHFVYCDBL3Sr9gF+Q+DG6ISRZ+aoDmKh971xcEPFA/Y5UpuuvC/TwGnESBR4JjnmHohJlhqH2eHzvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711406067; c=relaxed/simple;
	bh=+uIco5idrf7RHroeHFaxA2tN+GuUVpO6bqIvMyxsiJ4=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Content-Type; b=HQec3cOj9FLVqDpU6yT4ulpUHSNcBIyf96iJAI4igQLNrC/haQAKSdHu4W0qbLp2nbkLeyiYgY1HNnARfgmC1REawulJldLBD8Tj48Ana9kr77EiamkcbUM/ZJ9WFYluV0UaE+ZWhQexAi3O+ph/eMMZaKaSNcOs/yk+Z5kWi0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aropHeOL; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aropHeOL"
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56be32b9775so4436760a12.1
        for <printing-architecture@lists.linux.dev>; Mon, 25 Mar 2024 15:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711406062; x=1712010862; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3S0cw+CZNZcmuVOiCRg4V0EjAE+ax7Du6SAyVD71aao=;
        b=aropHeOLVWN07THxUnDWnKPyQAJb8MDuKwadmcqFjLQ6XozguDElxBZgKaHrBE46wK
         IFZwwsMdXdsk1V4N3dQwj36TTUiWQTjbUND7puRX/4ab02TiL9zi5yKDiA3wtQSLmCrL
         kCdS5bbtl1km2WEppC4OaRuCIN43bCv7EH2TEhltqygX9IUS0XzdC22MhZKU3c+rwKDT
         HHH3GEsQFOfUMXHvsLFa6JjvBJreKSXYguEJ09oKWLWNCi3GocpRiWWEDyLfctCNvPhn
         1bgbe+O7QH9/mQehSzESOc4yoZhtfvU40eeqm8+r9efKBBdd5xDcLlvv9msbP1AL+wt+
         NFPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711406062; x=1712010862;
        h=content-transfer-encoding:subject:to:from:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3S0cw+CZNZcmuVOiCRg4V0EjAE+ax7Du6SAyVD71aao=;
        b=hbjh0FtgVd2wFkHBSHTyoGjdFMnINPuqVb2AW1oOvDi3d7V+ppsrKdSFhhg6HVbpJF
         RnnFkT7i+NX+DcV9zLUky+ht/Tz58eftmIxYUPBnGgyUmYd+yIir8A0gEhQGnfWnn0Rc
         aQdjjt7ezFpZtUyCV/92zgjxuAGwAXLy6Y0jz1DWtS1pH46nC4Abb8ALi2DSMa9y6Ki7
         p6XX/17yKrdejgwCLY7qQdBPTR56oPy9JArgJGVSoGLPx5kAsQZZ3+FWeg8lcNf36Sne
         EZXu3r/biwhfHmQ6zm+cCNLsNrbTHzFo3QhNU0AKdzcWwrEmn4rfu3Pri8XlN8m/4xzo
         XNjA==
X-Gm-Message-State: AOJu0Yy+kTXVNP5BbDD7hA/VvhkBnrIacP1RMXqzHGNarf8ykSjAu2UV
	JKu2Z2CbgIDA4pwoRf9BcMZMGu3MXhzTfzv6A8KIqc1vuowg7eC6WVabQbcndDU=
X-Google-Smtp-Source: AGHT+IE9Zx1UyZbe2JaE3wkh9T7sDSFm++uMrfiAg2lUZGR6JRWDYHy+WNfEZHNsSIxG394Bvemw6w==
X-Received: by 2002:a17:907:98c:b0:a47:53be:5e6c with SMTP id bf12-20020a170907098c00b00a4753be5e6cmr4111599ejc.34.1711406062241;
        Mon, 25 Mar 2024 15:34:22 -0700 (PDT)
Received: from [192.168.68.107] (192-164-134-179.hdsl.highway.telekom.at. [192.164.134.179])
        by smtp.gmail.com with ESMTPSA id i8-20020a17090671c800b00a46d4e26301sm3477970ejk.27.2024.03.25.15.34.21
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 15:34:21 -0700 (PDT)
Message-ID: <18827a06-e530-4861-88b2-3e085bbbe123@gmail.com>
Date: Mon, 25 Mar 2024 23:34:20 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
To: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Linux Plumbers in Vienna - OpenPrinting micro-conference?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

this year's Linux Plumber's Conference (LPC) takes place in Vienna, Austria, the 
city where I live. It takes place on September 18-20, right after the Open 
Source Summit Europe which takes place also in Vienna, on September 16-18.

     https://lpc.events/

As usual, they accommodate micro-conferences and the Call for Proposals for 
these micro-conferences is open, until April 4, 9 days from now.

So this year's LPC takes place at a reasonable date again. And due to the 
location I will also not have any problem to attend in-person.

Now there is the question whether it would make sense to propose an OpenPrinting 
micro-conference again.

- Do we have enough new areas to discuss? Note that the micro-conferences are 
for discussing new stuff, not reporting what we have achieved.

- Somebody of you likes to attend in-person? Meeting me and others.

If I am not wrong, currently we are mainly implementing things we have planned 
in the last years, and not planning many new things. Or anybody has some great 
new ideas to discuss on Plumbers?

Also, in 2022 (in Dublin) we had no audience at all. I we get accepted again, I 
can try to talk with the organizers to put us into a more visible place, as 2019 
in Lisbon we had at least some people in our room.

So WDYT?

    Till



