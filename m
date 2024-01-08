Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A9621
	for <printing-architecture@lists.linux.dev>; Mon,  8 Jan 2024 00:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="fMy46efL"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 54A7280F0A;
	Mon,  8 Jan 2024 00:20:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 54A7280F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1704673245;
	bh=Jb6D76ilfvTJlq3uS7od6eLsJH8Wvq8iO4nG24GR4Ug=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=fMy46efLa1ZiShtawmMnjpwdgOeBdBUbLPYKvInaKn3zyZTWhs4jZXObeznKI8oRW
	 vSh1pIWGiRwlo0f/EqLwxxJcWcIILpezTI82EO9b07PYP2FkHpBu5aMZinuUaKTqQt
	 6zCnyad2EKhb3RJ5NQdvnqyjqTM4n1oqdaJ478u4=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.11\))
Subject: Re: CUPS Trademark
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <d56a41c6-5839-4936-b908-3297ed6728df@gmail.com>
Date: Sun, 7 Jan 2024 19:20:33 -0500
Cc: =?utf-8?Q?Jorge_F=C3=A1bregas?= <jorge.fabregas@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <18600D0E-3F40-4887-8337-B2A5EDAE3C08@msweet.org>
References: <cbcc39b7-079d-4e5d-bd4a-f3e29e03f8b2@gmail.com>
 <d56a41c6-5839-4936-b908-3297ed6728df@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3774.400.11)

Till/Jorge,

> On Jan 7, 2024, at 10:57=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> thanks for your e-mail.
>=20
> I am including Michael Sweet as he had made the arrangement with =
Apple.
>=20
> I also include our mailing list as this question could have more =
people interested.
>=20
> Michael, could you tell more?

Apple never went through the process to register the CUPS trademark.  =
When my previous company had tried doing a trademark on the old acronym =
(Common UNIX Printing System) and had it kicked back because of the =
"UNIX" in the name.  So we've only ever had the unregistered trademark =
protecting the "CUPS" name.

So WRT the OpenPrinting CUPS name, it is totally OK.

________________________
Michael Sweet

