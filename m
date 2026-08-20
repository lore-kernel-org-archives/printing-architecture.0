Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9029A3D9DAC
	for <printing-architecture@lists.linux.dev>; Thu, 20 Aug 2026 21:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787261137; cv=none; b=BrJ4Ibo+x6VBXNVTep+PyPmHb410BAGTqZQ5JZKMD3ePghxhEUGI+0lU+P5w+wVBG3Zx9+YB1WDNp7LB97lTNMHJ30BoUS2VG66ACLfYDcUEki/wPjXX3VIwSb0WbT3vteJRePSMtkqzscg561I3i2ddz+XEPTcsql8BAkoAPdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787261137; c=relaxed/simple;
	bh=y5BPPjpaU+pOS/cYALzoVbThCtcmpZM9Vg1yM9mLKdU=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=dlEkMigbpepN6mAfVgZ6ZX5SDIM0YV8sEgfeyeu6FCteicRRo0zVqDhWgFwkIdQcywZaj5qf7nP2tWjRO/mbXtSCduXwORgEBRYqUdOsaVyAS66XOLaDZf2xDcI39nKXOAc0uzz1P4jGwSyiy4NBUMTpe5CNqaVvsA2Oyqgb4AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Cx4m1mjk; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Cx4m1mjk"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id CA91082444;
	Thu, 20 Aug 2026 21:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org CA91082444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1787260580;
	bh=y5BPPjpaU+pOS/cYALzoVbThCtcmpZM9Vg1yM9mLKdU=;
	h=From:Date:Subject:To:From;
	b=Cx4m1mjkoUK6MXZMjBTmAUot+BN7EZEomD2S0hSJ9bmGFvCnXW8ZaQSwrSJKqTCyq
	 cqV/3tj1/3ZQmj5NJ7BbX4tQZ0xH0BjDpbYH53Ko1PzI2wIANFogODXkupZDJWDQ6W
	 R/NnhWqAHx2lMxud+Rjc+g+eV66SVKdbs1byiLK0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Date: Thu, 20 Aug 2026 17:16:08 -0400
Subject: PDFio v1.6.5
Message-Id: <4342F3B2-8ED4-4A25-A5D7-FE74A112A489@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

All,

PDFio 1.6.5 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.5

Changes include:

- CVE-2016-*NNNNN*: Fixed reading of invalid empty AES-encrypted =
strings.
- Fixed `pdfioContentTextXxx` output with Unicode characters past U+FFFF =
(Issue #171)
- Fixed `pdfioPageCopy` with a damaged input PDF file (Issue #174)
- Fixed error recovery when reading values (Issue #178)
- Fixed `pdfioContentTextXxx` output with invalid UTF-8.
- Fixed import of 16-bit PNG files with alpha.
- Fixed `pdfioDictSetStringf` which wasn't making a copy of the =
formatted string.

Enjoy!

________________________
Michael Sweet

