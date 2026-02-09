Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7F830E828
	for <printing-architecture@lists.linux.dev>; Mon,  9 Feb 2026 22:50:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770677411; cv=none; b=thgIa96zE3iMl4lvkJe/50VeI9j1u4iIBz1p0v1gU5IG0OqHOwyy3249vhAZLitOjwLtMfFe+I/j93LHWkb104s91alaOtdIBp6pIpPOAUv2FrtJp0UC8vDZyOq7XgeOA0iv9V1fvBEbD1txV38+8pF+Cxv+um1VuDYYh1k5kfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770677411; c=relaxed/simple;
	bh=pEvEhgvmF+pBmBhQBrvAbcIQDqtZ56uZapI4WUocU9I=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=RVhwSuGOupHuLbIj+GF4wKj+gGS/X2dMxAU3duzP1bxU1XHn0N2JRWNtWVX635OdZrmjwP7cRL1mC+nhnWPdYNymmJ3AtR19bQg0jih6+HpwG9h/9b9tp6MOTlOHJpz1c6ykBnMftoOhxyysaxYeEN/bGGEsMfoXwwU60QfGXzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=QRoW8nQt; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="QRoW8nQt"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 13ADC82405;
	Mon,  9 Feb 2026 22:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 13ADC82405
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1770676902;
	bh=pEvEhgvmF+pBmBhQBrvAbcIQDqtZ56uZapI4WUocU9I=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=QRoW8nQt0QEq+XUPji9GoTD9dv/NVpvymoJB5s+MTxv9o5DFVQb+pDHRNi9Q+qygR
	 hiOC8R+Tt8B8GfWK9WeUQZjrakdvyr/BxlajKthiNEn6gLD1JuYPLy7EAupFnx19Yy
	 hjEvFfj2YoXrURVjV3A8HVyTgivnXjJWUtEX5Fxk=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.400.21\))
Subject: Re: Existing practice for embeddable IPP servers in printers
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <1968ca68cbee9db439c5ce1133aec226b7289124.camel@posteo.net>
Date: Mon, 9 Feb 2026 17:41:30 -0500
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <EE84324C-6635-4391-A03F-D8AED174946D@msweet.org>
References: <1968ca68cbee9db439c5ce1133aec226b7289124.camel@posteo.net>
To: John Scott <jscott@posteo.net>
X-Mailer: Apple Mail (2.3864.400.21)

John,

> On Feb 9, 2026, at 2:04=E2=80=AFPM, John Scott <jscott@posteo.net> =
wrote:
> ...
> What's the current state of the art for a printer's internal software =
stack? Most OpenPrinting software doesn't appear to have been made with =
small microcontrollers (which may not have virtual memory) or real-time =
operating systems in mind, and I'm not sure it caters to this need =
anyway.

There are a number of generic printing stacks that are used on "low end" =
printers with different hardware/software requirements.  CUPS and PAPPL =
are also used on printers using embedded Linux and various real-time =
OS's with POSIX programming interfaces.  Otherwise you'll find that =
"well-established" vendors have developed their own software stacks.

> Many embedded operating systems that would make good candidates (Linux =
Foundation's Zephyr, Eclipse's ThreadX [1], or Apache's Mynewt or NuttX) =
are capable of running HTTP servers without fuss. It's conceivable that =
an IPP service could work by hooking into it with CGI or something like =
it.

Generic HTTP servers often don't support all of the HTTP functionality =
that IPP requires (HTTP Upgrade to TLS, chunking, transfer coding) but I =
do know of several implementations that have taken this approach, =
regardless of any limitations.

> Is that something that's usually done with custom code, or do =
lightweight libraries exist that help with processing jobs, parsing =
options, and the like? Is there any toolkit or library that helps in =
making small device-side IPP daemons, or is it something that isn't done =
with free software very often and there isn't much precedent for it?

For reference, CUPS' HTTP and IPP stack was developed on a 32-bit R2000A =
MIPS processor running at 25MHz with 8MB of RAM.  PAPPL-based printers =
exist that run on ARM-based MPUs/SoCs with half the =
capabilities/resources of a Raspberry Pi Zero W.

________________________
Michael Sweet

