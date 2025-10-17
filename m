Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2A93370FC
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760712561; cv=none; b=ZzVJebAcTZe9YseJmbUhmkjZrC5cxFHrbhOIwHi2BQgmUPMetOteFA9TIyxUNn8D3q5jHrDjhEV/2b0YNw5CkakPo+wyILehdcNuzr+pSDEnalnXZMRLcTpM5Ik5NMDxLx1rjgBR4rHXoQIBYG8SwU5H2uTogzji8TsfBmAayck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760712561; c=relaxed/simple;
	bh=RYi4+zpUYqB/J8c1VyNv0RxxbKhi+g9OS1o1dLmLh20=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=PTgOeLJVd7gq4hm6dImAj1lABa4M9MF3p+uZ/zD0Gvm4XEWBpGG6SAClcw+At6XKHHM3DIijtVPi8SRrWPMXW/ZkUepkQQxZ/xSEzD73/rq8dsIIqhL0ENzwRRSWLNjZ9vmlgUe9dk09T13VCsGsPqVsALvBD6+oNyGPjDQpbxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=hYJTp1Vu; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="hYJTp1Vu"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 706A040A8E
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -3.892
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H3wOTnSOg735 for <printing-architecture@lists.linux-foundation.org>;
 Fri, 17 Oct 2025 14:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A925A402C3
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A925A402C3
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=hYJTp1Vu
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id A925A402C3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:49:18 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 43B33803AC;
	Fri, 17 Oct 2025 14:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 43B33803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1760712557;
	bh=RYi4+zpUYqB/J8c1VyNv0RxxbKhi+g9OS1o1dLmLh20=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=hYJTp1VuZ4an3JJBoST564ZQFjS6SfrfrN0mMsGZzQvrbSkxq/Ulns+QRCfYdac7z
	 z0h10b6GQEzuZHC7G/GDL4GU5UsKSuYHmRTUfCLmZMOUTHIpaJ7S9zVPg0/vfBkuWC
	 AxvC3uTP0z3bvHD63E29/D0a6Tacxgyeu/Qkeuao=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.100.1.1.5\))
Subject: Re: First beta of CUPS 2.5.x series
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <caf1bd22-0938-4aee-908c-2a08efb3fe45@gmail.com>
Date: Fri, 17 Oct 2025 10:49:05 -0400
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <500A11A5-B111-4267-BF34-6E2888FCD9E9@msweet.org>
References: <556fd321-14ff-4964-a9e8-c908c41f81ca@gmail.com>
 <F0332FC4-A5B8-411A-B5B8-9B5D51E4800C@msweet.org>
 <caf1bd22-0938-4aee-908c-2a08efb3fe45@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.100.1.1.5)

Till,

> On Oct 17, 2025, at 10:21=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 10/17/25 15:38, Michael Sweet wrote:
>> Not quite yet, we still have 14 open issues in the 2.5.x milestone.  =
I'd like to clear out the non-bug issues (7 of them) before we go to =
beta.
>=20
> Which are the 14 open issues? And which are the 7 non-bug which still =
need to get completed?

https://github.com/OpenPrinting/cups/milestone/6

The issues labeled "enhancement" are the pending features, and most are =
small or don't have a lot left to do.

________________________
Michael Sweet

