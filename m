Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13151A8F9A
	for <printing-architecture@lists.linux.dev>; Fri,  3 Jan 2025 15:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735919439; cv=none; b=cB4LycFm2fMQ/tmIjc+1h/vvRHwe8S/C6oAz9dWfofhWlFSWzK8vLt08xL8fOnfgeXohpSm9oFXA7A3W7jh93/0P2fgFgympvhoe+J/zjtpkthffn+ZxEVP0wczFIflCWU4jlcnVHgJsnQkMQtufbbI3j6EqngkPLPyKPU1q4Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735919439; c=relaxed/simple;
	bh=yC8id8Dv83oeohbu+sxu3KD/1CqI6h8XMcIpbn2KYeg=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=EYStKjnRHtM8OAOVQ/E+3wzmwT8Wl7lw7eGj/kkOoz2oTQslVzH7rFmbEBUBRFXlCG6vUTxx7Q3wXuP9NqnbiOBNiQfo8NDKiJAvY/xGHqJW8QB7PGIxI5G8euV5N9R8HmXixx/2LrziSD2RPOd0SVcbAXx5IKyZ1RUi9gwX+0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=C7VuwWXW; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="C7VuwWXW"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id DC061803C9;
	Fri,  3 Jan 2025 15:44:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org DC061803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1735919086;
	bh=yC8id8Dv83oeohbu+sxu3KD/1CqI6h8XMcIpbn2KYeg=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=C7VuwWXWIKVpRBPBKqEtVlAnl34Z/0o9l3Jl7Qejw9FAGLTPaXkkpXLqmrvWUd7gJ
	 4YOGJPR/5UQ0T2KPajcSFbbJRyG/QmvgPkrUoHj4QdlIFYgeXeglv6zFb1wfhH62Ww
	 OM9ANbECDw6ydtj664Z2+FLF4NJhiIs1OeQJLLnI=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: IPP - OAuth2 supporting operating systems
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <FR2PPF4263B3A8E713B870199DCDC2EC9B496152@FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM>
Date: Fri, 3 Jan 2025 10:44:34 -0500
Cc: "printing-architecture@lists.linux.dev" <printing-architecture@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5B9B706D-B282-4226-9BBB-DA1A5F7278B0@msweet.org>
References: <FR2PPF4263B3A8E713B870199DCDC2EC9B496152@FR2PPF4263B3A8E.DEUP281.PROD.OUTLOOK.COM>
To: Dennis Haseloff <dennis.haseloff@alemo.de>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Dennis,

> On Jan 3, 2025, at 5:44=E2=80=AFAM, Dennis Haseloff =
<dennis.haseloff@alemo.de> wrote:
>=20
> Hello all,
>=20
> Since this is my first post, cut me some slack if I make any formal =
mistakes.
>=20
> We are developing a cloud-based IPP endpoint for our customers. Since =
the advent of SAML/OIDC, customers have become reluctant to use the good =
old basic authentication. Instead, they insisted on using their IAM/IdP =
solution of choice such as EntraID, etc. Naive as I am, I tried to =
enable OAuth2 using the IPP extension described here: =
ftp.pwg.org/pub/pwg/informational/bp-ippauth10-20190816-5199.10.pdf. I =
tried it with Ubuntu and CentOS, but neither of them responded properly =
(starting the OAuth2 process) to the different authentication method.

Correct, and we are just working on implementing the follow-on standard =
in the PWG (I am the main author)  at:

    https://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippoauth10-20240624.pdf

CUPS 2.5 will be the first release of CUPS with OAuth support.  I can't =
definitively say when CUPS 2.5 will enter beta testing, but I'm hoping =
sometime in the next few months...

> Does anyone have experience implementing OAuth in combination with =
Linux operating systems? Or does anyone know which operating systems =
(Linux, Windows, Mac) support OAuth2 as an authentication method and =
which do not?

Currently Windows is the only OS supporting OAuth for IPP printing, and =
then only for Azure Universal Print queues (where the usage of OAuth and =
IPP is somewhat "muddied"...)

________________________
Michael Sweet

