Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=212.227.17.22
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793047099;
	b=UiwvPJsMDeputURQImjBM341Ck0rLuvszbnH/XQIQNgGP2c46j0RwrrV6CfViZYigfNv
	 4AJMaPLhnlGr/Hx8ePpetsCFGBcUkLYn9NIZj5AFHJUftzcHjGoiDeREdEGXvSSwZ9zvY
	 efZifPLa+ztijVUoVC9OKjckgQzxXGQdH1mQjpuB0wSjwi5tTmhuBQF8yQvm4L4KChdjI
	 XRzgCQQ7V/6hKfYR5XYEur1HaMe7m7hzU31e9fmGh2sME4Dynve+u8QMftdlWYnm0JNHI
	 p38Bl+BdxdbJA/HVaRO14Scy/L5GXPQRkLbFuMNqvA4EnaxQbStOnd0dJw9sLmhNVwA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793047099;
	h=DMARC-Filter:DKIM-Signature:X-UI-Sender-Class:Received:Message-ID:
	 Subject:From:To:Date:In-Reply-To:References:Content-Type:
	 Content-Transfer-Encoding:User-Agent:MIME-Version:X-Provags-ID:
	 X-Spam-Flag:UI-OutboundReport;
	bh=K+XS2NgwXF0PMYZmAXjqNr/lOTGhdwK8GHUWYOH72QE=;
	b=o5Dw5lDbHuebAVl4Tu2nzJoeWv5sk7B/HP/CXxfvtra4kMbAcIcRAB10/X05TwL/nhc7
	 FgJ3Vo1C0CquHkx2Uw7NUVLxmzyzN5zsHiDT/NVKccluD+INFC3qjfjOb9sBSTyWroBjn
	 NV9m3eah+4bNV7/jzebMfOemqKl5GS5uhaV6ceCAZol5wokCL9DkRWXKpBYn+IYHn9txN
	 SA9plSQWrnczaUiK5OZlFi7atoBvJab5Jg/snCRPh6RqpZBtjdaiCczGfnRrlyvnUu9L9
	 f8TI7Px5LFwHrReQOXH5gHa/T+AAfbjgziRzY8lHhUEJQbd2M53io4ehEm9fPGweA7w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmx.net;
	spf=pass smtp.mailfrom=gmx.net;
	dkim=pass header.d=gmx.net header.i=adeuring@gmx.net header.a=rsa-sha256 header.s=s31663417 header.b=EXqTapMH;
	arc=none smtp.remote-ip=212.227.17.22
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6FB606A31A
	for <printing-architecture@lists.linux.dev>; Mon, 26 Oct 2026 20:38:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 2D6FB606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmx.net header.i=adeuring@gmx.net header.a=rsa-sha256 header.s=s31663417 header.b=EXqTapMH
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1793047093; x=1793651893; i=adeuring@gmx.net;
	bh=K+XS2NgwXF0PMYZmAXjqNr/lOTGhdwK8GHUWYOH72QE=;
	h=X-UI-Sender-Class:Message-ID:Subject:From:To:Date:In-Reply-To:
	 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=EXqTapMHHs79rlNe1VAOKgLdcfPUdVlPfW5xJ3iB98E3T85Kbjb/4i2XPYftQ7W5
	 gXssazSBY2Cqce6ofN1HB54s5qizrnP3wqSs2AhWutP2Kl0qAh1KoXBye3VsE4uf7
	 H6tnw/FVPAglkeztvlfkGWg/29x1hJTkkhnLnSS5X2cJ1arPY5yWBnpsuW3cvool7
	 7yn493QubNJ+3vmpvgpocPEvq8B0GomrVKKf15xGcPtMlCqhr5C0TSxdz9U5XPCoh
	 hmdixFsKivnuK2ivXovI2bsQjOvLW99nJ/BxW2t+gq0uQMvDsmsPQXEkzi9aqrTnR
	 8VI64Td8PDAGzzkzhg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from client.hidden.invalid by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYNJq-1x7hwt0mB8-00KxG3; Mon, 26
 Oct 2026 21:38:13 +0100
Message-ID: <d434cbbc478278192a1cea962cd45d67023ff3d5.camel@gmx.net>
Subject: Re: [sane-devel] OpenDeviceDB lists the scanners SANE supports,
 with links to the backend man pages
From: abel deuring <adeuring@gmx.net>
To: Till Kamppeter <till.kamppeter@gmail.com>, sebastien michea
 <sebastien.michea@manaty.net>, sane-devel@alioth-lists.debian.net,
 OpenPrinting <printing-architecture@lists.linux.dev>
Date: Mon, 26 Oct 2026 21:38:12 +0100
In-Reply-To: <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
References: 
	<CAD_QBAQv8tgP5AWTAk_YzQ+YxihAukHjVrMyFFZpo3Q7M=iHdA@mail.gmail.com>
	 <dfa6ce9bc7761f0d7f30d21e8cff0b0e2075c8d5.camel@gmx.net>
	 <f3eda259-3182-4599-9954-5b6307feccd7@gmail.com>
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
X-Provags-ID: V03:K1:PH62iWtiIZ+Xb9syePPARAOGi1romERU4JDg2YHNBtI+TdPs21G
 M5uYK9w8ZCIvIL5rV0MKK+IzWwWvJNWe8KLV5IudmlaouqhfYI7zK1QDtbe4ZCuH2xgCI/3
 88aVFRXQcFzfJQdUHMc9/PauIDyDO+qfhNBxPewedebFae/P+Au4EmEVwRW86720PoAmavM
 m9jT9zvDrWzeyXkao5HcA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:uIxw/AufMco=;sk6WJMJClzfo+6EwNjV/YCRe+Ma
 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

Am Montag, dem 26.10.2026 um 17:59 +0100 schrieb Till Kamppeter:
> [ Adding OpenPrinting's developer mailing list ]
> [....]
> On 10/26/26 17:04, abel deuring via sane-devel wrote:
> > Am Sonntag, dem 25.10.2026 um 09:07 +0100 schrieb sebastien michea:
> >=20
>=20
> I got asked the same but for OpenPrinting and printer drivers.
>=20
> I think, any device about which we know whether, how, and how well it
> works with=20
> Linux and open source in general should be listed by
> https://opendevicedb.org/.
> [...]

Till,

thanks for explaining in more detail wh< a comprehensive list of
devices with free/open source drivers is important.

Let me add two more details:=C2=A0

1. Removing eSCL devices effectively penalizes vendors that adhere to
established standards. The same is of course true for this standardized
printer protocol.

2. The authore of drivers that based on reverse engineering definitely
deserve specials credits due to the sometimes considerable efforts that
went into gathering and especially analyzing communicating logs. But
that should not lead to omitting drivers that were written in a more
simple or convenient way.

cheers
Abel=20
