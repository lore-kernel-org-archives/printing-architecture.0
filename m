Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8354A23393C
	for <printing-architecture@lists.linux.dev>; Sun,  2 Aug 2026 17:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785692888; cv=none; b=Sj1QizqMaQFGfclPAF1OP1M0bxnc11Uzp8ZC1RgsGYDrFBgsy5n73Jbt7OFQEqoHdHWtzmm36P6coduISahd3S7QcTFqYRzzF/3SvpU6N0OyzkyUEiKG5eFGDcPWpGtC9tazr6lNceOtdXIlu2E6FUpz8kvVIQpEV6NBNssXbrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785692888; c=relaxed/simple;
	bh=wbQRk0flwB2VxT9BzzUU9zHHtJOHVNmr6KcWKCZ0/2k=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=gP5fVAt1IdTFxiVv+5Yv69pjKrs/TA0yDp7GJ3qxMhTxYaj1bZYfSHLQvHdIh9sfrkdRhBCFdMsJhG3YYkIYIcmOzTCiAkBWLuuodLiDfFYLjElYlYNP0NVZzGzGK33xmvoCOfjFZ0w8nE5XATM3Fy++B3PjKZIVYSKelP2oZvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=wB7q/wAy; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="wB7q/wAy"
Received: from smtpclient.apple (unknown [153.67.1.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 0C19782014;
	Sun,  2 Aug 2026 17:48:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0C19782014
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1785692881;
	bh=wbQRk0flwB2VxT9BzzUU9zHHtJOHVNmr6KcWKCZ0/2k=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=wB7q/wAywWBA72vSxjCgq5mD6HRCuIFgn1toXAFLQmAVXajHMsgcXOR4F+F0agw/R
	 8FO0fanJJGtadHCTjzJIZjWivKyUA2RzTi6YTCh2JCIncPBgndkYeku54Dbvtz0Ywp
	 ebABBTcXaIhT+My7e3/ltVWYemYj9RFIAomJaur4=
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
In-Reply-To: <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
Date: Sun, 2 Aug 2026 13:47:54 -0400
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <CDA0640E-599F-4E74-83A4-1D88B59BF84C@msweet.org>
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <e8fda297-ebbc-4252-87bc-7a1502472c72@gmail.com>
 <bf7e0634-8972-4078-a0bd-211d348b3d36@gmail.com>
 <CAHK3-aqHugD6ZAjMSaOZadNrWZ6F5M=bKmUbWpDXN6c9yeVNyA@mail.gmail.com>
To: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Abdelrahman,

> On Aug 2, 2026, at 5:18=E2=80=AFAM, AbdElRahman Khalifa =
<abdelrahman.5alifa@gmail.com> wrote:
>=20
> Thank you for the explanations. I think I now understand the
> separation between printer profiles, the local server, and the sharing
> server.
>=20
> My current understanding is the following:
>=20
> 1. cupsEnumDests() should be the source of truth for the destinations
> displayed on the main Printers page.
> It can return automatically discovered IPP destinations, remote CUPS
> queues, Printer Application destinations, and eventually destinations
> supplied through profiles.
> Therefore, a destination must still be displayed even when I cannot
> find a corresponding local DNS-SD advertisement.

Correct.

> 2. DNS-SD should be an enrichment and grouping source, rather than the
> authoritative destination list.
> I currently use Avahi to obtain information such as the service
> instance, hostname, port, resource path, TXT UUID, and the
> relationship between _ipp._tcp and _ipps._tcp advertisements.
> I will correlate this information with the destinations returned by
> cupsEnumDests() and use it for physical-device grouping. Where
> possible.

The destinations returned by cupsEnumDests should have device-uri, =
printer-location, printer-make-and-model, printer-type, and printer-uuid =
as extracted from the TXT record.  Local queues will have more =
attributes (including printer-uri-supported which provides the local =
CUPS queue) but there should be no need to separately browse.

Also, the CUPS DNS-SD APIs are available and will isolate you from other =
OS changes below you. For example, the systemd folks have been trying to =
replace Avahi for several years now - it is possible they might actually =
succeed some day, and using the CUPS APIs will insulate you from that =
change...

> 3,. COSMIC Printers should not create or edit printer profile files.

You could conceptually provide an admin tool for "exporting" profiles to =
provide to end-users, but beyond that I don't think there is much point.

> 4. Profiles belong to the local-server/libcups discovery mechanism.
> When libcups supports them, profile-defined destinations should appear
> naturally through cupsEnumDests().

Correct.

> Queues owned by the sharing server are a separate concept.
> I should query the sharing server using its IPP System Service
> operations, such as Get-Printers, when I specifically need to list or
> administer the queues owned by that server. I should not infer that
> every destination returned by cupsEnumDests() is a configured
> sharing-server queue.

Correct.

> 5. A normal driverless destination returned by cupsEnumDests() is
> already usable and does not require an Add operation. A queue on the
> sharing server should only be created if the user explicitly requests
> server-side sharing, relaying, accounting, access control, or similar
> policies, for example, when the user opens the Add Printer dialog and
> selects that printer.

Correct.

> 6. For an undiscovered driverless printer entered manually via IP
> address or hostname, printer setup tool should probe it using
> Get-Printer-Attributes and then create a queue for it on the sharing
> server.

There may not be a sharing server.  There will always be a local server.

A "driverless" printer that has to be manually configured can be setup =
via a printer profile with the local server. The sharing server only =
needs to get involved if a) the printer is on a separate network that =
only the sharing server has access to or b) there is a need to =
control/monitor access to the printer as you detail in #5 above.

________________________
Michael Sweet

