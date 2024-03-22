Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121AB4AEC1
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711122069; cv=none; b=JAtksPtjRm5iL0HnOk6JpLc+QUwi4JOekADm8kbzdSa/LuqGVj+0VRytFUZDracj6dQZ1zlwWsA6whKrftSjsobyX9xb6cM+sFB2CnYRbB880Lkw0mMmVKz1Yu8lkvCYQWz15a8K9aGVcjy6tpx2hJHzlIpb7GEfchdtEqzcgd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711122069; c=relaxed/simple;
	bh=qUusY3E44HLozFCWY2IiJp8DuwkrGgHEJ2qzvjPXE6g=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=cejqVsM158CXYzvXm0OxCiFoxePmAMVNXOrGBTJD8IFWa3VHH81drNHoeJ6J2rf6ve8tT1wToMM+1BSElzzNfi/X+3ip4++TAzDsQF54uKu+EIQIyuEoWlm2LyfetRdWbGHLFidwsHAbRoacEqGTlPHnE79aD+c43T+w5dlIt0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=jpXNT0Lw; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="jpXNT0Lw"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9692860FDF
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.6
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Utzc8IajPunN
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Mar 2024 15:41:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F6B9606D3
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F6B9606D3
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=jpXNT0Lw
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 6F6B9606D3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Mar 2024 15:41:02 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 0ADA280F11;
	Fri, 22 Mar 2024 15:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 0ADA280F11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1711122061;
	bh=qUusY3E44HLozFCWY2IiJp8DuwkrGgHEJ2qzvjPXE6g=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=jpXNT0LwfgepUbBAmaTN2t9QDBLOqPBYN1zqZqnagU5I6mZO69lT17vzdxxorLOPf
	 q/mdo4UqVtJSkeEs1YNsdnY6fP7bbG+yfCfwJaNHTyeG7NG7XvfNH2MzNWUdEtH37f
	 hqti2MHkJfKPnb5rty6wiwAeVizt4ud5gVtHkWL8=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: Re: CUPS & IPP_TAG_EXTENSION
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <6eb5d746-bbce-4b50-8dde-1c8afcb32187@apevzner.com>
Date: Fri, 22 Mar 2024 11:40:49 -0400
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <9F488FC6-18B7-4333-B17F-C98B0E0EA41F@msweet.org>
References: <6eb5d746-bbce-4b50-8dde-1c8afcb32187@apevzner.com>
To: Alexander Pevzner <pzz@apevzner.com>
X-Mailer: Apple Mail (2.3774.400.31)

Alexander,

> On Mar 22, 2024, at 5:06=E2=80=AFAM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
>=20
> Hi Everybody,
>=20
> yet another question regarding IPP.
>=20
> In RFC8010, it is stated that IPP_TAG_EXTENSION is encoded similarly =
to any other tag: starting with 1 byte of tag (0x7f), followed by the =
attribute name, and then the attribute value. However, the RFC specifies =
that the first 4 bytes of the value should be reserved to encode 4 bytes =
of an extended tag.

Wow, good catch!

> On the other hand, the CUPS implementation encodes 0x7f, followed by 4 =
bytes of the extended tag, and then the attribute name and value.
>=20
> So, the question arises: which approach is correct, CUPS or the RFC?

The RFC.  CUPS is broken in this respect, but then there have never been =
any extended types in standards-track nor vendor implementations that I =
am aware of, which is probably why we've never had problems... :)

I've created issues to track the fixes:

    https://github.com/OpenPrinting/cups/issues/913
    https://github.com/OpenPrinting/libcups/issues/80

________________________
Michael Sweet

