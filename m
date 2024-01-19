Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E534C60B
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 10:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705660457; cv=none; b=Vt6GT9zqSbVo/9q2MfhPYxf7jtomyVOQotT2XBOCycFOB+n78xzgvr/mZMWq3j58aG3u1NcrgQsQAMDATJNsE7aZZYzpYQN0aFf+izcjFoF3KCidSqrQWriHKFVYgmzi6ZY3R6Wt1gL8Q4UhN7ELplRIwIJRVbp5d9IkIMyy9+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705660457; c=relaxed/simple;
	bh=WChJAfiW42YvPx2rJwhyaTBr4rekyF9a8kZ22y9wxrY=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=h+EeYxr39L1zn4qsbRGlwswDuuF21q3P61heDbc6T4HAjbyaPbEHRNu3TGzapPONm6g3vJjMziK1Kem2YHoPA+aOgCYy0rmH5vRRci6NlFNn6c2Cet7AyCmWSFmtwSPj50s/XAjZhmHmgB7kwfegqRH+cs2a9vuh35gZdFhwVIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=XmTEsz+e; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="XmTEsz+e"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A96F74222B
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 10:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96F74222B
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=XmTEsz+e
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7plL0eBa_NVr
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 19 Jan 2024 10:34:15 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D5EE6421B4
	for <printing-architecture@lists.linux-foundation.org>; Fri, 19 Jan 2024 10:34:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5EE6421B4
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 34D1C807B7;
	Fri, 19 Jan 2024 10:34:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 34D1C807B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1705660453;
	bh=WChJAfiW42YvPx2rJwhyaTBr4rekyF9a8kZ22y9wxrY=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=XmTEsz+eIJEbJFaxbtZ7aWbS+d/RD+hkdJ2Z/WFQ2DPawsn4Ynf6pUKW3fllyLAhx
	 98FojlFLabBIgNkTyo3lkrv/wb2XhkofLOnCSvfKHs4EPpHdDwYwGIV9JSh0xnzABD
	 npGvT3KiSKgnnbf58vuFYWTz5SLwzTs2g+59zkGo=
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
In-Reply-To: <7d037271-9646-45bf-a3c8-3e44b0394814@redhat.com>
Date: Fri, 19 Jan 2024 05:34:01 -0500
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>,
 "Kennedy, Smith (Wireless Architect)" <smith.kennedy@hp.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E9BDF5C3-182D-4A9F-A547-A44C21BB4D45@msweet.org>
References: <eeece40c-a883-44d0-820f-5ec9bbaa0510@redhat.com>
 <04A38A5C-A2DF-407B-B3CD-77DB2A3E92B4@msweet.org>
 <7d037271-9646-45bf-a3c8-3e44b0394814@redhat.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
X-Mailer: Apple Mail (2.3774.400.11)

Zdenek,

> On Jan 19, 2024, at 2:02=E2=80=AFAM, Zdenek Dohnal =
<zdohnal@redhat.com> wrote:
> ...
>> AirPrint *does* require firmware updates for broken implementations =
and security issues, so just because this printer isn't reporting =
everything doesn't mean it won't get a firmware update.
> Aha, I thought that if the printer is older and manufacturer decides =
to no longer support it, then there won't no firmware updates.

Well, that can still happen.  The idea is that if a vendor releases a =
firmware update that breaks AirPrint, they are on the hook to fix it.  =
But they aren't on the hook to support a printer indefinitely, just to =
ensure that AirPrint continues to function while they are doing updates.

> But it only applies when the model uses AirPrint right? We can't make =
a point like this if printer supports other driverless standards, like =
IPP Everywhere, right?

Correct, although I'm not aware of any printers that only support IPP =
Everywhere and not AirPrint.

> =46rom the another side - one more question about AirPrint/driverless =
support - is it standardized how printer says the fact "I support =
AirPrint, but it is currently disabled in settings" in IPP response to =
Get-Printer-Attributes request?

Conceptually you could look for the 'airprint-N.N' keywords in the =
"ipp-features-supported" attribute, but in practice that isn't 100% =
reliable because disabling AirPrint might also disable IPP support.

> So if the printer follows the standards, I can tell it is =
configuration error from IPP response?
> The mentioned model showed image/urf in document-format-supported, but =
no urf-supported in response when AirPrint was disabled - once we found =
out the connection between those two facts (AirPrint was disabled), it =
appears to me like a good way how to say something is disabled in the =
response.

Possibly, but that is just an implementation detail and not =
standardized.

________________________
Michael Sweet

