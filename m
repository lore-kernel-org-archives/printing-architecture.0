Return-Path: <pascal@obry.net>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D39C61535
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B808561523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=obry-net.20221208.gappssmtp.com; s=20221208; t=1686254174; x=1688846174;
 h=user-agent:mime-version:date:organization:references:in-reply-to:cc
 :to:reply-to:from:subject:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LQNvqi9dmJVJNXao5Of/s7SIOxflv9Cb8Jj5rTyjJVE=;
 b=4BukXWOsekVG4mjgm0W+NO6o0/STIfe7uBsvjBf628ZoghRBH4+Dlp+MbNAxeybtY6
 79RJO+Wimdygi2AKcxcbx8fy1VAPiJqFVcIpHLRnBdEYfOZVaTg/q5fWXh/EOpKfQ3tR
 Utm1z8x5M1TKnB8hGXENh5z9jik3BfTGJSIXRL5mm4jw5WFVYV+skfAY8SIydUFzOHYQ
 g9XdHIPAPJVrf/LxSKAnPmNFSm81fNmRiDDKO08GLGT23IoUguaiFrKP1KP9qDS1G4Dt
 DIYN69F1QGfm2MUPqCqzPfnbnletmMeYq0JLf7oBincQ+7SrtFR0YTchrORVdBg2ptP5
 c5pg==
Message-ID: <a0706eee8c02f400a345c40d569c585e360bf78c.camel@obry.net>
From: Pascal Obry <pascal@obry.net>
Reply-To: pascal@obry.net
In-Reply-To: <A8CCBB6D-9949-49EB-9046-A61CB0C951D3@msweet.org>
References: <5c41a34f-c701-dfb6-7f73-bff335836b19@funwithsoftware.org>
 <703A0E9E-365B-431A-8982-9F6617F09D26@msweet.org>
 <10fdb59a-1410-8fd1-aa5d-fd048c8cc6cf@funwithsoftware.org>
 <604876BD-9FBF-489C-B1C5-15675BEF188D@msweet.org>
 <9bdf27a0-7775-ced7-4c6e-7f45cc2a1a0b@funwithsoftware.org>
 <A8CCBB6D-9949-49EB-9046-A61CB0C951D3@msweet.org>
Content-Type: multipart/signed; micalg="pgp-sha1";
 protocol="application/pgp-signature"; 
 boundary="=-jE9rQTb6xEMdCkfApr88"
Date: Thu, 08 Jun 2023 21:51:11 +0200
MIME-Version: 1.0
Subject: Re: [Printing-architecture] names of paper sizes
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Mignon Pelletier <code@funwithsoftware.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--=-jE9rQTb6xEMdCkfApr88
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 08 juin 2023 =C3=A0 13:49 -0400, Michael Sweet via Printing-
architecture a =C3=A9crit=C2=A0:
> Mignon,
>=20
> Sorry for the delay, I've been doing some testing with CUPS 2.4.x and
> am getting the localized sizes.=C2=A0 On Ubuntu 20.04 I get dimensional
> names (8.5 x 11 " for US Letter, etc.) but the names *are* getting
> localized...

Just for the record I had such issue long time ago (3 or 4 years). I
did report it and you said that you also get localized name on your
side. For sure I'm missing something as Mignon probably.

I haven't tried since long time though...

Regards,

--=20
=C2=A0 Pascal Obry /=C2=A0=C2=A0Magny Les Hameaux (78)

=C2=A0 The best way to travel is by means of imagination

=C2=A0=C2=A0http://photos.obry.net

=C2=A0 gpg --keyserver keys.gnupg.net --recv-key F949BD3B


--=-jE9rQTb6xEMdCkfApr88
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iG4EABECAC4WIQTxD5aGZSsOlJ/NlMMY3KEj+Um9OwUCZIIxLBAccGFzY2FsQG9i
cnkubmV0AAoJEBjcoSP5Sb07Wv4An2NoJD9oZQy0jtqa3dHrAshQk1M/AJ4gUE3t
t3L0poWM0ZyckStVRUbn5Q==
=le3V
-----END PGP SIGNATURE-----

--=-jE9rQTb6xEMdCkfApr88--
