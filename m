Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807D0171E49
	for <printing-architecture@lists.linux.dev>; Tue, 15 Oct 2024 17:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729014321; cv=none; b=u4G4G6wKlJpS/xZXIq5aCyICRGFaUkno8KdmROq8mj8XkyWGtqVd6jqWX/y8kA6FDwVLqneMaR9q7e4Zt252J/r/fhTzg6E9QRmppxsU3o9/mqKHJqrOGgregyHjv0ihcEX9L90B8UxPIsMBOq+M+4bZjJABfK1Jq41UkngkdD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729014321; c=relaxed/simple;
	bh=cEQlkpWfDe5W5lAWGfDXoI9LPzOjtjZVYfAbtyU62RY=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=kN/B3BR54MKsDeztFq0R8qC6Iyn5wUP78lKIItx3rcK+fWFo2eeTdwknAhHmDpY1HGaXVHan3Mp49sJJtuf1i6mbIFDgkHxlNYxJokgz6im83+8tab9dMWkkPwErtT6QwNkpwXpBmJ0TewOl+mxYRP+eI7aYAu4ttqFtjeGcvmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=SvyAlYb+; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="SvyAlYb+"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id B9C2A81D95;
	Tue, 15 Oct 2024 17:39:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org B9C2A81D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1729013947;
	bh=cEQlkpWfDe5W5lAWGfDXoI9LPzOjtjZVYfAbtyU62RY=;
	h=From:Date:Subject:To:From;
	b=SvyAlYb+67P21BD6YjIOYXkyuJ795Y4E4DFJFw6xbu2xVgsTReJQXNs0nvChkwBwq
	 nui73A1jE5fnQ6yyyl/siCvgl/txgGKbiZhQ6IYAKJMpGQeUCaMhssfpUmfIMcohWR
	 CC5jEsdDnqQt6YMzNI7fj86Cwkq9m928x8IlEuAQ=
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
Date: Tue, 15 Oct 2024 13:38:56 -0400
Subject: libcups v3.0rc2
Message-Id: <A7407DA5-469E-4D6C-A337-075D904B17C7@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3818.100.11.1.3)

All,

libcups v3.0rc2 is the second release candidate of the CUPS v3 library =
and tools which remove deprecated APIs, add new APIs, and normalize =
existing APIs.  It is available from:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0rc2

Changes include:

- Updated `httpConnectAgain` to re-validate the server's X.509 =
certificate (Issue #90)
- Updated the source tarball script to include the PDFio sources.
- Fixed handling of empty resolution values passed to `ipptool` (Issue =
#63)
- Fixed a compressed file error handling bug (Issue #91)
- Fixed the default User-Agent string sent in requests.
- Fixed a recursion issue in `ippReadIO`.

Enjoy!

________________________
Michael Sweet

