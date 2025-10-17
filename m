Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA762F6906
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 13:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760708336; cv=none; b=koWOoQRpIODtMI8D6zOd8HK+GIBfNDepE5jl4RqmdJ/2MUGjZtwrmhT2Om4Vi5zGSFtPpngYFAwfqLeTNsQiYStfcDsTFbuN396tnmqEaDoWGR9IfCkBJog7wgc1DN7G9fMLKyA8hzU4iHOCfAIKF/hDImdOZcut4kt+gagutBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760708336; c=relaxed/simple;
	bh=3/wTzZObP1yF7wpQvNp69PMkWv7UXNXUz9K8elB2rXY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=KxORWFPGUnCHYgMKORqfijPVFRS1hT/N2tRJGhbk4cGr7igZLaR4P3GthuBOFpbZErFrb/reKFJjcm4oKIiLUAgnA6ie7KNUEinweYKZKKzPCh5Tu7RTbQ4vjv4nawzYAQaBoFSF1EVqm1DsdFs9sdSkNth5dr5japeiaGttZ8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=aIvVaPpa; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="aIvVaPpa"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 55FC5806B9
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 13:38:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -4.391
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i1pChuBiJ8IC for <printing-architecture@lists.linux-foundation.org>;
 Fri, 17 Oct 2025 13:38:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 601CC806AA
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 601CC806AA
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=aIvVaPpa
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 601CC806AA
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 13:38:53 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 259D2803AC;
	Fri, 17 Oct 2025 13:38:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 259D2803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1760708332;
	bh=3/wTzZObP1yF7wpQvNp69PMkWv7UXNXUz9K8elB2rXY=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=aIvVaPpaMsAwAMZ4mlw99PqpT9WVdYI2CjEsfGMQOT2OTR3mNQ/NvBO1Jghx8vmx5
	 hoVPSvZNDmdkTSYqy6e1IYdOTxzuWtn30wgMrglzzEn5RLd9aMT1tSPtrgICBL7tuo
	 W6Oe6x0yvgmYFwhUK4WZjv3pIikHx7RJBpTyFTn8=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: First beta of CUPS 2.5.x series
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <556fd321-14ff-4964-a9e8-c908c41f81ca@gmail.com>
Date: Fri, 17 Oct 2025 09:38:40 -0400
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <F0332FC4-A5B8-411A-B5B8-9B5D51E4800C@msweet.org>
References: <556fd321-14ff-4964-a9e8-c908c41f81ca@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

Till,

> On Oct 17, 2025, at 7:08=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Michael,
>=20
> how far are you with your development work of CUPS 2.5.x. Should we =
release the Beta 1 of it?

Not quite yet, we still have 14 open issues in the 2.5.x milestone.  I'd =
like to clear out the non-bug issues (7 of them) before we go to beta.

________________________
Michael Sweet

