Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC81192B89
	for <printing-architecture@lists.linux.dev>; Fri, 28 Mar 2025 18:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743185121; cv=none; b=HKVhkE3xbCIm6Oup6Nt8IIRk34afsdG/3hA5JqHv9kjt6FXLYtGekhZm9EdQcX/XH2IU3kzeV2F4FubuGpZdYkoyF5LjDh0f8KPBMcMQt/jqW/MKTRXoRWjvE4ay6O9SIjwzHuHrZecnfnkPIecOeh16n+JIso+rEQqtMWDs1Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743185121; c=relaxed/simple;
	bh=nddbnijWb+7pJvzVi1WohhtPThvUqAcUceQLrBWCbvI=;
	h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To; b=okT1EeOeW/eljN5Tq/bxM2i2X6ewsWsGlUtac2phJIT3Tc4sTEZ/qzE1zRnSvxFoiIweQP6sWnQgLXZVYwqto/lzVBf4s4ggkZPcb2vAsh8kXggE+7yp2c0cwS0TSPwMEf6OIDChHoDGf0uLOtWRUGU6Rko85SGXX/+hG4JWX4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=YYlMUfOd; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="YYlMUfOd"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 5A4E780E74;
	Fri, 28 Mar 2025 18:05:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 5A4E780E74
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1743185110;
	bh=nddbnijWb+7pJvzVi1WohhtPThvUqAcUceQLrBWCbvI=;
	h=From:Date:Subject:To:From;
	b=YYlMUfOd2NWfF87akZYxwNaxzK1S0ww4/KsHlDJptGlOgXD91ZO7rs1d1O8WMTI/m
	 DSgwxKGCAdtNVKrozUqSrUB0P81MUPKITtUSutlUb9th/quEVCv+zoXapsi6neV1x4
	 i+ZvZDDOPOwIs4Jy5O0HulzNZbzQyv7otzSHJHXI=
From: Michael Sweet <msweet@msweet.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Fri, 28 Mar 2025 14:04:58 -0400
Subject: CUPS 2.x web interface changes
Message-Id: <8CC30A8A-F699-4D18-BB01-EF9B584F86AB@msweet.org>
To: OpenPrinting <printing-architecture@lists.linux.dev>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

All,

A user recently posted an issue against CUPS concerning the CUPS web =
interface:

    https://github.com/OpenPrinting/cups/issues/1207

Now, given that CUPS 2.5 will be the last version that uses the current =
CGI-based web interface, I do *not* wish to embark on a major rewrite of =
the code.  However, the two main complaints - the navigation bar =
"blending in" with the browser's UI and the lack of "action" controls on =
the home page can be resolved fairly simply with some changes to the =
stylesheet (cups.css) and home page (index.html{.in}) files.

I have posted a screenshot of some initial tweaks to the above issue to =
get some feedback from the reporter, and I'd appreciate additional =
opinions/feedback on these changes...  Again, I don't want to rewrite or =
add new CGI programs for CUPS 2.5 but *would* like to improve the =
usability of the current web interface for those that need it.  And =
obviously we can make sure the PAPPL-based CUPS 3.0 sharing server's web =
interface incorporates these changes and queues up other (more =
substantive) changes that we might want to make.

Thanks!

________________________
Michael Sweet

