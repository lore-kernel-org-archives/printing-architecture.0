Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4441DF96F
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 22:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739830072; cv=none; b=Wtn8TfQqKEQ8gsKQiJY1EghLLE9wvkAVDueiywsSJAFtGuiadi5CP6gqp3s0s/ZCoa5IcraumpQy0DmdLZIr27mQmIRFsna6uNCygCXQE8yb7zTQi5aWy6GSS0CpBbN4BfN8nXVtnVM7Xki+SOyzngJP8LHJw8ooCrwB4YNmwIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739830072; c=relaxed/simple;
	bh=XHVeGqhL0X/AT+QNVkTI2WFmNPjqlTKV/o966t2VwhU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bRpGFio0tsti8eO1lD9kFE2VNA8RTdON4iYk0VFmOk4ZiUDHn19onkbiWG0hHQ+Rwh5TbGB+0KDEpXs5r59+uBlc3r+QvsZe3P5MiVEpIsUEM27nsAZbp0emWWenAaJjSwRsnHBe3KV5swyn5lU6EarsAkItWIoOLSnnMByjZ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hElxoYOm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hElxoYOm"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso52860925e9.1
        for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 14:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739830069; x=1740434869; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wDeUvDzO8xP/8TN/DPYk2T2PfB58LYWSrU+aN8cHKqA=;
        b=hElxoYOmKs8AHXykey06DggB8oeww14n+enQeNrO/5fVb3q7bzfMH7unZhy0ZoUeF2
         V2hua0XKjlSys1vJ5rmlydefXAlbFD25BRddY1pJPWnYeqYzHfTnTjnGbLQl55zE5qwX
         DArCUJoEEWug9D6PfrxrVN0UaGIoL/YDiw8/FS9xUiBqftxiRWNjndTXWLu5Uy+om7kC
         JQr3dAI0w/1/S0XAzpsE/E+UzhzXqvtHj8FDBS1IrUmwhiZluW3Um3eLylZFeEITOcMi
         669dYOoruNv2NoCtCQUQaeYxEXa30593HE+leeyOe+OGR0I66mLfAbcc4zAyz9lcK5wA
         /l3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739830069; x=1740434869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wDeUvDzO8xP/8TN/DPYk2T2PfB58LYWSrU+aN8cHKqA=;
        b=p7WEMZDjPcnPktcJTitCOO5quIP/K0WgqubXunKMTjPkvieSZYmteGtjHxLzotxfEg
         a5bOtr3Ue63THlEFy6smmW2yQeTuOHxH3whPU0HSuybILFX++/F9LcATyGnlN45JZpR1
         7vkKHv4hkmZQLTNMLurmSC2F9X4SexiMIgOvKohvb336fr97cUwFiR4nWoRL8Yekvx7z
         ToAd+K21KMdg0BEj9K2gZO4OWZAbv5sZYoKv7wBkPfUDy97jihfoeLsSjBSGl+5izu8Q
         d7SksSJvpnpvw0A2nint9r6Yr0awhk9fydKi2kuGGkS5jBnbsuvj+4stNddebCTOKwOc
         Qusg==
X-Gm-Message-State: AOJu0YxolKVb0BP1qYL9lbmR5lmgVUjddM5Hc6rLr+VnYAehzMFQ8KHe
	IF8Chk0q3ro08TXamj5wvPuQ0OSuG7I6ZSt3b9j0d4FL/rpVqyyxq+SPeg==
X-Gm-Gg: ASbGncsqpPjG8xM87fBj90nJdIL+k54iw6LqAC2r2qNm5G2YCy/D+w/Gz/lHbtyuNEn
	1gmqqXqNF8n7kVh8z/q/LhLdwgu6bhLus/rRZAjMFHqpYAW3ojEzXtag/d7BdQ+BWwMmLzrKx4u
	PqAw7ee4MpHyYESMED6aoN14SVcdBdjybXeQwOmtBAGBb6kpI79O6cGpsu7J8lEDTmkumgu2tWB
	ubfyugqJxlgePzV6kmxi7t0rbSv69qi80F8b3l2eWSeBExehKNhIs5ba9tDaTrT4OBmKBgjnDJ9
	b4ZyztRf4lk3MHcrnF+PnzE05SsNu41MLiF9hZixP14iNw3vcbRvmEXCB3j/Iy6UFg==
X-Google-Smtp-Source: AGHT+IE6+UIYp0qiKmuvj4ReRHbkSf23QwCeAJGhkT0n85QK//Xet9BS93zCKn2PJJ26D5SaDM3pXg==
X-Received: by 2002:a05:600c:4450:b0:439:916a:b3db with SMTP id 5b1f17b1804b1-439916ab5bdmr19605715e9.6.1739830069277;
        Mon, 17 Feb 2025 14:07:49 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a04f8c1sm165713955e9.8.2025.02.17.14.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 14:07:48 -0800 (PST)
Message-ID: <1345af67-4fc3-4391-9037-0a754324e88a@gmail.com>
Date: Mon, 17 Feb 2025 23:07:47 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Free-/Open-Source-licensed JPG, JPG-XL, PNG, TIFF, PDF,
 PostScript files for print filter and OCR CI testing
To: Michael Sweet <msweet@msweet.org>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
 <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
 <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
 <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2/17/25 22:22, Michael Sweet wrote:
> Till,
> 
>> On Feb 17, 2025, at 1:30 PM, Till Kamppeter <till.kamppeter@gmail.com> wrote:
>>> ...
>>> to the IEEE-ISTO and the Printer Working Group, a program of the IEEE-ISTO.
>>
>> Is this a well-known free software/document license? And if yes, which one?
> 
> I don't think it is a well-known "license", however the terms match the Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0) license.
> 

OK, thanks. Should be good enough for sample content, but I will also ask my 
colleagues.

>> ...
>> As JPEX-XL is a format which I am newly adding to the filters, how and where could I obtain free sample images for that format?
> 
> I suspect you'll need to generate them.  I think ImageMagick supports conversion to the format, so that might be a way towards that goal.  The libjxl project also includes a cjxl utility that can convert PNG files to JXL, and libjxl also provides a Gimp plugin...
> 

OK, so we will take some high-color-depth PNG or so to turn it into JXL ...

Thank you very much.

    Till

