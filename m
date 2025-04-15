Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D121422AB
	for <printing-architecture@lists.linux-foundation.org>; Tue, 15 Apr 2025 17:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744738723; cv=none; b=GKY9qxtOfFVleiPX+5ei7P+n1x0NQ7oiqCog3KrIpuAyNbWIhp2Mv4u+fax5TlFkycEvdAcr96fSmkYsez4W4CPtWB2aTyUmPISQoBM0C3YvT2xlhjXfScfY15JCu1FdkbC0TLLX5/EFzukx1rzMJLaMZja7g/jetP59+6ENqLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744738723; c=relaxed/simple;
	bh=nP1+qkCv3lqhUvhNxrIDDS9ozfz1iywtgA7UCPy0+IU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=Nkgt0fIN3Hax7BngbWhhQ/eH7dcpFcbTNb1Q5Qa6NLDL+quJA5pfkcLHCftSxPmVXAbV5v4l/FDVgUrJdv1kCokgbNeRPbjDrlAKf1bYCJ58EHB1Izq8/p7nM+0aE/wvl+xPXsL7+crTbd70OjYDVtXsNtoyqBXGSUpdro+Me2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=BpeJOjsK; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="BpeJOjsK"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B966D40664
	for <printing-architecture@lists.linux-foundation.org>; Tue, 15 Apr 2025 17:38:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2fjZrvOqWJQ3 for <printing-architecture@lists.linux-foundation.org>;
 Tue, 15 Apr 2025 17:38:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::129; helo=mail-lf1-x129.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2BE51410DC
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BE51410DC
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=BpeJOjsK
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 2BE51410DC
	for <printing-architecture@lists.linux-foundation.org>; Tue, 15 Apr 2025 17:38:37 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-54afb5fcebaso7355604e87.3
        for <printing-architecture@lists.linux-foundation.org>; Tue, 15 Apr 2025 10:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1744738715; x=1745343515; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XRIW9Xmn9T8XWfnyxSF+F4fU7MQClwyH6qo8L5Ui858=;
        b=BpeJOjsKj8xD5ZPyAtCFPl1GLdTvrhoqHCNzyp1JscS4TGUivpc8S1ZaD6dX9odaS/
         w0UzOmhiQXUoK/TEErJMUq4EenxzlXV+YYUZ/n0TaKKQ64TbU75Wbk/OUHrX4gXBJpC0
         r7h57WBSswTH1ZFwfUPyag/TxvqG7TLX0As4Aazfndpxt/rE61IfjBxA5A5K2ABSLfWV
         U0tV8XACM9vhl4eg2NZ66OC733OGINF7Mj0NooYAoZkLvHcjKIIDV023mk5N36aM4xCs
         Gy1UI1ATAPOHA3Dtc5QDi5ufjCLU9qLLeGWr4yfynPG+rzptQFn8f+K9J8YwFpZUd8xI
         oR3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744738715; x=1745343515;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XRIW9Xmn9T8XWfnyxSF+F4fU7MQClwyH6qo8L5Ui858=;
        b=ZYgLW95XqkZdE68oaUt6bc4AJfgHGIVsGcNEUVpPbEzHDSekE4mXQePGkD7jGdEGUd
         7NoY9Bk9fuipJX89WeK+54pwik0gez8WMmA5cfslD25smbqPH82ecd5ntMZy942bMgX3
         w00n6URXpdSER7BWXQ2c+wi8Y1ywySq+1xdcVzUdlASl7Z1nAa7UcaCo4cyfZ7UUgm0l
         4hlVrOpqLgiUAyLFS9r9+NBJa21wt25mvpH1Rp3ugsYPTb1JE/FUoXsUhNurlf1luAMF
         ww+8e9NGw4pJcGQeOWfso9yYbfxWWsBb/1/KmWhaW13Unjmgs0/sUlPTQCPmXBo/rY6L
         iZww==
X-Forwarded-Encrypted: i=1; AJvYcCUckNouATAfrZ3d4o0plWTeJEyU11/nR+kjwcJN/8Ql80tYm/G7UX5zGnPb9QQoRsRJUnw0G3g15sCNQl3zE7Segoz0ss4=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YzX2OhpdDBxDkWWmzZgrncwuIfr1iaDkrFuy9PcIROHYkgaZZW3
	6K+CPOSF2x8dVGkSno/hf5+GfG9kOxbAfQEmrc+JYppzRsBL5fa9wIxKBfI+Mug=
X-Gm-Gg: ASbGncuyJEMujJUiwQ5HngwBOaZ+apE0aASYjHyDl6gpxhSyMTlW3Y0VA09BpOb1+fU
	7Q+Kb2E5pQVn1ljJlD0nusuGPRhCW01m8rV0WyvPMeahoG9zL86GQZaI9bWF5nuBTzzPzmPmumx
	MTzUk6E+3g4S7DJqn3edIlNSeiFdQ7n2piM/VGKkaW9Z+Q2joeVVbqneJTWgflGFwKsnI/4odJQ
	xw7tZ+0nZj/IrOdMm4nwrkbezx2qFq1gu8MmiTcaLfnBAKVnc5opNlJ41VBBD42Wd7nSUU6CInt
	ktQdCYEtGN/LOUvYsF+AAB0mEsHQ6NqSSQ==
X-Google-Smtp-Source: AGHT+IGMz4B97vgT6SjWA9Z3bohnDRTz1br5hpfjRz3It+E2L0hEwJZvOPX310hQ5KqJsf5h85lEdw==
X-Received: by 2002:a05:6512:2213:b0:54b:1055:f4c0 with SMTP id 2adb3069b0e04-54d4528cf5bmr5073081e87.4.1744738714700;
        Tue, 15 Apr 2025 10:38:34 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-54d3d2379ddsm1483675e87.63.2025.04.15.10.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 10:38:34 -0700 (PDT)
Message-ID: <d1482dbb-bc62-474b-8f75-de787e7db0ec@apevzner.com>
Date: Tue, 15 Apr 2025 20:38:33 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: sane-devel@alioth-lists.debian.net,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: sane-airscan 0.99.34
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

sane-airscan version 0.99.34 is now available. This release adds quirks, 
specific for Xerox B205/B215 and solves many problems with these devices:

   - unstable eSCL scanning if device has entered the powersave state
   - VERY unstable eSCL scanning via ipp-usb
   - workaround for the broken IPv6 support on device

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

