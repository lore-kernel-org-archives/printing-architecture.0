Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6509208A7
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Jul 2024 20:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720212946; cv=none; b=HY0zCvLx7sFq53uIBqAxGDsGH+muqoXfhWUW3OtDakoM99eBflvkrxsBKqGPhdstP0lJAPlTNyyYjeMwMSx/OkpHqZuRmYHcY8nxuB14Rhzz7GKtTWTNjsfNsaNCZ53CsvvzOlGyhYbfATqV38X0Np5qeDfRnJkXfZhBQBBun5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720212946; c=relaxed/simple;
	bh=3fum1mkJqux2aCTqMDUamiMMeWWszs4Bs8VkKaV5TUg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=srhwGgxCX4s+2SwWp1UhDZFh5Zay+g0UYp6zlr1rHQAnLFcEr0je1QVyRsaIJg/QMZ1LFPzE2aUsLcxUyo2jIxYchdfhQsxZ2wnOv6zUV7+Z+YN+u8eJc2zV7qQfNqjJ5REFFQNvk1NYGYuShxYrzajSFZouE0SloMzXqhmxa60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XAwhJPbZ; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XAwhJPbZ"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A4D160857
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Jul 2024 20:55:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1RowN46GIUA for <printing-architecture@lists.linux-foundation.org>;
 Fri,  5 Jul 2024 20:55:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 158BE60784
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 158BE60784
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=XAwhJPbZ
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 158BE60784
	for <printing-architecture@lists.linux-foundation.org>; Fri,  5 Jul 2024 20:55:43 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52ea929ea56so848232e87.0
        for <printing-architecture@lists.linux-foundation.org>; Fri, 05 Jul 2024 13:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720212941; x=1720817741; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/S3mY2qIHQeiQgRz6o+dAuFxIi+ohmTscig2Imyy8JE=;
        b=XAwhJPbZKS0vujsMeK3+kcSgL6j5ySiyPlNuHWKBasevllcQa54LhZvOEjV6oMrOIr
         CEZ8qMeTh69aq0mPOuAjqZNbt0MliahwosF6QodcFukMjh/I30/1tGSXEN+rcWKdOrvi
         UUhupemTE/k/IJvsyHRJr03Il8DuCt6f+k1CS3oSRZUwfO07tNHq4rasvppObJ8jsg9c
         dBKLw4Xk7FOxHdQMogG5hPP0utGQ0p4+fy5tcLB9mNBwA7ojas0YFhrXbcUAxckYAK5Q
         EEo08pARo4x8ZCIrcpGv3uJIVRScAt7/5dqCEJ5YxBmo19zY+RUl2h9Ix1av/e5rCEwX
         wnWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720212941; x=1720817741;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/S3mY2qIHQeiQgRz6o+dAuFxIi+ohmTscig2Imyy8JE=;
        b=KPz2p18gJkTykG6OrDj/KnjkuHnHagOKYPWfz0kRs5FP5/LpVX8PNE9wxj2cbELEXW
         MCisLg9tGHcwo7QFJwFFCFCUkEMaV4MBsdh3sYSr7PVMVtH6Qn17nWHgD7gcewWSsI9J
         ufBhPH2ttBe3ODYGtGqXEdXT54N7zpB2zm11JCujoCdrg+wwEqaZl4C/Q4iahE3IQ/TK
         r+bpZIUGCo82rzrf+rVqJEGyocm4Wa8pdwWqLcaWh5Gb6EV9IQv0048nH3ZuCk/AdqMt
         AqRLg9gLiyokDgDpCj9Eg/OenvBjgbtH32g6uzZF3ow/bFsWRqToGez7cOMi9MX/fTq6
         0PPg==
X-Forwarded-Encrypted: i=1; AJvYcCXecfuM89UDCVlGRLmzBBfSIDfa8f8YL6dqWwgz8ogP+gpNZ5ZcM04zs4vhjurTRzpcnR5v4/WLOYHFNzbg0VW6O9PS/OPkGy8q0/jZWL7ODdnmflWrOBiIBKES37WDvbs=
X-Gm-Message-State: AOJu0Yx5oNWoAhgoDuWYV0Ha62W/K771SUDwdjWszRTvu3nTIwTG3OcH
	hDcBxovyQtUYtlF80WnzGZWkYpz1GtLFfgC0UG7QurJRkapK9WAi
X-Google-Smtp-Source: AGHT+IF2vwVRlUEDBSBeuflhkTQ+YwQ2NismMUqaKfYjAzyBaHO80WiMuVfRMutSwRkCdEItCFNZQw==
X-Received: by 2002:a05:6512:3aa:b0:52c:e119:7f1 with SMTP id 2adb3069b0e04-52ea06a6be8mr4626204e87.51.1720212940945;
        Fri, 05 Jul 2024 13:55:40 -0700 (PDT)
Received: from [192.168.68.107] (194-118-229-123.hdsl.highway.telekom.at. [194.118.229.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a77db963ee4sm45425866b.154.2024.07.05.13.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jul 2024 13:55:38 -0700 (PDT)
Message-ID: <514395d7-a51b-45e5-9d49-f6797c63aa37@gmail.com>
Date: Fri, 5 Jul 2024 22:55:37 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: OpenPrinting News
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu
 <basu.aveek@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have posted the newest development of the last month on our website now.

Here we go:

https://openprinting.github.io/OpenPrinting-News-June-2024/

    Till
