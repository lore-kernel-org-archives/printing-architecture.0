Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE3F1974EA
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 Nov 2024 20:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731614495; cv=none; b=H4xTnsT4sCPLaYJhwtest8ylDc063ZzOov9jsQWf/oWCQ6qHcYEzGnxoZGIPw9yU4wx6+MnqqZyVdIIgm7pVeiDjizT34kcEA+0yDmsnpT5gZZeaqTdRIth82j1+zOiSpnI8k+zkres4VUI1Zw1zvo1xXtYfmcq4Ui9KB/e9R8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731614495; c=relaxed/simple;
	bh=YepEFbD8M8JsGbpxu5iqgVmDOA+YRwj8S5eyBLZk5c8=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=fDvUkgNLTTbhy+qV6Qdfzoo1Icha1TzONzdDUCs72VtUoeejybjzOLj0whdR7I04iShchMq8zWmIsTTVNesZBw1nuUSZ4X/t3YzK2SJZFkDfiULwZurTFBwWMQGWQOJjvZJX9tO4yM/OKPRa6J7iDFbNMtvFFoXaOda30cwOTR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=bdpFnHoN; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="bdpFnHoN"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 29A40606ED
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 Nov 2024 20:01:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.791
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GBZ1uCZ214Xz for <printing-architecture@lists.linux-foundation.org>;
 Thu, 14 Nov 2024 20:01:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 531E360722
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 531E360722
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=bdpFnHoN
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 531E360722
	for <printing-architecture@lists.linux-foundation.org>; Thu, 14 Nov 2024 20:01:33 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 47D9F80F11;
	Thu, 14 Nov 2024 20:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 47D9F80F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1731614492;
	bh=YepEFbD8M8JsGbpxu5iqgVmDOA+YRwj8S5eyBLZk5c8=;
	h=From:Date:Subject:To:From;
	b=bdpFnHoN/3087xH7vNJOXFRFpt7ca5FgYxZsjR8SKVo6c4QB5q3E0nk1S92rPmteP
	 X83+pE+GyEE7hfDHpQ3Rsz/apadaoU3HKrUR9lZa1yctPBp/oNbhVtLaGz1QphbdUS
	 gz8q73vrNSSbosO4nowlbBuLeqy/HoUSHW+lAakU=
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
Date: Thu, 14 Nov 2024 15:01:20 -0500
Subject: PAPPL v1.4.8
Message-Id: <1D75BE35-2D57-4F2D-80D4-A4F53AA45985@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3818.100.11.1.3)

All,

PAPPL v1.4.8 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.8

Changes include:

- SECURITY: The web interface password didn't work properly (Issue #373)
- Now use the "listen-hostname" hostname as system hostname if a name is =
specified (Issue #369)

Enjoy!

________________________
Michael Sweet

