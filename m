Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=173.255.209.91
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793213927;
	b=UA6BlPGiZ0UR7cLy+Lyk8EGo5ng3BJNKOYHBjUpdT7hkzyAEhUl+wh2HFXHmFDojG1OR
	 0HMcempK0J2aPGU4gqRCE4pYvR2leHP0Tzbau3RKTxOfUhBdDJ7PTPR/h3ujd8TzIcAS+
	 eVdbgsLU42SJ5a+EJR02Go6M3ukkEQZHu5HbDJsssjKNlw0TC7LX3gOe6biClkEJpYtAh
	 DMvdwFNPX/b+HwG8S3JR/7RjA4Dl9q/3eQjQFhA1HKoBvumZVRKzcAYQiRgETQMUqGHlE
	 bhvjBT98Ducf7OaxIJHDg2jEhFQ1/ZY4MM8gDIFB6wWI0Vif7YRc+AFAInkdfUoVBlQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793213927;
	h=DMARC-Filter:Received:DKIM-Filter:DKIM-Signature:From:Content-Type:
	 Content-Transfer-Encoding:Mime-Version:Date:Subject:Message-Id:To:
	 X-Mailer;
	bh=2GQ1OOiEA3hIn/Zzcm/W46uvE3MgfOkeSl8xmDOqyFY=;
	b=Ob7D+WoGJ8N6TGoIm4I34dAhXDA4KkIbB8cDoaeFoKmmkQvzkAWOBeSat5AOoWKHOSPP
	 oVbOmDaOhSHLqUv/cel5V1JJBHxU4U0R287hlDpmgihBsJOsCNq1oTYKY/wPCSkeeID+q
	 oFZT2QQ2BWx4s4kp9JKLF6R8S7LqB2/zI4pPMGf7Z0zcvdEcuCX8aa2iFAddFVAgfL0BT
	 0P+qAMA/vYJGR82ZYUAt667Ja7Kw0KAEQLWVTCULPkuct0Byo22+Mwm7S92zcHMNE8yDN
	 rcnX0rLu+mS6vyl7cg4nt7eGEtCyzHaIIvcyen8sIJVjsA/GyZxI/Epl5iSX9ip7V0A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=msweet.org;
	spf=pass smtp.mailfrom=msweet.org;
	dkim=pass header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=uy0OLbCA;
	arc=none smtp.remote-ip=173.255.209.91
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFAB606A321
	for <printing-architecture@lists.linux.dev>; Wed, 28 Oct 2026 18:58:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 7CFAB606A321
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=uy0OLbCA
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 1DFB182476;
	Wed, 28 Oct 2026 18:58:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 1DFB182476
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1793213921;
	bh=Vr/rTPVyBWza34Rowq++uueleQoiifxBmhW1gKTV+74=;
	h=From:Date:Subject:To:From;
	b=uy0OLbCAOfMJQh6DZjKpB4KLoIAx+38KLYYHMoZMvX1ob+fbQS7OMmFTY97ILt3Iu
	 O96absFxsA5qfO+SnaYCoO2WOV1GzUqVK5qSZG8G7/99wW3BAoSE3hQrPJy0Tz/89I
	 lO7bjYuig1V84XF5s5Jj8v7cUmFtPRIhJFqkE9T8=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Post: <mailto:printing-architecture@lists.linux.dev>
List-Help: <mailto:printing-architecture+help@lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
List-Owner: <mailto:printing-architecture+owner@lists.linux.dev>
Precedence: list
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.200.71.1.16\))
Date: Wed, 28 Oct 2026 14:58:29 -0400
Subject: PDFio v1.6.6
Message-Id: <CE61F6F5-34CF-4F3C-893E-D6F230D874D0@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3901.200.71.1.16)

All,

PDFio 1.6.6 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.6

Changes include:

- Fixed reading of the last cross-reference table in a PDF file (Issue #181)
- Fixed some memory leaks (Issue #182, Issue #193)
- Fixed potential issues in the PNG fallback code (Issue #187)
- Fixed number validation for integer dictionary values (Issue #189)
- Fixed a potential loop when repairing a broken PDF file (Issue #190)
- Fixed an error decoding short UTF-16 hex strings (Issue #194)
- Fixed an error decoding strings with escaped NUL characters (Issue #195)
- Fixed some memory leaks (Issue #196)
- Fixed date/time value offset issues on some platforms (Issue #196)

Enjoy!

________________________
Michael Sweet

