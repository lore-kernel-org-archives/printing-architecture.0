Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790E81DA0E1
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 20:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785616885; cv=none; b=H/hUYWve+a5ICaMaz11s3Ai/SU9vzcvyPocH4neb9DrF7FanxsAbKLT6vdDCR2oukE8sBJ8C79qJlwH9v9zeBfugdYs8XMZD4yryuI0Zn360mDQ+teZuNgLdoEKB74KBR9RLjmslr8mx438oLBUigpPEJut/ukOksCqBbN4br/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785616885; c=relaxed/simple;
	bh=zpZuAPz9LS7rK1UGwWUUit06ylyL7OWvLHVj9vzk6M4=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ovXQvSBktw42R5ixibFSVbY+891CgCKNBUN+3GEk9YQ5h1YuSSr9s9yQrgShUVjVuTMvnFUZXnb0Lyqx1V3lUcAiL7Krf1riY6p3LCs4fzO5hXmKg41buGlWqKVDDMe7g6nwEn/1Mm7o4AinjahU2kHss29gN2mX/IANnuC9HM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=skBIBvfS; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="skBIBvfS"
Received: from smtpclient.apple (unknown [153.67.1.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 0E03882444;
	Sat,  1 Aug 2026 20:41:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0E03882444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1785616883;
	bh=zpZuAPz9LS7rK1UGwWUUit06ylyL7OWvLHVj9vzk6M4=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=skBIBvfSsUnfzD/3CfupqNLuk2VH4+V2TcQNISYGence27/rbsKapMIH+J8o6PyNQ
	 fzmgsKyUF0R10YUMkJw1182ol9bsQpl+3V8vYmsIRF6mcs2zvLaNR86NozpkTW7TWc
	 d+joxItca43PaYLjqctGZ546id6RQnQZ0H3D9T+U=
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
In-Reply-To: <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
Date: Sat, 1 Aug 2026 16:41:10 -0400
Cc: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>,
 printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <BFC15E62-A87D-40EC-8462-BCC9B6CD2593@msweet.org>
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Till,

> On Aug 1, 2026, at 3:50=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> ...
> But how to proceed under CUPS 3.x?

CUPS 3.x uses PAPPL 2.x which has different operations and attribute =
names (as part of standardization in the PWG) but otherwise works =
similarly.

The Create-Printer operation accepts the "smi55357-device-uri (uri)" and =
"smi55357-driver (keyword)" operation attributes to provide the device =
URI and model/driver name, and cupslocald (from the cups-local project) =
supports the following driver names:

- 'everywhere': IPP Everywhere/AirPrint/Mopria/Wi-Fi Direct printer
- 'pcl': Generic B&W PCL printer
- 'pcl_duplex': Generic B&W PCL printer with 2-sided printing support
- 'ps': Generic B&W PostScript printer
- 'ps_duplex': Generic B&W PostScript printer with 2-sided printing =
support
- 'ps_color': Generic Color PostScript printer
- 'ps_color_duplex': Generic Color PostScript printer with 2-sided =
printing support

The PCL and PostScript drivers are extremely limited and are just there =
to support legacy Samba printing basic support for local (typically =
enterprise) laser printers.

> If I have only the local server, it is stateless, it only uses =
temporary queues.

It is not stateless.  It just doesn't have permanent queues and doesn't =
share local queues with other systems.

> How do I, in case of not using mDNS/DNS-SD, tell my discoveries/manual =
IP selections to the local server so that it sticks with them? Or am I =
REQUIRED to use mDNS/DNS-SD when I have a system with only the local =
server of CUPS 3.x as print environment?

We have been talking about this ("printer profiles") for a very long =
time:

    https://github.com/OpenPrinting/cups-local/issues/2

> Or do I have to use the sharing server when I just want to print =
locally but not use mDNS/DNS-SD? Does the sharing server has a config =
file for holding such printers?

The sharing server is more of a traditional "all queues are permanent" =
service and saves the queue state/configuration across runs.

________________________
Michael Sweet

