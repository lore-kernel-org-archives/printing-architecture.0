Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F8513D26B
	for <printing-architecture@lists.linux.dev>; Fri, 20 Sep 2024 19:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726859429; cv=none; b=ZgTe33YiHapLrj+YnV/8YRu9SG7qHMZD7zTTFp3IhF7jEA1rYC+k+c+cScHHNy+7olIsioFjS3oiKE6omW8bk3zB4Tx58gCYbUbUS1dMtrbT+0x6OlaFkBOE8eEYxR19LYr0/Ba2+eoMEI+qJMKAirCwnCjmYFAcL/vSClPeJz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726859429; c=relaxed/simple;
	bh=0W3bkB+QlZVYz8k5hanabUjwjDrRDi6vFPG+GnmmVkI=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=OyeJwM55s+HnKqvbiwE6rNwmDPMdHRNaWH4dJgEDzHdvIVyltED4DgXG+4Y9U7PeX+xyFhj0B/yvta0n3hwBAYOcA4PG2LOibKxqQw02ogITIn1dGMqyPNsev91HdKh2fg40WvPoIBVF834V4PqcTC6YUDrhG4jmjUloJWEiHdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=fyFQLvs7; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="fyFQLvs7"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 95A20803DC;
	Fri, 20 Sep 2024 19:03:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 95A20803DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1726859009;
	bh=0W3bkB+QlZVYz8k5hanabUjwjDrRDi6vFPG+GnmmVkI=;
	h=From:Date:Subject:To:From;
	b=fyFQLvs77UYV0SPtK+QcIegrO4Z64E36VXLdsITO09uY45I6QJNaQb8JtkZhf+x8H
	 QRSL4hEemhKHdnEs/N24m5AtQu4ao8ckRfw5PKqe60D/NZ930F8a5r56EnJB2rqM3U
	 4oTj2t1sM7tkFO99ahKko9OxV0J/QBYWKKCCAnn0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3818.100.11.1.3\))
Date: Fri, 20 Sep 2024 15:03:18 -0400
Subject: libcups3 v3.0rc1
Message-Id: <D6E31DFC-0D86-46AD-A089-35F2438C2569@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3818.100.11.1.3)

libcups v3.0rc1 is the first release candidate of the CUPS v3 library =
and tools which remove deprecated APIs, add new APIs, and normalize =
existing APIs.  Available at:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0rc1

Changes include:

- Added `cupsFormatString` and `cupsFormatStringv` APIs to safely format =
UTF-8 strings.
- Added support for per-user instances of `cups-locald` (Issue #69)
- Added `httpConnectURI` API.
- Added "end" argument to `cupsParseOptions` API.
- Renamed `httpReconnect` to `httpConnectAgain`.
- Updated `cupsDestInfo` to accept a `cups_dest_flags_t` argument.
- Updated `cupsCopyString` and `cupsConcatString` APIs to safely =
terminate UTF-8 strings.
- Updated list of attributes included in the destination options.
- Updated `cupsAddIntegerOption` and `cupsGetIntegerOption` to use the =
`long` type.
- Updated `httpAddrConnect()` to handle `POLLHUP` together with `POLLIN` =
or `POLLOUT`.
- Updated the various tool man pages, usage output, and examples.
- Updated `ippCreateRequestedArray` for the Get-Documents and =
Get-Output-Device-Attributes operations.
- Updated `ipptool` to validate IPP, PDF, and .strings files using the =
"WITH-[ALL-]CONTENT" predicate (Issue #87)
- Now use installed PDFio library, if available.
- Now use NotoSansMono font for `ipptransform` text conversions.
- Brought back IPP/2.x and related conformance test files (Issue #85)
- The `ipptransform` program now supports uncollated copies.
- Fixed GNU TLS crash.
- Fixed PCL output from `ipptransform` (Issue #72)
- Fixed JSON output from `ipptool`.
- Fixed hang/crash in `cupsEnumDests`/`cupsGetDests` (Issue #74)
- Fixed encoding of IPv6 addresses in HTTP requests (Issue #78)
- Fixed encoding of `IPP_TAG_EXTENSION` values in IPP messages (Issue =
#80)
- Fixed error handling when reading a mixed `1setOf` attribute (Issue =
#83)
- Fixed non-quick copy of collection values.
- Fixed error handling in `cupsConnectDest`.
- Fixed TLS negotiation using OpenSSL with servers that require the TLS =
SNI extension.
- Fixed a certificate loading issue with OpenSSL.
- Fixed cupsAreCredentialsValidForName with OpenSSL.
- Fixed how `ippeveprinter` responds to an unsupported request character =
set.

Enjoy!

________________________
Michael Sweet

