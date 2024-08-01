Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293EA13BC39
	for <printing-architecture@lists.linux.dev>; Thu,  1 Aug 2024 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722524436; cv=none; b=Q8hnTeEQ/bAGF+VUwhXecWSPalhzgXpCkJA0DO0xCEO2nVZR0nX9AXORG+omxEH5HOAYM6zrwSRCsqE7AamXbAIUnGpwMSvsFgGnCZCc2IdIT4wcf33uGMDA4UgjjtBgdU1BcBbQs3i2YpwNiyA3ospn8/pZv1DI2pIO8qsiqWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722524436; c=relaxed/simple;
	bh=g+TF3SZoCi53JCxgtTYxzBqkkjcPMjDYkDMpM/2vZ+4=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ejoYu9psy3Gr9hCY9P0IncmfXCoaubKnMawJZ4dQb6VeDRoR5XEEvXZ1hgPJh+8zn1wLZOWL0XUbm8M6P3FBp7Ta+Z8EL7PpjDzmryMYwk3vkfadGTgCIe20rbYDseJd6bgWMSiQbf8V5DZ+Dni6o+tskOZWnlmRsLukpgk+WwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=c8kW8w5z; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="c8kW8w5z"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 25995803D3;
	Thu,  1 Aug 2024 14:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 25995803D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1722523920;
	bh=g+TF3SZoCi53JCxgtTYxzBqkkjcPMjDYkDMpM/2vZ+4=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=c8kW8w5zYKqlM3+zMyYynmA2OMrpCS8fwuyQxOSxVa/jet9S7CfrBh7npkXYcl8z7
	 M4Yp6gRhuXryQTWzkYGQBgbgKxwu6C49Gcvc1W/5+OG8nDObWcZuWTq0Iy2gBJhWo9
	 gvKKQT69mRpprUknO+c1Jd32hrkZaTftJNLNiwqE=
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7B8BD443-EBFE-4913-A704-D50C1158B89B";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: Experience with new model Brother DCP-L2600D - no IPP-over-USB
 support?
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <ae94bdb7-69d6-48dd-9195-91ba6511273a@redhat.com>
Date: Thu, 1 Aug 2024 10:51:48 -0400
Cc: OpenPrinting <printing-architecture@lists.linux.dev>
Message-Id: <88461E86-DF80-4738-B813-E50CDF4A82A1@msweet.org>
References: <ae94bdb7-69d6-48dd-9195-91ba6511273a@redhat.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
X-Mailer: Apple Mail (2.3776.700.51)


--Apple-Mail=_7B8BD443-EBFE-4913-A704-D50C1158B89B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Zdenek,

> On Aug 1, 2024, at 10:11=E2=80=AFAM, Zdenek Dohnal =
<zdohnal@redhat.com> wrote:
>=20
> Hi all,
>=20
> do you have any experience using the mentioned model driverlessly via =
IPP-over-USB? A Colleague bought it based on "Buy Brother" =
recommendation from various people (winking to Till, since he now =
recommends Brother ;) ), but he found out it is not plug and play as the =
current printers.

OK, so looking this model up it appears to be a budget USB-only laser =
for Europe/Africa/Asia.  The DCP-L2640DW (a wireless version of this =
printer) is available in North America, but it also doesn't support =
driverless printing...  There was a recent comment on one of the CUPS =
bug reports that we aren't doing a good enough job telling users what to =
look for in a printer, and this is a case of a vendor producing a =
throw-back printer that is basically a paperweight on Linux... :/  We =
*do* need to do better about advertising what printer(s) to buy...

> The model looks to be from 2023, so I was surprised there are new SOHO =
models without any driverless support these days, even for recommended =
Brother...

That surprises me as well!

For the record, this printer (and its wireless cousin) require a driver. =
 They don't implement any of the IPP stack...

________________________
Michael Sweet


--Apple-Mail=_7B8BD443-EBFE-4913-A704-D50C1158B89B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmaroQQACgkQvmfHXsgf
MkQB1g//ZWftY9DxmxbXakVg5WTL2SLrGpKdGTGB0cEIBXFEbxwgENPGKegwgUfe
vsSI0X58Hn9TbX5zUolP6mZ8vh4fy+9BiTC4oq7pQ40Gf7T1V5kyf8EAxyGsPjCU
GL+5cuuPv8EnbWlVRsVhyHpN9yaN5lWITq2wNvEIH7WlT1hQuu1jWKYo9lDFHBTN
nmD7efO9ky21njvOGgK3LI/E7RrWBOleonRcOrpQRf+f/nGl+yeWDIuHN4khOG6M
WXZ7sNuxgbXPZ7TgrMs5/f2mBbvbPGy6QY2WHApO/qqUaGhsxJu63PGRhN2ozw9y
i35AuwZAxFoStD8QwOxHiucuyKQTTcFZqVuOr4pFhfe5d8diQHkHXLh6UHEGLIZ/
XQreYDZkdhhhVHksx/p/xOVfYtaDHd5a2GRKnBCv6eziQE2CZ//M52xSddhX7AUT
427+8EAQOKkH1+ErtqWvfKxlhEklsg8B9b5yfknZOQxcberjvEmPkCPHw7L83nyJ
Jbuo/rYCXZmA6b/kgq1o55lSOPLXKuk0pt49yDlkDWxcCz39oxXXIhka0b7TJuB/
uQwFoLigOLFSxfWM3zBIayLMasuEsyKY4TK7av8vzdEXrEAbCo/iE/N1QhsZpOw5
RM5AfzqFG7NkkM99pX8UHZRb07bihqewsKcB/cs2cG9VbB9QXWs=
=yLIE
-----END PGP SIGNATURE-----

--Apple-Mail=_7B8BD443-EBFE-4913-A704-D50C1158B89B--
