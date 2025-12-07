Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD98523536B
	for <printing-architecture@lists.linux.dev>; Sun,  7 Dec 2025 18:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765133410; cv=none; b=o3+xBDaopJr5rq/1rgLbBQg2TXajdjXKJqBdUUd89iACyqnOW8YTo4Y+PqzkCRf10Z+5lSKG4XWGWOr0yfVgyRnGEZqfcsxmk+Zjim/h7T41ggwZuN2Q/MxNVZK+diNEwoRVlYwZCju/5GfAbXwZubCnZESVQrqxlHKjtFZ0244=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765133410; c=relaxed/simple;
	bh=uV8hXZ6BFJtZoNYUvQu62LpAlH+HuD0PhLQur7yRqTA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ZaRIKZksmsXmjDXFjZmclZ+7e7ijIrWwX+U0EM4AuO0SoWhcoqv9rWgHGowQiPyutujbGz7xW1E3Vy75+mic1a1k32cPBBhp0BduTA4ztIOFxptxiYG6p5CcM/djy59c4q4pwWi1Gn2VOGGjA2FiL3TKq+03NYVr0pyXVDhNjO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=ijGi97xt; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="ijGi97xt"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 4376080F07;
	Sun,  7 Dec 2025 18:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 4376080F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1765132886;
	bh=uV8hXZ6BFJtZoNYUvQu62LpAlH+HuD0PhLQur7yRqTA=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=ijGi97xtUdiOVY5/pyhXZA/jDKLYQ9PROg4NAcx5JPr9DPecKWlpUHNNwtM/XMv4K
	 miwf8WurwJuPTtHWw6W6IfQ8OJmHCEAZXrrTEuZBh/RhbhRXVm4/NGRXDdFJ6BinHO
	 dGzL3Cyr6fCARI0/eaIBFPKeK8haEIxDXyTPPicU=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: Question regarding continuous media
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <f8fb46d4-8edc-42d9-aedf-7a7adefb4865@gmail.com>
Date: Sun, 7 Dec 2025 13:41:15 -0500
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <D0EEE7D9-3CD6-4DD7-83BF-E11677A34D69@msweet.org>
References: <829a6fbe-2514-49f9-9cae-b9a590364c0f@gmail.com>
 <f8fb46d4-8edc-42d9-aedf-7a7adefb4865@gmail.com>
To: Armin Felder <armin.felder@gmail.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)

Armin,

> On Dec 7, 2025, at 7:23=E2=80=AFAM, Armin Felder =
<armin.felder@gmail.com> wrote:
>=20
> Hi,
>=20
> In my free time, I am currently working on a small thermal printer =
driver using the PAPPL lib.
> I defined a media called: continuous-short_bdl_58x0mm (5.1.3 =
5101.1-2023)
> but when sending a job with e.g. 58x99 it fails validating the media =
size

"continuous-short" is not a valid media name prefix.  The currently =
registered prefixes are "asme", "custom", "disc", "iso", "na", "oe", =
"om", "prc", "roc", "roll", "jis", "jpn", with "choice" available to =
combine multiple sizes such as =
"choice_iso_a4_210x297mm_na_letter_8.5x11in" to automatically choose =
between ISO A4 and US Letter.

What you want is "roll_current_58x0mm" for 58mm wide roll of =
indeterminant length for the ready size, "roll_default_58xLENGTHmm" for =
the default size, and "roll_min_MINWIDTHxMINLENGTHmm" and =
"roll_max_MAXWIDTHxMAXLENGTHmm" for the supported sizes.  Since not all =
clients know how to deal with roll media, you should also include =
"custom_min/max_WIDTHxLENGTHmm" in the supported media.

The media types for continuous media would be "continuous" for paper and =
"labels-continuous" for labels.

________________________
Michael Sweet

