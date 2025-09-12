Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AAD278146
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757692987; cv=none; b=J+0mzySoRgmiihk6h0BmazN+ak3nUbpv/Up2H432NFFEQ0n0EKbSSJL06j0hBHUSo7dWgEE1YjTLpb+eVEo/3+bjd0SQsYxqEF+ruH1/dgaT7T0NNpepZLb848hRBCdRuOZKLSGaOVnGdI7KPA42d1R31FhLmhw4IdwAlQttKxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757692987; c=relaxed/simple;
	bh=MGbeFmFjG89qbHfQ0WboJkc5g6Bq7VDCMCv46dY2ZsA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=KvBJOr/rEK0/z+3ioA0g919I2u2oKt89SORjwkz25HYZSpxTckkpxHXOOx+lCQXGCqlWo4b75eHJOod/B/a93uwRJnheDjX7Mj2DjAku/pL/xFQRi8ogrDZFYK3M3Chb+gOQzHSj8MI18N1brJoQQPAP0PwdjI0Pla2FhttGKJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=jxCF2/M7; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="jxCF2/M7"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1902E60B17
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.791
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dzmAMgcZNZQo for <printing-architecture@lists.linux-foundation.org>;
 Fri, 12 Sep 2025 16:03:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE98260ADF
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE98260ADF
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=jxCF2/M7
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp3.osuosl.org (Postfix) with ESMTPS id EE98260ADF
	for <printing-architecture@lists.linux-foundation.org>; Fri, 12 Sep 2025 16:03:02 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id F3AF080445;
	Fri, 12 Sep 2025 16:03:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org F3AF080445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1757692981;
	bh=MGbeFmFjG89qbHfQ0WboJkc5g6Bq7VDCMCv46dY2ZsA=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=jxCF2/M7zXscyiPtuk+cw5nBsZmg4kRXQ6Dk2rHQhmONqigv7+JOv2PHKotnrIRgp
	 ju+rPBd0s3/RegzGuHUB60Qq3fLITBEHP+W/ejAiwhpegDGkmkeypJ2/p/ktNMBWkI
	 Yp6wBifPBE4PouCZSFDtERc3kp6tQrvkN3wFi0iQ=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: PDF problem - Help needed
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAFRVfnOMmAiQMm_8rr01D0dcao6rvGqwTMKg_M1QZc9-eyb4mg@mail.gmail.com>
Date: Fri, 12 Sep 2025 12:02:49 -0400
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 Jay Berkenbilt <ejb@ql.org>,
 Chris Liddell <chris.liddell@artifex.com>,
 Tobias Hoffmann <smilingthax@googlemail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <75D468E9-E165-42EA-907D-782384029260@msweet.org>
References: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
 <883B30C7-C21A-4074-8D62-BCD0729778E2@msweet.org>
 <CAFRVfnOMmAiQMm_8rr01D0dcao6rvGqwTMKg_M1QZc9-eyb4mg@mail.gmail.com>
To: UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

It might be that the content is being rendered off the page; the example =
you supply would translate the content up 682.6 points (~241mm) and over =
253 points (~89mm). If the content is already located at this offset, =
that would be enough to move it off the page...


> On Sep 11, 2025, at 2:18=E2=80=AFPM, UDDHAV PHATAK 22BCE10731 =
<uddhavphatak2022@vitbhopal.ac.in> wrote:
>=20
> Hi Michael,
> Thanks for the suggestion. following your suggestion, I realized I =
wasn=E2=80=99t actually adding the stream into the page=E2=80=99s =
content stream. After digging deeper into both my code and QPDF=E2=80=99s =
implementation, I started creating a dedicated content stream for each =
XObject. For example, for an XObject named Fxo1, I generated the =
following stream:
>=20
> ```
> q
> 1.000000 0.000000 0.000000 1.000000 253.000000 682.600000 cm
> /Fxo1 Do
> Q
> ```
> The transformation matrix values come directly from the /Rect of the =
corresponding annotation object. I can now confirm that this stream is =
indeed being appended to the page content stream. However, the XObject =
still isn=E2=80=99t rendering or becoming visible in the output.
>=20
>=20
> On Thu, Sep 11, 2025 at 8:32=E2=80=AFPM Michael Sweet =
<msweet@msweet.org> wrote:
> Till,
>=20
> I don't have a lot of time to look at this right now, but from the =
standpoint of adding the appearance streams as XObject resources in the =
page dictionary, you still need to *draw* the objects from the page =
content stream using the "Do" operator.  For example, if the XObject was =
named "foo" then you'd need to add:
>=20
>     /foo Do
>=20
> to the content stream.
>=20
>=20
> > On Sep 11, 2025, at 10:50=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> >=20
> > [ This mail is addressed to people from whom I know that they have =
konwledge on
> >  the inner workings of the PDF file format due to the projects they =
are working
> >  on. ]
> >=20
> > Hi,
> >=20
> > Uddhav Phatak (CCed) has done a GSoC 2024 project on eliminating C++ =
in libcupsfilters, mainly by replacing the PDF manipulator QPDF by Mike =
Sweet's PDFio.
> >=20
> > His project report:
> >=20
> > =
https://medium.com/@uddhavphatak/gsoc-2024-final-report-the-refactor-repor=
t-a46756e9d6ce
> >=20
> > His code as PR #71 on libcupsfilters:
> >=20
> > https://github.com/OpenPrinting/libcupsfilters/pull/71
> >=20
> > Some parts he did not succeed to complete withing the GSoC time =
frame due to their complexity.
> >=20
> > What is remaining to be completed is flattening filled forms and =
annotations into static content of the PDF, so that the filled in text =
is correctly taken into account by doing page manipulations (like N-up) =
and that it is assured that the text gets printed.
> >=20
> > On this step Uddhav ran into a problem:
> >=20
> > -----
> > Hi Till,
> > I am not able to debug one issue, could you help me where I might be =
going wrong,
> >=20
> > form_english_filled.pdf and needtrue.pdf, both have needAppearances =
set as true.
> >=20
> > form_english_filled.pdf is successfully flattened as shown in =
test.pdf
> >=20
> > but when converting needtrue.pdf into needtrue-test.pdf, even though =
all the annotation objects are successfully converted to Xobjects and =
added into the page dict, I am not understanding why aren't they =
visible.
> >=20
> > Can you look through this and tell me where I might be going wrong, =
and what value is missing from the Xobject Dictionary.
> > -----
> >=20
> > The files mentioned here are all attached.
> >=20
> > Anybody has an idea what can be wrong here?
> >=20
> > Thanks in advance.
> >=20
> >   Till
> > <test.pdf><needtrue-test.pdf><needtrue.pdf><form_english_filled.pdf>
>=20
> ________________________
> Michael Sweet
>=20

________________________
Michael Sweet

