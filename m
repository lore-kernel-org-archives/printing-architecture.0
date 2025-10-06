Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B355C284890
	for <printing-architecture@lists.linux.dev>; Mon,  6 Oct 2025 13:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759755618; cv=none; b=FJWiV52kKYFE9jtblJwu7/jE40lgBJk+ll52wVv/2wc3oM3oA8cBAiGg5QaepLTqZChlDX09eqQizPpXY0bxWf7RU27GdqY1UWibpooV0KPrj+8vM14LxiuTT55zUs2zFH4l3fggq2g0n0kahZNAL331JzXOS262bdRbG0OpkZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759755618; c=relaxed/simple;
	bh=xDM0QjlAwOfUJtJSZVslQ1pfvLqmH/Tn8SY3WxyDVd4=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=FW1HCPeqrbpV+kpH/1EQV6wrHBozmvGhSnqEDFiiW/T9aYgE0mbAm1nRZGFWIvKehudggkUsHzBQRhlaaJCAd9iGrU/ZqqZpY15L2Dov8EKtZ2ZUwRUT0q66RZHHkUBBKJL6PfrbgtXuqgiIvhZ++o/+S4bWQDjvpgJtDqnPrYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Qd99ZnUp; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Qd99ZnUp"
Received: from smtpclient.apple (unknown [216.223.94.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 3D0A3800B2;
	Mon,  6 Oct 2025 12:50:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3D0A3800B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1759755040;
	bh=xDM0QjlAwOfUJtJSZVslQ1pfvLqmH/Tn8SY3WxyDVd4=;
	h=From:Date:Subject:To:From;
	b=Qd99ZnUpGgJL8BlOmA1ZRgAZjSLSlORJOV5VXTuqndxBywhxZ9+6g8vnOG9J140rL
	 q3vH5N9l9RgBUw48U/n5BTfWGseqlv33CGgmewXi5IJ4zVFIMG+0Qq32I6oc6vC0ht
	 GidEemom8SQPpH3c5QgQrOyqm+Lm5+acMcildUV0=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Date: Mon, 6 Oct 2025 08:50:28 -0400
Subject: PDFio 1.6.0
Message-Id: <580D5680-DEA9-4247-8F1E-E7C29B93FA55@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

All,

PDFio 1.6.0 is a feature release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.0

Changes include:

- Added generation of XMP metadata when writing PDFs (Issue #103)
- Added "standard" `PDFIO_CS_CGATS001` color space for non-device CMYK =
(Issue #104)
- Added CMYK JPEG support with embedded ICC profiles or using the =
CGATS001 profile (Issue #104)
- Added `pdfioFileAddOutputIntent` function to adding output intent =
information to a PDF file (Issue #104)
- Added explicit support for warning messages (Issue #118)
- Added `pdfioFileCreateFontObjFromData` function for embedding fonts in =
memory (Issue #120)
- Added support for specifying PDF/A versions for created PDF files =
(Issue #122)
- Added `pdfioContentBeginMarked` and `pdfioContentEndMarked` functions =
for creating tagged PDF content (Issue #123)
- Added `pdfioFileGetLanguage` and `pdfioFileSetLanguage` functions for =
getting and setting the default/primary language of a PDF file (Issue =
#124)
- Now add default grayscale, RGB, and CMYK profile resources to pages as =
needed (Issue #104)
- Fixed unsupported filter error (Issue #130)
- Fixed EOF comment written to the PDF (Issue #136)
- Fixed TTF cmap underflow error.
- Fixed some Clang warnings.

Enjoy!

________________________
Michael Sweet

