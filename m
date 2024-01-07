Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36BC13AC7
	for <printing-architecture@lists.linux.dev>; Sun,  7 Jan 2024 15:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lFY9kC5S"
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3bbce1202ebso1306526b6e.2
        for <printing-architecture@lists.linux.dev>; Sun, 07 Jan 2024 07:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704643080; x=1705247880; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ziZeHN5+5pNcNkO/BymQ8hNywPSijN0GyalKCaEqOx8=;
        b=lFY9kC5SdtvpK4dgUqfZ4kMI5o8O/M31GaEdIv5suQYd4+7+sTsIa5VHayYTtM2mwU
         aix/Zw9vWsOwB2f7i7XXSXFKPxrT9OuMTqSBDEJxhjlEpUK0InNs6ZxiA9R7XRev6oMX
         gP57LPkuFePOcBbpoqtvTC8+L+Za+qBFEDHosVLkx6xafiKJe6T0mvrWJkdcfyaUUVo0
         E1Cs1yeLdSGi9dbSKvaPJDUM23zyjED//30o+uWHeLXBQ3IGnU86e26wo9PfoFy7SYGj
         oja/HovFaOzXUk/a9I/niCcgosAYr4jZSKYwMshZNugOodaS7LWluXTu/JDeJpK8PBvx
         ofQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704643080; x=1705247880;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ziZeHN5+5pNcNkO/BymQ8hNywPSijN0GyalKCaEqOx8=;
        b=O4QFA0PBFD+CB38VsDu+yhxmPaTgtARtpgdoQPoPtcmQJwEWXBtN57PqKoZoTV8yqi
         Oik92NcQogG5zdTz6AYfP6/X/RgAlBHMSLtJiiOUVasWJ7GnxL2QY3gNFp7dksoqpfNV
         MwhoIKvLg5MkNbkPg+FB9yeioBI8HkJ6j069ezrxWruP00IDzdKPWYypvNDDeZ4YMn3Z
         HaehPdyGZMDJrM0P/fQheL+Jx/mqKkf6wq9cXpNdpavoZGP4IvpZFeUWcxU+/WSI1hNt
         8hGwntRWoiC5uuQ9eL8oitF9jZCwsN0DkvivcidHBjjmPRNUkUdIOqMlTBtzq7Pa/AiU
         j1RA==
X-Gm-Message-State: AOJu0Yyd3EUYkaJSmA6OL1UOmmOejMQds1LZbPBe1cbyNhsmEQaru/yY
	okdihKvIBzeJBvylbzSTNCE=
X-Google-Smtp-Source: AGHT+IFhhBzzbSPRVLC6FiNnHCFZyu0etaXq6Ob9Plj9mQBmulPhYFWiTpF3+lmO0iVq/p0g0b9k/Q==
X-Received: by 2002:a05:6808:2029:b0:3bd:252d:5d2d with SMTP id q41-20020a056808202900b003bd252d5d2dmr2263852oiw.53.1704643079668;
        Sun, 07 Jan 2024 07:57:59 -0800 (PST)
Received: from ?IPV6:2804:1b3:9403:22a5:4a58:5c72:33d7:239b? ([2804:1b3:9403:22a5:4a58:5c72:33d7:239b])
        by smtp.gmail.com with ESMTPSA id jb17-20020a170903259100b001d4725c10f3sm4609336plb.10.2024.01.07.07.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jan 2024 07:57:58 -0800 (PST)
Message-ID: <d56a41c6-5839-4936-b908-3297ed6728df@gmail.com>
Date: Sun, 7 Jan 2024 12:57:55 -0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: CUPS Trademark
Content-Language: en-US
To: =?UTF-8?Q?Jorge_F=C3=A1bregas?= <jorge.fabregas@gmail.com>,
 Michael Sweet <msweet@msweet.org>,
 OpenPrinting <printing-architecture@lists.linux.dev>
References: <cbcc39b7-079d-4e5d-bd4a-f3e29e03f8b2@gmail.com>
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <cbcc39b7-079d-4e5d-bd4a-f3e29e03f8b2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

thanks for your e-mail.

I am including Michael Sweet as he had made the arrangement with Apple.

I also include our mailing list as this question could have more people 
interested.

Michael, could you tell more?

    Till

P. S.: https://youtu.be/CLEMiM0L2Jk

On 07/01/2024 12:01, Jorge Fábregas wrote:
> Hi Till,
> 
> I am a sysadmin from  San Juan, Puerto Rico. I've been binge-reading
> your old blog posts on openprinting.github.io - super helpful stuff.
> Thanks for writing them.
> 
> Quick curosity. Were there any issues with the fork of CUPS and its use
> of the name "Openprinting CUPS"? Any concerns about potential trademark
> conflicts, or does the inclusion of "Openprinting" in the name provide
> sufficient distinction? Or did Apple give the green light?
> 
> Appreciate your time! Thanks.
> 
