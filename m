Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4057A55
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 18:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739817039; cv=none; b=oSqdW32aUjY8GMok0f6Ne4bf/b8CToQ91NF0AjXOpZPy7TkRhiE0Va9b7pGecF2RHcmLw2Fy+W8isSKk3/IotBWqS4DhyGSFccOMldkXWAViEqmUGx8kN3gUlwK2F87hJKX7bQ0AkHCe0QpTU/at5jA8WmH6y/0BZIr+ynvrNCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739817039; c=relaxed/simple;
	bh=VWkYy1ReC4k+2IfoJhpTsIPxLMU70NldVxPo16Hd65s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pkwXFiMDiZ4wIVN6ikh3Pn1mlnmerZIwDu2YwpBN5PEyAlgR2vSw7cTC6waE76Ka299t9czLtjj5m1NHwi82c+DkurdyzjV1dz9Lwqhp2VHlv2rnf1PQo7E+U97CeUv+Vx/EJfG5wYtwzCfO2Zpb8VzIjDetr6t1HT7wVtrqG8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I2ipreeh; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I2ipreeh"
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5de38c3d2acso7266050a12.1
        for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 10:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739817036; x=1740421836; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B3bHeNWMjlpyO49cxNrRB4N9bf/LAEpuaNTdNfMfwMY=;
        b=I2ipreehm+7WkQlPR6ayA9amiapgUu5JRV/GGHSdIcgM9aPkSNC0KWHHlbcS8oKItE
         TzhNllxyp8g2DBAtldLDc/d4i7zqevA17zzzkeV7NXSf0XMjyY2pDCRFRQeJc4k02Tr/
         8f+5bqB2tQ9F8jblMJGapSziMdSOZlINIib90O6P1752tCWmkMo9uk97X7W+RwtGhS1P
         pacUPx/6qQP3Bt611hi9T0DtLGeWaCBzBIYOnzZ3vT9AniJQgl3u/wynuZkE4HKixu+W
         ow6E+oUVaptWnXhv/H6ygoxDkVhfZYD8y/UvRp+lQ8C0/ApTVah/V4G2CpMS6/E8kimp
         X0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739817036; x=1740421836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B3bHeNWMjlpyO49cxNrRB4N9bf/LAEpuaNTdNfMfwMY=;
        b=mf6hTQMaEenfTvHZp+EsWiXOUJUoQPJ/yB+piFFkbnUCX6LgTVYNbEmR1TiNUplUVN
         qeUa1OSo4bgCmUKK3AGJLQkbJvxdELrd1RqJh4rcYCH0Dlwn3/MMFXtbSwbl8xbWdroC
         YAlsPTD1w6hHDW74q7unjQOKCxbJarEAPdgLjlRMiw0Wm9H0fzqruH4kvrhDf25/J7cb
         xz0R5Zogi0+jUHZhndwe0WbF89/VJplosvZzVK1c8vt5KQM/UUP0UVNeO7zCHF7Y2gxY
         FRrdHLqkPq83rIVXqlkPCsogWXrcg5EMA+O1k6+IA6H+akaDXtuZ3/nYF72TYnpud9F0
         IdWQ==
X-Gm-Message-State: AOJu0YxfSxdwv052qydfIErw0GrSWHm5VxKQcND4N/uCFyNEJd3Ofogl
	5NR7ZcRr3PtiDusSoG743EbPMjB7NiT6ipJqUU1pZsj0vAte5oez
X-Gm-Gg: ASbGncsikNaACj4wXIv6DXpA7jXhdFSJ/jiNH/iF814MesKQIdlrU/JvFVsjV4YOiBI
	eq4zGTQ3rMlYBqvljlEI4R6ybK6PCFIwHNwnguprxXcCmVmiHuq1LlD7V19E/V4PDnszBl0pnI2
	aCX+yQLueQ0PN7wTxBPa/vV/5fc/uwe5ggGgSWxOMJDUVnIjYbGXH6edU1Z6R/ur21sTLyFDOx4
	SEPqBOxaiw1RqEUTcKTFF3HsEfSqRDdmB6QRpqNVY9AFH85BJXXrF80J3jsYtUQw4VB+ePr+ipV
	eRCR9sHIzoMTPWnyrk+6N4cn5bSnDIp51+4tjka6EhjYbDLu690zYoM3z3BEkI8/0g==
X-Google-Smtp-Source: AGHT+IEgd0/xqO/PrTA8zbQeovdeB+sCTgXYxC9GGGB6N5oexZtxcLh9uXE9NyhSiZ+XLUEIhC394A==
X-Received: by 2002:a05:6402:239b:b0:5dc:cfc5:9305 with SMTP id 4fb4d7f45d1cf-5e0361c2a80mr8739241a12.25.1739817035774;
        Mon, 17 Feb 2025 10:30:35 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece28808fsm7439448a12.75.2025.02.17.10.30.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 10:30:35 -0800 (PST)
Message-ID: <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
Date: Mon, 17 Feb 2025 19:30:34 +0100
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
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you very much for your detailed reply.

On 2/17/25 17:40, Michael Sweet wrote:
> Till,
> 
> The CUPS and PAPPL sources already have many of these test files provided under the Apache 2.0 license.
> 
> WRT the (legacy) PWG Raster sample files, these are companions to PWG 5102.4-2012 and are provided under the same terms as the standard itself:
> 
> Copyright © 2011-2012 The Printer Working Group. All rights reserved.
> 
> This document may be copied and furnished to others, and derivative works that comment
> on, or otherwise explain it or assist in its implementation may be prepared, copied,
> published and distributed, in whole or in part, without restriction of any kind, provided that
> the above copyright notice, this paragraph and the title of the Document as referenced
> below are included on all such copies and derivative works. However, this document itself
> may not be modified in any way, such as by removing the copyright notice or references
> to the IEEE-ISTO and the Printer Working Group, a program of the IEEE-ISTO.
> 

Is this a well-known free software/document license? And if yes, which one?

> There used to be a script in the ippsample project's "scripts" directory for creating a set of test files at a specific resolution, but since the self-certification tools no longer depend on these files (ipptool can generate PWG raster test content) I stopped maintaining it.
> 
> The libcups project includes the ipptransform tool, which can generate PDF, PWG Raster, Apple Raster, and PCL content at different resolutions from PNG, JPEG, PDF, and text input, and I can certainly revive that sample file script.

Could you please do so?

>  I'm also happy to contribute sample images towards building up a repository of test files/templates that can be used for this testing.
> 

Could you also do so, too?

> For the purposes of testing:
> 
> - Media sizes: US Letter, US Legal, US Tabloid, US #10 envelope, 4x6 ("4R") photo, ISO A6, ISO A4, ISO A3, ISO DL envelope, Japanese Hagaki (postcard), JIS B5, Japanese Kakugata 7 envelope, Chinese 16k, and Chinese #3 envelope with a mix of portrait/landscape content as appropriate
> - Content: Text, photos, graphics (graphs, drawings, etc.), barcodes (1D and 2D), color and gray scale charts; multi-page content for duplex/N-up testing
> - Resolutions: 180, 203, 300, 360, 360x180, 600, 720, 1200, and 1440
> - Color spaces: sGray, sRGB, AdobeRGB, Display P3 (RGB), Device (K, RGB, CMYK) with attached ICC profile (when applicable)
> - Bit depths: 1-bit black, 8-bit for all, 16-bit for AdobeRGB, Display P3, and device color spaces
> - Labeling: Copyright and license text and URL/QRCode on each page/image
> - Fonts (PDF): Simple and composite fonts (for Unicode text), text content in the various languages we support.
> 

OK, great.

As JPEX-XL is a format which I am newly adding to the filters, how and where 
could I obtain free sample images for that format?

    Till

