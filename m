Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B829ACFD
	for <printing-architecture@lists.linux.dev>; Fri, 26 Dec 2025 17:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766770029; cv=none; b=FJFFSwQEBDRgWeRkj0yPtmP2QAP/SzRIHyeukgwAno7x/0TnmGjjiqeGhcLq+K0Ff5R6Z0YL0uR7FHVZsmVs/GMOlKKXPWkQoDxJb41s2/AjQQbTnBzL8dK3dfU6diEAug7Oey+OQ9YbTGQBmUofOfOfrZkquCs2Cf6QzG43dPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766770029; c=relaxed/simple;
	bh=TPLjNA+6SOLa1uICPGMSY8NVdWTv8CmmlFhqBFonGg8=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=JaG55FzugfzQeAGJ6P8asiWC80e8P8HBZGfPPkAjnP67HFpH4xy+ODnQwV4HlGobCTCST9h63vnZdGk7VIj0BCCqAS25PFBt6Bxx9Cy8B6wx0tSYTfyq4go40t6oUo4BT0E43EK+phJoSeQ6EYLoz/tzlxXA1SkiA3z6lIKXq00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=TQx0voTY; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="TQx0voTY"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 2497380F07;
	Fri, 26 Dec 2025 17:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2497380F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1766770027;
	bh=TPLjNA+6SOLa1uICPGMSY8NVdWTv8CmmlFhqBFonGg8=;
	h=From:Date:Subject:To:From;
	b=TQx0voTYKBY42z3OxK+ffptHtX8xoMn8evEGbqU3CTW53Blrp4iDGH1CH7mt0jFI4
	 pygk6nsTTxbTT3+vMsaX9pJ+xRioOhe9hkdbbgS7Me5VCDySs/L0diRKxr+H8CX4qK
	 FQlVv1qHRyjljAkxWAd1lxLrN8dlroTfoefQSsYg=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.1\))
Date: Fri, 26 Dec 2025 12:26:56 -0500
Subject: PAPPL 1.4.10
Message-Id: <7C42BCF3-080E-41E8-91A6-AFD32E1F4982@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.400.1)

PAPPL v1.4.10 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.10

Changes include:

- Changed the preferred/first printer URI to use the "ipps" scheme.
- Updated the USB serial number code to better support non-compliant =
printers such as those from DYMO (Issue #396)
- Now show the default and supported "output-bin" options (Issue #393)
- Now suppress a duplicate 'auto' value for "media-source-supported" to =
work around a bug in the legacy-printer-app (Issue #394)
- Now log the TLS version and cipher suite, when available.
- Now create spool files with read-only permissions.
- Now support setting "media-ready" with the modify sub-command (Issue =
#395)
- Fixed attribute copying issue from multiple client threads (Issue =
#390)
- Fixed driver validation for raw printing (Issue #391)
- Fixed PNG looping issue (Issue #398)
- Fixed default IPv6 listener (Issue #401)
- Fixed builds against the latest libcups (Issue #403)
- Fixed a deadlock issue in the web interface (Issue #406)

Enjoy!

________________________
Michael Sweet

