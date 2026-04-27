Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B3C3D349F
	for <printing-architecture@lists.linux.dev>; Mon, 27 Apr 2026 17:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777310727; cv=none; b=q7UGShfgIvR1PmhrhUj7DgJU0Di3etT4cDgr84/Np7aJYFSvZax/M655CV200ZCD4VA2KEjzBV1l4Eq58+nUs9Tm+mC6qjqPyGPvIc/voONw52mVKaumeWbTdXGt3YEGAqyVxHImw4iwnYx/NFXat5AnGlgzU42fAjOYGaCgvxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777310727; c=relaxed/simple;
	bh=VLcp6jb+TiOMGOZVR2NK6fmno0o1nABXt2XnIf6hzbE=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=MSuTG4gRhbn3Ps0ECJFnIeRmoXnArR8+TpawElmxmV53OYBXJG20LMSKJiBCrGhMVfos8+betdMBsRffvzD05L015I4CXjWxE6PnOqbHRTfLp0GF9QU4xxsqdYfMwyi4jn/A66aWo+v4Ws0x2PCz32lUNSAf1AwZUJf7wH4tWt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=jmQbkCI3; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="jmQbkCI3"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 4337D80445;
	Mon, 27 Apr 2026 17:17:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 4337D80445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1777310222;
	bh=VLcp6jb+TiOMGOZVR2NK6fmno0o1nABXt2XnIf6hzbE=;
	h=From:Date:Subject:To:From;
	b=jmQbkCI3CqtYF35L+f/O01fwClKuDDS6rJ5vyGOMgt6owJm+RXD6SQttrYhhtv5+C
	 bnqGHd46WKWHdZ/Gcg2JVx5nyderb4p0fTAFYVkT0340K+2twEpO3SBR3QJHTNi1fu
	 gHfYt2pkSiNZ5dZS1L1d1Xu5BwTGtUEa0k39aWbM=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.42\))
Date: Mon, 27 Apr 2026 13:16:51 -0400
Subject: CUPS 2.4.19
Message-Id: <52CF5B7F-7849-4AD4-ADE5-D500D490B58B@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.42)

All,

CUPS 2.4.19 fixes a regression in shared printing from non-local =
accounts (Issue #1557):

    https://github.com/OpenPrinting/cups/releases/tag/v2.4.19

Enjoy!

________________________
Michael Sweet

