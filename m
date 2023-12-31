Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01E2658
	for <printing-architecture@lists.linux.dev>; Sun, 31 Dec 2023 01:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="oxNMnpdt"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 96755803AC;
	Sun, 31 Dec 2023 01:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 96755803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1703984601;
	bh=96T4IUbn9S+c0ca2qElKnHGIcg678GFXutcUawAQg78=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=oxNMnpdtUEqXULeJBtPDhG/3fi+B0F+HHUiz+Hi+mNX5gPjqrFjySOwJZ6yzMvRtx
	 /CGk6MYOiordhLP4s1/uuuh6asd+KAirGUyanc4ZzWp2T9p6QDSP4dE0+xwYgQyd9u
	 3j9/Saw757ndt3XfRKb1NQb6XwKpRaatR+3uGeBw=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.12\))
Subject: Re: libcups3 with built-in copy of PDFio?
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b6af3b62-9d5e-40ff-947b-6cfe7e662d8a@gmail.com>
Date: Sat, 30 Dec 2023 20:03:08 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Akarshan Kapoor <akarshankap@gmail.com>,
 Kate Stewart <kstewart@linuxfoundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <0A5930C9-C763-4BC6-B013-138C2FE21A30@msweet.org>
References: <b6af3b62-9d5e-40ff-947b-6cfe7e662d8a@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3774.300.61.1.12)

Till,

> On Dec 30, 2023, at 6:09=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> Akarshan Kapoor has built libcups3 for testing some fixes he has done =
on libcupsfilters and libppd.
>=20
> Here he has discovered that the current GIT repo of libcups3 =
(https://github.com/OpenPrinting/libcups) contains a link into the repo =
of PDFio, and to build libcups3 one has to clone the libcups repo and to =
clone the PDFio reo, too and link it into the libcups repo at the =
appropriate place in order to build libcups.
>=20
> Mike, does this mean that
>=20
> - PDFio will get completely built into libcups3 instead of libcups3
>  using it as external library, linking to libpdfio for example?

The "bundled" PDFio library gets used if the library is not already =
installed - there is a pkgconfig check for this...  I chose to do this =
rather than having the PDFio files in the tools directory - among other =
things, it allows for PDFio to be packaged and used for other programs =
as well.

> - libcups3 has PDF handling/manipulation functionality as an integral
>  part?

No, although ipptransform (one of the bundled utilities) does.

> - libcups3 is part of OpenPrinting and depends on PDFio which is part =
of
>  your personal repository.

This is true, but then we also depend on a lot of other non-OpenPrinting =
software.

> So now I want to ask, should PDFio now get promoted to OpenPrinting? =
And should we have a libpdfio which libcups3 should use?

As with PAPPL, I have sponsors for PDFio and it isn't clear how those =
sponsorships could continue to happen through OpenPrinting.  Also, =
PDFio's scope is far beyond OpenPrinting.  So no, I don't want to =
transfer PDFio or PAPPL to OpenPrinting at this time.

________________________
Michael Sweet

