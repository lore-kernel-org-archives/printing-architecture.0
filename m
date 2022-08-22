Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0071960E0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 628FA60B24
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 74B8981FD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661171059;
 bh=Bi51WKn8xVZtThvijbnDDSuUXPMOnv/CZqYfQOAeuVQ=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=VIBM9l+buKRM35rvDnc+FSNthESn+pVuHSW1qXqqUEq4/CX74szEgrsnJhXQI+Nkz
 KkLhEuMYHtyH28dR6kkLgvlyxplRL0pUuykqXk0nyVImxitAWn/DiNcF8h0Rhn9lBz
 vW8SVHrblWsIHONcc73PxCxz+oCFKlra8KrY8+tU=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_6669D256-53C2-4349-ABDF-04FD547FAAF8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <865e65a1-20e8-8fa7-892f-0eab109de7c0@redhat.com>
Date: Mon, 22 Aug 2022 08:24:16 -0400
Message-Id: <58D8CACF-BFDD-4FB0-8123-10FE35FE7D2F@msweet.org>
References: <865e65a1-20e8-8fa7-892f-0eab109de7c0@redhat.com>
Subject: Re: [Printing-architecture] [IPP] Changing defaults of a driverless
 printer (physical device) via CLI
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Zdenek Dohnal <zdohnal@redhat.com>, PWG IPP Workgroup <ipp@pwg.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_6669D256-53C2-4349-ABDF-04FD547FAAF8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Zdenek,

> On Aug 22, 2022, at 1:08 AM, Zdenek Dohnal via ipp <ipp@pwg.org> =
wrote:
>=20
> Hi all,
>=20
> Fedora user brought up an interesting question for me - whether user =
has some CLI tool for changing default options on the printer itself =
(which supports one or more of driverless standards - AirPrint, IPP =
Everywhere etc.), without going to printer's web interface.

Yes, IPP allows for this although most printers do not currently support =
it.  Basically, the Set-Printer-Attributes operation is what you would =
use to set the "xxx-default" attributes (media-default, =
print-color-mode-default, sides-default, etc.), and you should expect =
that the printer will require authentication for the operation to =
succeed.

> IMHO it might be possible - printer supports IPP 2.0+, CUPS supports =
IPP as well and CUPS CLI tools, which work with CUPS, have an option for =
setting a CUPS server which they want to send the request to. Once the =
local user has the correct permissions (since IPP backend is run under =
root, my guess is root has at least some permissions...) it could be =
possible.

Running as root doesn't influence things - all authentication happens at =
the printer end.

> Is my understanding incorrect? Is there a different CLI tool which can =
do the trick? (maybe ipptool?) To be honest I'm interested how is IPP =
usually implemented internally in the printer - is there some CUPS =
version? Or HTTPD (Apache) with proprietary IPP support on the top of =
that? Or  whole HTTP+IPP implementation is written as a new there?

Anything goes for printer firmware.  There are some using CUPS and/or =
PAPPL, some using Apache, but most use a custom HTTP+IPP implementation.

________________________
Michael Sweet


--Apple-Mail=_6669D256-53C2-4349-ABDF-04FD547FAAF8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMDdXAACgkQvmfHXsgf
MkSoyg//U4jRvVnsbReMSAQiqCNBdihImsgqMRTc5qEPXaBp2T6b41F/eRAZl0Ny
g3gDklJgTHRxAzWN4FTnOaOoJkf7whVeBXxVuA0Ps3z7Enro4UTelY3c5BSVgFKl
Ec3mcPKcIP+Uj9BLJpvYH+bdM29z1N/7cD4uT7CPgnnUuq198JySctl4pRHX/aHn
IDFZao6HM5b1HYzLqjVw08EqQ69lvpOKtpODfDCF3AbKmwEiBerRuQS6W2hOuSRK
/odc6o3KzKWEtyPJxg6ys+XXZA2jkXXYBU2mQBELfdd1+H+jeFQnxD4vmHs3ezXe
PD/bbPZ71J64UK4LZM2+JoFVMH9jdbrEzmB6ofg0Y21div5UwpbQDK7OPdkluiv0
Vp5YHsAJ61mDdOjbB/h+8zJEsnSWvsKuuGyRjPU1h8xbgQypS11mJmG0Z65IOIcg
0l5YLILH8BFMBaleWHUvXIn8f+rCsJR86wGhCdEoVQ07LAV7nD75x90rhybhPGAk
2LUgcTndfsNCToNgfeYHIxUbQlm0AyPQlr39Gv2x5lcR6Z8kXiTkWH3ULG81e72r
Ttsz6UDTFm3UkC50ZmXJS/IYZ8PDJIn0LlWGqz12/tcDLR2OhO/AzE5Dy96OJX2c
mlhOVSM/4WHCgZKcSFaTjIOuQB/o8c2ZMndW13RSmXON7S5RKoM=
=phTk
-----END PGP SIGNATURE-----

--Apple-Mail=_6669D256-53C2-4349-ABDF-04FD547FAAF8--
