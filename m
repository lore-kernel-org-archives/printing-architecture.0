Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E83C2E739D
	for <printing-architecture@lists.linux.dev>; Mon,  8 Jun 2026 16:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780937688; cv=none; b=KZySTXd3r7OrDy+gi0EwPwkFDIz25phCf9XE5cEWAdC6j27v54MiQXkBUrQFlp/TNJ8c10vXpadsgnzPEjw8uogF+bwdyZ8o8bMWggnht7KUNlD2c5emEN0X1rPhT8luEVqYlyrA9bXCIvTydvMT12n5LMIyTG5wVZmLt5dfyuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780937688; c=relaxed/simple;
	bh=iDGnKfLsJAZbo3FVz9/chAREN1Vviw2weratuCqbnJ4=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=h3PS1ucp1WKpdIsEMEvC9WmuX6R9yO5o0JFZqsPcMD5UoNcsuqw2DWkWvzVdjOE/2NyQefFXlABJ+WBZb8L0279WUXQq9EAHdgWvTCeX8ZmmROhu7t5kgZKGRgfh29RBHAxxWvHeLrEolD6vRMNb+y+1yri81RLOWanq9HfUS4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=peOVLbDK; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="peOVLbDK"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id B97B780438;
	Mon,  8 Jun 2026 16:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org B97B780438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1780937681;
	bh=iDGnKfLsJAZbo3FVz9/chAREN1Vviw2weratuCqbnJ4=;
	h=From:Date:Subject:To:From;
	b=peOVLbDKDrarriaASekOhm2ctUqSEMs29yDy3vwoL/jTXOXMXupmzq8h2RTQaNG6e
	 U/Vrv4x2QckThSXm1rxO5Uz/PNSB9szC43tnU+84OdoZ3cbyC0A3OZB3DOUmxbrYrk
	 aliSSnHvqZAgi/PkaAMKmJlRXIU64Wlc3XbzJDAI=
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
Date: Mon, 8 Jun 2026 12:54:29 -0400
Subject: hp-printer-app v1.3.1
Message-Id: <6CEA16EF-37B3-4B45-810B-6C3F5194E341@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

All,

HP Printer Application v1.3.1 is a bug fix release:

    https://github.com/michaelrsweet/hp-printer-app/releases/tag/v1.3.1

Changes include:

- Improved PCL compression code.
- Fixed CMYK output.
- Fixed a few PCL 6 output bugs.
- Fixed the `--enable-experimental` configure option to enable the PCL 6 =
driver.

Enjoy!

________________________
Michael Sweet

