Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B711AAE09
	for <printing-architecture@lists.linux-foundation.org>; Thu, 20 Jun 2024 11:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718881958; cv=none; b=fQl+QkV7YC5g4dB9sjdKhXNWvc4yOOecDyaOuhSnMKrcMvdO49hobHMFYqsjAjrK2Dpj0NyPdpuAMuFdpHKwmlDrI/27DSbpJxc+Vm1WCOyawZTXejP7Ni68HZ4d/ow8ZM/i9tkk2q3Bs8DfTo3FbWFOoZ96uYN/EO68Zr0ReQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718881958; c=relaxed/simple;
	bh=Cd7ZXQq3kVlnOlXP9YjvDcZQquYNu8TeAYWnPDeQCLA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=vCZvdKcegTs9EomaTnwxZJKHN+3jrCrMcMiDw5GAxrG74X2s+3EZzIkXW5JEqqaDrDuHnX+EHflCUlOlOjl/RwWgsv5weiAZhp3lXegffNj/UEKTJsSVmrgnRYdo6xnIuMKbs+u62GvV/+hrIaDjSKANprN+neozzJr4HLHxkGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fOfJKi2t; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fOfJKi2t"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73374402E4
	for <printing-architecture@lists.linux-foundation.org>; Thu, 20 Jun 2024 11:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cJU8Z0WCrnTd for <printing-architecture@lists.linux-foundation.org>;
 Thu, 20 Jun 2024 11:12:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::232; helo=mail-lj1-x232.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 04DEC40186
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04DEC40186
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=fOfJKi2t
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 04DEC40186
	for <printing-architecture@lists.linux-foundation.org>; Thu, 20 Jun 2024 11:12:35 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ec3c0dada3so8609361fa.0
        for <printing-architecture@lists.linux-foundation.org>; Thu, 20 Jun 2024 04:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718881952; x=1719486752; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D11V3dqCEBJFPlfJFyY9BtSEbiAG2Tt8ys/UnLiemnQ=;
        b=fOfJKi2tep3cdsoIYSfhgdlCfObQMcLtL8Mj73PdmpmH2/uhfMM8jGXcet9OcXZbMG
         cG3YbQrYnyKJf3JEo0qCnpamUIqmayQWmzqK3gPq4UrOq7mJ0WHajruq2JiIUfDKYZFY
         KJlvEq2Tr3J17ClACJkQN3jGfKL/QlWoJCx1NNqx5YIzbECG2pHdW4Buk38RzPNIMyim
         2nUqJxV7kwWM/8bbWMo1xhh9HV620u53TYWdy7M3rkYh8PN+JcvjJ0nbzyDWzLCT+1NW
         /HEhEnlpbdFQG8J6In3LpHjpI1MhyqU/eo6PM/wol/f0/GpMcxNJ4VVIN65Dv3rQOv1O
         VzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718881952; x=1719486752;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D11V3dqCEBJFPlfJFyY9BtSEbiAG2Tt8ys/UnLiemnQ=;
        b=DUb7lhx7vmyRzKtTO+AUsLb7CYxefmjpdUK7mmTAAYAToMZfsJNppIV0/8WvM3DUr7
         Ta6hLjEgBHupdg/dvvSxxZR7D7nF1mZ7conx2+aQW0Fx/m1VJU0F+M4e5qveJITRyIVa
         cYWaCHa+xBWDNNUDxZD4/Ky1EPXbEoXs2oAw3WWfbEzp6G3MmYi3bddF5kC1djt0g4F4
         IftvvwbbsUS/uyJfN/stUyw5xVBn8J+TgNphI3GrCcie5j5b+TKXtTOzq1pOHJOOMpSQ
         wBZQbXmbFsNwAHxQ97YA5Vejod8cRnomoIgC6+BSiqm59Lj8xZA6vyHsp5a2EjJJG6bd
         Ymmg==
X-Gm-Message-State: AOJu0YyjVsvnFYcZCog8gmnCl5bmUwEtBJXLsV5r2jMGfFKT5RDbspvu
	vYR9G7QamOp7JeDRRqqMhzZbNXscF4Toi57eTR09ebQBRN2wjKDSmdncJQ==
X-Google-Smtp-Source: AGHT+IEkMrCoyGXHumStiRH11ahFUAncmQfo8Uz0xdY8rhBcgPZ0CH/CD8LmLI6086QHfnVqsDCd0A==
X-Received: by 2002:a2e:7a05:0:b0:2ec:4221:4e07 with SMTP id 38308e7fff4ca-2ec42214f4emr26361901fa.48.1718881950283;
        Thu, 20 Jun 2024 04:12:30 -0700 (PDT)
Received: from [192.168.68.107] (194-118-229-123.hdsl.highway.telekom.at. [194.118.229.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb741e911sm9591902a12.78.2024.06.20.04.12.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 04:12:29 -0700 (PDT)
Message-ID: <8987891f-8629-40eb-9a59-bb98fb4ff0c3@gmail.com>
Date: Thu, 20 Jun 2024 13:12:28 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: Common Print Dialog Backends (CPDB) 2.0b6 release!
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 Zdenek Dohnal <zdohnal@redhat.com>, "jsmeix@suse.de" <jsmeix@suse.de>,
 Thorsten Alteholz <debian@alteholz.de>, Michael Sweet <msweet@msweet.org>,
 Sebastien Bacher <sebastien.bacher@canonical.com>,
 Ken VanDine <ken.vandine@canonical.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have done the 2.0b6 release of the Common Print Dialog Backends now!

This is mainly for snapping the CPDB CUPS backend, so that we can complete the 
fully snapped printing stack for Snap-only distros like Ubuntu Core Desktop, for 
providing the printing stack as Snaps in a future version of the standard 
Ubuntu, and perhaps even including the CUPS backend in the CUPS Snap so that 
they are always in sync.

In addition we have fixed a lot of crasher bugs since 2.0b5 and so all these 
fixes are now in a release.

And there are more improvements and fixes. See our release announcement:

https://openprinting.github.io/Common-Print-Dialog-Backends-Second-Generation-Sixth-Beta-Release/

Please make sure to update both cpdb-libs and cpdb-backend-cups. And check out 
the API changes in the announcement.

    Till
