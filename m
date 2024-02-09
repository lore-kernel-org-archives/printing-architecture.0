Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A3514F6C
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Feb 2024 22:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707516771; cv=none; b=NU8PKL4LBLrXmcYS+76v4w42RDB1KjwzcROovvKsChu0t4XYmmXMdldt12Js2sSDkOenpChO/SAM7cfsL0BxzWPu1ZBPc0flxlXPH660vAORMOGDWUgtJNqwKFUYLMxyy6Xzjb4/IUaMCvUdlnvPmMj1wh7mc0+wMqPSAWEQSKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707516771; c=relaxed/simple;
	bh=WCtB5TO3jlvmk4bzh3iigeCTKp0cuA29Des3Yycr1aY=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=ckgVyflOLzshv5UfzmcqvReZJL6X0S2yyIZwB4wh6ez9dVyYRfnLSDLx/b7foCM3gRjZXEh8E1s/6ZwVd/ffSaqjJtAic3ws8MwKGPnDH2HZRYgiLqGpwzCVq4HPB4zkdzfPjTtgUZkuF3+ICILNcQWPJak14vgMy0DGOu9K+/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Wt5BV3rS; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Wt5BV3rS"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72DAC4240C
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Feb 2024 22:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1D3ULOooTJEE
	for <printing-architecture@lists.linux-foundation.org>;
	Fri,  9 Feb 2024 22:12:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AC1DB4240B
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC1DB4240B
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=Wt5BV3rS
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp4.osuosl.org (Postfix) with ESMTPS id AC1DB4240B
	for <printing-architecture@lists.linux-foundation.org>; Fri,  9 Feb 2024 22:12:48 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 5E03980F22;
	Fri,  9 Feb 2024 22:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 5E03980F22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1707516767;
	bh=WCtB5TO3jlvmk4bzh3iigeCTKp0cuA29Des3Yycr1aY=;
	h=From:Date:Subject:To:From;
	b=Wt5BV3rShvt00N01urmqXFVT7BBrNvyt5ChqmmokOMYW6XjwJnQx8J3HsrGXi4Evu
	 sxhYVgetuRGTntIkpeWepgVzHqdORxZipK8kxeVxxQ1Gz9P9IGfI3BGzkqyvlig6OO
	 SlD15KOC6YwcdyiwIRl8eUaRZgd0TsP2kiYUaYoU=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.11\))
Date: Fri, 9 Feb 2024 17:12:35 -0500
Subject: PAPPL 1.4.6
Message-Id: <80F5A7F2-92D2-4D66-8D94-B1324198FA58@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3774.400.11)

PAPPL v1.4.6 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.6

Changes include:

- Fixed reporting of "printer-strings-languages-supported" attribute =
(Issue #328)
- Fixed saving of "print-darkness-default" and "print-speed-default" =
values (Issue #330 and #337)
- Fixed incoming "raw" print socket support (Issue #331 and #338)
- Fixed web interface support for "printer-darkness" (Issue #333)
- Fixed some issues discovered by OpenScanHub (Issue #335)
- Fixed localization of command-line (main loop) interface.

Enjoy!

________________________
Michael Sweet

