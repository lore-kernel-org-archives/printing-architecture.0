Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=212.227.17.21
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793120639;
	b=Dnyl/+qQHQnx0uiUE+mwT1vBvIcyfhB+PouywNViNxRVcBe/pw/doXENSB73dke17Y4b
	 Kgduz1Fku4fZJ3ty2s18O1Im8WCEEvdjj2r+9HB5adhh3mScY+7mkMalA++HNpmfOeJUp
	 nLSLorlGdQzTiHLJqIoxSfYgzKWjfJJ20tX5AGISfYIIAXeKCGiw8G771AmF9AB1dU3Vq
	 Dl4bHBo4/0mGxKnuO2GIie00sHhFobuyNwKrqT2FxTys86HEoWjST9CLxCJndLXSrHGkq
	 MZpZSpWP8EA1ac7jzZRc1Wc3gVBN84wn5x2vpdK66t44Qsp0PyEuuHp/fnjU/DlCLkQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793120639;
	h=DMARC-Filter:DKIM-Signature:X-UI-Sender-Class:Received:Message-ID:
	 Subject:From:To:Cc:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:User-Agent:MIME-Version:X-Provags-ID:
	 X-Spam-Flag:UI-OutboundReport;
	bh=HZk5ULJERTXNTUlQwh3tGxR85rFV6E4QuL320FcooTg=;
	b=ZlvU4ALBjpU4DhYh8odiuCxv35wJXe5roijXXp0w0aUG9V17JCgEfx9b7v1fTFRrDa1Z
	 GGwPgfEO6GwmfZe1mQoZRADhJEG56cWqKJe65cCnwc95nQpSQ1URWB9QHZiXhO4l4HpzJ
	 OheL8jYrVYSVlZOw1JjvscjZtPP0FGtUNa7NsJH3dwUE4EaKSXhcXfrj0bYvp9nwJsdUn
	 zklxCvGS2qY/dHeRMu7EdZH9znYlpslF1ItlRvcGfLQDGE1RDb9Xbnq0xnerKYmuNmc7D
	 M8ze6oTc3781NWb91GcMFSPJYVK2L6KapKBb2HJA169Sn0ILkMLwWGKT5EoOUVqHx4g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmx.net;
	spf=pass smtp.mailfrom=gmx.net;
	dkim=pass header.d=gmx.net header.i=adeuring@gmx.net header.a=rsa-sha256 header.s=s31663417 header.b="UEgJt/Zv";
	arc=none smtp.remote-ip=212.227.17.21
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21084606A31E
	for <printing-architecture@lists.linux.dev>; Tue, 27 Oct 2026 17:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 21084606A31E
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmx.net header.i=adeuring@gmx.net header.a=rsa-sha256 header.s=s31663417 header.b=UEgJt/Zv
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1793120636; x=1793725436; i=adeuring@gmx.net;
	bh=HZk5ULJERTXNTUlQwh3tGxR85rFV6E4QuL320FcooTg=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
	 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=UEgJt/ZvOA9GFBAtzTJLFJZSR/N1RqKe98YKxIvfdjqxNzOh9l/LiueHf9LgTeDf
	 22VA/B4m2Q1aZMXVKnGBuMriuCe6P/BqZgHdJk6QA5rnU/ov94+rtKo3kAQsbVe8G
	 KZFikCYkZcaWSrQjZHjVNj4O7RDFfB8klCtgyEO577qrHmD5aDjsREWeMpROM999e
	 StY/J+p02HKXfWWCZUceDNEO2ylwxmNtVqgYDwpLl+ICyrFnKEOmZJYIr8BRkYnlf
	 qU0Frp4uOKaHWSsiAzBcP+2rGGh+3FaeeSlu/8r/Q8lRMStOUx/INH2luxVvCbv58
	 4LUbD93joqmr+gDAmQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAOJP-1xG0DQ3w5b-009NLh; Tue, 27
 Oct 2026 18:03:56 +0100
Message-ID: <b539b7653b4c2da51bb332451655f1655903d1b1.camel@gmx.net>
Subject: Re: [sane-devel] OpenDeviceDB lists the scanners SANE supports,
 with links to the backend man pages
From: abel deuring <adeuring@gmx.net>
To: Johannes Meixner <jsmeix@suse.de>, Till Kamppeter
 <till.kamppeter@gmail.com>
Cc: sebastien michea <sebastien.michea@manaty.net>, 
	sane-devel@alioth-lists.debian.net, OpenPrinting
	 <printing-architecture@lists.linux.dev>
Date: Tue, 27 Oct 2026 18:03:54 +0100
In-Reply-To: <ada980b7ba769e5244d02e63529f9333@suse.de>
References: 
	<CAD_QBAQv8tgP5AWTAk_YzQ+YxihAukHjVrMyFFZpo3Q7M=iHdA@mail.gmail.com>
	 <dfa6ce9bc7761f0d7f30d21e8cff0b0e2075c8d5.camel@gmx.net>
	 <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
	 <ada980b7ba769e5244d02e63529f9333@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Post: <mailto:printing-architecture@lists.linux.dev>
List-Help: <mailto:printing-architecture+help@lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
List-Owner: <mailto:printing-architecture+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
X-Provags-ID: V03:K1:V5OT/BW7PXD5hX9ZhDdKIuxARMM75sxd5+EK8I1xhE1g3sLp2Tz
 y39sxppWEGfJr2Id4ZQKcrGo6aTf73+JqoZMA1O8dSPcybTB10BeVvHL8cs0b3OJuiOSiMl
 peSy1mMTqneojvvkuWhbJQ1hq13YizWXrGuNqBMcdyPtEZzBrrAJTIE6uz5Mn/ppco7iZq5
 b43V2T23JjmPjoJxLfR/w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:DiTfy+u9nzk=;IZf7ufqGQ1mk1xLX95hV/YQf9Lq
 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
 Y+JwIUoTMMsjmGusN/1zf/CLOQjaLoMWn

Am Dienstag, dem 27.10.2026 um 08:59 +0100 schrieb Johannes Meixner:
>=20
> As far as I understand that, the intent of
> https://opendevicedb.org/
> is not a complete list of devices which are supported
> by whatever operating system for arbitrary end-users
> but instead
> for device driver software developers a list of
> devices which do not support a published standard
> so reverse engineering of protocol or firmware
> is needed to make device driver software.

Right, it looks like that I started a storm in teapot with my first
reply to S=C3=A9bastien. I was misled by the sentence "someone holding a
device can look up its label and find which project already supports
it" in S=C3=A9bastien's mail. I missed the context...

But I still think that it might make sense to explicity state
on=C2=A0https://opendevicedb.org/ that the site does not provide a
comprehensive list of devices supported by free/open source software.

cheers
Abel
