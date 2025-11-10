Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DD13E47B
	for <printing-architecture@lists.linux-foundation.org>; Mon, 10 Nov 2025 01:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762739936; cv=none; b=ENrPERnpTWilKm9xQOJcRTHT9rXESL3IcRC0NccXTDNvQlZRGeJ2X3up6U7OHGY5bRcv8MZ8KfAQ8PpZerDldLyqij4k2vaye4+AIyxJ9mN/BaSIP3aop088a5m43VHa6emAEfnSFvULtg1XWx4ISxcADK0L4YFbP28Sm9abaGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762739936; c=relaxed/simple;
	bh=xzgoJz+hkKia5FZ9ZVPV/ZZiE50yvgWrmPMz7GLkuug=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ZFfB8XthXSfqg3XqCmgsIxEDXvZPQxfZY2B93C6XKoykHMSeSna3O3KJJIamKs+2hqXQPLM7cuNUzvWc+V9P+h1HSpdOoQxbrQzhjbvUV36Tz9V7TAYHPKTGxcEa9Z+pVeI23zIhZ/QFV05VJfRGAh2J/EgUYurEtryfCis9o8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Z2MBatdm; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Z2MBatdm"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1A6681227
	for <printing-architecture@lists.linux-foundation.org>; Mon, 10 Nov 2025 01:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.791
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SVxTNrDkkZay for <printing-architecture@lists.linux-foundation.org>;
 Mon, 10 Nov 2025 01:58:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E9DD811FE
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E9DD811FE
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=Z2MBatdm
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6E9DD811FE
	for <printing-architecture@lists.linux-foundation.org>; Mon, 10 Nov 2025 01:58:53 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 3C9D1803DC;
	Mon, 10 Nov 2025 01:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3C9D1803DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1762739932;
	bh=xzgoJz+hkKia5FZ9ZVPV/ZZiE50yvgWrmPMz7GLkuug=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=Z2MBatdmkRtFdwVafTY/y8TaTAfampeiD+unEVOfG+jbKh3cSLTG8c+RReWioA+WA
	 c6a2XLWtjMnOs+FFs6MhyKSRbKT3ZMlhWAJGjV8toO1t3dxny2GsdoeG2GYQ4OMB9J
	 aG35ykG87qPHbKF1lY2b+xqj5QY3p+TaKEzrwc/g=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.11\))
Subject: Re: Minor mistake in the IPP IANA registrations
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <e5921db9-4e50-4417-8488-02722b418fad@apevzner.com>
Date: Sun, 9 Nov 2025 20:58:40 -0500
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <ECA9594B-8E6D-4980-B6CF-D5FB4869F3AF@msweet.org>
References: <e5921db9-4e50-4417-8488-02722b418fad@apevzner.com>
To: Alexander Pevzner <pzz@apevzner.com>
X-Mailer: Apple Mail (2.3864.300.11)

Alexander,

IPP registry issues should be reported to the "ipp@pwg.org" mailing =
list. Details (subscribing, etc.) can be found here:

    https://www.pwg.org/ipp/

That said, this issue was recently reported and we have a pending fix =
going out to IANA soon...


> On Nov 9, 2025, at 4:37=E2=80=AFAM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
>=20
> Hi,
>=20
> I've recently noticed a minor mistake in the IANA registrations for =
the IPP protocol =
(https://www.iana.org/assignments/ipp-registrations/ipp-registrations.xhtm=
l).
>=20
> The attribute "pclm-strip-height-preferred" is defined as 1setOf =
integer, while "pclm-strip-height-supported" is defined as integer. In =
reality, these definitions should be swapped.
>=20
> --=20
>=20
> Wishes, Alexander Pevzner (pzz@apevzner.com)
>=20
>=20

________________________
Michael Sweet

