Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3381934575B
	for <printing-architecture@lists.linux-foundation.org>; Thu, 11 Sep 2025 15:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757603432; cv=none; b=l0InpiA07pHxPHqUWTYZwe8ZC1kFGwvwG0K0x65Ih/W+VZcy0iymAYafNlXcrKz/ehDdCoToXCR/JdzjbVYUVSXpWFQzJ1VZ2LfS9xw4lpPKmUsJZgkOJe/GLEs8GNB6eNuoB+dd9ZFi/6Z47DPgmMtipjWUsCxosy9Jm+D11EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757603432; c=relaxed/simple;
	bh=WPgkyh0EIACnrgeq4SeF8zQqEPVRkKS+EYSOovsmBZY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=Nhr5eiejkfvpOxMvqg/im8fB/ZS7XFLAbbXPtRIh5kEhJyMukVv5GmvOXWRVPe5RuNK5PjqOyy0tfzpYeQChumjbEkgADaIlsuXchsZwKBJSvtFtN9rvH21lCLnL8MKq4U4qwjIe+NB/cJzOTYjFC499AvbfphW9O+HU/sBr3Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=NMV75mQz; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="NMV75mQz"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A559441D68
	for <printing-architecture@lists.linux-foundation.org>; Thu, 11 Sep 2025 15:10:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -3.892
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S1ybTUbXHrpZ for <printing-architecture@lists.linux-foundation.org>;
 Thu, 11 Sep 2025 15:10:29 +0000 (UTC)
X-Greylist: delayed 474 seconds by postgrey-1.37 at util1.osuosl.org; Thu, 11 Sep 2025 15:10:29 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5196404CA
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5196404CA
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=NMV75mQz
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A5196404CA
	for <printing-architecture@lists.linux-foundation.org>; Thu, 11 Sep 2025 15:10:29 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 7F90C803C9;
	Thu, 11 Sep 2025 15:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7F90C803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1757602954;
	bh=WPgkyh0EIACnrgeq4SeF8zQqEPVRkKS+EYSOovsmBZY=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=NMV75mQz+wpiPSqy9nb+ePLwz5YPmCZ070ol+Z6bhNx9zucniC9HoNRkJxhA71ZPb
	 qlVU/XxpPPW6+FGGBgHtUHGMxppwnq7w7LcT6SAfItQRAj2itOF3KSr+/KQ0etzn4q
	 U8TTwtFFe86PQzMgs4yekdG5s6lKhOSJO3HY//OY=
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
In-Reply-To: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
Date: Thu, 11 Sep 2025 11:02:22 -0400
Cc: Jay Berkenbilt <ejb@ql.org>,
 Chris Liddell <chris.liddell@artifex.com>,
 Tobias Hoffmann <smilingthax@googlemail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>
Content-Transfer-Encoding: quoted-printable
Message-Id: <883B30C7-C21A-4074-8D62-BCD0729778E2@msweet.org>
References: <ed6f7e77-09f5-4df8-97b1-20358f28bccc@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

Till,

I don't have a lot of time to look at this right now, but from the =
standpoint of adding the appearance streams as XObject resources in the =
page dictionary, you still need to *draw* the objects from the page =
content stream using the "Do" operator.  For example, if the XObject was =
named "foo" then you'd need to add:

    /foo Do

to the content stream.


> On Sep 11, 2025, at 10:50=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
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

________________________
Michael Sweet

