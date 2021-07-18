Return-Path: <andreas.radke@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
 content-type:content-type:mime-version:references:in-reply-to
 :message-id:subject:subject:from:from:date:date:received; s=
 mail20150812; t=1626605445; bh=DJ2SCi/NCuwSJfP+CRr7biPvDRKuBXNNj
 HXygvRSNl4=; b=UDRYmZr16on9o/N2vwtq3+MXfIHhBb4fu6ZBHmn4S2GQ6DdVL
 WlgzkbBWPQ7oicm39qqFBBuCkgrWNHZb1Fdqqqbk3pxvM7Ytv2D1b5OK44LgXme0
 fxcci1SE4vQ8938+lPZRDt8OjeB7f1sJAuyf8vhTC97kCjBWSU5TVHussD+lUmOC
 8Y3bgYChwfksk/9AFZav8NRVIytA3gBn4yEj32THjpBs8ZvDJ7Mfor5Qo+y0bBh0
 L4kJt2yMz2ZI4Qlo8f6vwtvhK73BO+ZYC+KxujlvPIn5MSKyvuFUFd9u37yydvf3
 XXmdC37nMj30azLoFFpu6vvgQdXE7XiVnur7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1626605447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+8vja1Lwnz1jj+Ovglc86c+GldH+WAoiermoxui8v18=;
 b=I/tnGAoZPQczjJ6C4ERBKPlyZ5z1IaxrrlBt11Xwr8ioEkF1D36jdyRajEAqVTOLFTk7w0
 xGniYU9XfuV2PQMi6nO2gXAkFyhHL9dR19bg4soi+K7zsKe3OX1IX1HVSWywOHp4n10pBG
 oYSi6wTzznV26KPSmvwovL2ev25emPBaRX/MSSCrNGNHFnckoQAor6/ylmfww6EXFQo+0+
 Q89aRgu6ClcmuIvwBDt9CG0A5PcV63SVwToV6djI/CV/0rwtBjTfSDF0HbmsQ9xxxQnQGw
 raMDCEcPL2LnnB9zf3FORTkwnM6B/TG2bGuEwPUVXK2FvgF52GWX14GQQxSm+A==
Date: Sun, 18 Jul 2021 12:50:41 +0200
From: Andreas Radke <andreas.radke@mailbox.org>
Message-ID: <20210718125041.65da6c5a@workstation64.local>
In-Reply-To: <d3908bd8-c10e-9133-dc4f-19b5494b0730@gmail.com>
References: <d3908bd8-c10e-9133-dc4f-19b5494b0730@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/KYkAfIAJXoAsb.LW6aZK_F6";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Printing-architecture] OpenPrinting News
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

--Sig_/KYkAfIAJXoAsb.LW6aZK_F6
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Am Sat, 17 Jul 2021 02:10:04 +0200
schrieb Till Kamppeter <till.kamppeter@gmail.com>:

> Hi,
>=20
> I have posted the newest development of the last month on our web
> site now.
>=20
> Here we go:
>=20
> https://openprinting.github.io/OpenPrinting-News-July-2021/
>=20
>     Till

"Add a migration script so that OS distributions can easily switch over
from classic packages to the CUPS Snap"



I highly doubt major distributions will follow that way. Please make
sure it will be possible to kepp full support with custom
built distribution packages as well.

Arch Linux will never add such official snap support or access to the
snap store at all.

Andy
Arch Linux

--Sig_/KYkAfIAJXoAsb.LW6aZK_F6
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEErcih/MFeAdRTEEGelGV6sg8qCSsFAmD0B4EACgkQlGV6sg8q
CSsw6wf/eICYukFT/CJXOKLp//cSEf6+zTte+5+4+U+sYp8qWBQzrzxRm68B2L2M
LFTKR+4+hIqH9TxP3mNu8wJ9IgHaFzF0BFdpPXW+ISS7WTIRGa3w/IFv5FXaacBW
0DIWwSx+8svcctk9e5dQ1xgKtITSqtvUK+kzG1eO9Rt3l8jKFGuUu7YDE+ABDRfB
am3RcAfroFsxLtSxU8dYeVFsDTnryM05ffqLgiFyRaNttJUwnWD1hkwI1JCfFZYp
uXuycx/1erta4jytXjwNGQEqzV5aBm1s0PGVmW9EgMo1YpKHkwo30OATxIOYZKzw
6VoHH2hzKAtNqZlT1OQo1UE2q7XdMA==
=GUnG
-----END PGP SIGNATURE-----

--Sig_/KYkAfIAJXoAsb.LW6aZK_F6--
