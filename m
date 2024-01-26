Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D351DDEA
	for <printing-architecture@lists.linux-foundation.org>; Fri, 26 Jan 2024 19:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706296718; cv=none; b=pX8v4dxCxN+GJ67L7NUblyjQGXor3j2oqF7Z1oS++/sI6rQ2vnuLMpJyHaxq62gaKgf5VGzI9kpTQYJlzntXiNxJ9Ardv/DeypWII2j9DfvjTlBCr6JJTh2cQrRmlrA8n4te8jGlNj7AtZHjmCcxPcR0HeKq9XY0tqlK0XVbR0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706296718; c=relaxed/simple;
	bh=s2ElUhPqVgmjkXsicCHAWv4xTButjg6T/uT6/NGnXaA=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=uSpZXhT3bkcq/nDCcFCeIsMBvZkSq+BorC5jhaSfP4nqFt56yIervkBjusM6NM4w9jXiocosCzDDPaE/uwDYTJEnEDVFMCSLxq8M8u6YNoygT+ghdswXkG9tR/Fx6i+0y3ZVyMo/Q6KmexDCbCo6FHdUGZY/+pJvtYHwobC1BFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=OUVGeJDi; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="OUVGeJDi"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C81040589
	for <printing-architecture@lists.linux-foundation.org>; Fri, 26 Jan 2024 19:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C81040589
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=OUVGeJDi
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id diBrgJwodLeg
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 26 Jan 2024 19:18:35 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 36CB440160
	for <printing-architecture@lists.linux-foundation.org>; Fri, 26 Jan 2024 19:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36CB440160
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 9522081C8D;
	Fri, 26 Jan 2024 19:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 9522081C8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1706296713;
	bh=s2ElUhPqVgmjkXsicCHAWv4xTButjg6T/uT6/NGnXaA=;
	h=From:Date:Subject:To:From;
	b=OUVGeJDixhdF8+Qxov8udQ+GGSfNMu1v8XWzTeI7CnOblMkESQouBE/OepCWNsnMc
	 +0a3YtTn3cvxarLjrfBt8HRB4qYMj+yR+7tM/W6Hc3mLWgEiSbljEmASm5RYl9+tyB
	 VKtrMX5OwH2M55IQxDpD8w4U4Dml7g0Bawu32+Ds=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Fri, 26 Jan 2024 14:18:22 -0500
Subject: PAPPL 1.4.5
Message-Id: <2569F880-1971-479F-B096-296D5054B900@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)

All,

PAPPL v1.4.5 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.5

Changes include:

- Fixed `--disable-libpam` configure option.
- Fixed support for "finishings", "output-bin", and "sides" options.
- Fixed IEEE-1284 device ID generation code.
- Fixed crash in retrofit printer application (Issue #322)
- Fixed some Coverity-detected threading issues.

Enjoy!

________________________
Michael Sweet

