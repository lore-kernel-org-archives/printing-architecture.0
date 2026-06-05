Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3A224A05D
	for <printing-architecture@lists.linux.dev>; Fri,  5 Jun 2026 19:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780686674; cv=none; b=VPvCs6zJK8WWSAcjWvScDGS9MjOLaRxdJT5+dGwc6f2wWlB8bui29pwgccWrAneIZfUqFgZIR7S/bmd8hx7l0xlsBRX1vri/c/VXilU1vVDSORTV951k7MHIgASAk79a/RZccwiejzN9/rmSdXHaSEdMX/1N2jWYYHiPFHZYc3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780686674; c=relaxed/simple;
	bh=BIve/Dh9qfnzFwCgF4osEzFJIYjDQUh8D0U2I0HCwdw=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=WjNVLsMtzhU1ZBgm5xIAj3kpu3B67drONStM2MrWLhRj8EUMNOxGDaPDuNq4blKHTMxq0yHdbCABiAQsjWHJ7x4ctDUpoQRNlDiDUbGurpI+sjpMNmjt1t+YJGiEXBJaUy3Tjfu+XFfVKvF4F5UDVtmUgSd8M0daT6/J9KCXajc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=EuZzxCjr; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="EuZzxCjr"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 7EBA080F08;
	Fri,  5 Jun 2026 19:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 7EBA080F08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1780686672;
	bh=BIve/Dh9qfnzFwCgF4osEzFJIYjDQUh8D0U2I0HCwdw=;
	h=From:Date:Subject:To:From;
	b=EuZzxCjrZal63hqZmTyIcTzSAGPVBhOIZTFOABiME0GrnOXf8EZ6e8/04/7mdzLaO
	 bMntX7icnqmSqt/jfd0zYZwm2AEvPZ8bbMMoBmJpx8PyRaagO7xkWKLbuQ7nHFX9lI
	 RZvhUyOXpD7cEjRKBSEH/aiUkC+4I2qK1/9GD/5E=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Date: Fri, 5 Jun 2026 15:11:01 -0400
Subject: libcups v3.0.2
Message-Id: <F27EB619-04C4-4542-9C01-C61891AEB501@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

All,

libcups v3.0.2 is bug fix release:

    https://github.com/OpenPrinting/libcups/releases/tag/v3.0.2

Changes include:

- Updated `ipptool` to limit the range of supported raster resolutions =
for the
  generated test page content from 1 to 9600dpi.
- Fixed a recursion issue with encoding of nested collections.
- Fixed a potential margin issue when generating A4 PCL from =
`ipptransform`.
- Fixed exporting of JSON with very large numbers.
- Fixed page header validation in `cupsRasterReadHeader` and
  `cupsRasterWriteHeader` for banded raster data.
- Fixed potential crash bug in `cupsCheckDestSupported` function.
- Fixed a duplicate printer bug in `cupsEnumDests` and `cupsGetDests`.

Enjoy!

________________________
Michael Sweet

