Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B4B2E828
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 19:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="j5eriUbP"
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42A984016F
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 19:55:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42A984016F
Authentication-Results: smtp2.osuosl.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=j5eriUbP
X-Virus-Scanned: amavisd-new at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7AtyDh6PkgaL
	for <printing-architecture@lists.linux-foundation.org>;
	Fri, 22 Dec 2023 19:55:41 +0000 (UTC)
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp2.osuosl.org (Postfix) with ESMTPS id CF42C400D7
	for <printing-architecture@lists.linux-foundation.org>; Fri, 22 Dec 2023 19:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF42C400D7
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 66D3D800B2;
	Fri, 22 Dec 2023 19:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 66D3D800B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1703274940;
	bh=r1OiLoJVr56QFo1ivH1kYXtwDnN31lKFUpfLyg9UXA8=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=j5eriUbP5/od96Bqrygm10mUzGlXjF8yEvyZwCwZX3g4nM7zJLVlPifoGjEYGyXQD
	 Dss+J1WSgOqjXxiou0blhObVZhnqtWEuLouuJ/sPBIJTcaBk0iHd7wq2vdNL+nuIPD
	 EoJKH4ucIE1tw7EL118q0TTSCj5EY9bTLnfCwllY=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Subject: Re: [Printing-architecture] RFC: Moving the printing-architecture
 list
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <20231222-careful-oxpecker-of-gallantry-f0dff3@lemur>
Date: Fri, 22 Dec 2023 14:55:30 -0500
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E9E1CE6A-1628-490F-A817-CF1F5B9B8611@msweet.org>
References: <20231121-turquoise-starling-of-fascination-1e4144@meerkat>
 <B966EAD0-AEBB-4035-9BB1-B449A00D2A21@msweet.org>
 <20231222-careful-oxpecker-of-gallantry-f0dff3@lemur>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
X-Mailer: Apple Mail (2.3774.300.61.1.2)

Konstantin,

> On Dec 22, 2023, at 1:31=E2=80=AFPM, Konstantin Ryabitsev =
<konstantin@linuxfoundation.org> wrote:
>=20
> On Wed, Nov 22, 2023 at 09:18:53AM -0500, Michael Sweet wrote:
>> Konstantin,
>>=20
>> My preference is the Linux development lists.  Also, I request that =
we add a
>> printing-users list for discussing general printing issues vs. =
discussions
>> of development and design.  (I've been asking for the users list =
since 2020
>> because Apple is eliminating the CUPS mailing lists...)
>=20
> Hello:
>=20
> If you would like a printing-users list, please request it following =
the
> procedure described here:
>=20
> =
https://subspace.kernel.org/lists.linux.dev.html#requesting-list-hosting

Done!  And thank you for taking care of the printing-architecture list!

________________________
Michael Sweet

