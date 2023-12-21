Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E995634F9
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Dec 2023 20:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="nuCn/EMB"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D65AB60ED8
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Dec 2023 20:58:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D65AB60ED8
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=nuCn/EMB
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x4AH9OX5Mm1S
	for <printing-architecture@lists.linux-foundation.org>;
	Thu, 21 Dec 2023 20:58:44 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 250AD607A1
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Dec 2023 20:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 250AD607A1
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id BE29E80445;
	Thu, 21 Dec 2023 20:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org BE29E80445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1703192323;
	bh=adPBwuJwCs7vDHLve+jfBjeOm+INdNgSn7ZyR7LDRgs=;
	h=From:Date:Subject:To:From;
	b=nuCn/EMBEZG9xnG4Tbc4LRUsbbxCYOzS9DBpV+q71eAG5zP/XeETinsJLMBa2TRH+
	 sZ7wdZQUqkPg6y+9WHZFctjZ2YiklgGcKXFui5sOYSZTmntUavxiIUx16u2CHOsRby
	 L2E37yVUHkU/NpzVeuVHSEU5GP7j/1GzQI6tVbgo=
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
Date: Thu, 21 Dec 2023 15:58:31 -0500
Subject: PAPPL 1.4.4
Message-Id: <1CB46E77-D553-480B-B944-D95D96AA2CB1@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)

PAPPL v1.4.4 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.4

Changes include:

- Fixed "printer-settable-attributes-supported" value (Issue #311)
- Fixed `-n` support for setting number of copies (Issue #312)
- Fixed `papplPrinterSetDriverDefaults` didn't set the
  "orientation-requested-default" value (Issue #313)
- Fixed job file preservation logic.
- Fixed builds against current libcups3.

Enjoy!

________________________
Michael Sweet

