Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001B635200B
	for <printing-architecture@lists.linux.dev>; Fri,  7 Aug 2026 19:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786130081; cv=pass; b=Cj6+8fQKH/YGgRxCN3IB7Mc/eMRBp2BVsZgpHsCcmnPVMBxvdL/qf+mEzRjQK3281rR/I3dRHJNGEjXDRF1WX7R68uJ809Lj78TzZkUvU5lJCLNxT8UglV2oHgmFP9Kdu0ntJgc9vdaz0HtVR8N6jkm48YMGHGAtvPVtvzDo+UU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786130081; c=relaxed/simple;
	bh=8FVPJu9f2EtOtm+QTs5HZd9OqtfiE1ihDpvhLEYVbSI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PYgx3EmfRN40cASRbBl+Y66ovoIXliPHqN1ULUp7rCAULWQQqlHc1HksiT69mTjXzZMkP2XtG9cd+5ytYHtX1efMrzWSCU4vY69mISro4sgUCKU6uEfeTuKCTusvnx6VgrqbiYXwJ/8zvDa/mfGZCDe0Ft//Zv75oU/wI3kPFxQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bZQu4LKV; arc=pass smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bZQu4LKV"
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-48a0ca07c38so2292295b6e.2
        for <printing-architecture@lists.linux.dev>; Fri, 07 Aug 2026 12:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786130079; cv=none;
        d=google.com; s=arc-20260327;
        b=AqgLPlvlgidDiiPDgD3VDW7FJT6gJFERRycfREOsnisVEiNVDN6q75GPt9ceh56GEa
         +a6sDRIzQ8sLnk06IlFE334XbxPycBmIe8wfpbMa/4a1AISIiwE98jOPAgQ07/InVNp+
         SzwoIOU0CSXNj67BuzDWAQoKRRfGOpLXPu3FzHn48i+UfoJ2hBLgeow71NXFZ7rAS5Cz
         RJdjQTThi4RHlEU4G3LnGjoJRBScfQdCd0+iXANfKixYhywZ5BjKodGwYyjRUTXgfMXN
         IfmPKpA+BRjSwCF3ldS6UiscrKwdbA9ZZ+nlm3ndeMWzr1ys+cPG3F2W/AmUC7BwYOiT
         AF5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2qjD7rS2gNGU0pzt1L14w1nJP8Gap9FddBnVOCaXjGI=;
        fh=oJPT6Kw5ohMyWN6Ti/lady8bOwr6Scm1pwIVTgG30jA=;
        b=EOiIJuulvM3Nocd0xPbUnUMm3/WiO+Asj1aW/SMF2ThStRudDCpnsAbARSndRpmFES
         q6eiuc7vj1O5l3iZpu1yKU1kQrsakAZ2OVOYrv/j5px8OmNAbX97oPLNIhae2n2+UWU3
         fcg+0BRU8Vdaix1gVsnwRKaJZVB6ZaxgFshesp6qkNJOYV7HVBrvOTGgiWU78efRoyfm
         5O8EZZuWvlmfSLVk5DW6vBoJ210BbYkuSFpEplqBpHVqRrXXmdRktJIw/wbp253KVC5w
         32prYvi3YR/krlt7WnC7DvXzVL6gdfkre6jm1GsyqMIR4awb68xGlpz1SXtv/Oqeyta+
         M3WA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786130079; x=1786734879; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2qjD7rS2gNGU0pzt1L14w1nJP8Gap9FddBnVOCaXjGI=;
        b=bZQu4LKV+EiUbZ+gRrbsbYoT9uQY1G5VFco0+aA23kMgvrtRDEEcQvSGwaARdPXY1Q
         tPMKR/+EQI3mKK9oWY8eU/HWGUb6kpjhc0isG568ol5dAkmS07+NGvUXx/jz6iHjmTld
         xgm77r9SK7lNHrXnCJjQ3tnmG9lULU1S1KNB79dZYO9BZa66MMRoNWI3HZHk7jyOp6lP
         5ehkjx2z4n68dtbt97fFEaK+TBMYTHYw4BkSdydZYCDOATe3jxNO/DfEcbRxPSPUpIMm
         PuVlM1tukFOMMNNzFUXef7BYH4QOS9/SmvCW0kAL5NpAQBjl5vWpUFwYW7G189sX2vWw
         NTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786130079; x=1786734879;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=2qjD7rS2gNGU0pzt1L14w1nJP8Gap9FddBnVOCaXjGI=;
        b=c8esFf7qingXOcgHihHwfZv17yMghsDf6JBZHdRvpFaIln593/zDAmKjWmMmoPbUJj
         Zs5flx8MaoOpHAeOFRpwjAl5xFftdZLcc8xAXX8c0g1x1klwEFcPs5T8c7EbxApOWOiN
         SJixTLDf4vvsIn50dkyb9IiAopoZXB1yVQH4RSmEk1oBxqexA+I4UCK+8qpJzKb3ENGs
         oMJBFgSyqdmlMPPSJe3vD5+ZG2vxnpBH2CcaEp8d5pVtcjx9r3/xO7gvTR6Toiv8n9Ac
         nsokU9TbZCWaHFlU1loEjyQwxeh2OqJVQk4r/uFLIV8xSjKOnzT2tYAyBgngSrQiKXTh
         PzUQ==
X-Forwarded-Encrypted: i=1; AHgh+RpmHMDo/t1qZ19SMm7k7R584CMqupwtbA+2IxchL8WMe9e5PQ1b/80sayXVsqXf70bn6SSkCt+c6jSz5aQRQ2CMdzrGIME=@lists.linux.dev
X-Gm-Message-State: AOJu0Yy9pQZDicCO9eCMtwSGw0jRDXtD4S4Q11Sz6xMVX6RXdwV5Ol5O
	e8+R+M2UJ5lb8mfZXfQWmPGjHHr+mCiLTkvjPSuMN5Q7p0IE2/YiuhjxLt3H3Ih35ZC0iHZxG2z
	9XeGhYtkwOv1XB+Wc8NwuAbn44eKpTSX0xCn9
X-Gm-Gg: AR+sD135/enGZVFL3HhiN6O0fsciNSfVAWNFZe5e8opnY00wrI6d/aNTUY9UGq0kqd4
	bR3V2uo0KGqGXF2dHP/M+FnBTdPBkPEmd1Uwf1S/D97/gsEPWZIMjZm483wcaVHub5UQbehwJeb
	nrZx6mqdvZcUCo+ppszEmnWTprao2TKPW3MX6zQ3w0WbgPbVBiUTZVC4TeUpz0z7VK7OziPpy3H
	i02LOlnbXiMgczidKWUEZINRsKw5lvYxgZ/v2xgB4/S9n/QxUjQ7sX2LevqDu9pRIdMJ7bOyPRS
	p+r+dIrR4IiuRFRjVu09U8dmdwm73RnuJoYBp+/LdhtGKPZwNFjVKrr4hQkpD/me2ih2vxqUJ0M
	paVX9O0hIVz02uBcY3zdJ9CiN2ABnOumkHZDvCF+G7JFwpMAjG0FWhWRN8hKdrg==
X-Received: by 2002:a05:6808:1784:b0:495:f74a:b572 with SMTP id
 5614622812f47-4afadd7cb33mr15741071b6e.5.1786130078673; Fri, 07 Aug 2026
 12:14:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org> <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com> <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
 <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com> <CDA0640E-599F-4E74-83A4-1D88B59BF84C@msweet.org>
In-Reply-To: <CDA0640E-599F-4E74-83A4-1D88B59BF84C@msweet.org>
From: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
Date: Fri, 7 Aug 2026 22:14:27 +0300
X-Gm-Features: AUfX_mxEY2YH128JSNhKRrxRvgO6rgXCAzwP-i1gsrewvdy5XA5nN-HHFdXFyLI
Message-ID: <CAHK3-ap6s-PRdJTOAry=WtCMW9Xw6zzf68fX63tJpP4K-Vj_HA@mail.gmail.com>
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
To: Michael Sweet <msweet@msweet.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>, printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Michael, Till,

I tried to reproduce the proposed per-user profile behavior for an IPP
printer that is not discoverable through DNS-SD, but I cannot get the
profile entries to be recognized.

I tested the proposed directives:

```text
Server ipp://HOST:PORT/ipp/system
ServerName HOST:PORT
Printer ipp://HOST:PORT/ipp/print
```

My environment is:

```text
libcups3: 3.0.3 installed under /usr/local
also i have libcups2: 2.4.7
cups-locald: not installed
```

For the test printer I used:

```text
ippeveprinter -p 9200 -r off
```

So it does not advertise itself through DNS-SD at all. Direct
`Get-Printer-Attributes` requests work and return the printer
correctly.

I tested both per-user profile locations:

```text
~/.config/cups/profiles/
~/.cups/profiles/
```

However, `strace` shows that libcups3 never scans or opens either
profiles directory, and `cupsEnumDests()` doesn't shows the printer.

So currently I cannot reproduce the intended flow:

```text
profile file
    |
    v
cupslocald/libcups reads it
    |
    v
cupsEnumDests()
    |
    v
printer appears
```

Is `cups-locald` currently required for profiles to work?

And if so, is profile support expected to work with the current
`cups-local` tree, or is that part still not implemented/released?

I mainly want to make sure I am testing the intended CUPS 3.x setup
correctly before deciding how the COSMIC side should handle manually
entered/undiscovered printers.

Thanks,
Abdelrahman
