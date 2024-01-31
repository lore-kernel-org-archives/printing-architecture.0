Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 955CDA29
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 01:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706663203; cv=none; b=Mflg0Yt9OJsK+THB/b8ZnT35CISXO5UsZ+L495pXOr1IbEFBex+qJ/yx87YQPzIOpEvyeSS+NCrD2lxUgHMYblZqHLkl53WSqmZyApj335i13kSvmMJfjXazz3FufvHvSDrXsC8wjTj53R90OGUikibko7oZdTmRzOoyy1s28hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706663203; c=relaxed/simple;
	bh=5FH/ZGwA0UcosYVh9TQhmpF9OtfjiQfUR3F6llFLilU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=tCJFCskx3iZ0SU7oWiepwPxdbM8BVyW/cFFmUZ1d0LifNDXTGTSsQUR1IqEdNUGrdd714M1PebpdPfxfouY3Rz6wP2cD0seX4Q44hPzzXB/BtU/OMic84jcocG2Z+rASmRpG3/elUuGZzdOg9m5jFFGzkEY2WNY9qy4ERmfT2LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dC49keo5; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dC49keo5"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E30B6140C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 01:06:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E30B6140C
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=dC49keo5
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoAO8sGRa5v3
	for <printing-architecture@lists.linux-foundation.org>;
	Wed, 31 Jan 2024 01:06:40 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D47D861403
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 01:06:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D47D861403
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40f033c2e30so10208785e9.0
        for <printing-architecture@lists.linux-foundation.org>; Tue, 30 Jan 2024 17:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706663198; x=1707267998; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJ0T+fezo3aU/US6pjUlZHIAAdSne41dDLnvab60TNw=;
        b=dC49keo5rtnRX7LofbOEVQFbcSCKG7SgYVs518Sm4c7T+ja93DBUS1lM/gTFLCUSgc
         DQc6DAGrAME5U/+78FRM1GU0etdsMkQRv6pPwFuat4A5WNe9ZA/0+s5x1GInLhF4Sk0e
         yjAeOT+qjoI9efprxkzaxDVNY9GsGZKMJO01yorD06nQZuaeA4U41em7mFnVOaTUvmXE
         pN2v6/J11Y8//pSuPHYGNJJexFMsMvlKcvdqdoozZooWk0r5nbXTiNrEDa2pGvT8LqIh
         rjBTdqPwuVp9faBuheu6sI7zyU/0EAVsu3EEyG8EQbMIrSkO0zbElQI8Yy+IESNOqgzp
         Jw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706663198; x=1707267998;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MJ0T+fezo3aU/US6pjUlZHIAAdSne41dDLnvab60TNw=;
        b=um8SBVqjTm9yMFjD+PGcOq2ePRNEmCrTv9CcozQ2wtY98fx/kPCkWKJD31CFjhGc77
         2TXXfidrwS51YtSeT+EiOrwXfMr/OF/Dbj+VFL7zXvK0MNoC3n96Jo2OIKIk6ojyDC96
         IgGFxoYG6pWF9IxURWCzxrYDD4rswcpPcD5W+huVKd/zfGQSJ7i2vviE8yPgHQDKzoEK
         EAgUcX6c2SAc6v5bTXet/n9LhMwhxhY9hoaHY7vAzC3lm7HE72FlKM8CtdBVB73IhnR7
         UjoK62I846m+HUXHSg6JLcj/v1XiEQOcYxkEiEqws0kPW4v5ZlPurAYQPFUEubAbzWcn
         EKlQ==
X-Gm-Message-State: AOJu0YxVubqICllde6U6GlyXKlTGYlIY4JQvYkhCwvy8sSBWIyi0LvAp
	0ok9t1A/gCSfeTYwLN3AiaQxpvEkkvY+wJ4aP9XETWR/lVar0FWrFCVV/AUW
X-Google-Smtp-Source: AGHT+IFeRa3tRluycGUyke89nPnGaggVJvCx6ZRuejA+ZaHZFWJZth1jk1VRngG6wEzCweTN8m4ngQ==
X-Received: by 2002:a05:600c:4f10:b0:40e:d316:8cb8 with SMTP id l16-20020a05600c4f1000b0040ed3168cb8mr106873wmq.27.1706663197677;
        Tue, 30 Jan 2024 17:06:37 -0800 (PST)
Received: from [192.168.68.106] (178-191-157-184.hdsl.highway.telekom.at. [178.191.157.184])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c198a00b0040f22171921sm29657wmq.3.2024.01.30.17.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 17:06:36 -0800 (PST)
Message-ID: <a67e5de1-7e56-47cd-99c3-b4cd7e471c3d@gmail.com>
Date: Wed, 31 Jan 2024 02:06:36 +0100
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

https://openprinting.github.io/OpenPrinting-News-January-2024/

    Till
