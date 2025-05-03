Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639E13FEE
	for <printing-architecture@lists.linux.dev>; Sat,  3 May 2025 14:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746282049; cv=none; b=FtsUiNZzzKf47uF8vhMob+PflomYfsRFOcp1w0oSrxBumpU6KfkVzB7o1+3CnVH44IniJ7rlyezlp6PJQEyQd65R4y87guYVaYGb6c6+0uqamfsCIVtpCW+O2gbBXE0sVIzf925eIjA8NGgp9b+ycoQsuTUyYk4CbDLzQ6qLMrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746282049; c=relaxed/simple;
	bh=oqcM6WhopKUYF7l0V2Q5IuaXXT11oz1+fmOoYqNkN1M=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=T8DEJi+tQ9nuPknCQj0+gUEdE60CrIEGpVlxeVCSnFcq7bLtdoiIBkdXAJYYYRi3beg4pixiuxF+nJf4OWGsk3IfvKSNwTeQFd9TA5Sq9jxusOBtaVmyT7l8ODX0YstEZS+NsDMipyDcCSkEpMvyw2YxGD4yocmwFbpBUSOdckM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=BshQ4Sbh; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="BshQ4Sbh"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 3511980F0A;
	Sat,  3 May 2025 14:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3511980F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1746281627;
	bh=oqcM6WhopKUYF7l0V2Q5IuaXXT11oz1+fmOoYqNkN1M=;
	h=From:Date:Subject:To:From;
	b=BshQ4Sbh9KIIAc5uqqSiqM4AwgK9Is+v1izpgrzP9C33GeVsVb+R7gV/zjB3ty/UY
	 43hyda/RGLEzFUdy4wTh4+Mt4nkWaUzRi+RBRmww00QLBwNMtO1h839YwVPlS5pipv
	 P1E9+RKIgeyCTwtWPS7gCg6b5BRQ+Qb5iI6jHSVc=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
Date: Sat, 3 May 2025 10:13:35 -0400
Subject: PDFio 1.5.3
Message-Id: <B92BBDD6-A669-4607-BDAE-A0AF6F37EF63@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.500.181.1.5)

All,

PDFio 1.5.3 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.5.3

Changes include:

- Fixed decryption of PDF files "protected" by 40-bit RC4 (Issue #42)
- Fixed decryption of UTF-16 strings (Issue #42)
- Fixed decryption of PDF files with large permission values.
- Fixed support for EncryptMetadata key in the encryption dictionary.
- Fixed `pdfioObjCopy` and `pdfioPageCopy` to properly identify the =
source PDF file being used (Issue #125)

Enjoy!

________________________
Michael Sweet

