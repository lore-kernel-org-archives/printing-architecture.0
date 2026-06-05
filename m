Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BFC40861F
	for <printing-architecture@lists.linux.dev>; Fri,  5 Jun 2026 19:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780686632; cv=none; b=FcwBGuggges2GIWX3b7+gZzzhnpcRPIR9YW4lYQ4njfbgYtrqcAWxClAjQBQODhcUf1Yaz38bXN+EjYUm35aLLytTJQXNQ0khTcwrUS14QmwV2nEcyGZIvWCa4QZS+ht72T5+zHRZ+FUC05Sd09fFdhz0yqhKZszKG50rBR9cZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780686632; c=relaxed/simple;
	bh=hs+bwROxpPyO/cERnBqwSCqChDrD2+RUmd7ZyGHIQeo=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=teNrz9AAkV1JZ980im7RSzRElsU59yEWgj6T+0Pxkb9TwJp+8XWwwpL+mCAnxPOO8+8olhHhSPQT+ZfOYdkc1MzPVxzIYVEhSWtuaiBCO+4qaLQhSnk2os7ndd+MYz9gm9ICOAGePlJ6qBHK5GV+WRus2xfL3KVnZ58mjFsHt6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=QSsPB7kk; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="QSsPB7kk"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id A29BA80F08;
	Fri,  5 Jun 2026 19:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A29BA80F08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1780686147;
	bh=hs+bwROxpPyO/cERnBqwSCqChDrD2+RUmd7ZyGHIQeo=;
	h=From:Date:Subject:To:From;
	b=QSsPB7kkz2OVM39hTt2UelPgSOtV2QFa1TwGFqADUxvUqxXaZ4SxXALtZSh8jAlh6
	 qSBLQrCGlbJbtxNLkl/O9/fAYVh6gJBY3Brm8CHC1sHIAs+lE0DqNCA2gtLimHuiRR
	 byLhCp2ypL7EiyzNiIhatZKE0tGR/D365XJAf6LU=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Date: Fri, 5 Jun 2026 15:02:16 -0400
Subject: PDFio v1.6.4
Message-Id: <5FD682B6-04AB-4027-8938-3A886C3C0C2D@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

All,

PDFio 1.6.4 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.4

Changes include:

- Fixed `pdfioPageCopy` implementation to not force a CropBox value =
(Issue #166)
- Fixed AES padding (Issue #167, Issue #169, Issue #170)

Enjoy!

________________________
Michael Sweet

