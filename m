Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B1356B68
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711122966; cv=none; b=nFXvG6C5/E9JvHbfwiRyeXNrx4r8Kkc7nQk+QR+Ct3oEsGmZ862eH6O246+vFBsdq3gl3TfdWeRKtL/PuqS9T1qg5D1QkRaMbz2ADiwr9jXLq7ZlSIsxeeSXs1fOgVn/ZHZtLhL4BpM3RCrhMYjV4bJwxHovJy8sUNOUQvu1XxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711122966; c=relaxed/simple;
	bh=jUe0lRKLaqso3zuOy/8cV+3DsdcKhHZuC7AblIq4pj8=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=p5POz8Nj0jMMxe9g+w00v8zz2yUr+pXaACS7i6yGBH0ojmQqaXN0PYuX6sVM/i+kes0lmiqx9U1Zf+tfceabV/IQ2JFOgNEiTuba4z+C2V17zc3nUJdLx6nTQ2IZNDgZFXST4FrsAJuUS9q7mHN8UXvsijMy2JogtzCr0szWIHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=CKJhSpVS; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="CKJhSpVS"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20AD841883
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XrYg87iJRN-V
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Mar 2024 15:56:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3D8DC404E9
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D8DC404E9
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=CKJhSpVS
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3D8DC404E9
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:56:01 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 80C2980F11;
	Fri, 22 Mar 2024 15:55:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 80C2980F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1711122960;
	bh=jUe0lRKLaqso3zuOy/8cV+3DsdcKhHZuC7AblIq4pj8=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=CKJhSpVSj81pAbrPClTn1Zs8A07DcuRR2PlzMBo9pBfJZgZdmIVl1LMBinegjUTN/
	 fLLDF7sqIjAraC1/6ymFUP6DqX/ggpHxceTd+tmRVySiMK4joxdZYBcGlK3nBXyfSE
	 qHoc+BIaEdwHkRyzvShZCL7qm2MlZYZzztgdZBaw=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: Re: A couple of questions regarding IPP specs
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <6035865d-de29-4f8c-b5c5-94c999216ee4@redhat.com>
Date: Fri, 22 Mar 2024 11:55:47 -0400
Cc: Alexander Pevzner <pzz@apevzner.com>,
 "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <194AD1A2-1ABE-4FF2-84E2-CDBD03C838F7@msweet.org>
References: <5c414fd9-204b-4c9d-a829-1a6f368bd42d@apevzner.com>
 <84EEF38C-152E-4779-B1E8-578D6BB896E6@msweet.org>
 <6035865d-de29-4f8c-b5c5-94c999216ee4@redhat.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
X-Mailer: Apple Mail (2.3774.400.31)

Zdenek,

No, it's fine for simple changes like this.


> On Mar 22, 2024, at 1:30=E2=80=AFAM, Zdenek Dohnal =
<zdohnal@redhat.com> wrote:
>=20
> Hi all,
> On 3/21/24 19:41, Michael Sweet wrote:
>>> In the CUPS sources, in the ippFindNextAttribute(), I see name is =
used twice for comparison, with strcmp() in one place and with =
_cups_strcasecmp() in another place...
>>>=20
>> That would be a bug, they should both be using strcmp. It dates from =
before 2011 so I'll have to do some serious digging into the old =
Subversion repository to get that history...
>>=20
> Fixed in master and 2.4.x:
> https://github.com/OpenPrinting/cups/commit/1aa0b7bd778
> https://github.com/OpenPrinting/cups/commit/d5b249e3c74f0
> I hope you don't mind pushing this directly without PR - I guessed the =
issue was discussed here, so I took the initiative.
>=20
> Happy Friday,
>=20
> Zdenek
> --=20
> Zdenek Dohnal
> Senior Software Engineer
> Red Hat, BRQ-TPBC

________________________
Michael Sweet

