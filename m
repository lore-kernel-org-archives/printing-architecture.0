Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A04612BF32
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 17:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706720681; cv=none; b=fzssrfFlFSN3SISVseTC6WEdYmVJtqbphdyTfeH1XsQKZnDsi2Kv+jMRXGK4g3cy9n3t/0WfnR+C3yK9skx110lgTxwo3z7ilaUhSeog/OlXBtT5vgaydfBftaauprSzMUQcz4hs7E2TSbwytufPe8S903Hb2zU/nJlf0Y0Uh6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706720681; c=relaxed/simple;
	bh=FbotXWqqDib5yUEpUznGccwBQ8JscQjt8UGpplrUc6w=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=Cf4tG9GKgSYGKyonijwlY+LkwAEG+QHrmaosUhhCaCENVCRRPoCT8kfir/y8cvotKMZeRZCvSjo5U+Sr6nu4XSlCNnsf/ILX4cEaVFs0WDk5uQMsKbJCPbt74ToY3hRC4q16JHocxl5BG94EzkxZ6PIyGUx6BTZjuUZQr4iy038=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=l80hYZe+; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="l80hYZe+"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3EC383DFB
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 17:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3EC383DFB
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=l80hYZe+
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bBO3KpHU5vhO
	for <printing-architecture@lists.linux-foundation.org>;
	Wed, 31 Jan 2024 17:04:39 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 39B5983CBC
	for <printing-architecture@lists.linux-foundation.org>; Wed, 31 Jan 2024 17:04:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 39B5983CBC
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 1FF5D80F09;
	Wed, 31 Jan 2024 17:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 1FF5D80F09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1706720678;
	bh=FbotXWqqDib5yUEpUznGccwBQ8JscQjt8UGpplrUc6w=;
	h=From:Date:Subject:To:From;
	b=l80hYZe+jZhvVFUODd/6BHrWXZld5JrDD8v36TDNV+Y338bhSzdOcWUGxfRvrNs+U
	 IOpr4DLFnFg+LVIXE8nMfldpstr1OYI/DcDuS3qBCldDq/k0CXbV9NB7hBjLx/bmei
	 h5qp62JTzjszHLaR6m52D/VBis1q0Jq0cWq2/MJs=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Wed, 31 Jan 2024 12:04:26 -0500
Subject: LPrint 1.3.0
Message-Id: <6AABDE8A-AAE5-4887-9F75-1972053ECC26@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)

LPrint v1.3.0 adds a new dithering algorithm, support for new printers, =
support
for configuration files, and fixes a number of bugs:

    https://github.com/michaelrsweet/lprint/releases/tag/v1.3.0

Changes include:

- Added new dithering algorithm to better support barcode printing with =
shaded
  content.
- Added experimental Brother printer support (Issue #15)
- Added basic TSPL printer support (Issue #54)
- Added basic SEIKO printer support (Issue #58)
- Added experimental Zebra CPCL printer support.
- Added support for configuration files in "/etc", "/usr/local/etc", or
  "/Library/Application Support" (macOS).
- Updated ZPL driver to report 'media-needed' reason when out of labels =
during a
  job.
- Fixed copies support for ZPL printers (Issue #100)
- Fixed darkness calculations for EPL and ZPL printers (Issue #104)

Enjoy!

________________________
Michael Sweet

