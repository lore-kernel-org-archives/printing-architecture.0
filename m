Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36611E1E11
	for <printing-architecture@lists.linux.dev>; Fri, 28 Mar 2025 18:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743187448; cv=none; b=bcO7vJMSDcZBylnsFmDCq8VvhuctVHp+uIU/1Nho2uY5YVifPU1hkf+BdlufRIlYa5bALAQuO3s3iBPcfydBL3448kr3uf/YnbkMS2yAMwHA8h3tU6EaIsDrQUsNUAE377zwG2/dv6v4rfYUX2Wl+L1EgbdvYj/T62xc3IGlW+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743187448; c=relaxed/simple;
	bh=UVwVgBoVLuwbAFCn9Izkjzyl+Xzgnv8ibHxfE1+n150=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=JiVjpYaUmmaXCyr7zqJ5dueCPvGKIPaaPLUT/qWQcD02boUG17uqd9W9xAWCcMSGBCtlcZnuFMWE+P1KB1sIWTSzFJM6uNSs5/XDAg8t7aH/6CVsGDtZYdn78DWQUDMScIzjz7JVZD8cO3pKnl3XqD5eChpwIciz4KJkXP/tJIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=AaXNku3M; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="AaXNku3M"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id A445780E74;
	Fri, 28 Mar 2025 18:44:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A445780E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1743187445;
	bh=UVwVgBoVLuwbAFCn9Izkjzyl+Xzgnv8ibHxfE1+n150=;
	h=From:Date:Subject:To:From;
	b=AaXNku3MJmQA53+pnT6+3wjnnM2hlKu66L6OEGF9EWcFA0dpEWJdEeufDRNmpeSPS
	 AomN0BeQ43G+xuB7QOc0iNT7eipXa1VsR6fBHhtfjft6TZJaaMaNG4t860p8gmqMn+
	 A/qO3/uURxHb2OOiPE7HbWY/n8jt68CSVZzIaWgw=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Fri, 28 Mar 2025 14:43:54 -0400
Subject: PDFio 1.5.1
Message-Id: <3637A806-AABB-46CF-AE5F-D636BBD99606@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

PDFio 1.5.1 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.5.1

Changes include:

- Fixed output of special characters in name values (Issue #106)
- Fixed output of special characters in string values (Issue #107)
- Fixed output of large integers in dictionaries (Issue #108)
- Fixed handling of 0-length streams (Issue #111)
- Fixed detection of UTF-16 Big-Endian strings (Issue #112)

Enjoy!

________________________
Michael Sweet

