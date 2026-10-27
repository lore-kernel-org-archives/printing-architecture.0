Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=195.135.223.130
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793087968;
	b=KxcUwS51mVBxjtIIb1htxaH9r2QgMLK4RFvAaOx2xmmBkkHRWwUocRE5Hr76dewm1XrW
	 bGuEtBh6ZNdUWbv/+IHzDCgaPMWzPDIsler+MxgwKm6Ehj3WKG48KbLKj6Ups2luMZGJP
	 AJQcYzcnc4FT47cmRlKmwCUkk+Z+2/jHCqWrSAeywniLi5+JDrGOF6FLSp+9GwJuDYo6+
	 lhN+gr+cfmVSYA3W8vip6D997YXbftdzKFpXBPjbmEnhw6da9KXY7R6E6DyZvIAvSU6yd
	 1judub96/qzQ02oKsSJ4Q2Uwv6OW8biajJy4Wee87d6mDYAqACf0Js8WZPP7YG9/Xgw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793087968;
	h=DMARC-Filter:Received:DKIM-Signature:DKIM-Signature:DKIM-Signature:
	 DKIM-Signature:Received:Received:MIME-Version:Date:From:To:Cc:Subject:
	 In-Reply-To:References:User-Agent:Message-ID:X-Sender:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Queue-Id:X-Spam-Level:
	 X-Rspamd-Server:X-Rspamd-Action:X-Spam-Flag:X-Spamd-Result:
	 X-Spam-Score;
	bh=jT1kZrI44O7wFr2CKZuyK5AVFodSmKb/uddgjrL4ijg=;
	b=So33hx/2u6/wGyiuxNRY1+arD6eTw7ri13SeR9eyaDi71+hzRRuhI/nOYCqHG02BMTjx
	 PIqPeLStPWbGmGe59J8/f4zMA1FNR9o8PjcJN9d3I5G4lsZ7yLWdLpvE1e+R0BOAnhSyk
	 MRtbdmpMZAfFTBjJE5dmFYYabhAwA/8YZBU1Itw9hMa3dMPiJ6frXAYGyCux65WsQscMx
	 NLooHWeduI/jJzWX1GeP35YOnMxSC/vqjulKtKyEpq764f8PU0HshYMOTptS6HaG7JYo7
	 lD3AyJxKJVOrGo6IRuEs/LgvSUbIi67vITGcO3qsiFrO4QFwrzfQvyIqqmCtJgdUNqg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=suse.de;
	spf=pass smtp.mailfrom=suse.de;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=SHFnxqcp;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=YZ1BqRIm;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=SHFnxqcp;
	dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=YZ1BqRIm;
	arc=none smtp.remote-ip=195.135.223.130
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4944D606A31A
	for <printing-architecture@lists.linux.dev>; Tue, 27 Oct 2026 07:59:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4944D606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=SHFnxqcp;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=YZ1BqRIm;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=SHFnxqcp;
	dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=YZ1BqRIm
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 4073321C0C;
	Tue, 27 Oct 2026 07:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1793087965; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jT1kZrI44O7wFr2CKZuyK5AVFodSmKb/uddgjrL4ijg=;
	b=SHFnxqcpl6LPjFKxyD+59rK5Svg50wJAXlgPZorbsY/RFBEw5yoPz6kvgJiaUtNCmZyu5h
	+Gi4HXGzs8D8yr/7V51r5cj1qi0fZJbuqffv4/F8KEU/ItTwqIXmCCIxMkD+Y4eUM5Lemd
	Jmli4BqupNkwymSjnFDuwF2qn1lBlF4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1793087965;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jT1kZrI44O7wFr2CKZuyK5AVFodSmKb/uddgjrL4ijg=;
	b=YZ1BqRImIFWegQY6Pelq7/lKUQzyqs+21y7grQMU1+czey5K9TNRVfBCj2/yLpTMP4a9E2
	e1hnCLG3Aw1AEuDA==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=SHFnxqcp;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=YZ1BqRIm
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1793087965; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jT1kZrI44O7wFr2CKZuyK5AVFodSmKb/uddgjrL4ijg=;
	b=SHFnxqcpl6LPjFKxyD+59rK5Svg50wJAXlgPZorbsY/RFBEw5yoPz6kvgJiaUtNCmZyu5h
	+Gi4HXGzs8D8yr/7V51r5cj1qi0fZJbuqffv4/F8KEU/ItTwqIXmCCIxMkD+Y4eUM5Lemd
	Jmli4BqupNkwymSjnFDuwF2qn1lBlF4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1793087965;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jT1kZrI44O7wFr2CKZuyK5AVFodSmKb/uddgjrL4ijg=;
	b=YZ1BqRImIFWegQY6Pelq7/lKUQzyqs+21y7grQMU1+czey5K9TNRVfBCj2/yLpTMP4a9E2
	e1hnCLG3Aw1AEuDA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 236A91321C;
	Tue, 27 Oct 2026 07:59:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id HIyOAt1Z4GqwcgAAD6G6ig
	(envelope-from <jsmeix@suse.de>); Tue, 27 Oct 2026 07:59:25 +0000
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Post: <mailto:printing-architecture@lists.linux.dev>
List-Help: <mailto:printing-architecture+help@lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
List-Owner: <mailto:printing-architecture+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Date: Tue, 27 Oct 2026 08:59:24 +0100
From: Johannes Meixner <jsmeix@suse.de>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: abel deuring <adeuring@gmx.net>, sebastien michea
 <sebastien.michea@manaty.net>, sane-devel@alioth-lists.debian.net,
 OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Re: [sane-devel] OpenDeviceDB lists the scanners SANE supports, with
 links to the backend man pages
In-Reply-To: <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
References: <CAD_QBAQv8tgP5AWTAk_YzQ+YxihAukHjVrMyFFZpo3Q7M=iHdA@mail.gmail.com>
 <dfa6ce9bc7761f0d7f30d21e8cff0b0e2075c8d5.camel@gmx.net>
 <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
User-Agent: Roundcube Webmail
Message-ID: <ada980b7ba769e5244d02e63529f9333@suse.de>
X-Sender: jsmeix@suse.de
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4073321C0C
X-Spam-Level: 
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Spam-Flag: NO
X-Spamd-Result: default: False [-8.70 / 50.00];
	SUSE_INTERNAL_BYPASS(-9.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SEM_URIBL_FRESH15(3.00)[opendevicedb.org:url];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	XM_UA_NO_VERSION(0.01)[];
	MX_GOOD(-0.01)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	R_DKIM_ALLOW(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	ARC_NA(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com,gmx.net];
	DKIM_TRACE(0.00)[suse.de:+];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmx.net,manaty.net,alioth-lists.debian.net,lists.linux.dev];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo]
X-Spam-Score: -8.70


Hello,

On 2026-10-26 17:59, Till Kamppeter wrote:
...
> I got asked the same but for OpenPrinting
> and printer drivers.
> 
> I think, any device about which we know whether,
> how, and how well it works with Linux and
> open source in general should be listed by
> https://opendevicedb.org/.
> 
> Windows users who want to switch to Linux ...

Currently
https://opendevicedb.org/
reads:
---------------------------------------------------
Before you reverse engineer a device,
check if someone already did.

An open directory of devices whose protocols
or firmware have been reverse engineered,
so nobody — human or AI agent — redoes work
that already exists.
---------------------------------------------------
and
https://opendevicedb.org/about/
provides a bit more info about the WHY.

As far as I understand that, the intent of
https://opendevicedb.org/
is not a complete list of devices which are supported
by whatever operating system for arbitrary end-users
but instead
for device driver software developers a list of
devices which do not support a published standard
so reverse engineering of protocol or firmware
is needed to make device driver software.


Kind regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Frankenstr. 146 - 90461 Nuernberg - Germany
GF: Stefan Gaiser, Jochen Jaser, Abhinav Puri
(HRB 36809, AG Nuernberg)
