Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2C818D
	for <printing-architecture@lists.linux-foundation.org>; Sun, 15 Sep 2024 00:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726359049; cv=none; b=BkRXT7EopE7evwWJoV5UGJi0GbBGqGkTit7QC5HQeq4RcrqPWIGmUxnWmfEQfPLPIQ70c4ev43TTiBGpTEvIVwtJzUVmuZb6rAcSxu0QcYiKuLhKdAJsNaclBBP41uC8Tw3lED1RA0T/SGLXFTL29n3fTX/lYm2H8m1jVYNRaWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726359049; c=relaxed/simple;
	bh=RUNMLJDTc+WvW0iUTXSb1LdjEPdlV7EdEDbCIupmdkM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=UG6y7H9b2pO5I4K674FqzHcJT2YsAvg3sVny6i6C3UegLragCZvc23Z64nQosaLxINfgUQuGHh+Lr9r3hryRqlXnc4onlTzEucECdZV+ZseJpiV1ECQWgtwfIFPkpuI6tZo+FIrnc0EAMS959a/B+VKH9vg6LHhLID2nMNmFeKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WTDEcVZD; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WTDEcVZD"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 845D6841BB
	for <printing-architecture@lists.linux-foundation.org>; Sun, 15 Sep 2024 00:10:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kYlFRBz0SZdd for <printing-architecture@lists.linux-foundation.org>;
 Sun, 15 Sep 2024 00:10:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52e; helo=mail-ed1-x52e.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 641B384188
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 641B384188
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=WTDEcVZD
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 641B384188
	for <printing-architecture@lists.linux-foundation.org>; Sun, 15 Sep 2024 00:10:46 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5c40942358eso1660845a12.1
        for <printing-architecture@lists.linux-foundation.org>; Sat, 14 Sep 2024 17:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726359044; x=1726963844; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKfTptG0jhXiatup/4kdONnvl72IfKUCpnzihhE44JA=;
        b=WTDEcVZD2xDIbXshobo5/0Nbp0cifA5v+u33dl2wkYNTzdZelXaPaoVP3NTkQ/LqNQ
         S8hArAnenftzDs4Bb2s9xk9ztmSSBohdwaDhAd9nsBOkG9PcH6lVbYPtdUiSd/4AX5lW
         T+DJUbBgPFndD0ihI3fEDzHjnD+WXcGh02npitQlREnLJ7SjODy2b0REkbfG8C93fnGj
         xuAAHKnLRFw+IexwikI4nObS1m1IIHrGg8T+oOAMYoBA/K2pVRQr9YB28au6QOkNYhir
         ILhj/Zi3dwBJYKwkv5lX83EtOxakTZ8Lq/ZIgshIS56ZS/RRrjhLoNQ58UC9mDBJ/xP4
         OGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726359044; x=1726963844;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SKfTptG0jhXiatup/4kdONnvl72IfKUCpnzihhE44JA=;
        b=YNJaxCv8a54pKt06XG5W7cHZ25iWs5y+j4az0dpKKKAZ3F0cEKNpk3k4H2WfkYH7Y5
         AcD+HpidsqvfvOoH+mcqj7M0bPdId/fkZTyX6EudyTafPeiwoQkDehUfyI+rUIsofNzo
         0GMA8mtb9QlGP4Y7VWBP6Q9NA4rhQ8JMrZfq2kJOibCkh0Z+ivS5bO4rcLCk00DcCrwz
         dVfHlqq742Hb5Mb/tejoVzjGY35P2gfAd53DZpqjinB24e70sBv5J8OUVitaY8Y22nDh
         /6Y3Eayah2lyzDZgMTwVD2oWrhJtEm4V9fvHTzQSqBnfI4oKU6kuNKc7kUvDb8Ic6Lhg
         VMxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7L24T1RXCFD8t741Hea0XvfIYLnJkP4bKDueprIiV0qd3r2NXXY7TuEBRer47MRZYbBTVAE9bBIZxpdMarp0t8ru7rMs=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YyoqDEzT64PnVxYxpuXYfMG6EJdVlfEx8694zn7amr3YAZCOhTh
	LvXpRlMTDeFRML80BsRvKA0r4eu7MdV9iUdEzr+BbVF613pGJLpL
X-Google-Smtp-Source: AGHT+IFA4a3f/ymf+eXjkAPM9uUe5nSLC7E2rbW/bkuzBExeAfdq+AtXuh28b5npih6CtATEIDUmGA==
X-Received: by 2002:a05:6402:26cd:b0:5c4:12ce:eb78 with SMTP id 4fb4d7f45d1cf-5c412ceec73mr11321113a12.4.1726359043777;
        Sat, 14 Sep 2024 17:10:43 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c42bc89048sm1114907a12.88.2024.09.14.17.10.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Sep 2024 17:10:42 -0700 (PDT)
Message-ID: <7c664fd0-24f9-4d62-820d-87453fa41cdb@gmail.com>
Date: Sun, 15 Sep 2024 02:10:41 +0200
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

https://openprinting.github.io/OpenPrinting-News-August-2024/

    Till
