Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584081B0F0F
	for <printing-architecture@lists.linux.dev>; Tue, 15 Oct 2024 22:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729030691; cv=none; b=bq1fHsqA8T0iw9TvuESEdOcpeouchtXBNQ92j1w4ASx5ajBIUAn9npuGGTs2fDe4nNKnPVt0RrLDtjd3baI8OWW4AexgoFfdn573TOubr+KiLm2r0BMnAXtBX31SxLMSeG6/oSP4QadO2TH++qNznCIJ7vm5j71ENwluvMsET/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729030691; c=relaxed/simple;
	bh=tJcyCKobOWCGrqpoct6//Y7cbvUZrOrE+BcUWVYnkXA=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=FnIPe4W0q7Blz+Mldy2iAwSk34z3L9g/h68QfdahpibYGaEQ0CQUZQvjnljsIWcGEGalpEaIGmgbWMBbPdoTi1dOjbVRON/W+21lVx20dl2IB1wfkzN4PntSZEeygZHUSHoRj7jeF69z6/N75lLp2A7UhVJ7zr72Z/+osGRAuJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=KrLc7lz3; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="KrLc7lz3"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 2AF2481D95;
	Tue, 15 Oct 2024 22:18:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2AF2481D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1729030689;
	bh=tJcyCKobOWCGrqpoct6//Y7cbvUZrOrE+BcUWVYnkXA=;
	h=From:Date:Subject:To:From;
	b=KrLc7lz3u8BIx3GEaRQfzqjUqlr5BdHh3SbDC5NlP4tOamQ7d/RG5WjKdH9nHRgxp
	 KfQirz/ZMpJtV5fTOKoQsvhThnPGWggQyB+GFazt3BL/WI0kcLuqDMU/6J9nEoMaok
	 FJOWFmpBSyhz5Ix9bAobE4mWI1DFl6NvdULMVM58=
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
Date: Tue, 15 Oct 2024 18:18:03 -0400
Subject: PAPPL v1.4.7
Message-Id: <6A773CA2-5D93-41A8-A444-9F03AE3C2DAD@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3818.100.11.1.3)

All,

PAPPL v1.4.7 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.7

Changes include:

- PAM-based authentication did not work on Linux due to a glibc =
incompatibility (Issue #343)
- Fixed the web interface for setting the admin and print groups (Issue =
#356)
- Fixed the web interface for adding network printers on non-standard =
port
  numbers (Issue #360)
- Fixed some USB gadget error conditions.
- Fixed the Wi-Fi configuration web page.
- Fixed a logging deadlock issue.
- Fixed some threading issues.
- Fixed how PAPPL responds to an unsupported request character set.
- Fixed the "no-tls" server option.

Enjoy!

________________________
Michael Sweet

