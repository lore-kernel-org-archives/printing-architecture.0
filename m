Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AE44C66
	for <printing-architecture@lists.linuxfoundation.org>; Tue, 30 Jan 2024 12:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706616923; cv=none; b=AGwyiVdTg3s/3QemptUnkE99/OJTK1+VOdZPqMWm5QcRRZwAznIz6sjVeEDopyEXuxIrJ3w3MhvG/joPRlOvvE0ig7Un+g6XKp6jB6B122j+vsFuM7GBg4QTX9jHCNDp11fES8RlnGi/eIyCtLkUYqvkSP5bs4DQuoewDL4O+vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706616923; c=relaxed/simple;
	bh=UwNKwHMTQkaELRwKZzQfbHl6eSq8lPJEFwByODqYvc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=AtiGqpq3/5mTOesmQaxQHR6ic1UeHi+pfeooTMeVHpR6bATeqOLTwraL6XmjL3Ztk/c6G/ZFqgTp3pIH/Erxpo6KOD/5JifBfy+ljKGTqOo2w8cBAZOUhHzlOeFZLeyeSY6Dv7GhcO1AJqomqfndgjpRX9306q4xDOW4cwSWyMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WtLK4H8L; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WtLK4H8L"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8940882237
	for <printing-architecture@lists.linuxfoundation.org>; Tue, 30 Jan 2024 12:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8940882237
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=WtLK4H8L
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zmurs7lJ6H2h
	for <printing-architecture@lists.linuxfoundation.org>;
	Tue, 30 Jan 2024 12:15:21 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D602E8208F
	for <printing-architecture@lists.linuxfoundation.org>; Tue, 30 Jan 2024 12:15:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D602E8208F
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40fafced20aso1304775e9.0
        for <printing-architecture@lists.linuxfoundation.org>; Tue, 30 Jan 2024 04:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706616919; x=1707221719; darn=lists.linuxfoundation.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XJrimWrc0fSADUO1d7CFDJkTyxSrORLeEC5ELojKmag=;
        b=WtLK4H8LVNjnZwpXaCev4tUg63rvNOkQDUHBfImW1uCueSfYEeSUSizwmU5cwQaRFf
         vLU/1f2AKS9iGiKYcpHBHc1cfYUDnrw2UwRjU13Qcofu5UTKP3jCWORivnLrYAJ7x2++
         bu3lsxvlQGIUrfDri5MOi31band+dpG/aNDBsI6fq5vSO9euewbxCOt6ltlsBuXzK8Fp
         0BNT64yWGjuZzVuJWhhi1tQCfIWasUFnnSRRh4gxx5tF//Ld6WqCXmSwa6WtxKw303I8
         p8y9JEBx3o+729nGi+eWuJ20eBdekHVv5xn1qmB+EgWfA3d7tvxPPFyVOJUjX4BunC9/
         HRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706616919; x=1707221719;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XJrimWrc0fSADUO1d7CFDJkTyxSrORLeEC5ELojKmag=;
        b=sWB0TyrDvbV5CcEz0dktk9ExnNmFm4lxKuFprQDzHOQIojsduYkjvYOnJTjgYZHjYP
         wK5vP+7f28NateJdNxL8kuSdpLY7aVyTKKlEHc6W66CveIP91N45GsqAUrnwivvY7k9V
         cwPbEc/ZXKuF1/o6+aS5s3iaLvnjrLhrbPQex8+JEOV51StSG3ecCm3bwlC0K1uCxwv8
         iaHI55XncN5NI9Hitd065VIq3UP6s/VbHPe7X18Ry6Yr7t+0xYilQFkP9a5uwe4VvvAL
         vOrTkmEvBUjkWnsJgvlNJlr4jvz506LjMtBNH5vTNyIbpVlfDL2JgZN5HogirjUIMUDc
         Zagw==
X-Gm-Message-State: AOJu0Yxor6DiYwveAF7E9VnKODT6HqwvsxgiBBRfV1l3oubIrL/8iR1n
	dCgko30AXWmRq2PvdL25hmvmS9zqxlhd0EvFHONHBnVJZBl09qHv
X-Google-Smtp-Source: AGHT+IHik/dHjVk1OUHZHcfrn4UEb2iIlEO45sYBkuS+sv0+qklHC+Pu7ksPMWRVljtOvsflUvLwSQ==
X-Received: by 2002:a05:600c:4507:b0:40e:f632:723d with SMTP id t7-20020a05600c450700b0040ef632723dmr5282569wmo.16.1706616918486;
        Tue, 30 Jan 2024 04:15:18 -0800 (PST)
Received: from [192.168.68.106] (178-191-157-184.hdsl.highway.telekom.at. [178.191.157.184])
        by smtp.gmail.com with ESMTPSA id o4-20020a05600c510400b0040ef7186b7esm5772695wms.29.2024.01.30.04.15.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 04:15:18 -0800 (PST)
Message-ID: <756eae59-6faf-461d-b8cd-8c56fbc5a999@gmail.com>
Date: Tue, 30 Jan 2024 13:15:17 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Change: Joint PWG/OP Summit in May 2024 will be Virtual!
Content-Language: en-US
To: Ira McDonald <blueroofmusic@gmail.com>,
 printing-architecture@lists.linuxfoundation.org,
 Aveek Basu <basu.aveek@gmail.com>, Zdenek Dohnal <zdohnal@redhat.com>,
 Danny Brennan <mdannyb11@gmail.com>, Jeremy Leber
 <jeremy.leber@lexmark.com>,
 "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>
References: <CAN40gSu8xPrmCeGQvaqKxATo7BB75kn3neAzOXiE5vnw_GhSXg@mail.gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CAN40gSu8xPrmCeGQvaqKxATo7BB75kn3neAzOXiE5vnw_GhSXg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

One question: Who were the 3 who have answered to be able to travel?

    Till

On 29/01/2024 23:21, Ira McDonald wrote:
> Hi,
> 
> PWG Steering Committee decided today to shift to Virtual because only 3 
> people were able to travel to Lexington.
> 
> Cheers,
> - Ira
