Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04FF363C60
	for <printing-architecture@lists.linux.dev>; Sat,  1 Aug 2026 23:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785625427; cv=none; b=i5ISic1YoXLMo4EL1MkkFRKz+FgH/lSd2NZBIOxA+f+JpLOv3lioiWo27AjViEq7QlA43ce+2UhWBeQPjU3zD0PfgJkZMBEZAAI8BHKwOU+TIS4Gi+J77DYqAPOxKYo1zbMQWhxWUfQM3g/+lnBJKIY38SeLFvfY6YGlM0a+Kic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785625427; c=relaxed/simple;
	bh=2xBXnox2sHyopp99ABFOvbrAIG4sgKUlJGbBg/8OGpw=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=iE01HDNIvpeZhjfhbjSxGAF37yK2KPg1hGNfHl2Dj4aKMMIKJl66vTnPEwcGiYQQXS+SM4D4nwJyRrZJT6IFVxD34xSAouPfr2TyPtIRRmIte1Sz81S99lwKGYmH5BzzbxYFyJYyXy3WJoJyfc6aaGw6uzdqqG70vSAwohfIIBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=K54Og4w/; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="K54Og4w/"
Received: from smtpclient.apple (unknown [153.67.1.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 1206782444;
	Sat,  1 Aug 2026 23:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 1206782444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1785625424;
	bh=2xBXnox2sHyopp99ABFOvbrAIG4sgKUlJGbBg/8OGpw=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=K54Og4w/ivELNV4Mv93+TFrq8/uwpOrGW3xhZuqAMUeEHx+b9ysQOleyAkflzYBeE
	 NV2CwffEaNAAcqXaLSfGgRDighleocGRrBp4CG018NBsoTasrawuKe0z2tGJKjdt76
	 srti7CdaoTSyMyAv4gpgbQGsbCKbXocUIP2MKyN0=
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
In-Reply-To: <6ac225de-ac78-4dee-805a-37db7b15937e@gmail.com>
Date: Sat, 1 Aug 2026 19:03:31 -0400
Cc: AbdElRahman Khalifa <abdelrahman.5alifa@gmail.com>,
 printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <0F92D295-D6BF-444F-84C2-220461CC0678@msweet.org>
References: <CAHK3-apgmO5d5EOd5adZ+3NyCjKWOTMaoZPVC4tLDkVKPM-BQQ@mail.gmail.com>
 <EE1E0FD6-B0E9-4E02-948A-0DECCB1BB1F5@msweet.org>
 <debbccfb-2744-4d00-b786-796dea075e09@gmail.com>
 <BFC15E62-A87D-40EC-8462-BCC9B6CD2593@msweet.org>
 <6ac225de-ac78-4dee-805a-37db7b15937e@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Till,

> On Aug 1, 2026, at 5:21=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 8/1/26 22:41, Michael Sweet wrote:
>> Till,
>>> On Aug 1, 2026, at 3:50=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>> But how to proceed under CUPS 3.x?
>> CUPS 3.x uses PAPPL 2.x which has different operations and attribute =
names (as part of standardization in the PWG) but otherwise works =
similarly.
>> The Create-Printer operation accepts the "smi55357-device-uri (uri)" =
and "smi55357-driver (keyword)" operation attributes to provide the =
device URI and model/driver name, and cupslocald (from the cups-local =
project) supports the following driver names:
>> - 'everywhere': IPP Everywhere/AirPrint/Mopria/Wi-Fi Direct printer
>> - 'pcl': Generic B&W PCL printer
>> - 'pcl_duplex': Generic B&W PCL printer with 2-sided printing support
>> - 'ps': Generic B&W PostScript printer
>> - 'ps_duplex': Generic B&W PostScript printer with 2-sided printing =
support
>> - 'ps_color': Generic Color PostScript printer
>> - 'ps_color_duplex': Generic Color PostScript printer with 2-sided =
printing support
>> The PCL and PostScript drivers are extremely limited and are just =
there to support legacy Samba printing basic support for local =
(typically enterprise) laser printers.
>=20
> So when I send a Create-Printer request to a CUPS 3.x daemon (both =
local and sharing) an entry in a profile (~/.cups/profiles/ or =
/etc/cups/profiles/*, latter only for sharing server) is created?

*No*.

Profiles are ONLY for the local server, and they are manually created by =
the user/admin.  Profiles in /etc/cups/profiles (or similar "world" =
directories apply to all users while profiles under $HOME apply to that =
user.  There is one cupslocald running per logged-in user on a system.

The goal is that cupslocald will only list those printers/servers that =
it can connect to, and will periodically update the list of available =
printers as conditions change (switching networks, printers/servers =
coming and going, etc.)

>>> If I have only the local server, it is stateless, it only uses =
temporary queues.
>> It is not stateless.  It just doesn't have permanent queues and =
doesn't share local queues with other systems.
>>> How do I, in case of not using mDNS/DNS-SD, tell my =
discoveries/manual IP selections to the local server so that it sticks =
with them? Or am I REQUIRED to use mDNS/DNS-SD when I have a system with =
only the local server of CUPS 3.x as print environment?
>> We have been talking about this ("printer profiles") for a very long =
time:
>>     https://github.com/OpenPrinting/cups-local/issues/2
>=20
> OK, so they also work with the local server.

They *only* work with the local server.  The sharing server does NOT use =
profiles at all.

> So this means that our printer setup tool which Abdelrahman is working =
on creates entries in the profile when manually adding print =
destinations, either if mDNS/DNS-SD is not used or when the printer is =
outside the local network (VLAN or so)?

No, he should focus on adding printers to the sharing server.  Profiles =
are not intended as things that are created/edited with special tools, =
they are simple text files that replace DNS-SD discovery of IPP =
printers/servers.

> OK, so we need to settle on a format for this file so that Abdelrahman =
can implement that.

The proposed format is in the issue.

>>> Or do I have to use the sharing server when I just want to print =
locally but not use mDNS/DNS-SD? Does the sharing server has a config =
file for holding such printers?
>> The sharing server is more of a traditional "all queues are =
permanent" service and saves the queue state/configuration across runs.
>>=20
>=20
> Does the sharing server not get its queues the same way as the local =
one, both by discovering printers via mDNS/DNS-SD AND including =
destinations by entries in the profile (which can be system-wide now)? =
And it adds rules for how to share these printers also in the profile?

No, the sharing server is more akin to a regular printer application - =
yes, printers get discovered via standard means (DNS-SD, SNMP, USB, =
etc.) and you add the queues (discovered or manual entry) that you want =
to share.  Profiles are NOT used to configure the sharing server, =
although you might use a profile on a client system to point cupslocald =
at a sharing server.

________________________
Michael Sweet

