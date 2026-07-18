Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB93F330D34
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 14:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784384721; cv=none; b=gGUE9qq9GmwNriFgOhNfOh1VXM/g1V1gN8dM8mmlyeNC8njbQB7R9KNeIIWGgHAh6UEMHZoicRhW5bzuoZbDsfhxMJyZBUMPn1FwiWHEXzgK2RThgEZcd8gVoJnfyD27LrxYMogJV9SCSXzw1Bewp8HuUleqGrWSrO4ZuxErYqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784384721; c=relaxed/simple;
	bh=fiZVeqBlEJ0zdc5jZrghUjW6HLlGWGK6kS0Gp9/251w=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=Jf0h6nxmiv35j0ubVsr2TcPMXWVIARoDArD/FHcF2ByzJ4yy2+zrLsPlbgYCqzSmJUxSXvm8sSW+sFiob2bJmxgUJ9pZLb5u+j54scNrXzOIz4RnSAq5QSoraWkMEGY0JalNMLkspeKplW68Sl+1TKQP/pO7a3w/IPvMXDsjk+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=cJlppgt9; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="cJlppgt9"
Received: from smtpclient.apple (unknown [153.67.41.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 30922803DC;
	Sat, 18 Jul 2026 14:17:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 30922803DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1784384275;
	bh=fiZVeqBlEJ0zdc5jZrghUjW6HLlGWGK6kS0Gp9/251w=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=cJlppgt9Yk0CevrE3k+yWWXxPwLj4APYPvv3NL5/pcM7owNIe61lXInOLP6Cj8sVE
	 qWaZF86p+kyOcm4pX1NBV2GN1/dMnd/hUdpk21JR7TqyYCUvrst/kUMYKSbqE5G7v7
	 zooo0Cmh6ONfkosCT96Fm7128F8RaL0yWsXvVL/o=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Re: Exploring a universal production printing architecture
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
Date: Sat, 18 Jul 2026 10:17:43 -0400
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <E82AE91D-DFFC-4598-B19B-6DF903D95165@msweet.org>
References: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
To: Joshua Braddock - Queen City Print Shop <joshua@qcprints.net>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Joshua,

I'll preface my feedback with "what Solomon said" since it covers all of =
the important stuff.  My own specific responses are below...


> On Jul 18, 2026, at 4:25=E2=80=AFAM, Joshua Braddock - Queen City =
Print Shop <joshua@qcprints.net> wrote:
> ...
> The core idea is to separate document generation from production =
workflow.
>=20
> Today, applications generally render directly to a printer driver,
> where media selection, finishing, device capabilities, and
> vendor-specific options are all intertwined.

Actually, that was the 90's.  CUPS started out in 1998 as a PostScript + =
PDF-first solution that isolated applications from generating =
printer-specific features/code, and that from an earlier (1994) =
PostScript implementation on top of the old System V printing system.  =
Over the years we have been able to get the industry to (more or less) =
standardize on using IPP and higher-level file formats - the main =
holdouts are label, receipt, and large-format roll printers, although =
there has been some adoption in specific markets.

Some of the resistance to change comes from vendors providing tightly =
integrated solutions (point-of-sale, shipping, photo, and high-end RIPs) =
where there is little demand for a more generic, cross platform/vendor =
solution.  Try to convince EPSON that they should put AirPrint in their =
24+" roll printers and they just claim that nobody will print photos =
from their phone, ignoring that the same protocol is used for desktop =
printing because that would cut into the business of RIP vendors that =
help get their products sold.

So what we've been doing for the last 16 years is evangelizing standards =
and pragmatically developing and supporting IPP "Printer Applications" =
for those printers that cannot (or will not) support a common standard.  =
This isn't perfect but it at least makes it possible to create a common =
workflow application based on IPP.

> ...
> My question isn't whether this should replace CUPS or existing printer
> drivers. Rather, I'm curious whether OpenPrinting has already explored
> an architectural separation like this, or whether this is an area
> where discussion would be appropriate.
>=20
> I'd appreciate any pointers to prior work, existing standards, or
> reasons this approach has already been considered.

Standards can be found here: https://www.pwg.org/ipp/

The migration of CUPS away from drivers is discussed here: =
https://openprinting.github.io/cups/drivers.html

________________________
Michael Sweet

