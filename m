Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0854F20322
	for <printing-architecture@lists.linux.dev>; Tue, 18 Mar 2025 19:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742326521; cv=none; b=BU0byUquCP41zjIf3tOdPj5DJ9hhZ59r+LuySq4uZMZZIsETCvoTjoacVp+kSEt/ICkYFQVJg5joghhHtxZPZoVwty2kG/COv2JUsgdhragOPABLTnp0C4mlwSh66G9AduneOwILzGP8JU4+Tbf3PUIubmPuAdA7Fq/BWMPYHgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742326521; c=relaxed/simple;
	bh=W6yl8X+oTLsnpmYUtGM8TadiXwNOOr3iQKXrYVcfEws=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=sEwcT5O8BeXSu2aHLdhI0v7Qrdjr6u8xmhq+lvmsNVjzrx7Pp1OT5Dyk+c1BDJN56rdq5Y/4Nkkww2IY8mWZaEnpv5w3O+jT4zS3iMpwDrVK5mL7hCUl4/qfmYEtFO8r3qsYC8ZMp0XkcLsz4jGJqbCJmMXEX8MTfeY0rLX4Dos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=mLCv8RGP; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="mLCv8RGP"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id EE742823F8;
	Tue, 18 Mar 2025 19:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org EE742823F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1742326153;
	bh=W6yl8X+oTLsnpmYUtGM8TadiXwNOOr3iQKXrYVcfEws=;
	h=From:Date:Subject:To:From;
	b=mLCv8RGPRo9OLuym2jeypEN4NNwSH3WAQcp8XO9CuM3LS27a1pmOPFbhKM0HBX3WU
	 QwREAheyILTrP00N504bdSCGE7nn5ACAtVWoHXoD6BGkptmlHTLcQCn9S112f+2w7j
	 +IT5brt7r6jtEciiSH8RHWklOpC0LnTqLTfotEoo=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Tue, 18 Mar 2025 15:29:01 -0400
Subject: libcups 3.0rc4
Message-Id: <AAF73484-5AD6-46B0-AC62-0E1258230F12@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

All,

libcups v3.0rc4 is the fourth release candidate of the CUPS v3 library =
and tools which remove deprecated APIs, add new APIs, and normalize =
existing APIs:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0rc4

Changes include:

- Added `cupsCopyCredentialsPublicKey` API.
- Added `cupsGetClock` API.
- Added `cupsJWTLoadCredentials` API.
- Added "client.conf" man page.
- Added `cups-oauth` and `cups-x509` utilities (Issue #108)
- Updated documentation (Issue #99)
- Updated `cupsDNSSD` APIs on Windows (Issue #29)
- Updated the `ipptool` utility to support the `--bearer-token` and =
`--client-name` options.
- Updated `cupsOAuthGetMetadata` to support Microsoft Azure/Entra OAuth =
servers.
- Updated `ipptransform` to support generation of PCLm output in =
addition to PWG Raster data.
- Updated `cupsEnumDests` and `cupsGetDests` to support printer browsing =
and filtering options in client.conf (Issue #106)
- Fixed handling of finishings/finishings-col and media/media-col in the =
`ippeveprinter` tool (Issue #95)
- Fixed a duplicate printer reporting bug in `cupsGetDests`.
- Fixed handling of `NULL` path in `cupsSaveCredentials` API.
- Fixed handling of default authorization strings.
- Fixed validation of dateTime values with time zones more than UTC+11.

Enjoy!

________________________
Michael Sweet

