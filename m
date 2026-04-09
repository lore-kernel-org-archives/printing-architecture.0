Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5683DCDA1
	for <printing-architecture@lists.linux.dev>; Thu,  9 Apr 2026 14:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775745020; cv=none; b=axeyPVZ9Y1QqOhUqRxKUUwLALqBagQSh7wZTLWEBeclyza7Ndm/pfkNaXGtAzfMd3jMmszv7m1Z6OsSd5FxKRr56SF4DyE+vXaj1Hv1xwJvwX64ZfwD2hYfNIe+UvXzxcVSfNfgGp7k/l8n2OWJHL18uG2hohQcvSlnG/1kRNrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775745020; c=relaxed/simple;
	bh=snFyz3b9ozJCMXTvaT9ef8eVPc0Fi25NrnA6uppcDBw=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=WXYPTBeQx7YLUPuWzj3amdmb6TA0EBQfSIvgI/tBaT88KOoUu54cM067JqHMTpYT7GS/elr6v+0KRTZFXlME2FraNZ7Z8rxNaaZOY7wTAkqB4LvXPTOdZW4wyEDk7HLj2l4xQqHm7nXVXRHk+ONkyOwhxd0Z7Xz5J06Pgjb9w8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=VcHUBBA7; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="VcHUBBA7"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id E93BA82425;
	Thu,  9 Apr 2026 14:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org E93BA82425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1775744568;
	bh=snFyz3b9ozJCMXTvaT9ef8eVPc0Fi25NrnA6uppcDBw=;
	h=From:Date:Subject:To:From;
	b=VcHUBBA7uwm6apHVT1BUu7L1Uib5BhdWCgX9G4usbfBuvhiLj9SN0pc03a/2vl+Yy
	 WV7GXg6oGD5l+arcbPBn9tIJcadgh/m9qfoDkQLr2YMRGjAP2GW8+/Mimha9q1sATh
	 wtsilQ24HQhfw8H+wwagrv6z5HbgV9RyQt5pBCrI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.1\))
Date: Thu, 9 Apr 2026 10:22:36 -0400
Subject: libcups v3.0.1
Message-Id: <1C1CEAD3-FA64-4FF5-AF9D-4E2854CB6B2F@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.1)

All,

libcups v3.0.1 is bug fix release and is available at:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0.1

Changes include:

- Updated the internal implementation of `ipp_t` to avoid issues on some
  embedded platforms (Issue #141)
- Updated `httpAddrLookup` to return a numeric address when the resolver
  returns "localhost" for a non-loopback address.
- Updated `cupsFileGetConf` and `cupsFilePutConf` to escape more characters.
- Updated `cupsRasterReadHeader` to validate more of the page header values.
- Updated `ippeveprinter` to support custom "printer-state-reasons" keyword
  values (Issue #142)
- Fixed a bug when the `ippFindXxx` and `ippSetXxx` functions were mixed
  (Issue #138)
- Fixed error handling in the low-level TLS read/write functions.

Enjoy!

________________________
Michael Sweet

