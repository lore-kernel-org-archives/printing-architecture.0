Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7C8EEA8
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 12:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759495578; cv=none; b=oBymiiqHsCes2Qj9C4hq6gA2prC7y5MDtLyowRTR5Mc1az3JD5yFcO7aFL0doGq0jHZ0x2FplJPV6fNYR+sQIxftvi/df98kr2ZSh9qI7lLKbSt6xOd4SG3SepYFQacsosC2S/4C1Lq6Iav3LVtIQAlbhK6KryBPeMvWA2H0/PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759495578; c=relaxed/simple;
	bh=21fZNUVa7of0MhRdH5HJbfsOHFqeiee+YujVrVBX6j4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Y6lckmOBZFuQG9429OHQml8IhnwC+lNGamhklrOoaIXDvsWk5fwhm5/WB+0NLVpBekNuI9eaWgXguxOJQgmaILG0JIGqxBmRkALbhg7ofcAsgyEjatXnZBR8bbMec3bAW0GgoP48+ATW6aUj1Qg111eg4DTL/1oiGAReTJZX68U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=alteholz.de header.i=@alteholz.de header.b=s/8BwN/L; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=alteholz.de header.i=@alteholz.de header.b="s/8BwN/L"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A752409EF
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 12:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: 0.6
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Eikp2m4CFJk for <printing-architecture@lists.linux-foundation.org>;
 Fri,  3 Oct 2025 12:46:13 +0000 (UTC)
X-Greylist: delayed 2749 seconds by postgrey-1.37 at util1.osuosl.org; Fri, 03 Oct 2025 12:46:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 72F09409E4
Authentication-Results: smtp2.osuosl.org; dmarc=none (p=none dis=none) header.from=alteholz.de
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72F09409E4
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=alteholz.de header.i=@alteholz.de header.a=rsa-sha256 header.s=202105 header.b=s/8BwN/L
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a01:4f8:1c1c:4223::1; helo=he006.server.alteholz.net; envelope-from=debian@alteholz.de; receiver=<UNKNOWN> 
Received: from he006.server.alteholz.net (he006.server.alteholz.net [IPv6:2a01:4f8:1c1c:4223::1])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 72F09409E4
	for <printing-architecture@lists.linux-foundation.org>; Fri,  3 Oct 2025 12:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=alteholz.de
	; s=202105; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=L4ssAtIcB3FEmZ9/6pk3y0RSA3CZ8quVyGGMoYjs76w=; b=s/8BwN/LgzkX6npY13g/W3tzXU
	2+A3ZWcxUdBRqvO4yc2mZB8zTs6yirh/6PAhHWRrJl8oKoaaaICgh8NkeLFs7TIrgyfRlXDbbCIkz
	+zq3TlgJCjPMl4hnksTDyl/PQjP90RnqlECGL30P0XdPWuZ8teSezMGkKj49D7p63HNE=;
Received: from uucp by he006.server.alteholz.net with local-bsmtp (Exim 4.92)
	(envelope-from <debian@alteholz.de>)
	id 1v4eSR-0006Mw-4D; Fri, 03 Oct 2025 14:00:19 +0200
Received: from [2001:678:ad8:aa04::41:1] (port=51704)
	by email.intern.alteholz.me with esmtp (Exim 4.94.2)
	(envelope-from <debian@alteholz.de>)
	id 1v4eOo-00At7m-04; Fri, 03 Oct 2025 13:56:34 +0200
Message-ID: <33c3a352-a2e9-455a-b9d0-65350de28749@alteholz.de>
Date: Fri, 3 Oct 2025 13:56:23 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: We should announce our releases on
To: Till Kamppeter <till.kamppeter@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 Zdenek Dohnal <zdohnal@redhat.com>, Michael Sweet <msweet@msweet.org>,
 Alexander Pevzner <pzz@apevzner.com>
References: <9f07fe2e-154a-4a9e-b2a6-99a83c2c0f82@gmail.com>
Content-Language: en-US
From: Thorsten Alteholz <debian@alteholz.de>
Autocrypt: addr=debian@alteholz.de; keydata=
 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 MQ==
In-Reply-To: <9f07fe2e-154a-4a9e-b2a6-99a83c2c0f82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Till,

On 17.09.25 01:07, Till Kamppeter wrote:
> Perhaps we should create an organizational user, like @OpenPrinting, 
> on Mastodon, for doing such announcements.
>
> WDYT?

yes, I would like this.

   Thorsten

