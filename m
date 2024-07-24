Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58336134DE
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 14:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721830959; cv=none; b=cgS8WjKxgdol1LRC1yUd7PiqsLWILxlRMr3gIoCuYc8+B8b7y1cx4J3vP8QGP2pXU/l0zlhwhuVJD6tYWYNLAVjr6v0sKiITethclnSTNl9tGIsyYnyUpIUOZQkcbDrVya3DwQZbst6wk3bxoBDIJ/YEqK4TVo5ehdtAIBPnIhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721830959; c=relaxed/simple;
	bh=kfbd55nt2fl9M4DpG2FJzwyA02OXyASmBJ5RRJkksC4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=o5/eL/YT8t5lE1/YCkDcHi/ovg5/apq/GdN2kVin+IiWxlAuupsZs7aVZD9ES3aSJltUJ+OfFyR84p4+icN0YJFvWNCWi0kb8WGkj+sh88/XVjQLjRW1FHy69av7VlYLqUiPCFC+b0sCeSk2awM6OG5PrymPNp+7jusp61cJqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=M8TtzCX3; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=YjPIGtmg; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=MSEkZpmD; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=0UHmNGXy; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="M8TtzCX3";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="YjPIGtmg";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="MSEkZpmD";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="0UHmNGXy"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02F7C40676
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 14:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -4.4
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uw_S6aqh0Hmj for <printing-architecture@lists.linux-foundation.org>;
 Wed, 24 Jul 2024 14:22:36 +0000 (UTC)
X-Greylist: delayed 477 seconds by postgrey-1.37 at util1.osuosl.org; Wed, 24 Jul 2024 14:22:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 50A0C4029D
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=suse.de
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50A0C4029D
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=M8TtzCX3;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=YjPIGtmg;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=MSEkZpmD;
	dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=0UHmNGXy
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=195.135.223.130; helo=smtp-out1.suse.de; envelope-from=jsmeix@suse.de; receiver=<UNKNOWN> 
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 50A0C4029D
	for <printing-architecture@lists.linux-foundation.org>; Wed, 24 Jul 2024 14:22:36 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 7594F21A28;
	Wed, 24 Jul 2024 14:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1721830476; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UR8IuTa5xJ1P2o46vN8w8u22qCsAit4B1fNTHkjx3mc=;
	b=M8TtzCX31S/nCaTpHIOFL7b5xpUs76sj5IFwDQCGHLufRpPUlERugTkvYqF/MvHD6NcUqR
	pLl6n0QXDe59Q60EBT8ftUOIB/G8HsFOONEONFi26UyA5hX42+yG3DgejssJ/PAfCG/stI
	NxEUjHT2Kp66d+yQdXAaNhYZWtUIliI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1721830476;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UR8IuTa5xJ1P2o46vN8w8u22qCsAit4B1fNTHkjx3mc=;
	b=YjPIGtmgzu9Z2QRFRhAbeDh8uZdgRq5MZjopqXjG8ao6RkoP1iVERl6jb8B5Wjkemfb13V
	S0t0GfYD+N+9RxAg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1721830475; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UR8IuTa5xJ1P2o46vN8w8u22qCsAit4B1fNTHkjx3mc=;
	b=MSEkZpmDlPmgD1kDSkOgnhZD8GQWpvlZWAilytJ4gghqWnX/tldk1MzcHGZ3GSHxSVuLVh
	ds5v3IHm49rHnSpWjR8oW4mgql5Rl9q6gwG6SfUvpJYEPs5qhf/RADUo1AGttp2Yh1tI0i
	+C+6uW62THKiACi9bCaKTzvbXIYuzCY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1721830475;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UR8IuTa5xJ1P2o46vN8w8u22qCsAit4B1fNTHkjx3mc=;
	b=0UHmNGXyBGxkfY99S1Bg4U8Phl1EhAnet0a74ueV8zP/1szxoyT9Xes+JbS0dKaZ2Xjl/Z
	zgGbcmAGNb2KPKDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 6C0F513411;
	Wed, 24 Jul 2024 14:14:35 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id N6cAGksMoWaUIgAAD6G6ig
	(envelope-from <jsmeix@suse.de>); Wed, 24 Jul 2024 14:14:35 +0000
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Wed, 24 Jul 2024 16:14:35 +0200
From: Johannes Meixner <jsmeix@suse.de>
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: Alexander Pevzner <pzz@apevzner.com>, Open Printing
 <printing-architecture@lists.linux-foundation.org>
Subject: Re: ipp-usb 0.9.27 announce
In-Reply-To: <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
References: <b6902ee7-e159-43a3-92eb-0dd7b7956587@apevzner.com>
 <5fc6f6ec-5f22-4a69-adf1-6754058c222e@redhat.com>
User-Agent: Roundcube Webmail
Message-ID: <efb5a88c49a51289f0f9f4f9de801591@suse.de>
X-Sender: jsmeix@suse.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-4.09 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_TRACE(0.00)[0:+];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCVD_TLS_ALL(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[opensuse.org:url,imap1.dmz-prg2.suse.org:helo]


Hello Zdenek

On 2024-07-24 15:37, Zdenek Dohnal wrote:
> can I somehow ignore vendor dir of goipp at the moment?

I don't know how ipp-usb is made on Fedora / Red Hat
so I may misunderstand things here.

I guess you talk about some additional vendor.tar.zst
source file?

At openSUSE we have ipp-usb and goipp as separated
source packages in the openSUSE Build Service (OBS)
see
https://build.opensuse.org/package/show/Printing/ipp-usb
and
https://build.opensuse.org/package/show/Printing/goipp

Why separated source packages?

See my
https://build.opensuse.org/request/show/1157901#comment-1919874
where I wrote (excerpt):
-----------------------------------------------------------
please describe via an explanatory comment in the spec file
what the additional vendor.tar.zst source is,
what its purpose is, and wherefrom it can be downloaded
(exact upstream download URL) so that others at openSUSE
can understand what that additional source is,
why it is needed for the openSUSE package, and
that we can verify that vendor.tar.zst in the openSUSE
package is the unmodified source from its upstream URL.
-----------------------------------------------------------
and my subsequent
https://build.opensuse.org/request/show/1157901#comment-1919883
where I wrote (excerpt):
-----------------------------------------------------------
In this particular case (additional vendor.tar.zst source)
the files in vendor/github.com/OpenPrinting/goipp
neither match GitHub master code in
https://github.com/OpenPrinting/goipp
nor what on
https://github.com/OpenPrinting/goipp/tags
the tar.gz for v1.0.0 nor v1.1.0 result
(in contrast to what vendor/modules.txt seems to tell)
so currently the additional vendor.tar.zst source
looks rather "suspicious" - at least to me.
-----------------------------------------------------------

I wrote that in Aplil 2024 with the XZ attack in my mind
so additional sources that do not match what one gets
from its "well known" upstream URLs are rather scary.

I would recommend to
Keep Separated Sources Strictly Separated ( KSSSS ;-)
so that others can understand what "the sources" are
and can retrace where "the sources" come from and
can validate that "the sources" are unmodified
upstream sources.


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Frankenstr. 146 - 90461 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Ivo Totev
