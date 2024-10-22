Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCFB78C8B
	for <printing-architecture@lists.linux.dev>; Tue, 22 Oct 2024 16:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729614793; cv=none; b=A2cO5mFJwCeVBM4o5PX0Yq8jxjAb+jkdDUh8DD+JEuVn9bHoZoaHbkPT/JpTLuW2WmZDkgNIqJJV42nwm3vZYgjNPyB28ysS4MaKQvBZIN3VSamt6sUZ11gYT8zan06Cl2HAIZFadAxiKRs6zljawyOcj4NfXReZCF9X+Acarkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729614793; c=relaxed/simple;
	bh=t3wD1d/dSQez4+VonKtaYL26CF+7oI0R83eVLI++CYA=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=mTPJeBK2+J6uxhiJiMKfN2PtHeIpm8NfbbGsM6OLNA3YyV7ABcagueelzb0ZC6jv1OBLGD/vTvOE0AedGfxKYxjpZkII3itgMziNQduU18gOPZdrRcckwOBQN9IFxU/ccAxBu6huLoNDAkDVM0/lkgOgv2TBfOaHBOD/BTyc5iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=kXT93B4Q; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="kXT93B4Q"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 30B28823D7;
	Tue, 22 Oct 2024 16:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 30B28823D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1729614785;
	bh=t3wD1d/dSQez4+VonKtaYL26CF+7oI0R83eVLI++CYA=;
	h=From:Date:Subject:To:From;
	b=kXT93B4QwTWezsLkZK2Sw0ujcjqSbjzcVadpry0bNhs0BXwa/3TRHt+aXo7RYvJLm
	 N3548kw3/Pqq12TnIV8CfG/Ab+pv0I180GEgZgOW4k5orY9ew1q296K/QmXVUMu1tW
	 z0HjkPv/aqY4/7fDwFd6xZzjpwy4tZFtcMzRISvg=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.200.121\))
Date: Tue, 22 Oct 2024 12:32:53 -0400
Subject: libcups v3.0rc3
Message-Id: <4D241E26-2BA0-41E4-90FD-8224692B5BC2@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.200.121)

All,

libcups v3.0rc3 is the third release candidate of the CUPS v3 library =
and tools which remove deprecated APIs, add new APIs, and normalize =
existing APIs:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0rc3

Changes include:

- Updated `cupsCreateCertificateRequest` to store the new private key =
separately.
- Updated `cupsSaveCredentials` to validate the input credentials, =
support using a saved private key from `cupsCreateCertificateRequest`, =
and support credential removal as documented.
- Updated the raster functions to report more issues via =
`cupsRasterGetErrorString`.
- Fixed a crash bug on Windows.

Enjoy!

________________________
Michael Sweet

