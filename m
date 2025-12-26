Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5B62E36F8
	for <printing-architecture@lists.linux.dev>; Fri, 26 Dec 2025 17:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766769752; cv=none; b=tO8npsgyZu979yFk7V6gpbrEt4/Wo+9ROg+CgEvDjvByt2TCxRLSWUwp1bnZyH/SJKQU3SI9ToOl1qAHO6fKMOXu8MGNWXNfk+m4wm+iC/XOmtLoGf8dBfN2HhQOm+cIoocoxuk+SUrylHLxgogGerh31f4iwTKU+7Ch8Rje/0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766769752; c=relaxed/simple;
	bh=DmEe74Kh6kL7lOwaVzc4zEX4/+1TgJE5Z0FKIywKMCc=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=GsyR9r4t26HvsIRhVgEyEoubFhmxhr2FvpW9MD5OFKCctqotj7wpHi0kb5/n9Idangsjd6AJmBs5YpFKl0gCxFv05z9wuANjf9qYQAD/qDB3gohb5tujvPcu9/wIdy9V5sgdbrApfQa+hsS2YRGDp/98B5GiUcYHtk6opavnM+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=txpDC1Ty; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="txpDC1Ty"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 69B8280F07;
	Fri, 26 Dec 2025 17:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 69B8280F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1766769260;
	bh=DmEe74Kh6kL7lOwaVzc4zEX4/+1TgJE5Z0FKIywKMCc=;
	h=From:Date:Subject:To:From;
	b=txpDC1TyuZIO3S8Hb3dLWaqOKvGNp1iZzLgcMEkP5wfVOJs2ttVm/rlbsh3PqDm8q
	 YeruVikOzkGzIncnLY9bH21ZTFh4HcEDY0T7e0QBQxW7cqJ0wLZIqc+VBrmY2yu9os
	 Tj0lS1tp3HDnynDwHzv+61GEWfW/y/mDPi0GcKdY=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.1\))
Date: Fri, 26 Dec 2025 12:14:08 -0500
Subject: PDFio 1.6.1
Message-Id: <4279EFB6-2F1A-4B14-BD0E-A22A26F0E095@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.400.1)

PDFio 1.6.1 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.6.1

Changes include:

- Added missing input checking to `pdfioFileCreateFontObjFromBase` function.
- Updated support for UTF-16 strings (Issue #141)
- Updated Xcode project to use installed PNG library.
- Fixed decryption of PDF files using an Encrypt dictionary instead of an
  indirect reference (Issue #139)
- Fixed character range checking in a TTF support function.
- Fixed some clang warnings.
- Fixed the generated pkg-config file.

Enjoy!

________________________
Michael Sweet

