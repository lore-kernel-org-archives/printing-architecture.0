Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92EA747CC70
	for <printing-architecture@lists.linux.dev>; Thu, 30 Apr 2026 18:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777574122; cv=none; b=fvdmSdoaNO6NkfVM27d7XChwgGLF/Qm/PoO6TUP8UXBLujOLR73vpJlkkRZAgqh8WH8hGsKuqiD6yUH9irRz4S0SU6A/2vgqdhhbQS9w9D6RtIZPXFi9sEN6Q78ghvZ950+CWl2VoS+8vFX9EBtsq8eGcJAc2lKnHw0biRHNQgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777574122; c=relaxed/simple;
	bh=cgK96WgmU+bIGJqvNc15i2iYgfcSCQ+VizFpMiNg6ZI=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=GbgJ1mhhh5Yl6LHPagqD6JA5aQQFd2KOFVGBhApagQnGVORptXj0xGnu8t54CN6Ptyyp0D25GUgUXsKzCCv2atFrHzcvu3Z084Mq9CU+hLIXbCen1/3Tc4XmGN9exAFwF5g3nUPtKcJ2zQMlNawi6/amakzK7znhO6/+uLXmySA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=SHpmQ5kB; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="SHpmQ5kB"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id A1B0E80E74;
	Thu, 30 Apr 2026 18:35:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A1B0E80E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1777574114;
	bh=cgK96WgmU+bIGJqvNc15i2iYgfcSCQ+VizFpMiNg6ZI=;
	h=From:Date:Subject:To:From;
	b=SHpmQ5kBhxrwgCyopf9UMxiAcIs5lpB/NN9JBS5hGexv0ORCMnkFlYHzob7mLgHMr
	 bayiO21T3e0Ynv1sG0D3jhndFYkt3xj9YXxOoI6Xk3+kwWXINRHGZ1GCG2ke8JWNhb
	 GcZmXM8gif8XgHp71Sobhr3y8yUmW7Kf2cRAY74c=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Date: Thu, 30 Apr 2026 14:35:03 -0400
Subject: PDFio 1.6.3
Message-Id: <90AED0B8-10A7-4712-AAAB-F99378C088C1@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

PDFio 1.6.3 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.3

Changes include:

- Fixed `pdfioPageCopy` implementation to not copy the source document's =
entire
  page tree (Issue #161)
- Fixed AES encryption dictionary name (Issue #163)
- Fixed AES owner key generation (Issue #164)
- Fixed support for empty UTF-16 strings (Issue #165)

Enjoy!

________________________
Michael Sweet

