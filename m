Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659E85CB5
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 18:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711046825; cv=none; b=RtLwmqUg75LZzm4o76sjqvL041NMMzn25Vx+vM7Y3gzW0rUoKQx4U4gVPoMdsJYBN4+4FPVaiynMeXtf2yvaWl8uKD7PZAzmFlnr1XxV3CQ1C89oaZazQCsIOFgk3c0DHXmyA42QhXGxzjGD6Ujg6LkNr78nzJnsDi+BcFXS5Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711046825; c=relaxed/simple;
	bh=O+P2amCKaUKkmahiUkIkoGQ6Ocujbvh8PmmoPY7GCrI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=o3G4T758Gb8/nlakbXygWl795YoqQ0qddbntrIcz/glMDLlxUBTqDLktw5KUGG36IAWsayr7bEC6YNZkXQYk7HPUg3c66+X795ChmtK2AeB80yU4wokBoZX8MrvauOl+jtoq8TBFT06do7+3OB4nfJn0v6BzViiC5oSkWFP+WdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=R2IpjIQt; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="R2IpjIQt"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E8C618229A
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 18:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -0.7
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWv3tKbEaqi2
	for <printing-architecture@lists.linux-foundation.org>;
	Thu, 21 Mar 2024 18:47:03 +0000 (UTC)
X-Greylist: delayed 300 seconds by postgrey-1.37 at util1.osuosl.org; Thu, 21 Mar 2024 18:47:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 451228226D
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 451228226D
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=R2IpjIQt
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 451228226D
	for <printing-architecture@lists.linux-foundation.org>; Thu, 21 Mar 2024 18:47:03 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 43CE380444;
	Thu, 21 Mar 2024 18:42:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 43CE380444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1711046522;
	bh=O+P2amCKaUKkmahiUkIkoGQ6Ocujbvh8PmmoPY7GCrI=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=R2IpjIQtI2N0N3gh+abOcFYKpPAPFPpF6YiOcPGQ0kDyaHYKxwFKHoxLeMsxku6BQ
	 Iw92cZhPyq0/ZN03UXBGeVc1K/xreucfkCiTUMen+pdcIjjBHZgzfIw5c0VEuqTeK6
	 c9DCgea9x7nF0YRiX1g9oV1P4vvVKWT+DPmk4F+k=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Subject: Re: A couple of questions regarding IPP specs
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <5c414fd9-204b-4c9d-a829-1a6f368bd42d@apevzner.com>
Date: Thu, 21 Mar 2024 14:41:50 -0400
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <84EEF38C-152E-4779-B1E8-578D6BB896E6@msweet.org>
References: <5c414fd9-204b-4c9d-a829-1a6f368bd42d@apevzner.com>
To: Alexander Pevzner <pzz@apevzner.com>
X-Mailer: Apple Mail (2.3774.500.171.1.1)

Alexander,

> On Mar 21, 2024, at 1:25=E2=80=AFPM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
>=20
> Hi Everybody,
>=20
> I have a couple of questions regarding IPP specs.
>=20
> 1) Are attribute names case-sensitive or not? Is the answer the same =
for top-level attributes and for member attributes within a collection?

Yes, and yes.  Technically attribute names are keywords which are =
supposed to be lowercase only, but the IPP workgroup relaxed that =
requirement around the time we published RFCs 8010 and 8011 (what is =
collectively known as STD 92).

> In the CUPS sources, in the ippFindNextAttribute(), I see name is used =
twice for comparison, with strcmp() in one place and with =
_cups_strcasecmp() in another place...

That would be a bug, they should both be using strcmp.  It dates from =
before 2011 so I'll have to do some serious digging into the old =
Subversion repository to get that history...

> 2) If two or more attributes in the same scope have the same name, how =
the conforming implementation SHOULD behave: ignore the second =
occurrence (seems, CUPS does this way), reject such a message with an =
error or merge values?

The encoding doesn't explicitly prevent it but the semantics *do*.  =
Except for ipptool, CUPS ignores subsequent occurrences for performance =
reasons.

________________________
Michael Sweet

