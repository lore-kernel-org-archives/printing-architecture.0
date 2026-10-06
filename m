Received: from ms-10.1blu.de (ms-10.1blu.de [178.254.4.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8A3B3BFE
	for <printing-architecture@lists.linux.dev>; Tue,  6 Oct 2026 11:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.254.4.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791286307; cv=none; b=QbDxB5N8UizVUiSNi6Z+5ri+IvIFTm+8L4TD7tqo39ziuYnciXay/R+diEmQEODHlPSH6dT9m9faUKXh9uMj7/NE1YtGGNXdAa4Eb8HPG3AfV6Sku6ioE/QotaqljtcI4h7Kf3ZSvhY5i+DH9nkuk7p04YwGXp0irYvBoGi8gfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791286307; c=relaxed/simple;
	bh=mYlAWUDCPd0vu2MM8EuEYgaCaMnFwjfB75WImgPruTQ=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=js18KwMCAHjgydCV2OfB586MbSZtfFAsQQZi69e18Jm5bROfgzdzhLzxCNVjYPvVKRLmLmzvxVtEhisdJanvtyIhTsHlHVC+CWRmylPfMVfWd/WDrYfS9tq6isNBiK2zhUhXCvC17BTX04MJVOftifCTG0MOkYrF22ct9eHMG/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de; spf=pass smtp.mailfrom=unixarea.de; dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b=N0wWgUit; arc=none smtp.client-ip=178.254.4.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unixarea.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unixarea.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=unixarea.de header.i=@unixarea.de header.b="N0wWgUit"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=unixarea.de
	; s=blu3434000; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=MQScJ7zYSOpg2WZhUfzFuvQo2uoSmpNUDoPZT1l2XIo=; b=N0wWgUitbZuz1oRggS2CRXoXhm
	5Lly9oNSqBF+R5y5wM3V9pNv1FYZXiHod9JcgsclFEHrLsoAX2tty7vz8njHrBm3pOCtJx+d32TpT
	uT2hFLhwYmSqVVfB+FvDd7KrWvTxV1O0tEB5UV5d0KZ9dumCa9s9IAwXlPGgKtzALc2SXg8D+izA/
	S4qv3Lvl0bH0vrHekOeE1PfQrL4Sy4N5OZNpJUiI1rGMnSOVybNqoSlxNe9NlXwKSmnS3vqDL3les
	5GC9b+YZaXmmHozvePJpSPBUkXA5bfQSWfSPKhgeZ5dgvR4FX1kjlFYYEMlvT3Bd2UzlzzjSZGWvF
	MmD+eQiA==;
Received: from [212.222.85.114] (helo=pureos)
	by ms-10.1blu.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <guru@unixarea.de>)
	id 1xE1wX-001wuI-I7;
	Tue, 06 Oct 2026 11:58:41 +0200
Date: Tue, 6 Oct 2026 11:58:39 +0200
From: Matthias Apitz <guru@unixarea.de>
To: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Re: CUPS 2.4.20 is released!
Message-ID: <asTGTw8NVeDi6z6a@pureos>
Reply-To: Matthias Apitz <guru@unixarea.de>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Operating-System: FreeBSD 14.0-CURRENT 1400094 (amd64)
X-message-flag: Mails in HTML will not be read!  Send only plain text.
X-Con-Id: 51246
X-Con-U: 0-guru


Hello,

I fetched 2.4.20 to my server (SUSE Linux Enterprise Server 15 SP7)
configured it with:

gmake clean

export SISISPAP_INSTALL=3D/usr/local/sisis-pap
export CFLAGS=3D"-m64"
export CXXFLAGS=3D"-m64"
export LDFLAGS=3D"-L$SISISPAP_INSTALL/lib -m64"
export DSOFLAGS=3D"-m64 -L$SISISPAP_INSTALL/lib"
export PKG_CONFIG_PATH=3D/usr/local/sisis-pap/lib/pkgconfig
#
# because of /usr/bin/pkg-config
#
export LD_LIBRARY_PATH=3D/usr/lib64:$SISISPAP_INSTALL/lib

=2E/configure --prefix=3D$SISISPAP_INSTALL/cups2 --libdir=3D$SISISPAP_INSTA=
LL/cups2/lib \
    --with-cups-user=3Dlp         \
    --with-cups-group=3Dlp        \
    --with-tls=3Dopenssl          \
    --with-system-groups=3Droot

The compilation stops in cups/dest.c with:

gmake
=2E..
dest.c: In function =E2=80=98cups_enum_dests=E2=80=99:
dest.c:3577:9: error: =E2=80=98_cups_getdata_t {aka struct _cups_getdata_s}=
=E2=80=99 has no member named =E2=80=98num_local=E2=80=99
     data.num_local   =3D 0;
         ^
dest.c:3578:10: error: =E2=80=98_cups_getdata_t {aka struct _cups_getdata_s=
}=E2=80=99 has no member named =E2=80=98local_dests=E2=80=99; did you mean =
=E2=80=98num_dests=E2=80=99?
     data.local_dests =3D NULL;
          ^~~~~~~~~~~
          num_dests

and if I look into cups/dest.c the struct _cups_getdata_t looks indeed
as something else (lines 124...130 of cups/dest.c):

 124 typedef struct _cups_getdata_s
 125 {
 126   int           num_dests;              /* Number of destinations */
 127   cups_dest_t   *dests;                 /* Destinations */
 128   char          def_name[1024],         /* Default printer name, if an=
y */
 129                 *def_instance;          /* Default printer instance, i=
f any      */
 130 } _cups_getdata_t;

What does this mean? Thanks

Btw: I compared cups/dest.c of version 2.4.14 (our current version) and
2.4.20. The reference of the missing struct members is new in 2.4.20:

diff cups-2.4.14/cups/dest.c cups-2.4.20/cups/dest.c
4c4
<  * Copyright =C2=A9 2020-2025 by OpenPrinting.
---
>  * Copyright =C2=A9 2020-2026 by OpenPrinting.
=2E..


>     * Get the list of local printers...
3553a3577,3578
>     data.num_local   =3D 0;
>     data.local_dests =3D NULL;


	matthias

--=20
Matthias Apitz, =E2=9C=89 guru@unixarea.de, http://www.unixarea.de/ +49-176=
-38902045
Public GnuPG key: http://www.unixarea.de/key.pub

I do not want to and will not become fit for war. Merz, go to the
Eastern Front yourself!
