Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF3923D2
	for <printing-architecture@lists.linux.dev>; Mon, 30 Sep 2024 14:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727708112; cv=none; b=F12pRdG7jl8k7OB3DXzrL+NtOpkXO0+1REJb/7iyFoRTdK6bRTbOUvCnWCWFH8u1C64MJstTki4ct1kdf4ymedfBCjVBT6MtDQyi4hyJgkDoDIe7QitpN4C7lqMu1sV8knUlTURBMbFJAtx3a3hwe6mGjL7tK1uNTrYC0XfVa0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727708112; c=relaxed/simple;
	bh=lGo6jV8MyJxOpU+qq8m+AidUbhGzCOfOBAAgcoSNt4k=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qNp07/4T1omBLVbuysmrql8ykd3anJkcQjMi1EqaCYAftncq9RsOzkAflm1YdbM8ofu+DUNFHjup6gxcIDvPMOVnusomc4+r7LqT8pSawNP8uVB95NAeazEZHb0+Ir4a0YsCxYxfehebhIVhnVph3gyNSrLW4D+UJhID2ZJQUvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=m+E+Dpbi; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=xvRFR/lC; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=OReG0jDW; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=oH8awyS+; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="m+E+Dpbi";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="xvRFR/lC";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="OReG0jDW";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="oH8awyS+"
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id DB56121A57;
	Mon, 30 Sep 2024 14:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1727708109; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q4dLPnSKbRTVHmNv3kA3hPE7KjdXN/ahNiP+jz3JqbM=;
	b=m+E+DpbilktmYkVJB+ksVFlgPzwVvOHxIgLVS2OEaaJ4S/4VQDCJy3Ayidc7Zslqexz/x5
	DQ4exyxD9V0tf629QLTyglcgYWbCrwoBqWkCqOtDUBderzWcmQQMUkXiA7oKMk9yODIK4X
	A+jgGQ7BGaPs9/bnX6SVhEftakh9R94=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1727708109;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q4dLPnSKbRTVHmNv3kA3hPE7KjdXN/ahNiP+jz3JqbM=;
	b=xvRFR/lCyuXw0Dtmteat/FNNLPchqKXMTAJnaKTz32ZeJhhJqJX/OSDXqHcJxA7qNt+lUm
	NF+NgnfAVhsrNWAw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1727708108; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q4dLPnSKbRTVHmNv3kA3hPE7KjdXN/ahNiP+jz3JqbM=;
	b=OReG0jDW5ulTFaeBoHUzqS5E9q9e+XdaZSp2BlLAwKiwEvhzPxmV6uJTL8h/53YroTug2w
	oaNbMe04gJ73qSUrvO1MXCQ+jvBDB/LEvs+7Km++X5bqk+XHXqqskjN7OML07xuPXJosdA
	VYLhfKLU4Y1QP6NwaFQj/XHc1JHnlQM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1727708108;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q4dLPnSKbRTVHmNv3kA3hPE7KjdXN/ahNiP+jz3JqbM=;
	b=oH8awyS+ns7QzDr7xOCi1jYekNKyv8gItRbsD0uFv21SdcjHap0A+In44NOT3inX9j2XuH
	BSi6k4YgbXGWwQBg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D4ACA136CB;
	Mon, 30 Sep 2024 14:55:08 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id qzTUM8y7+maIGgAAD6G6ig
	(envelope-from <jsmeix@suse.de>); Mon, 30 Sep 2024 14:55:08 +0000
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Date: Mon, 30 Sep 2024 16:55:08 +0200
From: Johannes Meixner <jsmeix@suse.de>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Zdenek Dohnal <zdohnal@redhat.com>, OpenPrinting
 <printing-architecture@lists.linux.dev>
Subject: Re: CUPS 2.4.11 is released!
In-Reply-To: <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
References: <5878fe6b-a017-4e10-8a39-6e12c24331f7@redhat.com>
 <99331637-44cc-48d1-8323-bd89f0579aba@gmail.com>
User-Agent: Roundcube Webmail
Message-ID: <aabd2b8c27f7c075ef169f49c4f70f7f@suse.de>
X-Sender: jsmeix@suse.de
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: 
X-Spamd-Result: default: False [-4.09 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	SUBJECT_ENDS_EXCLAIM(0.20)[];
	NEURAL_HAM_SHORT(-0.20)[-0.990];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_ENVRCPT(0.00)[gmail.com];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3]
X-Spam-Score: -4.09
X-Spam-Flag: NO


Hello,

On 2024-09-30 16:42, Till Kamppeter wrote:
> thanks for the quick release, but the CHANGES.md
> does not mention the CVE-related fixes contained in it.

> On 9/30/24 14:25, Zdenek Dohnal wrote:
>> CUPS 2.4.11 brings several bug fixes
>> regarding IPP response validation, processing PPD values,
>> Web UI support (checkbox support, modifying printers)
>> and others fixes.

I was also wondering about CVE-related fixes.
As far as I understand it from the GitHub upstream commits
CUPS 2.4.11 contains (only) those commits regarding
IPP response validation and processing PPD values

"Quote PPD localized strings"
https://github.com/OpenPrinting/cups/commit/1e6ca5913eceee906038bc04cc7ccfbe2923bdfd

plus the cleanup to "Fix warnings for unused vars"
https://github.com/OpenPrinting/cups/commit/2abe1ba8a66864aa82cd9836b37e57103b8e1a3b

which are somewhat related to those CVEs
by avoiding sililar further issues as in those CVEs
but are not the actual fixes for explicitly those CVEs.


Kind Regards
Johannes Meixner
-- 
SUSE Software Solutions Germany GmbH
Frankenstr. 146 - 90461 Nuernberg - Germany
(HRB 36809, AG Nuernberg) GF: Ivo Totev
