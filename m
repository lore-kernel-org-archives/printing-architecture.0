Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91101922C4
	for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 15:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727708415; cv=none; b=OVO5Vv3+2XZFraIkALfs26gCrsAEsFbo7EzDys7gxAxhT1a3ntWLGMY70cLXY8JhRKovrs7i7KIBzk/rTlVGa55SuqDgy/dfHMm1AqZ3IXy+ytbC/HavVaRhypwrC5//CLDh6FcwqrkXp7c3ZLdAojbeiP3Vn+AEXCo/vePA1oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727708415; c=relaxed/simple;
	bh=+BNHOET7OeP3SK5w8gJljEqIUQ2+BpIkM0gaD4f8k+w=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=OhsuIq9h9y/YNHTpLyV6UBC6uVIKe3IUQ+52HiY9uzSsIWeYoavIbTlgkxw2rnQtorFEHirzQwcSp0d0+9A+9mRtV2nFDBHPTF2DkZfL/oaf8zThRkv0veA6lhx+sp/dgJr/rBLDCqz75kZLOfzNpfzcvFO+XJIKUCz4Q+Gs+ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=GxXI8MV/; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="GxXI8MV/"
Received: from smtpclient.apple (unknown [IPv6:2605:b100:321:8f91:fdb7:8570:c9c7:7401])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 5AB8380F11;
	Mon, 30 Sep 2024 14:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 5AB8380F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1727708059;
	bh=+BNHOET7OeP3SK5w8gJljEqIUQ2+BpIkM0gaD4f8k+w=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=GxXI8MV/9aHNICSxFzyeJ/G7T+qtI5XGCEvhHB0eaZpsYlfFbf+eN/pHFe5y9G/Kj
	 4taEuiMHhVO1LGUyapJId1AQNIYolnZv2hgMKYk8oWJso3Puuae6VNSLFM8NwjyI0z
	 253vcOvRGQCV6lR9qzQJ0CBAmuxul03JjyhnFAAo=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (1.0)
Subject: Re: CUPS 2.4.11 is released!
From: Mike Sweet <msweet@msweet.org>
In-Reply-To: <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
Date: Mon, 30 Sep 2024 10:53:43 -0400
Cc: Zdenek Dohnal <zdohnal@redhat.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>
Message-Id: <609BBCDB-B33E-4F78-943A-030DF6CD78AE@msweet.org>
References: <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: iPhone Mail (22B5054e)

Till,

We didn=E2=80=99t have any CVEs filed against CUPS.

Sent from my iPhone

> On Sep 30, 2024, at 10:43=E2=80=AFAM, Till Kamppeter <till.kamppeter@gmail=
.com> wrote:
>=20
> =EF=BB=BFZdenek,
>=20
> thanks for the quick release, but the CHANGES.md does not mention the CVE-=
related fixes contained in it.
>=20
>   Till
>=20
>> On 9/30/24 14:25, Zdenek Dohnal wrote:
>> Hi all,
>> CUPS 2.4.11 brings several bug fixes regarding IPP response validation, p=
rocessing PPD values, Web UI support (checkbox support, modifying printers) a=
nd others fixes.
>> Detailed list of changes is available in CHANGES.md
>> Enjoy!
>=20
>=20

