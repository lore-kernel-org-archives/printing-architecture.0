Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46240125AB
	for <printing-architecture@lists.linux-foundation.org>; Fri, 29 Dec 2023 15:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="dBus9yHW"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BF79240360
	for <printing-architecture@lists.linux-foundation.org>; Fri, 29 Dec 2023 15:30:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF79240360
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=dBus9yHW
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WV579FnKIAsM
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 29 Dec 2023 15:30:41 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BE54740120
	for <printing-architecture@lists.linux-foundation.org>; Fri, 29 Dec 2023 15:30:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE54740120
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 3D30B82102;
	Fri, 29 Dec 2023 15:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3D30B82102
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1703863840;
	bh=YsdClud4UB++eK4MnpNdZrqYvOeS01oLSbUyKixR94g=;
	h=From:Date:Subject:To:From;
	b=dBus9yHWVv/U5GbJ3V+UKCrVPlK10z6RFH44PpuRyCASd/N325YJV5izGHyN3g32w
	 DTPlmdVpb07yIwEC+W3QjEEP7rTDF15eb4qhPxsRlvNRci3GG1qLjCMxKO4m3hTtyB
	 CQbjHbAbAephwVi6rkEYTqejNAOlAnIdhZ13uTyI=
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
Date: Fri, 29 Dec 2023 10:30:28 -0500
Subject: printing-users list is now live!
Message-Id: <93BFF4ED-6716-4625-A472-09CF394B961B@msweet.org>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)

All,

The great folks at kernel.org have setup our =
printing-users@lists.linux.dev mailing list!  Access to the lists can be =
found here:

    https://subspace.kernel.org/lists.linux.dev.html

To subscribe, send a message to =
"printing-users+subscribe@lists.linux.dev".

________________________
Michael Sweet

