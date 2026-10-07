Received: from ms-10.1blu.de (ms-10.1blu.de [178.254.4.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8362E3B2FF6
	for <printing-architecture@lists.linux.dev>; Wed,  7 Oct 2026 08:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.254.4.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791363103; cv=none; b=uYR/vSbsMmYZQaWgFk7cmG7AX/xZxgJsFoPcIfBHvwvbgAxtiSCqerFEQvaVR5/Wt59DpQ2kl2tktA+/6eoRqRI3NTGXcPePdaJETzWQT7YsWsbQJ+R89H8/0q4mCNSE13MjGzT9c7MNPqXNHRePY8jTM0mmuS9gDzGXnwL3Zi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791363103; c=relaxed/simple;
	bh=YTFn8qHaIpCFcGCqzIj0hfvtU3KzS3hopgJTsUaeD1A=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kWVqLvk5s4e8eGEpvhqHoJBZSrTIyZkRcN3RrpxTYm5y++d2LW2U1bZEcDBzyyeUwSRwZyC7GgtBcf0+3nl/qLBS/+msbn1b3LAiBveuvOgW6RNb65F/DnY7d3kH/VrXUi3uhiC1iPFIahpRb56pHYhZAEvh5W2PSFIMfNSta/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de; spf=pass smtp.mailfrom=unixarea.de; dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b=nNFC+BAv; arc=none smtp.client-ip=178.254.4.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unixarea.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b="nNFC+BAv"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=unixarea.de
	; s=blu3434000; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:
	Content-ID:Content-Description;
	bh=PxoGl0ggU/8GE+JEUxDwwQBSMjOdAc/IZidqoozC48A=; b=nNFC+BAvFTsRq/rMWlZSrlWX/F
	J43wokI8BX5NwSguIxFI1+CAttdmKckD8V+nG48YamNEKujOWNPSJ8AulFJLzLSV/tC0ap1nxcsCS
	5OcftyTkPQhUJTuPlrtuAPzx/f6Fo9Uf6WeAZXS7ALAqfoYyI6t5UapXIXaCnQEmYjp761IdTjmla
	pbTtnalWeUstdbSF1Ps4Z15TIn0/Yc7yHpt6O/GvR5NC1fk89F7s0lTvn53M1DPEFcg6mlKj5BAtN
	+28aV3b9voy7tXVgxNfD0HvziuWnuWcE25Zp+D0GdKSfFvReypzxETmGyfmHmMCocIJXlJqfvRP5b
	IHhDmgmw==;
Received: from [212.222.85.178] (helo=pureos)
	by ms-10.1blu.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <guru@unixarea.de>)
	id 1xENNC-003UTH-4A
	for printing-architecture@lists.linux.dev;
	Wed, 07 Oct 2026 10:51:38 +0200
Date: Wed, 7 Oct 2026 10:51:36 +0200
From: Matthias Apitz <guru@unixarea.de>
To: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Re: CUPS 2.4.20 is released!
Message-ID: <asYIGNTmXl0VBo+U@pureos>
Reply-To: Matthias Apitz <guru@unixarea.de>
References: <asTGTw8NVeDi6z6a@pureos>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <asTGTw8NVeDi6z6a@pureos>
X-Operating-System: FreeBSD 14.0-CURRENT 1400094 (amd64)
X-message-flag: Mails in HTML will not be read!  Send only plain text.
X-Con-Id: 51246
X-Con-U: 0-guru


I had to file the next issue:

https://github.com/OpenPrintingácups/issues/1746
Avahi is not available but cups/dnssd.c tries to use it unconditional

	matthias

-- 
Matthias Apitz, ✉ guru@unixarea.de, http://www.unixarea.de/ +49-176-38902045
Public GnuPG key: http://www.unixarea.de/key.pub

I do not want to and will not become fit for war. Merz, go to the
Eastern Front yourself!
