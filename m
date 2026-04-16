Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBEB3CD8A3
	for <printing-architecture@lists.linux.dev>; Thu, 16 Apr 2026 14:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776348333; cv=none; b=HBWOMx2rNtQIfyakV6wBbH0ZFxj09jfZjRu1qD+xfA91QafmgTsQcxXHzWAKl58MWFqRv/X7Lq4ZM5KXx4bTIQfU63A9lpGNQzYodw/JfIfPG2JWQSmGNVgs5dO2kP39spcEOvU5Gp62MC3dK5evxp6Sl/x0xXgorhCB/HxDddA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776348333; c=relaxed/simple;
	bh=P7kAV9Un9lnlt1ARmybWSI/l3NWk0b9PtcP514EesMA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=a6A3FLUFbSdZ8ELyA4uJXPoj7174qlZcTk+Cuyw2ZnumKUbUzMcdC5z7utXriK6hM2L0oNKt70izqTdZMqWUhIRPyMzCOci2pcrhS5+GI2z0YOt5yoSUmWa0i+njk+4xt6r3zXZr1IcRI6RKRyRvGfrPyKR39gpwq/gmar9YeRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=FMElZe2j; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="FMElZe2j"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id D2C6B80E52;
	Thu, 16 Apr 2026 14:05:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org D2C6B80E52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1776348325;
	bh=P7kAV9Un9lnlt1ARmybWSI/l3NWk0b9PtcP514EesMA=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=FMElZe2jTHriY6RJrvOCK92AgFIoJGSyPjl59gmwcc9RDKbZVxX3lClwx1GvG9wCs
	 34A7eER6GTDCN3BWu62ZnG6vI7VekO4W1j0WlGZEdiM9OS64bV0El7AhvlZb0wLE89
	 qaDP+OFHvl+UNUvW/wP53RyxPugtBN6IFEWPV9gM=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.31\))
Subject: Re: AI-discovered recent CUPS vulnerabilities going through the news
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <d42c7f96-edf5-446f-b6df-82dcb6ebfd4b@gmail.com>
Date: Thu, 16 Apr 2026 10:05:13 -0400
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 Ryan dasgeek <dasgeek@protonmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <09242B7B-B9C5-43C8-B5B3-1180C898F32D@msweet.org>
References: <d42c7f96-edf5-446f-b6df-82dcb6ebfd4b@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.600.31)

Till,

These are known low-to-moderate issues we have fixed, and those changes =
are queued up for a release as soon as Zdenek and I can resolve the CI =
issues.

As usual, the security guys are making every potential issue seem dire =
but none of these issues actually poses a serious threat.


> On Apr 15, 2026, at 10:29=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> [ Resent to correct list address, pleas only answer to this one, with =
"Reply to
>  all". ]
>=20
> When chatting with the hosts of Destination Linux, they told me about =
following posts:
>=20
> https://www.theregister.com/2026/04/06/ai_agents_cups_server_rce/
>=20
> https://cyberpress.org/cups-vulnerability/
>=20
> https://cybersecuritynews.com/cups-vulnerability-remote-attack/
>=20
> =
https://www.scworld.com/brief/new-cups-vulnerabilities-threaten-rce-networ=
k-breaches
>=20
>=20
> Summary by Ryan DASgeek
> -----------------------
>=20
> -----
>=20
> The attack doesn't require a user to "click" a link or download a =
file. Instead, it exploits how Linux handles printer discovery and print =
job metadata. Here is the step-by-step breakdown of how it moves from =
the network to a root terminal:
>=20
>    Discovery (The Hook): The attacker identifies a Linux machine with =
CUPS exposed (usually on UDP port 631). They send a specially crafted =
packet that "advertises" a new, fake printer on the network. Because =
many Linux distributions have cups-browsed enabled by default for =
convenience, the computer automatically "sees" this printer and adds it =
to the system.
>=20
>    The "Page-Border" Injection (The Payload): The core of the April =
2026 issue (CVE-2026-34980) lies in how CUPS parses print options. The =
attacker sends a print job to this fake printer containing "smuggled" =
newlines within the page-border attribute. CUPS fails to sanitize these =
hidden commands.
>=20
>    Command Execution: When the system processes the job, it gets =
tricked into treating part of the malicious metadata as a trusted =
configuration file. This allows the attacker to execute commands as the =
lp (printer) user.
>=20
>    Escalation to Root (The Terminal Access): Once the attacker has a =
"foothold" as the lp user, they utilize a second flaw (CVE-2026-39316), =
which is a Use-After-Free vulnerability in the CUPS scheduler. By =
triggering a crash and memory corruption while the system is deleting =
temporary printers, the attacker can escalate their privileges from a =
restricted service account to full root access. At this point, they have =
complete control over the terminal and the entire operating system.
>=20
> -----
>=20
> Michael, I did not see that, probably due to the flood of =
bug/vulnerability report coming in in the last days due to several =
contributors using AI.
>=20
> I hope you are aware of these (or of the fact that the combination can =
lead to remote root).
>=20
> Thanks a lot, Ryan for passing this on to me.
>=20
>   Till
>=20
>=20

________________________
Michael Sweet

