Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8873510A3D
	for <printing-architecture@lists.linux-foundation.org>; Sun,  2 Jun 2024 10:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717325180; cv=none; b=QiP8mMkUeKPukW+Ix+j791kX64aC4ibLZQhWLwLrEyd8qIijprsGenyhDQePrbCiq5wbAp3Bfgm7PFvUydP9lQ7TxRTKDiEeZlzXlfPBU9RkkY2y/9NcYjZdZFU5UAf2f3UMIsXD/YVg+sZYTXLLcI5EBX3n+zr0NZPL1x129OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717325180; c=relaxed/simple;
	bh=g97x7duRshOW/W4GbwMOi9k4EqsS0eDhqKOrjMIYFm0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=XtwoZq1X6Cvdc2ku3b60bqQkXUI9eYlhbKIBMJxsKFmNKohZofSpJBsM9NAyydDZ37uNp9visi/J0RLl9YUKriI3lekbBxKqzTEexuYTQqVxwyyge6Ut3cpvG+gMnk9BARdMAyJAzlTan/xenxObB8AX++BSu8DpdEA6cWg4aic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QoLVf8UE; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QoLVf8UE"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ACD384455
	for <printing-architecture@lists.linux-foundation.org>; Sun,  2 Jun 2024 10:46:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fm_HicVxEp4O for <printing-architecture@lists.linux-foundation.org>;
 Sun,  2 Jun 2024 10:46:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::533; helo=mail-ed1-x533.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BFDD843F3
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BFDD843F3
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=QoLVf8UE
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0BFDD843F3
	for <printing-architecture@lists.linux-foundation.org>; Sun,  2 Jun 2024 10:46:17 +0000 (UTC)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-57a4ea8058bso896570a12.1
        for <printing-architecture@lists.linux-foundation.org>; Sun, 02 Jun 2024 03:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717325176; x=1717929976; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VOyk/h08YFqMoojNeaUTByKIgx1L1o0IShB1a0fWCpw=;
        b=QoLVf8UEoFADqi4OIsEGTJqI2SP1BYR3dGaOJS/4aoyksk97nfwd2Z1ISdY4dWGgmA
         CJikaQInBbXg2ucecu4KUR1QyLz4KTeKibbRuNandStVCsB7bVfxI4tULAh3ixY28OnO
         ckS4JvTF/T2L0D+dwaJvJOnb7lOGnBVAD5Yz/1diNfY1nMLzhKhSCUP38hFIMoEfBa0v
         vx/I8V3R0wG7ldf4Un4GkVW35h86ZrA02AKc/dsENfaOzuxTHUyOOrbi/dE4qk67MMim
         oSDffgUhdD/cd6DF7RtsDsuwRdKgJaH9oBL7V16WJiNZMjFJ1xL3TwdiTO9Ve7ng0XcP
         HXuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717325176; x=1717929976;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VOyk/h08YFqMoojNeaUTByKIgx1L1o0IShB1a0fWCpw=;
        b=hrcxBGyoacdRgyrweyPXrBLBWnHLNkUlsctJr58DvChQipNXGpzirCSPrKvR4UBYKw
         XYRSKwvtDw5Wk0O20kAst1fBwbn0vzQN+Ji57Zv+HftMgGeTRyU61YSLufv+sqxNfgNj
         k31sUwrp4OWV+OXkbhqQDlHU7AC3D+Z63OvLl3gIIAbCs2lMlYGUYWrj+/ONXi5SpSm8
         RWPL5TJ0uCwWmw/1d51VG++Pc4CM+D9VaMeUUk1BhEOFyraDKt+nVw6bIwTVkT27sxu9
         NmYCs6oSsPWpF/zsKum1MwyJpA1S1hRak/sxAPddQoKaibcqU04oX2PSYKSOFzq0a/FJ
         zqKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcqU+dNA/Q59bI8di/Y3SnliUe7qrJ04XwU+DPlQwNkBxdCZ3a/8Ol/55pMBERImQZd6u2j3pl09xmvYNx7Nj2Gzy3Q2dOKr9Tk5f4+ysWgkT3TjL5G782TGJVpubPs+A=
X-Gm-Message-State: AOJu0YxEoo8FnBbkwMWdl8LJ0mNnaggZp02nbrtsvSuWiCkNaXWSZIu2
	wBg6bXp/FtbRvVx+5a2pMG/qi0OLkbe/METg4DzNbfTEjm2HVWAItOEYrg==
X-Google-Smtp-Source: AGHT+IGTV+gU2+DDzvA39CU9gPt4GiIwqp9HzWnwj0yi5SLuYQeBygrqZL3onKCNKO5SLQYRtJXKOg==
X-Received: by 2002:a50:d794:0:b0:578:676e:324 with SMTP id 4fb4d7f45d1cf-57a36393dc7mr3674230a12.17.1717325175463;
        Sun, 02 Jun 2024 03:46:15 -0700 (PDT)
Received: from [192.168.68.107] (192-164-134-179.hdsl.highway.telekom.at. [192.164.134.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d40dsm3556059a12.75.2024.06.02.03.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Jun 2024 03:46:14 -0700 (PDT)
Message-ID: <6340faa8-f8b7-4cf0-a313-cdc8ddb0362d@gmail.com>
Date: Sun, 2 Jun 2024 12:46:13 +0200
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

https://openprinting.github.io/OpenPrinting-News-May-2024/

    Till
