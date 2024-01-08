Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8417F
	for <printing-architecture@lists.linux.dev>; Mon,  8 Jan 2024 00:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QTWG3yTd"
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-78106c385a1so170781085a.0
        for <printing-architecture@lists.linux.dev>; Sun, 07 Jan 2024 16:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704674614; x=1705279414; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qFQrOVdS4qPD49ep28Tx+M2qx87n72UoofnLLpAmJCs=;
        b=QTWG3yTdN0YjYYyIcsopJc1SIzda8zb1eO0DqDVf4Im1zZwqCWTx1HKvfs0/qcUtsA
         gIKJsB+BXkAXWnUBaEqmoA7CJVawnn+japj9nvlfOddy82XGBjoANHXqN6YGZIV4RBJV
         6OlkRHHLyWtJWLKeyxRmlQO3DW2bp6rLKfxq/q+VVPLAAsSsfDI956YC0wTTmjSgT8/b
         37NM58CDsAgQk5twtuZe+oak0aMgX6621ev7KPe0gmlQpXfo+xG06n4dnN7vx5Eclu4L
         rOp8ILmGn5DmT26aL3ilSFQppj49vLCwwQ0FE5I8kCRVl9hIlH7fM2/KbmtnJxTQZa+e
         u6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704674614; x=1705279414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qFQrOVdS4qPD49ep28Tx+M2qx87n72UoofnLLpAmJCs=;
        b=g4K2WnQYgP/s7wvHMZt2j/P2wzWJx7Zqauvrt6XdDYV6thSQyyelJR0g7wHBVO4oqd
         wfx35gzALo2KWiPeGoAHYTAfjI3xDV5LI3q8ziHIF4V5cBvuCXVrnmEhpn7LEE08x/JV
         IHmSjBDQ/Z1411q0xjVzBeJWICIJjxB+28x40QaTYHjBMIp8nUy4aSCYLck8sbTDtwY+
         3ZXeE5IauHqkzeX98d0wITsm/y11ykOgcO8zmDyKHLnhpUDCLJlVXzptSdJvWc23Z0sI
         AlopeQ0hy8wdTifCduutdDM3eYztKY91YKHLWxK1Hrgr7dfg/dawGRXeJZWTXJylRx6Q
         2E5g==
X-Gm-Message-State: AOJu0YwMUEkfdOYiSd01PzRFRKXSBOy3XRrdzy+mFK6BQMviKdDywpzt
	KLWRTZsf7AwD01X5C0bW2xM=
X-Google-Smtp-Source: AGHT+IFzwbuHjG6GWK+k/SuUi/aO2GeV3yRhV//OE9u1jMizB4X1yv/sglsxLh9BDbUYa2MJl5uHnw==
X-Received: by 2002:a05:620a:40d6:b0:781:60c8:58ce with SMTP id g22-20020a05620a40d600b0078160c858cemr5020168qko.74.1704674613810;
        Sun, 07 Jan 2024 16:43:33 -0800 (PST)
Received: from [192.168.1.2] ([104.238.233.107])
        by smtp.gmail.com with ESMTPSA id f10-20020ab06f8a000000b007cc331718fbsm772037uav.3.2024.01.07.16.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jan 2024 16:43:33 -0800 (PST)
Message-ID: <cea831e8-c065-4735-b08c-100a8f48dd0d@gmail.com>
Date: Sun, 7 Jan 2024 20:43:00 -0400
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: CUPS Trademark
Content-Language: en-US
To: Michael Sweet <msweet@msweet.org>,
 Till Kamppeter <till.kamppeter@gmail.com>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>
References: <cbcc39b7-079d-4e5d-bd4a-f3e29e03f8b2@gmail.com>
 <d56a41c6-5839-4936-b908-3297ed6728df@gmail.com>
 <18600D0E-3F40-4887-8337-B2A5EDAE3C08@msweet.org>
From: =?UTF-8?Q?Jorge_F=C3=A1bregas?= <jorge.fabregas@gmail.com>
In-Reply-To: <18600D0E-3F40-4887-8337-B2A5EDAE3C08@msweet.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/24 8:20 PM, Michael Sweet wrote:
> Apple never went through the process to register the CUPS trademark.  
> When my previous company had tried doing a trademark on the old acronym 
> (Common UNIX Printing System) and had it kicked back because of the 
> "UNIX" in the name.  So we've only ever had the unregistered trademark 
> protecting the "CUPS" name.
> 
> So WRT the OpenPrinting CUPS name, it is totally OK.

Thanks Michael. Interesting! It all turned out much simpler than I
thought :)

Thank you Till as well for connecting me and for the YouTube video (I'll
watch it).

Best regards!

-- 
Jorge


