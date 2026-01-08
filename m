Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEF82DAFA2
	for <printing-architecture@lists.linux.dev>; Thu,  8 Jan 2026 21:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767907529; cv=none; b=G2SemUyaUzvcFOQdDAtUxvQLbr+CYxU7pa4ehpkAnrv08jyO8jYMcxCbMv4upiX1CRKg5g+hhR6yWo8PDChC+MZQ97iUlbWzaVnwzDdzeWcmt55y7bli5NrcZgI1zcNGKdAWBT4nFGunY9I/RD5hQatidmBJ175iM2w3DR951LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767907529; c=relaxed/simple;
	bh=vu9kfuVY6CFufqnKYEHEd/2edBDM3+NmKbsvR0op0AA=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=fAy6R28cEGamyOES+kw5w4oL1mWlkSX7GiOp1fObb6gA7FZTXXB4jLH8GIt2uI0wtwHz1cNo7TNS5aVkd2c4rC6Qdr3BIWFE3OsxiHwYQEbRE9eCtslFMmSH8LYWVk+IvreTVV6jUO7ucgCN7vCDCMR8n1k7t3y/PLFItPVT8X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=RBelFYG7; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="RBelFYG7"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id C61EC803AC;
	Thu,  8 Jan 2026 21:18:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org C61EC803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1767907131;
	bh=vu9kfuVY6CFufqnKYEHEd/2edBDM3+NmKbsvR0op0AA=;
	h=From:Date:Subject:To:From;
	b=RBelFYG7iB54+Yn8mqGvnpw5bX2a/JGrAaHRKhw76LuHPMZQ8rimDoDxaKHG/q3aX
	 6W+8pZ2rc7aCduIKAuPaCNcw1ZRNtgO2k5G/NYVlrtnHU8Zi57QDMID/pl8WmgaDds
	 IdIP/bh5VtgnDWZHrMN9c+VbWf0EkS+hOt9QCO7Y=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.1\))
Date: Thu, 8 Jan 2026 16:18:39 -0500
Subject: libcups v3.0.0
Message-Id: <5E69B32D-10A0-44EF-A747-895FCB43CD2A@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.400.1)

libcups v3.0.0 is the first stable release of the CUPS v3 library and =
tools which remove deprecated APIs, add new APIs, and normalize existing =
APIs:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0.0

Changes include:

- Added `cupsLangIsRTL` API.
- Added `cupsOAuthGetDeviceGrant`, `cupsOAuthGetJWKS`, and =
`cupsOAuthGetUserId` APIs.
- Added `httpGetCookieValue` and `httpGetSecurity` APIs.
- Added an "install" sub-command to the `cups-x509` command.
- Added a "--user-agent" option to the `ipptool` command.
- Updated documentation (Issue #113)
- Updated the `cupsOAuth` APIs to support sharing of some OAuth values =
between the system (root) and per-user cache values.
- Updated the `cupsJWTNew` API to accept an optional JSON claims object.
- Updated the `httpSetCookie` API to support multiple "Set-Cookie:" =
header values.
- Updated `ippfind` to use the `cupsGetClock` API.
- Updated `ippeveprinter` to include all ready and supported attributes =
and values in the environment when processing a job.
- Fixed `ipptransform` media handling to preserve input document =
dimensions when "media" or "media-col" are not specified (Issue #102)
- Fixed `cupsJSONExport` functions with empty arrays or objects.
- Fixed `httpGetDateTime` for dates in the far future (Issue #124)
- Fixed input checks for `cupsCreateCredentials` and =
`cupsCreateCredentialsRequest` APIs (Issue #125)
- Fixed return values of `ippDateToTime` when the timezone isn't GMT.
- Fixed a potential timing issue with `cupsEnumDests`.
- Fixed a bug in the Avahi implementation of `cupsDNSSDBrowseNew`.
- Fixed a memory leak in `httpClose`.
- Fixed some Coverity-detected issues.
- Fixed support for device authorization grants.

Enjoy!

________________________
Michael Sweet

