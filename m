Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B41290F
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 15:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734881587; cv=none; b=oNhDTGowiz/67RiIDukXNBRDrhP+OAbjyIvSRdn76+GV1VPcOB5382T70jOQJycX2X8KM/pDFq0YrUbmfGokX4Gn+Th9LRpdBYAAD7HT4iWohzN4as50oDneipGB/dh/oWeJ0R3h/30zyspwmP8OBNpUQajhwPu8cy5PTicQ51o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734881587; c=relaxed/simple;
	bh=b+kiwblVFPWWqsCipOK2xmkygjvHd5Ip164qP/DtHVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z+Vzpf6/J4so+sM0rdj0tQONtzUeTSlqggDzzS7kK1HxVm3Zi61gPVO3XrwBMsIiTYqm6PJWqctP7YAVM4rqoDPs20VOcuF61MlM3kG6QlTUekCHqurQVCcipmoEb+ZMfpjKVBO85PjdT6r5W/CKw0x+mH1aDhEUPUebkepVsLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BXSRBMaJ; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BXSRBMaJ"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aa66ead88b3so646289666b.0
        for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 07:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734881583; x=1735486383; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DjlJeZ76YeiWdc7B6DY+VhIf7jPi83kq05rAAE/3h6k=;
        b=BXSRBMaJ/JQgm0LpZfwWvxz0ntz2ktILRJjVB5Gf9iLDnbM+Qxk7ZGyH4OSE7QYljf
         uzvlIv5wnuay+e6h10S0230MFSuxYrcxPgazSYh3qYO5qAKqZNwmGoSIioM9UAvB/wfU
         +L7l2kt/oKx1q7MATF/Dz+rCsJu0hh/RVvVQnjzviUbSMCOGgNCswBSrKYH9/PmNkCu5
         WJO6YEf58cYDTw3YCdSeNoVSOBuaneWYolngkr/0KKqqOb7NOgssqLUBHL4uYmM03+SW
         KTPlWMXfraquqbAeETLlGXqeA8BswcGPWn42TzNjgoucIHFC8e5Gd1uHAHqvzVsZdCsC
         QL8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734881583; x=1735486383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjlJeZ76YeiWdc7B6DY+VhIf7jPi83kq05rAAE/3h6k=;
        b=GB2gRFoWri6ZPhuJpP22FXhYJOsgnWvtTB/hEcx2kqfziv/k2E6BlDHWVaMYEpSN+F
         nNW7f4eQyLLQTpcV4t7CRvicUvPTwS57Ba4momIInI/t1uV4+3YRGJGRs391ROHOYvQO
         XbXFv/MDkLd7CNdqDgeTkg2MQ1KQmC6TZ6kqhnSQaLy2a44yIZoGIsg3HHuL3horlQaS
         KHNTi2XqShjDGeUgfk2b2bNeaNBJsGylsnV9NZf2qtaiwS62aycbBTnZhFsWMTKcIZ8B
         29UQfk7R3FpPo/rOHrNClOLs2tnLNTStV7LqIuGD+HH4FuBsk352ueGFFBfEL1dtLFfS
         5SVg==
X-Gm-Message-State: AOJu0Yxtv4ytuoGDtUZiSKY1nr8LHTgyUO9OeYIMABZrsrXswKfoVYUM
	snv46CxV4Pozx9vc9OqSi6eF2gLUjbHuUPjybGHAdTCxsdFlV8a3
X-Gm-Gg: ASbGncuQplYVWWCOnYGudW7F2FMTxwqtwRFWbB2Dnf0BHlyvzlV0HH3W3ZkaAYMIv+E
	eCv0T7otC3zFdr9IttUd+ApS307gsD80+j2i2PNuamPgmw66PsbC/Gmo7pem96k//J74vudRJkv
	Vak5mkw8GfhsT4TPZ7qiFCtBkEoveFVN3t83eqicOh5RMoLRK9s626hjl4ehkJrYcaXvF6RnMm9
	cG+rFm19O8AVDKANhjSdcik+NJOLw1XOp+7r+dllN/FDwhsOVBthivwGK18WW9wyEfoTh4mjPjW
	tfORH1ypUE1eVUawAlTVi5zNRKlxSJk=
X-Google-Smtp-Source: AGHT+IE7UXQuN6T2nOSubAxZd9CF0QJ9hjHTFoWaT7atwk6MeEsYWbmFQdRmuLKziasNuNOF3lCXuA==
X-Received: by 2002:a17:906:dc92:b0:aab:da48:493e with SMTP id a640c23a62f3a-aac2ad88fdbmr1050053066b.21.1734881583369;
        Sun, 22 Dec 2024 07:33:03 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a27bsm3791251a12.9.2024.12.22.07.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 07:33:02 -0800 (PST)
Message-ID: <34cc8c02-8e8a-47ba-856f-9ce834bd4496@gmail.com>
Date: Sun, 22 Dec 2024 16:33:01 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
To: Rudra Pratap Singh <rudransh.iitm@gmail.com>,
 Michael Sweet <msweet@msweet.org>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
 <CADmOQafms3c=7FAzeX9cbvnPOYDcf9Xxe9QyKUjYEYTgJq3AJw@mail.gmail.com>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CADmOQafms3c=7FAzeX9cbvnPOYDcf9Xxe9QyKUjYEYTgJq3AJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/22/24 16:26, Rudra Pratap Singh wrote:
> To clarify, the feature to update the README.md file is not currently available 
> in the desktop-snaps action. To implement this, I would need to dive into their 
> codebase (which I am already familiar with) and make modifications to suit our 
> specific requirements.
> 
> Whether this concerns the repository's main |README.md| file or a separate one 
> for the packaged CUPS, I will ensure it is tailored appropriately.
> 
> Best regards,
> Rudra

You could make an entry (a comment) in snapcraft.yaml and rockcraft.yaml which 
is/are the files to create the component version list in or just search files in 
the base directory of the repo and in the directory where the *craft.yaml is in 
whether they have the appropriate "## Included Components" mark and then 
auto-update these files.

    Till

