Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7368E227B90
	for <printing-architecture@lists.linux.dev>; Fri, 20 Dec 2024 23:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734738957; cv=none; b=JbIZmyThnssM95AzvmEQYIqiiCikfkpoIU/ogKfw3gHNvqRdw57OXbdCLu+YTbhrLsw3syaqpteTUrlH0WKKjFqWngzPh3hYqdK6ZECIHJ6JzZ8voA41q/0Cu9jFhodRlCxcgD4Jgo97V9yC7cDE+WTBk08h3ufCf/0BK+uOpK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734738957; c=relaxed/simple;
	bh=5gxAXO5Mfnz055b2Jbifa6MCqVNA0/SbTt6YNZdX3zI=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Cc:Content-Type; b=kqhIdBqlVXijZ8ascMUlXTi8rfESKQeUdPgs5RraANVM1bDi2hAiY33M8vfIxFX2PzWbcE4QSTjMl2OWbcjWhFb4iuckF+bjeFJDm7d1hNzF4cJQ8JP3hs8UzHVSEE79EXtt3KE+XiZavGUdiJN7l6gNc6DZ+5poEKPEITCdAms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cf8U0kL8; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cf8U0kL8"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa68b513abcso473368366b.0
        for <printing-architecture@lists.linux.dev>; Fri, 20 Dec 2024 15:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734738952; x=1735343752; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTgqpu28XdJNeIPlvBs0N+exsgjxEldc90Wy0sHPmHE=;
        b=Cf8U0kL8j/9Y/VxJSYWUn6r9MMtL2FlXvZk1Mp2KvUaZhWoyoytcnO1MZKsjzj+nhI
         gmDJ+PAeKEy7Wz00SfbmnCTUHsX/LvGYGS+hSAIbMmJ1QMe1UUO+4nJUp9nStkQ+l4Mo
         1lbuAqVi2aIPGawuXG3q2W2QYR1NrEgLedUc2zjvfRNaF8cmlt7meWyapERRVpvj+WVO
         TKb6hEmWEL4G50iytskSLhYyspOXIKQ8byD3KXxg9HO0sp9fG6EJiQin8dMVV5Y7H3C2
         MJ+MmtpqRqK0HNGOZb13LvidSWCe/wSlCS6MdgpdDAAxLOXLhgOYeKPQszpSvoZJd8UQ
         RsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734738952; x=1735343752;
        h=content-transfer-encoding:cc:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yTgqpu28XdJNeIPlvBs0N+exsgjxEldc90Wy0sHPmHE=;
        b=pkiXK7u1WKIVetW9sq32t158AT6M8cbknP7NdxaKJzbF3McpK3PLBiHPfzCbVji+C/
         4kAbT/OmSWs/GvJzcyuE0lrqAw9V1jy/0zvjmvW26VGL2XyhFILuZHTX9/bDDsIcG3eU
         Vf/Rf00y4/rrAyljzXa/jJ8x62E3lyYuWfpRmFr4owlLO/18DPUVzgZarHEp+HQIOau7
         z6+4bpqieVkZXMD4OHgpghzDMXUuepV6AqjQ1VRlct9qp5fBnSHa626rMvd3mih1tB3i
         2UZj+hwXz45XRZ3kSqbCHprklN4CxiQWrajCCbh0tIiXyJpcaOjLoW6SxK52pXdu8cbI
         xWKg==
X-Gm-Message-State: AOJu0Yzq2Gqr6+J//yBq+f17jfyvn0CAIsaAvFihqg/5WHAlhuC2ycAI
	Usjw57AI7TfQzqJCBBr7Ap+XNjtzEwg2cJOQKmPIF5dbu3HIfzigy+5A6A==
X-Gm-Gg: ASbGncsPUDQXPSPla1xDWRem+2pfBrW/e6PRFYd0X7YQcbjHg8/HKfLh3P6K3zLOHkW
	SBKEc40KwQNF4wVPF+My+LbNASCTW1a/IW/t6WtLNZZpRdp+ZhA2xPglY0MVHxXBrPWpEiUqfCN
	nIrw0AOIGRFPW/hHNEV+cfVGGEVxD+Enek2WswKAFos+sbj4Cg1yadSlC9WDPkV8ApXqcFxUc/O
	QNsIX2yJ8gip/gL9HRH5EADdKOfxRH1aw07LUO7uQ8Zw4LRS5havXSGDUBVp6iQZ8CmInu5jEFP
	i/+6LBLF6vHzWpasDx/12HcnDPbb6kw=
X-Google-Smtp-Source: AGHT+IHYokMu4UG9fZM6rEcOCSzwglENrxWFQNPCPCKKMxOzJXxqKg13QbrKXpW01Zh9S4/lnSMzGA==
X-Received: by 2002:a17:907:9346:b0:aa6:7165:504c with SMTP id a640c23a62f3a-aac3352c2d0mr460292066b.37.1734738952201;
        Fri, 20 Dec 2024 15:55:52 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f05ee5esm221890966b.171.2024.12.20.15.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 15:55:51 -0800 (PST)
Message-ID: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
Date: Sat, 21 Dec 2024 00:55:50 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 Michael Sweet <msweet@msweet.org>, rudransh.iitm@gmail.com
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Merge repositories for CUPS Snap and CUPS OCI/Docker Container into
 the CUPS repo itself
Cc: Cristovao Cordeiro <cristovao.cordeiro@canonical.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

when I started snapping CUPS back in 2017, the CUPS source was still maintained 
at Apple and therefore I created the separate repo cups-snap at OpenPrinting.

As I generally recommend that Snaps should be created by the respective upstream 
projects I am snapping all the projects of OpenPrinting, including CUPS, and 
also the (retro-fitting) Printer Applications and ipp-usb. As for the Printer 
Applications and ipp-usb the repositories were all the time at OpenPrinting I 
have included the files for snapping them right into their repositories. The 
same I did now also with the files to create the rockcraft-based OCI container 
images, on which Rudra (CCed) has worked in his GSoC project, with Cristovão 
(also CCed) as mentor.

Now we arrived also at the point what to do with CUPS, and my suggestion is to 
not only add the OCI-container-related files to the CUPS 2.x repository "cups" 
but then also migrate "cups-snap" to "cups", so that all the 
distribution-independent packaging methods are included in the "cups" 
repository, where also the code is.

For CUPS 3.x we can then migrate the two packaging methods Snap and OCI 
container over to the two new CUPS daemons, "cups-local" and "cups-sharing", so 
that each of them will be available in the Snap Store but also on OCI container 
image "stores" like DockerHub.

This is Rudra's final report of his GSoC project:

https://medium.com/@rudransh.iitm/gsoc-2024-final-report-container-chronicles-759fe7f23ac6

This is Rudra's repository of the CUPS container image:

https://github.com/rudra-iitm/cups-rock

Rudra's work on the retro-fitting Printer Applications is already in the 
appropriate repositories "ps-printer-app", "ghostscript-printer-app", 
"hplip-printer-app", "gutenprint-printer-app".

Mike, WDYT? Should we migrate the Snap and OCI-image repos into the CUPS one?

    Till





