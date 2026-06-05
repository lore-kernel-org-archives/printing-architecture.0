Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE09257ACF
	for <printing-architecture@lists.linux.dev>; Fri,  5 Jun 2026 19:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780688474; cv=none; b=TTYKGUdfFY72ljaaio/KzIEnVUUxS9Zf4leYt2S3zjC7R/RfQzB+plPNclyAb6EzWjuyD6EVWBoaeic4L0/6bPbtH8VAS26Zi5dQVOgptNgKQsz8unMi7xAHSBzQdQV3m8Vt6YGt7PQdAl1SJG9uCnVPMIAyyYL76/RaZdpHB/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780688474; c=relaxed/simple;
	bh=UvIOgoSPblCC3SKkLRHRKmo/zYmaoG5pCCoA878EJVg=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=jotS1cP5RzLvLnv0T6lSIhEdzacxH/P39xlIOiPwc+N5GDlkAvrV3YRHz/lJBkST2XP7WnxiiIbYzJoknFO/tocxNjahtyi5qMUQH0kNzbRKvOnQvXukhg3TNo4g0zY0Ps5hQM+dquHS/MxkKqYoon72rI4NeDD2u+AWUD0/RjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=CQOYSMcf; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="CQOYSMcf"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 4FB7980F08;
	Fri,  5 Jun 2026 19:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 4FB7980F08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1780688472;
	bh=UvIOgoSPblCC3SKkLRHRKmo/zYmaoG5pCCoA878EJVg=;
	h=From:Date:Subject:To:From;
	b=CQOYSMcfeXUrU9+pcCHbDzLeBdNccHSRpg0zhapvbTU0L9K0De8XDzJ4doTN2AWhq
	 /KxOCrRqHImP/UV4zDhnL06xWTMWlRQZiaoQVDjAWBHl4x4/SrDyEQn0HKBCNDX2GM
	 /LFzGMjKRpyRK25Sgf2YhiWaGxGmlz4xln1THtnY=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Date: Fri, 5 Jun 2026 15:41:01 -0400
Subject: PAPPL v1.4.11
Message-Id: <7142CB77-0239-46F4-811C-D3153FDE23D5@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

All,

PAPPL v1.4.11 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.11

Changes include:

- Updated the programmer's manual (Issue #418, Issue #419)
- Updated Set-Printer-Attributes validations checks.
- Fixed builds on FreeBSD and other systems without a sys/statfs.h header
  (Issue #411)
- Fixed a deadlock issue in the USB gadget shutdown code (Issue #417)
- Fixed a truncation bug when decoding SNMP string values.
- Fixed the handling of the finishings option.

Enjoy!

________________________
Michael Sweet

