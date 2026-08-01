Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C5A293B75
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 17:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785605124; cv=none; b=KFVhUts9uD7dGT7Cg+yVjhjwTZrPoY5TbFW5vj3uNlcj6BFlg7Oi7R8DLo/nPq62oXJpwH+sjVQzURa6sOPfBmLLdc0CfbMsrnWuim0PyzzSMVBD2ISBgSibKALGGXktmYXTkXdBRfFtwdLsXGL4nF8jZQeibZnrM/RxFYbLiUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785605124; c=relaxed/simple;
	bh=Xgi6BcA+vuHhbr7oMkA9dR8Rf/WXGjZmUu0OFNrN9ig=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=RFpWv/y5kLfFRiL/zIF1qx2MCzt8HeVQhjcj8hUuSxO8hH/dkzfLJ1JeDWA9qvlLRNBCjKmrZHnBobRUDJ+3G1j/UoEjl9RYmH0ND7xDNj6fCdbv5UgeLsKiadmMHOnhbegR68JfGwZ2k3ktsoyte5hugj6ztmsWPevOMQ+dNJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=P2GK4QuW; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="P2GK4QuW"
Received: from smtpclient.apple (unknown [153.67.1.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 870A482444;
	Sat,  1 Aug 2026 17:16:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 870A482444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1785604590;
	bh=Xgi6BcA+vuHhbr7oMkA9dR8Rf/WXGjZmUu0OFNrN9ig=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=P2GK4QuWSvfEPLieg4phM5k9kTobvNoKD3r3AEWvOamW4Yb3l7Ix6laulypG2FeSc
	 3bEDgSAO3kbATm3h/kZDpyY0ngfymVPaxLGd6l9AWadf8ak7RbpkrPHWRlK5Mu08dO
	 9wklNC9v2F7hPpvNv1/mXjzt7TB2yFz75g/vil3Y=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Re: Recommended way to manually add an undiscovered IPP printer in
 CUPS 3.x
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
Date: Sat, 1 Aug 2026 13:16:18 -0400
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
To: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Abdelrahman,

For CUPS 2.x you'll use the "everywhere" model ("ppd-name" attribute =
passed with 'everywhere' value) with an "ipp:" or "ipps:" device URI.  =
If the user doesn't have the full URI (typically =
"ipps://hostname/ipp/print" these days) then you can send a =
Get-Printer-Attributes request to the "/" resource to try to get back =
the correct URI for the printer (returned in the "printer-uri-supported" =
attribute).


> On Aug 1, 2026, at 12:44=E2=80=AFPM, AbdElRahman Khalifa =
<abdelrahman.5alifa@gmail.com> wrote:
>=20
> Hi everyone,
>=20
> I'm working on the COSMIC printer setup application for CUPS 3.x.
>=20
> I have a question about driverless IPP printers that are not
> automatically discovered, for example, when DNS-SD/mDNS is disabled.
>=20
> What is the recommended way for a desktop printer setup application to
> allow users to add such a printer manually?
>=20
> I'm looking for the intended approach in the CUPS 3.x architecture.
>=20
> Thanks,
> Abdelrahman Khalifa
>=20

________________________
Michael Sweet

