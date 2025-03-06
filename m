Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014431FCFFE
	for <printing-architecture@lists.linux.dev>; Thu,  6 Mar 2025 22:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741300227; cv=none; b=T7gdRtk4V512AsaLxgwZ+wWbenBgKAbF1MzXsHtlccNXGCX0QhQp+LhRQ7G+Cqu4fmYMT0LDqHThXHZoK+Ax0tC4XiIx2K/mFS7B63+WA4u+53JC2q8YbGpenpxZSMhs4pEbcZWn8Tl2yYQXEL0GwSJkYmBMWwpdYZcTo4ixs0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741300227; c=relaxed/simple;
	bh=3LYC7/z5RfpvUvbzfm4mv61F4l8TKEvRritbu1Sw7YU=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=IBB3b5c2YwlR71yjvCRtVusN5RBuR6qAesh1zmXRHIOIglefv/C6OhdYR7cy8eW8xzIyAehfVx7NeQLkWFwLK/IlUIUehiHYlf8mtlozsLYz7Trbo2qyMm30qkh5huwpIFpLiyJ35g6uRGPE/jCd9muM6YQOiJG/EMejzeQKGfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=DBUr5X7b; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="DBUr5X7b"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 7625B81021;
	Thu,  6 Mar 2025 22:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7625B81021
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1741299692;
	bh=3LYC7/z5RfpvUvbzfm4mv61F4l8TKEvRritbu1Sw7YU=;
	h=From:Date:Subject:To:From;
	b=DBUr5X7bmX8NqFdwkMKRReCuSBFIL9050r5xNP/zCymV3iKS3BEsDQEE1qS2s3lLO
	 Zpgo7KHlXe9EVrUxDrhjUWERpcVmhrF97Hu8QR1WzCQZgyp8Fz2++fqtXrOVmUOnDX
	 wRZkL6CWB0oobi8cj/i4dyWydDfTjJzMwGQjpiU0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Thu, 6 Mar 2025 17:21:21 -0500
Subject: PDFio 1.5.0
Message-Id: <9CA77122-B8B2-4D9F-88C4-8775E285F03B@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

PDFio 1.5.0 is a feature and bug fix release. Changes include:

- Added support for embedded color profiles in JPEG images (Issue #7)
- Added `pdfioFileCreateICCObjFromData` API.
- Added support for writing cross-reference streams for PDF 1.5 and =
newer files (Issue #10)
- Added `pdfioFileGetModDate()` API (Issue #88)
- Added support for using libpng to embed PNG images in PDF output =
(Issue #90)
- Added support for writing the PCLm subset of PDF (Issue #99)
- Now support opening damaged PDF files (Issue #45)
- Updated documentation (Issue #95)
- Updated the pdf2txt example to support font encodings.
- Fixed potential heap/integer overflow issues in the TrueType cmap =
code.
- Fixed an output issue for extremely small `double` values with the
  `pdfioContent` APIs.
- Fixed a missing Widths array issue for embedded TrueType fonts.
- Fixed some Unicode font embedding issues.

Enjoy!

https://github.com/michaelrsweet/pdfio/releases/tag/v1.5.0

________________________
Michael Sweet

