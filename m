Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562E644065B
	for <printing-architecture@lists.linux.dev>; Thu, 20 Aug 2026 22:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787264299; cv=none; b=SgSPW4yC69IwDWqo2DFPG1YSoEEOVc2wEO5hWEUzIzuJLr6BHa9WzuqiavaxM9k66ERCEMQfupnTaCOsQXU8MOxJFcK0KnOezb4D6kKNzbJRxlE0Y8aLHLyZpTmNm2q8SdrZi5ueqCBQzonYXApg990jsTNzmgxodA5HSJOfXsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787264299; c=relaxed/simple;
	bh=9HzCGy4GTvZ90+HkUQw56L57M2dOuZkOC4dUgXKenkE=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=FqkRlJIzsE3PiWHo7miSadhQZA/ULULYa9/bJTlatWCS/oU156PVo5ELBtSIDxT14pMfN/dOXEyIMDPwOWvvOas5IknHBFjXP0z4y9ISp703WcLuBVUw6elSIRqJue0kSZgmoCHqu5+WIqDr1M2O4e3bCPz72WxZyFw57DJ2yN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=J/oKerPc; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="J/oKerPc"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 2E97682444;
	Thu, 20 Aug 2026 22:18:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 2E97682444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1787264297;
	bh=9HzCGy4GTvZ90+HkUQw56L57M2dOuZkOC4dUgXKenkE=;
	h=From:Date:Subject:To:From;
	b=J/oKerPcizKbC90GOA7aUZPkA5sQznCEU9ZWB/F+6VotqjfjVnvMTRY8fnU4od33w
	 OMOBcp0+CsVmQK5k8PAVtlkRKNB5D/ii9+gctR/pT6CqSMnJJerIXpYGC1Ak4aL+4G
	 b8WflUcki32xA6Hz0bSXePvymb5tWk4iUZjOmcMI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Date: Thu, 20 Aug 2026 18:18:05 -0400
Subject: PAPPL v1.4.12
Message-Id: <5BB27DB0-AF26-4CD5-A60E-0B3C3B8E7D54@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

All,

PAPPL v1.4.12 is now available for download and is a bug fix release:

    https://github.com/michaelrsweet/pappl/releases/tag/v1.4.12

Changes include:

- CVE-2026-*NNNNN*: Added overflow protection to the dithering code =
paths.
- CVE-2026-*NNNNN*: Added overflow protection for setting ready media =
values.
- Added logging of the USB port status byte for USB-connected printers.
- Now clear USB errors after a failed get device ID request.
- Updated poll error handling and forced sleep to be consistent =
throughout.
- Now close HTTP connections immediately after returning an error (Issue =
#431)
- Fixed a locking issue when deleting a printer (Issue #433)

Enjoy!

________________________
Michael Sweet

