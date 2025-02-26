Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A04021D3F9
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740572685; cv=none; b=GyL3F+vfzJGLD7zczaH6P3IzMXq2UsFY+brm0cFH7/6TkkDfsrhwLahkSDCZp78tR5JSyQAHo/aYanDBOB4OdUYixfBvKYrXwoX1HJGQmlkqS7FNZl4nWw8M06Aq6nLd5NqQC+/BJ2Ve6Nmpp15tJBvucvCijQL02zAezb9hqt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740572685; c=relaxed/simple;
	bh=855R8axukPhJ8YqrDpyftealYwQZh12GPku6QQx260M=;
	h=MIME-Version:Date:From:To:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=uuaiNxfnhpvW6LpZ8STro9/FVF9TmCZ9PQiLk3agK9sn/UU8/QARshqDRKnjq/Hx4cdOteCCC/sVq4g90CYZ2sCw4uzvB8lOnPz9Qo38LqsePdqPf6lLOnHEEN4c65MJ0vFeOsoyetTtooWx0a96t5rPM6Bmpi2Ei52JxlsX5NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=J1CNQdjK; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=GaKAkDJa; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=J1CNQdjK; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=GaKAkDJa; arc=none smtp.client-ip=140.211.166.133
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="J1CNQdjK";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="GaKAkDJa";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="J1CNQdjK";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="GaKAkDJa"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5763C40B9B
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QfDp7In4Ydr4 for <printing-architecture@lists.linux-foundation.org>;
 Wed, 26 Feb 2025 12:24:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a07:de40:b251:101:10:150:64:1; helo=smtp-out1.suse.de; envelope-from=jsmeix@suse.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3771240E3F
Authentication-Results: smtp2.osuosl.org; dmarc=pass (p=none dis=none) header.from=suse.de
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3771240E3F
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=J1CNQdjK;
	dkim=pass header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=GaKAkDJa;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.a=rsa-sha256 header.s=susede2_rsa header.b=J1CNQdjK;
	dkim=neutral header.d=suse.de header.i=@suse.de header.a=ed25519-sha256 header.s=susede2_ed25519 header.b=GaKAkDJa
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2a07:de40:b251:101:10:150:64:1])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 3771240E3F
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:39 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 0691221189
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740572677; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/ejjOl0LZy4Y3BOEx5RA5B5ah4li3QYw012zjQTECQE=;
	b=J1CNQdjKWrnu70wLH4DoPkkg9X9FpIIPl2wLpAOENdbkQvQ4LcOPbBoENZabIE1IAOwY1G
	v4XLV5Zx+M9zJj4TPMinYTWI7F0fTLf4gbKbvclkz9pgi4K5guKpLLIKUqVN64Dk3DCF0U
	2We15KsJD+1bzgsBUzx2oyVceyLgwyM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740572677;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/ejjOl0LZy4Y3BOEx5RA5B5ah4li3QYw012zjQTECQE=;
	b=GaKAkDJa10jKru7Qhu/pOjCgcy1zLKllazdyL4qsxyY04Y8dLStUJcccxnwx+6qnyesYMP
	mKQgwZsiZFkKJ4Ag==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1740572677; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/ejjOl0LZy4Y3BOEx5RA5B5ah4li3QYw012zjQTECQE=;
	b=J1CNQdjKWrnu70wLH4DoPkkg9X9FpIIPl2wLpAOENdbkQvQ4LcOPbBoENZabIE1IAOwY1G
	v4XLV5Zx+M9zJj4TPMinYTWI7F0fTLf4gbKbvclkz9pgi4K5guKpLLIKUqVN64Dk3DCF0U
	2We15KsJD+1bzgsBUzx2oyVceyLgwyM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1740572677;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/ejjOl0LZy4Y3BOEx5RA5B5ah4li3QYw012zjQTECQE=;
	b=GaKAkDJa10jKru7Qhu/pOjCgcy1zLKllazdyL4qsxyY04Y8dLStUJcccxnwx+6qnyesYMP
	mKQgwZsiZFkKJ4Ag==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E71F21377F
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id mOsFOAQIv2eSGAAAD6G6ig
	(envelope-from <jsmeix@suse.de>)
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 12:24:36 +0000
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Wed, 26 Feb 2025 13:24:36 +0100
From: Johannes Meixner <jsmeix@suse.de>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Subject: Re: Qt issue with printing landscape-oriented images
In-Reply-To: <c4066f25-c650-4037-9bce-864940daf3fa@redhat.com>
References: <2ebbd828-47f8-406e-8d67-ad1a8abb9393@apevzner.com>
 <c4066f25-c650-4037-9bce-864940daf3fa@redhat.com>
User-Agent: Roundcube Webmail
Message-ID: <bc3c37115c298000e7ea32ede904fb15@suse.de>
X-Sender: jsmeix@suse.de
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-4.29 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	URIBL_BLOCKED(0.00)[opensuse.org:url,imap1.dmz-prg2.suse.org:helo,suse.de:mid,qt-project.org:url];
	ARC_NA(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	TO_DN_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[printing-architecture@lists.linux-foundation.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.de:mid]


Hello,

I didn't check any details here
so only a side note for the fun of it:

There is no such thing as "landscape printing".

Cf.
https://en.opensuse.org/SDB:Landscape_Printing


On 2025-02-26 10:25, Zdenek Dohnal wrote:
> Hi Alex,
> 
> thank you for heads-up!
> 
> To be honest I have never seen IPP attribute landscape  :D - I know
> there is IPP attribute 'orientation-requested' which is used for
> setting whether you want portrait, landscape, etc.
> 
> Based on the code for image it looks like landscape is really a thing,
> and if okular wants to do landscape this way, it should pass
> landscape=true instead of false.
> 
> The older cups-filters ignores anything besides landscape=true, but
> the current libcupsfilters sets "auto-rotate" if landscape=false is
> passed, which looks correct to me.
> 
> 
> Zdenek
> 
> On 2/18/25 15:18, Alexander Pevzner wrote:
>> Hi!
>> 
>> This information may be interesting for printing stack maintainers
>> of various Linus distros (Zdenek?).
>> 
>> I've already posted it into the OpenPrinting Telegram group,
>> but as not everybody subscribed to the group, I repost it here,
>> by Till's advise.
>> 
>> We've recently noticed, that the Okular (Qt-based image viewer)
>> incorrectly prints images in the landscape orientation.
>> 
>> When printing image (see attached test.png) it sends the
>> following Create-Job request, followed by the image,
>> converted to PDF (see attached 00000020-data.pdf:
>> 
>> -----
>> IPP: request message:
>> {
>>     VERSION 2.0
>>     OPERATION Create-Job
>> 
>>     GROUP operation-attributes-tag
>>     ATTR "attributes-charset" charset: utf-8
>>     ATTR "attributes-natural-language" naturalLanguage: en-us
>>     ATTR "printer-uri" uri: 
>> ipp://localhost/printers/Kyocera_ECOSYS_M2040dn
>>     ATTR "requesting-user-name" nameWithoutLanguage: pzz
>>     ATTR "job-name" nameWithoutLanguage: bug.png
>> 
>>     GROUP job-attributes-tag
>>     ATTR "media" keyword: A4
>>     ATTR "sides" keyword: one-sided
>>     ATTR "landscape" boolean: false
>>     ATTR "number-up" integer: 1
>>     ATTR "number-up-layout" keyword: lrtb
>>     ATTR "job-billing" nameWithoutLanguage:
>>     ATTR "job-priority" integer: 50
>>     ATTR "job-sheets" nameWithoutLanguage: none none
>> }
>> -----
>> 
>> It can be reduced down to the very simple Qt example:
>> 
>> -----
>> #include <iostream>
>> #include <QApplication>
>> #include <QPrinter>
>> #include <QPrintDialog>
>> #include <QImage>
>> #include <QPainter>
>> 
>> int main(int argc, char* argv[])
>> {
>>     QApplication app(argc, argv);
>>     QPrinter printer;
>>     printer.setPageOrientation(QPageLayout::Landscape);
>>     QImage img("./test.png");
>>     img = img.scaled(printer.width(), printer.height(), 
>> Qt::KeepAspectRatio, Qt:
>>     QPainter painter(&printer);
>>     painter.drawImage(0, 0, img, 0, 0);
>>     painter.end();
>>     return 0;
>> }
>> -----
>> 
>> The problem is obviously in the ATTR "landscape" boolean: false
>> attribute. This is definitely at the Qt side. Seems like all
>> existing versions of Qt are affected.
>> 
>> We have submitted PR agains qt-base, it is pretty trivial
>> and currently on review:
>> 
>> https://codereview.qt-project.org/c/qt/qtbase/+/624835
>> 
>> I believe, all more or less modern Linux distros are affected
>> and wonder why nobody complained before
>> 
>> Note, the problem doesn't exist with old versions of the
>> cups-filters (I was able to test with very old version1.28)
>> 
>> Looks like the landscape attribute attribute is silently ignoring
>> by these old versions, and without this explicit orientation setting,
>> filters set correct orientation automatically.
>> 

Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Frankenstr. 146 - 90461 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Ivo Totev
