Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79512AC17
	for <printing-architecture@lists.linux.dev>; Tue,  4 Nov 2025 21:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762292148; cv=none; b=TVMjoEi1NFlcyFS8UXS7kpMqRDnBFygfBeia28oPY5QLPfxvDOYlUYBOgDIl8eudrByexow7um5WACBOHFa/tfdavXGMktG/S99v8RLT3XWa9Ln2/u7LfnXtuG0GX1DAoHWekXBQKL0XUAbnuxESB6FF4ISMAs+HLadCR8xBWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762292148; c=relaxed/simple;
	bh=KiBZa0hnV8a3YWCh6AgYO0bRYVZO8QhSceN8VvRX9jA=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=j5sxhnDdheqiazE3WbSZglgWRZJN9tK4Ljb5/uqAnZsnAo8LwFk5dvPwgWvEcDyiuA5PGTjWJ5XHCoEaJo5rCCHXF1hpZSjhnvXNZHbjk/i6NLGrBDozQzTtfY3OAY2evspPpfs1IMl91IUYUnA90bwUcVoT7mg/+mulfcEMgMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nBBe0o+I; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nBBe0o+I"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-640b2a51750so5500690a12.0
        for <printing-architecture@lists.linux.dev>; Tue, 04 Nov 2025 13:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762292143; x=1762896943; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxmOy+mGtBrtINhWNAxrR19TGGx1jrJnK3O5t70yDko=;
        b=nBBe0o+ItIEF+iD54BuZ76CY2URog4fcEYVa2qtddzF7uDk12Ded3DBUirsrI0ZY7i
         cSeph6Xzi1oTDMhJ///VwgCDUHXydMVZ86acIzfMLj3oyFzp8xYtCoq3o/qFJavzyYGj
         YIBy/c9s1XrvD5Q6Q+JHayazVuLS8gfwaQNT+9K7ZoHyVq4UzEKbc9eIf3ejibVL2jja
         J554iW6IDUM2H725sBUGLf8VP12k5XzgCbJ09Dqn5VDnHHFBJ19QXpU9zGAwn3liO0G5
         7TMlBJM37ANeb2JfSFyTF6GVoj/INbH9rvllzEPPFe4ZN7Vg1Wqwe1a+Hn6nbyNhRTXt
         Mc5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762292143; x=1762896943;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nxmOy+mGtBrtINhWNAxrR19TGGx1jrJnK3O5t70yDko=;
        b=dWYtvrTmUXwzLbNgzWQXKDtlgEr9xp32tzK+QjmqHBPKrlAYrzQOYlNRtGQWa4b70H
         O1G8Ly7JMLg0q+BNQGXzGaoOnXNCznTv2ycgfQsHAu+DYdbWnu3vv9mjXOixhDsOnZp1
         xD+erG03XCeQ/iq5xkOI0mPMhiaFJvhqnX+nno7PusxzBuIZ4f3VA2/EprH4LSCzFpE4
         liDOY/NE3B6PO2ta9YxWBZpbccR+RQFrZRHiCldqruu6oMZ2/6AzVqobMx9ON/79QAI/
         zUUruauMeYiyBJx0+yoZTMr3/RELAog1O7MwWC4Ct1h0xSHv/fKUWj9ikzzotZjiSFBv
         sewg==
X-Gm-Message-State: AOJu0Yxod157PfHtfX4oDLP//9eVg5LwgK1Btajq66ZDbVx0hSA1szmY
	cEq1tjKDODvt0ihHNfaRnJIPDUm5II4Q5BFkhcp1ALFgzqxsyLO4wCxmX61VlQ==
X-Gm-Gg: ASbGncuICOpp4P6yvLwlbSQfKrPMr6Fkiz6H8EjUufSNrY0f7XpF2rKEPVrIMtcaWCO
	sQNM41SJajTtCOoX/m/tI5QKyzS1n5bx4VzSVPo/s6swMVC+bTKhPlSrOEN9fE4H5Js5ZAeQwIx
	bMEBUbvUjSiYxJzR2Zo+iqcATj1iyGKavJRssV8ph+0LqpnzimMZexyqw5Dmy45qgJ9GrskgB+N
	kZ7BxutPZePhoqeW3T6QDyRE9MF7I/jRW2tYZSWNBnPME9VcJ4aDgRH59QOST8lcK1lND/69VtR
	kZubbw8B4DhSZbJVGDY6VhGLf/uu/uWnW3qGv8Qxj/9oq96SjiwFKA/5rdecRqXVTFcZM6qM9JZ
	pN0GuxxDI7hWyK9JPDv5wl4A1ewILFkU6eF+3tjRY3MhM2K/8g3mU5zeLPi7bXuoq+GOQd/L6DK
	3dBkKrd2gQdeFMz7nH/k1OqfUuxVNfyTO2nXa5Qx6CWWIg9KPv2YKxxxae
X-Google-Smtp-Source: AGHT+IHMjYSDuseaWfZ6sKA53YO920uvtZNY2C+GdzioEPXRfy/mCBcr3p6JMu+8WZ/nUjYcgO/R0A==
X-Received: by 2002:a05:6402:2683:b0:640:bce5:77a9 with SMTP id 4fb4d7f45d1cf-64105b7cbf4mr736214a12.32.1762292143175;
        Tue, 04 Nov 2025 13:35:43 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640ff615e64sm1194703a12.28.2025.11.04.13.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 13:35:41 -0800 (PST)
Message-ID: <3428b088-78e3-41d8-a35a-e57e2e59e7bb@gmail.com>
Date: Tue, 4 Nov 2025 22:35:41 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: OpenPrinting <printing-architecture@lists.linux.dev>,
 Iuliana Prodan <iuliana.prodan@gmail.com>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Deepak Patankar <patankardeepak04@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: OpenPrinting/Open Printer booth at FOSDEM 2026, Jan 31 - Feb 1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have started to work together with the creators of the "Open Printer":

https://www.crowdsupply.com/open-tools/open-printer

I had a longer video meeting with them and talked about how their printer works 
and about the software control for it. They planned to use the OpenPrinting 
stack, especially CUPS as the firmware and I suggested them to use PAPPL.

We also talked about a possible joint booth of Open Printer and OpenPrinting on 
the FOSDEM 2026, January 31 and February 1 in Brussels. The application deadline 
is Nov 9:

https://fosdem.org/2026/news/2025-10-03-call-for-stands/

As a booth should be staffed during all the 2 days of the conference and we also 
want to attend some sessions and participate in the hallway track, we need people.

Therefore I want to ask you all whether one or another of you would attend the 
FOSDEM and volunteer on the booth.

We will have a table in one of the halls of FOSDEM and can show everything 
related to OpenPrinting and also find people to join our community, or to apply 
for a GSoC project with us. And we are showcasing OpenPrinting, most probably 
PAPPL (with additional free software, like Ghostscript for example) as firmware 
of a printer.

Please tell us as soon as possible if you want to participate. Thanks a lot in 
advance.

    Till

