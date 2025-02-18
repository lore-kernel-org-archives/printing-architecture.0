Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FF118E1F
	for <printing-architecture@lists.linux.dev>; Tue, 18 Feb 2025 03:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739848813; cv=none; b=GT1UXwNnnjOEfEu7g9z49gxms5n7u8paE6nakPjkxRzJ/f6Rj/LE2brAGxekpgO7K8YZqwSWjbO3yBoLclDY8jR8qjkNfehrrE6vvllFj61QpLv7qcg4YMYxxDDoHYO475xSmSskqCgZm9Jk8oHbVstwXwKQFdvkNI9CrzkiZFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739848813; c=relaxed/simple;
	bh=o+8QJQstsoxIhax/k32t8/hGonDZBR7jpXsO0SSD1Ec=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CFKFi9ehqj2o5mi9gukV4Dka7KfPnvfonyQ1K6QrNxdUkfGEqPZxC4PESsXmx01+PdKWIu2wEHwUv2x+71d5mmXysB4bR78hT5XjVXkGJV7BPe/CaeQtM+uKODt8BCtx6pATz5so6XmGAmrW9xj8rabHBqFQnHa3K4DjA0w31nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vitbhopal.ac.in; spf=pass smtp.mailfrom=vitbhopal.ac.in; dkim=pass (1024-bit key) header.d=vitbhopal.ac.in header.i=@vitbhopal.ac.in header.b=CNlBRbl6; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vitbhopal.ac.in
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vitbhopal.ac.in
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vitbhopal.ac.in header.i=@vitbhopal.ac.in header.b="CNlBRbl6"
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-307d1ab59c6so51407791fa.1
        for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 19:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vitbhopal.ac.in; s=google; t=1739848810; x=1740453610; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=51O6YjmPTt8g/KcwKBUqqG0cKCXc1LknThgCmdigoHU=;
        b=CNlBRbl6ArTE9gSR6BDs+U/ctJiRZq5LbIMP53GCgO8yS/5CPX/K3A1mf6dMABtghc
         +llF6H48ImKH59IxQRGz2LQZgdAIY4ZD0UfZ3twZPNfAFYediNKzwd9zB53boLxrCGZH
         6lFkYW0wjkm5dFSBoaEHuXIRI3dOqtFSHVftY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739848810; x=1740453610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51O6YjmPTt8g/KcwKBUqqG0cKCXc1LknThgCmdigoHU=;
        b=nOt37ytasLzkOBXVZsXuo1v+AJ39T0OGauAW9/JpJUzrx5iK2ETLO1jviNJgq6/c2O
         LmFRY0HOssGwbp+tFhcMqGvYpiSlJvdmy6XshIs3o1Gyl4zXaZ4gWDo4PrtAXLgWsmE9
         +a1JR0DtgLPJKEpIuRYSZL8CFPx4iiZA54NShJi5mkKqzpWOHnuwITZbWZh0Udz8RxmS
         S/0nmK36takc6QfucybIIcfgWutg5eLzKVMf6SvNyYUG9cQeWTcV8DZBe/Mdto2NhiuJ
         24/Qq4XDzrgRNo6I0NliU6oCCrWshPaZ9FAWC35Fzq1lyqhDyS4zjJhHurZntMWB9gvs
         mB3w==
X-Forwarded-Encrypted: i=1; AJvYcCX9Kbu8A0O4+tm3scwqCXSptRZvwvzRzrl8ja/nsopljV9ixetj1aNuFo6KFVQRQKDKZdBrpIy9ry3oW3PWTguOb/sO/70=@lists.linux.dev
X-Gm-Message-State: AOJu0YxcCm5QO85OQKL2t2R+tc19B9uXidtPyufnY7mWtI7cU6ScZWy0
	nLhgaeUu93yr3yYJlL5D1vH+cgD6ldpiJFad0z7Gftoq8aDl0ouieIlVaj3bMyXDcdC8F4GfEqO
	fE+ynodLZMi6jb5aDMKj77laHAfyTYH7H0i/Qmg==
X-Gm-Gg: ASbGncsIY7kjG4Ozwe4r5D8DLLrRHM5zoLAA6Qf6ncAgkcinlCDTs1UAxbCutetPUTa
	ne7cZz+rYjNd45gfaJ6KIWTV41NziXwsIuU5ez0X5MDN0o/IdaAF4vjh3Vyx56cN/zBTM3IioI3
	EB+LuSJ2rFYsL0mPYUKRHEJS+bC8tfoZE=
X-Google-Smtp-Source: AGHT+IG9DUSUEuazAoFL8dlEWwWW1Up5Qgo75kjz6hlPqafe9w74xziEnDoVw93W+eTkTQ/idSX/RdHo3S5o1koTojY=
X-Received: by 2002:a2e:8895:0:b0:308:f5f0:c403 with SMTP id
 38308e7fff4ca-30927afe3e4mr32297761fa.35.1739848809581; Mon, 17 Feb 2025
 19:20:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
 <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org> <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
 <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org> <1345af67-4fc3-4391-9037-0a754324e88a@gmail.com>
 <CAFRVfnNtPwSR--HLfSDFLfd9Z5V02JSMn4OUk1VWwQ60KRco3w@mail.gmail.com>
In-Reply-To: <CAFRVfnNtPwSR--HLfSDFLfd9Z5V02JSMn4OUk1VWwQ60KRco3w@mail.gmail.com>
From: UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>
Date: Tue, 18 Feb 2025 08:49:58 +0530
X-Gm-Features: AWEUYZlr6CQVnvtSN6WXxE3RPVfojbLjhW--wztSeuw6WYi7B8lsJRTpPF3aC4Y
Message-ID: <CAFRVfnO3=5apEa5VVH9fAsoou9JEM7MWATGis4D=pj0X8AXOdw@mail.gmail.com>
Subject: Re: Free-/Open-Source-licensed JPG, JPG-XL, PNG, TIFF, PDF,
 PostScript files for print filter and OCR CI testing
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Michael Sweet <msweet@msweet.org>, OpenPrinting <printing-architecture@lists.linux.dev>, 
	Titiksha Bansal <titikshabansal0209@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your support Till and Micheal.


On Tue, Feb 18, 2025 at 7:05=E2=80=AFAM UDDHAV PHATAK 22BCE10731
<uddhavphatak2022@vitbhopal.ac.in> wrote:
>
> Thank you Till and Micheal
>
> On Tue, 18 Feb, 2025, 3:37=E2=80=AFam Till Kamppeter, <till.kamppeter@gma=
il.com> wrote:
>>
>> On 2/17/25 22:22, Michael Sweet wrote:
>> > Till,
>> >
>> >> On Feb 17, 2025, at 1:30=E2=80=AFPM, Till Kamppeter <till.kamppeter@g=
mail.com> wrote:
>> >>> ...
>> >>> to the IEEE-ISTO and the Printer Working Group, a program of the IEE=
E-ISTO.
>> >>
>> >> Is this a well-known free software/document license? And if yes, whic=
h one?
>> >
>> > I don't think it is a well-known "license", however the terms match th=
e Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.=
0) license.
>> >
>>
>> OK, thanks. Should be good enough for sample content, but I will also as=
k my
>> colleagues.
>>
>> >> ...
>> >> As JPEX-XL is a format which I am newly adding to the filters, how an=
d where could I obtain free sample images for that format?
>> >
>> > I suspect you'll need to generate them.  I think ImageMagick supports =
conversion to the format, so that might be a way towards that goal.  The li=
bjxl project also includes a cjxl utility that can convert PNG files to JXL=
, and libjxl also provides a Gimp plugin...
>> >
>>
>> OK, so we will take some high-color-depth PNG or so to turn it into JXL =
...
>>
>> Thank you very much.
>>
>>     Till
>>
