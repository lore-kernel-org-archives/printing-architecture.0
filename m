Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C312E65A
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 21:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705615008; cv=none; b=sewuUuvarB1J6x5yda5IW2qbRFX65VW+clHdd/CocGBSHlwre4M53jETtNJ4QhN6R6pz6hbVIhqdjwZ7PxdF7DSPVc9MmzJ3rs5v7aD0zlgcny1OdiZYZ8bcEDjx4c9sEkQwFukTCtZYn+88VFEE7KYYBwsO1e50g14Wpef9Da0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705615008; c=relaxed/simple;
	bh=/pJEvo28yYLTi1ZAJ+oQ9rW3ePhVDT0ianJUYsEhgn0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=u8ZJCwpJmIEp0cvzoExO+0pbB08bPnoYE2jyr2t2IVj+9tQlq/wTdEFV8g9fCCnOO4Z7VgzaTbkFbFq3VAB+iQ9LuNEIIzrfBJBSbtnNBaKIC5EJ1crMlzzB4WkimgCxz8LtZGr3BtBbOLo6Ji3Qjz3DND+Qn95rOhRAywm3vTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Vm+X7sPb; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Vm+X7sPb"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E56FF4212F
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 21:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E56FF4212F
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=Vm+X7sPb
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zeQr88748Ckh
	for <printing-architecture@lists.linux-foundation.org>;
	Thu, 18 Jan 2024 21:56:46 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 59452420E8
	for <printing-architecture@lists.linux-foundation.org>; Thu, 18 Jan 2024 21:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59452420E8
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 06EAE82001;
	Thu, 18 Jan 2024 21:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 06EAE82001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1705615005;
	bh=/pJEvo28yYLTi1ZAJ+oQ9rW3ePhVDT0ianJUYsEhgn0=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=Vm+X7sPbXBvPbepgt0VbvIIR0bXuKKkWSMUgtDyuLPkVPFVXb2y6SH99PjoVOPjaD
	 ft3RYe1YWGb80qJbjFL+IAACumYbeNBhqbExxmYAFUwmTnt/dTjaqmypV4RrKPfUl9
	 ggyILL0CB2LnA9f/18XyuwRwWGyZ0rwOcp+d/tdw=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.11\))
Subject: Re: Printer's IPP response declares AirPrint, but it's missing
 urf-supported - workaround?
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <eeece40c-a883-44d0-820f-5ec9bbaa0510@redhat.com>
Date: Thu, 18 Jan 2024 16:56:33 -0500
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <04A38A5C-A2DF-407B-B3CD-77DB2A3E92B4@msweet.org>
References: <eeece40c-a883-44d0-820f-5ec9bbaa0510@redhat.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
X-Mailer: Apple Mail (2.3774.400.11)

Zdenek,

> On Jan 18, 2024, at 9:28=E2=80=AFAM, Zdenek Dohnal =
<zdohnal@redhat.com> wrote:
> ...
> Is it possible to use printer-resolution-default and others as =
fallback when generating PPD, or is it against standards and can bring =
additional issues?

Not generally, since the supported raster resolutions are usually =
less/lower than the printer's supported resolutions.

> If it is rebranded model, IMHO there won't be any updates for firmware =
- there is one firmware update and user will try to install it, but in =
case it does not fix the issue, it would be interesting to see what we =
can do.

AirPrint *does* require firmware updates for broken implementations and =
security issues, so just because this printer isn't reporting everything =
doesn't mean it won't get a firmware update.

Can you try the following test:

{
    NAME "Get urf-supported"
    OPERATION Get-Printer-Attributes
    GROUP operation-attributes-tag
    ATTR charset attributes-charset utf-8
    ATTR language attributes-natural-language en
    ATTR uri printer-uri $uri
    ATTR keyword requested-attributes urf-supported
    STATUS successful-ok
    EXPECT urf-supported
}

________________________
Michael Sweet

