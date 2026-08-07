Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8172342E8D0
	for <printing-architecture@lists.linux.dev>; Fri,  7 Aug 2026 20:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786133537; cv=none; b=Q6gGnApaJmKcqkijCf2GJ0TuBjV1zlaSpOFlCMjyZEnu4FHwxikk1WATHTXBTm7PLxwPy/2Zwnlrxh/r4C6zkuxBd1z2J3vKLlB1E6Y6N78SACDn0o0TByDspyBOo0L8aDqiveFpSReJRwGj9OwR2c5TZb01C9yjfgRk3rJ95to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786133537; c=relaxed/simple;
	bh=J1OjrGt7WcDjIx084JG0o+++5B9IBWG7gp4I5wCnY14=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=jlXPDJUsjvJh7zuOdU2RTSB+BzHzHvkG8dVu5We9HWuHGzTC11DKXKOZLyoaCCNctVGumprtcF2UmFfEGNyj6iIBaZ1h5FHg2bSMgFluoVJxy+PXXWSOv/Ku2/jx5KhdgsqkEeqpA/Ut274axKJIFdVb8pMCqA5PtD2mwoSW1q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=VVveBx8l; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="VVveBx8l"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 06BD581D95;
	Fri,  7 Aug 2026 20:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 06BD581D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1786133528;
	bh=J1OjrGt7WcDjIx084JG0o+++5B9IBWG7gp4I5wCnY14=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=VVveBx8lRgWo49ZJrbGRN3VRnxi7iup0GyeALUbujec58W5g2W/VwSeabSA5hfGyS
	 NAE9a7z57Ic2jmg+6+bvYxEG0H7iMD5AMjoUIWS5j4eQoKNWCirMV3pZzAETp16EgJ
	 bKr75UOD9g2b8OqxIwQqJZKRniNCApj1BD9LZ7SI=
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
In-Reply-To: <CAHK3-ap6s-PRdJTOAry=WtCMW9Xw6zzf68fX63tJpP4K-Vj_HA@mail.gmail.com>
Date: Fri, 7 Aug 2026 16:11:56 -0400
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <9984550F-13FB-407F-8900-9775F5FF1422@msweet.org>
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
 <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
 <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
 <CDA0640E-599F-4E74-83A4-1D88B59BF84C@msweet.org>
 <CAHK3-ap6s-PRdJTOAry=WtCMW9Xw6zzf68fX63tJpP4K-Vj_HA@mail.gmail.com>
To: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Abdelrahman,

This functionality has not yet been implemented - it is part of the =
cups-local project (not libcups).


> On Aug 7, 2026, at 3:14=E2=80=AFPM, AbdElRahman Khalifa =
<abdelrahman.5alifa@gmail.com> wrote:
>=20
> Michael, Till,
>=20
> I tried to reproduce the proposed per-user profile behavior for an IPP
> printer that is not discoverable through DNS-SD, but I cannot get the
> profile entries to be recognized.
>=20
> I tested the proposed directives:
>=20
> ```text
> Server ipp://HOST:PORT/ipp/system
> ServerName HOST:PORT
> Printer ipp://HOST:PORT/ipp/print
> ```
>=20
> My environment is:
>=20
> ```text
> libcups3: 3.0.3 installed under /usr/local
> also i have libcups2: 2.4.7
> cups-locald: not installed
> ```
>=20
> For the test printer I used:
>=20
> ```text
> ippeveprinter -p 9200 -r off
> ```
>=20
> So it does not advertise itself through DNS-SD at all. Direct
> `Get-Printer-Attributes` requests work and return the printer
> correctly.
>=20
> I tested both per-user profile locations:
>=20
> ```text
> ~/.config/cups/profiles/
> ~/.cups/profiles/
> ```
>=20
> However, `strace` shows that libcups3 never scans or opens either
> profiles directory, and `cupsEnumDests()` doesn't shows the printer.
>=20
> So currently I cannot reproduce the intended flow:
>=20
> ```text
> profile file
>    |
>    v
> cupslocald/libcups reads it
>    |
>    v
> cupsEnumDests()
>    |
>    v
> printer appears
> ```
>=20
> Is `cups-locald` currently required for profiles to work?
>=20
> And if so, is profile support expected to work with the current
> `cups-local` tree, or is that part still not implemented/released?
>=20
> I mainly want to make sure I am testing the intended CUPS 3.x setup
> correctly before deciding how the COSMIC side should handle manually
> entered/undiscovered printers.
>=20
> Thanks,
> Abdelrahman
>=20

________________________
Michael Sweet

