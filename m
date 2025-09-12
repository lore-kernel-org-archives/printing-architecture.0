Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE0530E83D
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757695888; cv=none; b=Bwy5I2wbmUCc28f/IWcVqgPwpoLryVN77J3nKzoIk5H8Ufy7spWW6I2CG7d/968cLAGFPmV3qI9VjvDEMp6DGL9cjAxCfDDz2oT/0p7+wcrL0+uDTbiuhURowClXLQAqe0v0reUIcfnMygcSwHbslG/PJgVaR2Qw5RFXd3wLzIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757695888; c=relaxed/simple;
	bh=L6lK/WmYU4X/n4RkmGyZ+B/ZtL/4EoYoT00S7QFjKbg=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=Iyv4qi65UxgRKgqWrgoTDgXvN93jDETC3S+jEAGtNK7oZKyFDe+2N3NlReVMa3/96FCjefE4Ri1gTRMwFDsTmYqbeN3MU3TUlJR+Za1vbsnaezsR/XDbFs9cwVvGeI+uNKWyZD3sYpGKx0UhM4kgfK1h6LSr5OcXvzZyLvfMqN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=XA+wUZBq; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="XA+wUZBq"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CBAA406BC
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:51:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kO41I45qqDSX for <printing-architecture@lists.linux-foundation.org>;
 Fri, 12 Sep 2025 16:51:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::532; helo=mail-ed1-x532.google.com; envelope-from=smilingthax@googlemail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4DD404070C
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DD404070C
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.a=rsa-sha256 header.s=20230601 header.b=XA+wUZBq
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 4DD404070C
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:51:25 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-620724883e6so4186117a12.2
        for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 09:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1757695883; x=1758300683; darn=lists.linux-foundation.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pnnd0QW93p4GmiZCBputSjuBiL60TiUr5qbpocF2qHM=;
        b=XA+wUZBqf7GBZufciHtz20huUH86b5zlSYrpHiGUsESyD1bB4Heh4NwOHbs+NDZMHE
         obodLDtSCIIGmnrqOjqs7XaIXeDroEuqnAC/M5Zq6x80VXdXokIQDk9jfS+wCtkYeUN4
         aKkFCIK8lfJWMDO9MjyZP/0ZFywxp7oVyqvbXJIAdsBQOInorSxZXCi844sTQ+gPNlf4
         h050Z6v2zg0gI5X2a5G/yxJX9i62LWMQiOi5+qao0dgE7dIY3iuCpr2fZdcD2/TT3LK+
         /jf8UAIA/+ucLA/D+M1KluhwaZmp/dL0nbYBo0KIILpv5udI91x59eHBvgGxLc11u2wD
         pFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757695883; x=1758300683;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pnnd0QW93p4GmiZCBputSjuBiL60TiUr5qbpocF2qHM=;
        b=acCsypPbrBqJ/sGiKx3q2Cz9FW9asc6FNq+/Sx+KRwGVaaND1dCZaNcrp9IEvNRZRU
         C5BHx3OSRWjwaKYXoO5PG3OmFCOpUo3q1oUTAgf0HYH2O9savLBNp+5HVWjV7uYHqoWI
         DfU4joXUWACA9eNpkIuFaZh71EkrZMQ3W4jOgSwXxU371toHCo1lkWHPElvMJPQ8MAxw
         yGiNjn4w3OcYA47eZHXrjkd3eqaB45EK0e1OQh4a/63AXkvYpbPcfRM3LXb8hRnklBCZ
         4lzV/k//FObVMBaSPvITx+yS9vO0l0Cgx43cllJ8KiJNeB1bQEzdEhq00eOz2z8MFigf
         8xcw==
X-Forwarded-Encrypted: i=1; AJvYcCXotLFabfVyH923FzWXX2R2iM5Vvpc5qKCORA6wUcV4FQ/hw7uS3PmFXUEIA5j9aXm3SmOACMHcI38WPxa+52L1Tc213wU=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwM3dfby/l1RY1PTzGrqfRLPYVc134dUyNrHymP5rj2nVQjxQlP
	wl0RnfqyH7V5RYwqgy9lCI1tqaIx8/KEawETbs/9N28/Wa9RJyzKyEOI
X-Gm-Gg: ASbGncviTXfokcDZQh0cJmVhSOSSlZKGt0MjrIM39F6+UfJQhPRZJAGXgUqCtvIGyvy
	AJ6cSy6Yhf8xX+7qj8TCMJbTu2Kq8jhNAVl15gbvs2u1QgUsTfglV404HOP3PW20xgGuO8ndNHA
	2/KJLBG9/axBkuOICLzNRXDk4YTNpSUmcpPJZDW+XITewtEJ7w1c9uQm517cKD/i6RSkRl57OQ7
	NeObAQLfvTJs+PsPbwClhruvccu8GZ9gETAhh9mrA2DUupiHpnvw7q8sQqaMX2M1YCj4nvlK1cn
	2h33zuYMq0sMz4oFzdLz1gURGu/V7tuJ+tPAs5HirVg6VWYa7acIdj7Jou6lG62I29PYTGJjZpS
	hknJv1DBaNJ8qqYMsOwdja7oHnipBvAChWf74LqARfT7T6MjT5blzguWLP0mGuAUcsyv31CzXpG
	AesDbVTwMDCgtoKKg+U8QwYu21SOaMKwpzCAxAvABFkbMSslD11xMNwL7boFgBJDWHXG3cHoryZ
	jsEwt6km1wF4w==
X-Google-Smtp-Source: AGHT+IEKOOuB7s8NasYsvaMnbFBZDHApvuuKwSLjeo4S+3wbreHwCgAnzaoImMpO8oLawU/Nw4K0wQ==
X-Received: by 2002:a05:6402:d09:b0:617:9bff:be16 with SMTP id 4fb4d7f45d1cf-62ed82c65b6mr4005856a12.22.1757695882778;
        Fri, 12 Sep 2025 09:51:22 -0700 (PDT)
Received: from smtpclient.apple (dynamic-2a02-3100-3f1b-4300-21fc-336d-e1de-6385.310.pool.telefonica.de. [2a02:3100:3f1b:4300:21fc:336d:e1de:6385])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-62ec341122fsm3598001a12.48.2025.09.12.09.51.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Sep 2025 09:51:22 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: PDF problem - Help needed
From: Tobias Hoffmann <smilingthax@googlemail.com>
In-Reply-To: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
Date: Fri, 12 Sep 2025 18:51:10 +0200
Cc: Jay Berkenbilt <ejb@ql.org>,
 Michael Sweet <msweet@msweet.org>,
 Chris Liddell <chris.liddell@artifex.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 Till Kamppeter <till.kamppeter@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D83564CB-79A8-402B-A660-FE7D6CDD4FCA@googlemail.com>
References: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
To: UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>
X-Mailer: Apple Mail (2.3776.700.51)

Hello Uddhav,

Your PDF has multiple issues:

1. (Unrelated to the problem at hand:) needtrue-text.pdf ends with just =
=E2=80=9E%EOF=E2=80=9C instead of the correct =E2=80=9E%%EOF=E2=80=9C

2. Already when opening the file with xpdf / poppler I am greeted with:

$ xpdf needtrue-test.pdf=20
Syntax Error (59908): Unknown operator 'x<9c><d3><0f><a9>Pp<f2>u<e6>*Tp'
Syntax Error (59910): Unknown operator '<e1>2P'
Syntax Error (59916): Unknown operator =
'<c1><a2>t<05><fd><a8>D<97>L<05>CC=3DC<85><90>4.C=3D<0b><05><10><0e>IQ<d0>=
<b0><d0>T<08><c9><e2>r'
Syntax Error (59920): Unknown operator '<e1>'
Syntax Error: Unknown operator '<e4>r<05>j<03>'
Syntax Error: Unknown operator '<cf><fe><0e><02>'
Syntax Error: Unknown operator 'x<9c><d3><0f><a9>Pp<f2>u<e6>r<05>b'
Syntax Error: Unknown operator '<14>&<02><d7>'
Syntax Error (60377): Unknown operator 'x<9c><d3><0f><a9>Pp<f2>u<e6>*Tp'
Syntax Error (60379): Unknown operator '<e1>2P'
Syntax Error (60385): Unknown operator =
'<c1><a2>t<05><fd><a8>D<97>L<05>CC=3DC<85><90>4.C=3D<0b><05><10><0e>IQ<d0>=
<b0><d0>T<08><c9><e2>r'
Syntax Error (60389): Unknown operator '<e1>'
Syntax Error: Unknown operator '<e4>r<05>j<03>'
Syntax Error: Unknown operator '<cf><fe><0e><02>'
Syntax Error: Unknown operator 'x<9c><d3><0f><a9>Pp<f2>u<e6>r<05>b'
Syntax Error: Unknown operator '<14>&<02><d7>'
Syntax Error (60846): Unknown operator 'x<9c><d3><0f><a9>Pp<f2>u<e6>*Tp'
Syntax Error (60848): Unknown operator '<e1>2P'
Syntax Error (60854): Unknown operator =
'<c1><a2>t<05><fd><a8>D<97>L<05>CC=3DC<85><90>4.C=3D<0b><05><10><0e>IQ<d0>=
<b0><d0>T<08><c9><e2>r'
Syntax Error (60858): Unknown operator '<e1>'
[=E2=80=A6]

which suggests that there is something very wrong, probably some =
butchered content streams (operators are usually part of a content =
stream, and you did not mess with e.g. fonts=E2=80=A6).

3. Two fields ARE actually displayed correctly, Gender =E2=80=9EMan=E2=80=9C=
 and Height =E2=80=9E150=E2=80=9C.

4. Although the resource dictionary of the first (only) page contains =
XObjects /Fxo9 =E2=80=A6 /Fxo1 /Fxo17 =E2=80=A6 /Fxo10 only /Fxo9 =E2=80=A6=
 /Fxo16 are actually drawn on the page (with /=E2=80=A6 Do, as Michael =
Sweet already pointed out)=20

5. It turns out that =E2=80=9EMan=E2=80=9C is /Fxo9 and =E2=80=9E150=E2=80=
=9C is /Fxo10; /Fxo11 =E2=80=A6 /Fxo16 seem to be the check boxes, which =
seem to use images in their appearance, and their content stream is =
broken (dict + hex dump):

<</BBox[ 0 0 11.1 11.1]/Length 18        /Resources<</Font 18 0 =
R/ProcSet[/PDF/Text/ImageC/ImageI/ImageB]/XObject<</Im4 19 0 =
R>>>>/Subtype/Form/Type/XObject>>

00000000  78 9c d3 0f a9 50 70 f2  75 e6 72 05 62 00 14 26  =
x....Pp.u.r.b..&
00000010  02 d7

This looks like random memory (all the other appearance content streams =
are not compressed, either, which makes a missing /Filter unlikely).

6. The not-drawn XObjects, e.g. /Fxo1 do not seem to have obvious =
errors.

> I can now confirm that this stream is indeed being appended to the =
page content stream.=20

This is only true /Fxo9 =E2=80=A6 /Fxo16, but not for /Fxo1 .. /Fxo8 and =
/Fxo17 in the file I received from Till.

HTH
  Tobias
=20


> Am 11.09.2025 um 16:50 schrieb Till Kamppeter =
<till.kamppeter@gmail.com>:
>=20
> [ This mail is addressed to people from whom I know that they have =
konwledge on
>  the inner workings of the PDF file format due to the projects they =
are working
>  on. ]
>=20
> Hi,
>=20
> Uddhav Phatak (CCed) has done a GSoC 2024 project on eliminating C++ =
in libcupsfilters, mainly by replacing the PDF manipulator QPDF by Mike =
Sweet's PDFio.
>=20
> His project report:
>=20
> =
https://medium.com/@uddhavphatak/gsoc-2024-final-report-the-refactor-repor=
t-a46756e9d6ce
>=20
> His code as PR #71 on libcupsfilters:
>=20
> https://github.com/OpenPrinting/libcupsfilters/pull/71
>=20
> Some parts he did not succeed to complete withing the GSoC time frame =
due to their complexity.
>=20
> What is remaining to be completed is flattening filled forms and =
annotations into static content of the PDF, so that the filled in text =
is correctly taken into account by doing page manipulations (like N-up) =
and that it is assured that the text gets printed.
>=20
> On this step Uddhav ran into a problem:
>=20
> -----
> Hi Till,
> I am not able to debug one issue, could you help me where I might be =
going wrong,
>=20
> form_english_filled.pdf and needtrue.pdf, both have needAppearances =
set as true.
>=20
> form_english_filled.pdf is successfully flattened as shown in test.pdf
>=20
> but when converting needtrue.pdf into needtrue-test.pdf, even though =
all the annotation objects are successfully converted to Xobjects and =
added into the page dict, I am not understanding why aren't they =
visible.
>=20
> Can you look through this and tell me where I might be going wrong, =
and what value is missing from the Xobject Dictionary.
> -----
>=20
> The files mentioned here are all attached.
>=20
> Anybody has an idea what can be wrong here?
>=20
> Thanks in advance.
>=20
>   Till
> <test.pdf><needtrue-test.pdf><needtrue.pdf><form_english_filled.pdf>

