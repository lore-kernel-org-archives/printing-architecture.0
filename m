Return-Path: <andreas.radke@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
	content-type:content-type:mime-version:references:in-reply-to
	:message-id:subject:subject:from:from:date:date:received; s=
	mail20150812; t=1573210674; bh=S2LaUaIU4Ft8YNTh5d8dcVNQNe/8Y9ogP
	tyOjr943nw=; b=jJGueGQKH5qjq9r/RuA5C5MoFX/fia5Fqy6u/uOwGiZcCyCZS
	YqLYyYWC54r6R+GJzpQi0eIh7TOvoQZA7ewiDJwEQqxGDr+23/PEQCfFRY2hR16K
	4mpGyx2zHrKVWiSUdkNNHh4qyd3nir0TM3g9uWqmgJ3/jVbfRprAeWjkW+EInliA
	IdSOb0JBR610xJSuHRTIntUFqBfDSrZcADkpVIHH6ed83+gZPvZ22/KYF8WXUh3m
	gtfSoc5MCSJe+LxXYCMiSzzHEGQqKGHjDu18fFeNL05QjAlGJLOzfOGQWxJxKY+a
	S0DoS/X7IWrtUi73lmmHGghY7fhHG4r9Rzztw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
	s=mail20150812; t=1573210676;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:mime-version:mime-version:content-type:content-type:
	in-reply-to:in-reply-to:references:references;
	bh=C5lIz/pa8KBRydLz5B2dBn7FzLETmS06sa6CNswfMWA=;
	b=aSiD5XQ6evmqtdGKqMNGwSvSTOCS7wpSzDMuJOV6ZOexcRv6nSF1AgZXoZODeg7DzJzbbd
	VUWWQlvSqcbZg9aYecUjOIdPIiTXSAud53beiCLLAoc0aDE7jpR9DAsQXX9Hwg3u2YXQtH
	tfNHFqS054BnDBDV6lOy8Ko8UXXwP+/1dOPVnQNnb9QEBeP2b7i945Lsfm7yfEahlKU8JQ
	zrovYfvUtagnErnbNmag2RgxGRpacrtwyI+cnQeei+wbsEKZksGS7508FTfudLn/LBw62t
	8r2scXk27Kpubd3IxP6yd3y0FRsHFEj792StxuJGgF3IPPQRv2wUfjxjQXMzWg==
Date: Fri, 8 Nov 2019 11:57:51 +0100
From: Andreas Radke <andreas.radke@mailbox.org>
Message-ID: <20191108115751.54932beb@workstation64.local>
In-Reply-To: <20191108020631.GJ26703@shaftnet.org>
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
	<20191107164901.GB5070@shaftnet.org>
	<a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
	<20191108020631.GJ26703@shaftnet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/SkdLJSrzO5dvTGo+KwC5lHJ";
	protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Printing-architecture] Upcoming work for OpenPrinting: Printer
 (Scanner) Applications and IPP System Service
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

--Sig_/SkdLJSrzO5dvTGo+KwC5lHJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Am Thu, 7 Nov 2019 21:06:31 -0500
schrieb Solomon Peachy <pizza@shaftnet.org>:

> On Thu, Nov 07, 2019 at 08:14:59PM +0100, Till Kamppeter wrote:
> > - Quick solution to not loose functionality/hardware support in a
> > Linux distribution when the first CUPS without PPD support appears
> > and some drivers are not yet converted. =20
>=20
> I think this should be the primary beneficiary.  I'm personally not=20
> going to lose any sleep over already-abandoned proprietary drivers
> that were never really supported to begin with.  :)

If some big player wants to keep PPD driver support alive they should
keep maintaining a cups 2.3.x fork until the last non-IPP driven device
is dead.

> > The preferable way are native IPP applications. Whenever possible,
> > especially for new drivers or for drivers which are actively
> > maintained, like Gutenprint or HPLIP this is the way to go. =20
>=20
> Absolutely.
>=20

IPP without any backward compatibility should be the preferred way to
go.

When cups 2.4.x will be out I will probably disable any ppd driven
driver support in Arch. Just to stop people using closed source driver
and to push open standards. Anything else will probably go into our
community maintained unsupported AUR repositories.

-Andy
Arch Linux

--Sig_/SkdLJSrzO5dvTGo+KwC5lHJ
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEErcih/MFeAdRTEEGelGV6sg8qCSsFAl3FSi8ACgkQlGV6sg8q
CSs0qgf9FDXMAH+4MpSbiy7uPHdfG3gisFV65iPY+6cDNqYsVSf8wqlhPHPBNJ14
d60hBiQ/w8BuHN82WjGxpFnSaKXbXIk7ho2crt4dLAxI1RAxhe72xHSjsldrbpt0
z/KxY5xFn85QHMpK3zzrwQsul4kfqQwnnr3WTYQtC6bm4AlETUzbjUmnLQ79JjlS
mLN/oDZJEdbjZ/LbSL2m7LX0FfUTIgf2TNYKKTO9q7S2SglOhhEpxtxjgGfuiLnR
RVa3se7jAAn/SeM/ZW2zfovlbcQKGm0Rww0DDN+rWKAgZEteWH6wvxjK2t0Xw6/7
s9h/pT3Os+UddVRMrmqr/iBMqz1vnQ==
=VkIg
-----END PGP SIGNATURE-----

--Sig_/SkdLJSrzO5dvTGo+KwC5lHJ--
