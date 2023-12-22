Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7167C2EB08
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 18:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="qsiwcK5h"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E214843974
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 18:31:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E214843974
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg header.b=qsiwcK5h
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -4.401
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5aCMr5ieNkK2
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Dec 2023 18:31:38 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BB7744049F
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 18:31:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB7744049F
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 4D43BB821AE;
	Fri, 22 Dec 2023 18:31:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81145C433C7;
	Fri, 22 Dec 2023 18:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1703269894;
	bh=SfRikO9DxgWGql4xJCEl9lw9bjMI2m3PAaX3qeXR25g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qsiwcK5hWuLiyZ4WxR/nCmx3S9mPmx2+JzyNJlK+d/f5e8GgrhoxhBcIKP3f9eoA0
	 pzrBoJx03FVEXen9huToB4rRbsuZ5wJt9l+fM+fupYuwN64NuuMoMudYEU+3Ipol13
	 4ozl/UD4evJddLNGvAPR2++o2UBzGhkxeNkMc0B8=
Date: Fri, 22 Dec 2023 13:31:33 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Michael Sweet <msweet@msweet.org>
Cc: 
	"printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Subject: Re: [Printing-architecture] RFC: Moving the printing-architecture
 list
Message-ID: <20231222-careful-oxpecker-of-gallantry-f0dff3@lemur>
References: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
 <B966EAD0-AEBB-4035-9BB1-B449A00D2A21@msweet.org>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <B966EAD0-AEBB-4035-9BB1-B449A00D2A21@msweet.org>

On Wed, Nov 22, 2023 at 09:18:53AM -0500, Michael Sweet wrote:
> Konstantin,
> 
> My preference is the Linux development lists.  Also, I request that we add a
> printing-users list for discussing general printing issues vs. discussions
> of development and design.  (I've been asking for the users list since 2020
> because Apple is eliminating the CUPS mailing lists...)

Hello:

If you would like a printing-users list, please request it following the
procedure described here:

https://subspace.kernel.org/lists.linux.dev.html#requesting-list-hosting

Best regards,
-K
