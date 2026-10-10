Received: from ms-10.1blu.de (ms-10.1blu.de [178.254.4.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE4D2F12DA
	for <printing-architecture@lists.linux.dev>; Sat, 10 Oct 2026 08:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.254.4.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791621282; cv=none; b=ISrl6sG6059uxgQcdNAWHfgTZQypAyDEGLn0Iib0Q/jhtqaM2j/Egw2O03kxl0ikxGlk+VW9Z8ikHjo9812QX+buJ3qHTd3fKwMBuOoE26BS0xv3tSV3xkj4iKiR/GRMgMsAtPndqnn4/pr2MweVyPFXHw642Wg3dYvJUQFLqeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791621282; c=relaxed/simple;
	bh=OR2jeCgCpITk2/ZWOkc61J6c8+gJn9FeOt/ED8OW15c=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LeI7JEajQgHiWZZSvYkPpzGc+4qD7FdStUr2kxG1iS6LeaSa7VPPe6VeiUzPEk9Orx1QbJA9TbwRh8ko6O6r09weYKJO+2ua3jLvuS2twli7QXKr6tijhXfTu4ANcAOg7O4j3/Qc+lbg1/jLhP7KcLAAp0/ZUSxbftK4qugmMNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de; spf=pass smtp.mailfrom=unixarea.de; dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b=UhaZWnIC; arc=none smtp.client-ip=178.254.4.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unixarea.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b="UhaZWnIC"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=unixarea.de
	; s=blu3434000; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:
	Content-ID:Content-Description;
	bh=2Op2P2d79IVJ4aQXOU70p72vK631/5zCW6IW5uLppbY=; b=UhaZWnICu4GbJOOPff4PVkFuNs
	TLoEn7eRVuKnc90RPpqmbtSTViOkL8D28IVsMpyXZpPEZgqJbG+KKwEQ5ZYCJMke29atHdxctYn8v
	QtMq+Oh5eMTK+rzERO/bZEDeIEf6dToPDdhhPN7gnu3SFQQW5wPzm05jMtTLAlKnWSgj6ONgvR0zK
	y3UGv7SxyLYzsz3oNwQbSwor+AfCDGxiJoNK6xbRGCnIrI5b6muIJWfali2H787p4CGfi5CXlv4MT
	9Gyu+YCOfCPxda28VVWKq2HisJtP2aOlvpTUvAplf00UO43IO/xUyR21LttdRA4Hz0s7NE5O7F8by
	LfPd6c5g==;
Received: from [62.216.210.190] (helo=localhost.unixarea.de)
	by ms-10.1blu.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <guru@unixarea.de>)
	id 1xFSXH-00Ahfs-Nt
	for printing-architecture@lists.linux.dev;
	Sat, 10 Oct 2026 10:34:31 +0200
Received: from localhost.my.domain (c720-1400094 [127.0.0.1])
	by localhost.unixarea.de (8.17.1/8.14.9) with ESMTP id 69A8YVDC006204
	for <printing-architecture@lists.linux.dev>; Sat, 10 Oct 2026 10:34:31 +0200 (CEST)
	(envelope-from guru@unixarea.de)
Received: (from guru@localhost)
	by localhost.my.domain (8.17.1/8.14.9/Submit) id 69A8YVMi006203
	for printing-architecture@lists.linux.dev; Sat, 10 Oct 2026 10:34:31 +0200 (CEST)
	(envelope-from guru@unixarea.de)
X-Authentication-Warning: localhost.my.domain: guru set sender to guru@unixarea.de using -f
Date: Sat, 10 Oct 2026 10:34:30 +0200
From: Matthias Apitz <guru@unixarea.de>
To: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Re: CUPS 2.4.20 is released!
Message-ID: <asn4lmmsf8PtFOzf@c720-1400094>
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
X-Operating-System: FreeBSD 14.0-CURRENT r1400094 (amd64)
X-message-flag: Mails in HTML will not be read! Please, only plain text.
X-Con-Id: 51246
X-Con-U: 0-guru

Will the official tar archive for 2.4.20 be renewed due to bug #1743?
Thanks

	matthias

-- 
Matthias Apitz, ✉ guru@unixarea.de, http://www.unixarea.de/ +49-176-38902045
Public GnuPG key: http://www.unixarea.de/key.pub

I do not want to and will not become fit for war. Merz, go to the
Eastern Front yourself!
