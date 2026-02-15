Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C761624C5
	for <printing-architecture@lists.linux.dev>; Sun, 15 Feb 2026 15:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771168365; cv=none; b=hjEXyP3oofPW2TofdjM1j7EgP154/+ldHO5ljOyR/rBYi7baAqukrW0n8q+8WzFXhi5gY8P8I53de6pjDRxVoDZ1UfOZBgTj2b47LhqkgtWzrjcRuxbHsGZYtS2INvUlC19iZqgZMdkTNQKv9BW/A7+ei4YekYSURzyUcCRfAJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771168365; c=relaxed/simple;
	bh=1ZbqVhQUMkMzLM7YDQWojiKPktm63rPrieimF8tCLaw=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=IDHpBBJFWsvX57eXvxfy5KvPMy5NBiQM+nWBh51qg0mLyF1gPPNXz7FILy3QbIT2tcpcuHugBT9GxD8gosw20VOgPFSQ3RXM8lZNMdVDbEiymR89TAzA4gw8pgTi9HgF5jwQc15a+HGtSDN/DGrzw3WAAExgglLa4wNkVop62/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=lMbIAIPs; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="lMbIAIPs"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 230A2803AC;
	Sun, 15 Feb 2026 15:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 230A2803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1771168357;
	bh=1ZbqVhQUMkMzLM7YDQWojiKPktm63rPrieimF8tCLaw=;
	h=From:Date:Subject:To:From;
	b=lMbIAIPs8bvh0yO+6X3ZbKhKh/wdBZQlj0OJU9jEiI+Lj500HeEfWFEOIYNZ9Hhfh
	 AM9cY8jPuLCbho3cWxI+lEg+Ib8xaMNCEl4LRpDjCFF/ptikikXStSJOe20U4sZf25
	 XXAqYYqmWEDfmiu1fQtCLDbP2E+Z19VMvAC6Y9WA=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Date: Sun, 15 Feb 2026 10:12:25 -0500
Subject: PDFio 1.6.2
Message-Id: <D70D60E9-2614-4682-8887-20A3BB2B79A7@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.400.21)

PDFio 1.6.2 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.2

Changes include:

- Increased the maximum length of a single string to 128k (Issue #146)
- Added missing range checks to `pdfioArrayCopy` and `pdfioDictCopy`.
- Refactored PDF encryption code to fix unlocking with certain files.
- Improved xref table loop detection (Issue #148)
- Changed how duplicate objects are handled in PDF files (Issue #155)
- Fixed xref reconstruction for objects lacking a `Type` value.
- Fixed `pdfioPageOpenStream` for indirect `Contents` arrays.
- Fixed an error propagation bug when reading too-long values (Issue #146)
- Fixed a bug when converting Unicode characters above plane 0 (issue #159)
- Fixed a Clang warning.

Enjoy!

________________________
Michael Sweet

