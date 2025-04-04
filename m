Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE1318BC3F
	for <printing-architecture@lists.linux.dev>; Fri,  4 Apr 2025 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743763115; cv=none; b=LgZvLJaZ6VVv3x7uwHDcUgOr4hoMnfItpchEwsIe8cHiDKn5Lck+Td6z7Fogkpy3EVs2bWp5wcXl1jZS0F9BFIeAO5qzFiTVkk/yh+tKOprwnw3IkFWQV+L3YU/e6s3BvZA4TBpSptoxBmiVXFk3ifN0XdnstnHfJW3sDR2wsS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743763115; c=relaxed/simple;
	bh=e/vjhF98KQiFmc0KBT9fHeS8RW+Y2G8xYeabR0We3tY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vu1hythbgmCD30hER+NfGhmR8Qc5fX0T2xA/JjlkT6Afiv4sneSbDKzKe+u4HQ4PC+f53dLQ6/2pzKWdqF4saA5r/sBkWwJFjt/lscaO9nVBeBebCSCnRbOgfBeqL9vg4K7cQnMH+yBDRoBdEo/i2yb2o+rFUg2aAo88RHU2SbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YjyQosmf; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YjyQosmf"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so18327165e9.2
        for <printing-architecture@lists.linux.dev>; Fri, 04 Apr 2025 03:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743763111; x=1744367911; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z54eMNcOoGHBjIwnM+VRBSfXP4LPnWvnk3ABL5qxAsw=;
        b=YjyQosmfOzELIcyMSovarakDQEzncU82KwH9zkCIgHN1t+pzsQN2XpryLxZmOqkfAX
         sVA/JFx/NVAcWPF7/bymU+PIvZfjYRYyMgtb1n1jXhAxAhBIgW5hrS523vn8hGYQBxyy
         7NBp0fvhZ+riawbgAXZuikJq9ur4c+IxSsUT/MwFZj91p7khUA/8XA3aycJTLlcP00H+
         I5RrdywXgHFN+adjEMLiuthYn2P/X2Z5GGxav0Hwc4uqpnHx2CUb7D7Q7Ro1VZN/fdwb
         WFkTaUj1qMkGONJLOThcrvHuKqNyYws5Og0K/kxBqIWVfKBEGbxj6RinBwaF6GbDEKvw
         BaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743763111; x=1744367911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z54eMNcOoGHBjIwnM+VRBSfXP4LPnWvnk3ABL5qxAsw=;
        b=Ek6YBrLxO9YDjLpTFBAW3Rfyk5XhtV5dKbJbCZTWpHhUCaeN5H4Bw9vz1fGvGpAJzG
         5+5d6bMmb4pG4Bb4JOEQoxxv7Xgw4P4dfOHUsxk2A9JX2BhxDDvYbBpvWlhxEtHHVkjf
         Cw8k+lmrtfTJ+3L3wb9EjNsI/+hy0g/WIo362+jwDfbS4R8iTtDSQxRbP9IOHR56f0HN
         /uyVTJVpP4Qv1ZnCZJRr7kQ9UQV9SUrxckAELz25Vlc1c0/e0Jqk7w8NynfXph/BnPX8
         2CkefMhn8PvmpNeYLElJAEPL5aI5Nt5REizzvZQLqH1VzybLNOD/33+5b0/DOPlVTvec
         lLDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdNXfpxBhz3gxPmn0G8F3yQAESS+vcJyddg7VzEVnnaXLrYFiNeUAQqNTcfrvU2G9xyqdlz5suKRT2Cu4I8+Rc6i/T4eI=@lists.linux.dev
X-Gm-Message-State: AOJu0Yx+34ahRCY+vIP/9gqzZFUzEEhZA5bx39Sv/UryIbaS9tt2423q
	8Jomg9PkGTMSaJsWWX/8aAdZDrSDbPqIrXTG4ha8gc29ZUTFNU9AQUnFow==
X-Gm-Gg: ASbGncuUf7I84RTUsukrbIxi0DFveM0hipo7AQtLIBnxQrVdLUMWVh7yPrjH3UwDSKC
	PvY9oiC/TQuGJlXOLcE+XtBbILTGbLNHSZ63U5ZUm79ZifRjpM+7oj703d9KV/sPO1SrO2z2GkN
	x9ncOdnEHX3X6WIrnEOY782UzHTIngVkiidzPnzy5fgCVRcc9ixapkNt+IH1oPSrSI3NNExc3LN
	dy1zRLZEfKjzCSgUZwFX8t8MilA8UVcbGHUmVpZ9Fbad9Q+Jzy9GCknOeKGIKyxD/LFfxM8mFmk
	Xyhfog9Hla05gdZKSPSQXdhvhpeswBccw9kaqlR3mTtikfjTHbQ0JL7E6HZROYsfJVAFtzqGFWA
	nJ0A6BK1FXNI9zZItIp4=
X-Google-Smtp-Source: AGHT+IFG3PwBbCAAD033U+5tnrzvBGLkgynloEPZ4qr6z51NZWe+BL7QO+xLFl1BtrKnJ9F0M+N6UA==
X-Received: by 2002:a05:600c:698c:b0:43c:fa0e:471a with SMTP id 5b1f17b1804b1-43ed6615862mr13583735e9.5.1743763111397;
        Fri, 04 Apr 2025 03:38:31 -0700 (PDT)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30096964sm4052888f8f.15.2025.04.04.03.38.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 03:38:30 -0700 (PDT)
Message-ID: <1bbbcc6f-56af-414c-951e-e22d39328b61@gmail.com>
Date: Fri, 4 Apr 2025 12:38:29 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Migrating PyCups to Python CFFI for libcups 3.x
To: Zdenek Dohnal <zdohnal@redhat.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Cc: Johannes Meixner <jsmeix@suse.de>, Thorsten Alteholz
 <debian@alteholz.de>,
 printing-architecture <printing-architecture@lists.linux.dev>
References: <195f6c36bda.7bed295d81707.2073846750099631163@zohomail.in>
 <b917b1cb-013a-4fe2-ac4a-c3d4b37f0c00@redhat.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <b917b1cb-013a-4fe2-ac4a-c3d4b37f0c00@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/3/25 10:52, Zdenek Dohnal wrote:
> Sounds good! cffi is present at least in Centos, so I don't have a dependency 
> issue - I'm not sure about other maintainers (added Johannes and Thorsten I know 
> of).
> 

It is also in Ubuntu in Main (package python3-cffi, upstream version 1.17.1), so 
no problem using it.

> What we have to make sure (based on the example) that path to .so file is not 
> hardcoded, but configurable during setup.
> 
> Thank you for working on this!
> 
> 
> P.S. I see two mails in the list with almost the same content - is there a 
> difference?
> 

Zdenek, Soumyadeep has posted it to the list twice because the first version got 
rejected. So in the list it is only once (I checked the archives). You see it 
twice because you got explicitly CCed.

    Till

