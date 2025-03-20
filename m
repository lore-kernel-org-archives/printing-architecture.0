Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E081E9B02
	for <printing-architecture@lists.linux.dev>; Thu, 20 Mar 2025 16:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742489647; cv=none; b=JLW5o68Em5eYx6Z05AORqnHgSew7sEA8f/xQFC7wTiOSsODPm0mG/xUHk6gRYEf9qLoRblRNol9b9j7vGYHv1aEhOtztuAO94XHK3H3mz56flTIeeE3A344ws07vJ+n8fUG4i4dSOEOYuASNSgcpnJ2lB+J84tIN09LIyyTkcRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742489647; c=relaxed/simple;
	bh=h9IN14zQ4uCyu12OdiM823Uaf3udDW1QbTatQXetwUg=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=F77DDP1kU17faT8iQmk/JyV/DvnGiP7p5+g9E328BdbDrizRUFrW3mWzrumPeUhff1gruc54jgdwjUMVReeC5zwH848NLaIaH8nf5P7jbWjqqhshvcjaIoa3Azmg0STQ8l8kKFiD+DnDcU57wIuC8TAvCvxPEp4SFV00GI+FHyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=GYvCAkQM; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="GYvCAkQM"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 21B5180444;
	Thu, 20 Mar 2025 16:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 21B5180444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1742489639;
	bh=h9IN14zQ4uCyu12OdiM823Uaf3udDW1QbTatQXetwUg=;
	h=From:Date:Subject:To:From;
	b=GYvCAkQMHY0m2eQYfwrEl/l+umKFhkr+ZCSEUq2TW/t1QJbSMNaaawD5sjA6o7Era
	 9iMmRye3C1br5lBVm7ACIGFRLPfhkRbcOQ6Q+GuPhO+5KatQn5d7Fha32rFzRa24wj
	 3GZS2loRc8Y6KQPoADzJUoF9UQsJO9lQLHZbqIQQ=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Thu, 20 Mar 2025 12:53:47 -0400
Subject: PAPPL 1.4.9
Message-Id: <EC8EB08E-006A-4FBC-B9D1-0E33F82A20B5@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

All,

PAPPL v1.4.9 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.9

Changes include:

- Fixed a bug in job event notifications.
- Fixed a bug that would delay shutdown by 60 seconds.
- Fixed some notification bugs.
- Fixed validation error checking bug in `papplPrinterCreate` (Issue #385)
- Fixed page number that is passed to the raster endpage function.
- Disabled raw socket support on Windows.

Enjoy!

________________________
Michael Sweet

