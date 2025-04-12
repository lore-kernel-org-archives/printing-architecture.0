Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BA026AE4
	for <printing-architecture@lists.linux.dev>; Sat, 12 Apr 2025 19:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744485932; cv=none; b=a9aX1KEaWiEVHbEgNKLvQTQGt0PCwFkg+b89E+J0DfTgENh1OuwjhyZnGMn54NdkXYA4pRoIsWC4qkUk27aOUkIfHQmAUeFR8MuueaDekJLjD+BoMHY7ZeEs1SZNpMU030koiXIYvkqS22eyutSjkXSI9ofv6ezNf2I8QSi0Vt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744485932; c=relaxed/simple;
	bh=PnpN2ce07ABbIeX6YU27AtMP19PJHDkqLr5n8E4SvrE=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=UG9qIUi2lEhfjiDV+l9gmy/T2T8oLZ+wOLIhcU67fu5CoHSS+Q6SdYRjNxbCTwynBITRKCrRsvJjpQIY1WL/7UmMu0SW7zZbXLUZuzqIgaWwv3k6FruDVsdSJuSomiPLC3JGOH+f6bxY4KSmMNMRhK/a2Hn1LylIidU5F23oC3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=uKDTwAdP; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="uKDTwAdP"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 24BCC80F07;
	Sat, 12 Apr 2025 19:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 24BCC80F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1744485383;
	bh=PnpN2ce07ABbIeX6YU27AtMP19PJHDkqLr5n8E4SvrE=;
	h=From:Date:Subject:To:From;
	b=uKDTwAdPsgOueWWNzMA1rGAGMgQKaMxUw2bK7UkLy1LB403UA6idSnGtFcFlavcE5
	 gENBUjEoFMSNrevkC+N7745gLqEqzbK4cRoAct4Ut40jCOjzLRRUbwdvNyqVj9VlqE
	 F42apcTql/BaivKKRgf3fa1Ksry7Ma+MFzaFTgts=
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
Date: Sat, 12 Apr 2025 15:16:11 -0400
Subject: PDFio 1.5.2
Message-Id: <EB7BC419-AC6A-483A-BD9C-139A16680166@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

PDFio 1.5.2 is a bug fix release:

    https://github.com/michaelrsweet/pdfio/releases/tag/v1.5.2

Changes include:

- Updated maximum allowed PDF string size to 64k (Issue #117)
- Updated dictionary reading code to discard duplicate key/value pairs =
with a warning message (Issue #118)
- Fixed form detection in `pdfioinfo` example code (Issue #114)
- Fixed parsing of certain date/time values (Issue #115)
- Fixed support for empty name values (Issue #116)
- Fixed range checking in `pdfioImageGetBytesPerLine` (Issue #121)

Enjoy!

________________________
Michael Sweet

