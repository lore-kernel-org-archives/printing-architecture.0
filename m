Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 11OCmG4t474229
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1614170897;
 bh=Jdgaui9jljuPWzNg3J/F/x87sUKJaRl1/rroCMncNug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=frJfeC5AFAFwszHcPdXEpA9tKintSCf36J2GO7U+AyLovwmwq+IPWoCj9QiMhAMJM
 TJj8Os8lxD3jir6djkf97zKj0/HaPkuGGjBTDdAqSLRT7BHK3gZhYDS01OycUOulNu
 gfobJJIoayOoJAdNi+Po3f71trL2fFLed8Te0Xwc=
Date: Wed, 24 Feb 2021 07:48:16 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YDZLEKxaIVrpLm4E@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="yaIB0r+2exwt6nEe"
Content-Disposition: inline
In-Reply-To: <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>


--yaIB0r+2exwt6nEe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 24, 2021 at 12:25:48PM +0100, Till Kamppeter wrote:
> udev-configure-printer will need an interface at all Printer Applications
> where it can send a device ID and the Printer Application answers back
> whether it supports this printer (with driver name), and that without the
> Printer Application talking to the physical printers.=20

I wanted to add a comment here -- We need to think about what happens if=20
multiple applications claim to support the printer, either because more=20
than one genuinely does, or because of wildcard catch-all rules for=20
"generic PCL" (or whatever) that could bind to any device exporting a=20
USB Printer Class endpoint, much like the current CUPS backend.

The CUPS backend supports a blacklist so it can exclude printers, but=20
given that printer applications can't drop files outside their sandbox,=20
a new mechanism would need to be devised. =20

> Great would be if a Printer Application also could report back support=20
> level (generic, third-party, manufacturer, ...). It could perhaps also=20
> prioritize unknown Printer Applications as they are most probably from=20
> the manufacturer and not from the distro.

I don't know if there's any reasonable priority rules we could apply=20
that would always yield the "correct" choice.  Except perhaps to put=20
"generic" options at the bottom, but even if those generic options are=20
the only ones available, the odds are they won't actually function=20
properly anyway.

BTW, current (RHEL/Fedora) distro practice is to extract the complete=20
list of supported printers at "printer driver packaging" time, and use=20
that to figure out what package needs to be installed at runtime.  IIRC=20
this exclusively uses IEEE1284 IDs.

And as a depressing data point, Gutenprint only has IEEE1284 IDs for=20
about 15% of its supported models, and USB VID/PIDs for about 3%.  So a=20
mechanism to auto-match based on the Manufacturer & Model strings out of=20
the USB or IEEE1284 descriptors would still be a good idea..

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--yaIB0r+2exwt6nEe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmA2Sw0ACgkQrGLLO/XV
ulF49g/9G9bjPa1OOk+OajiXnZF/ViLPvjppKpSVlXxDXpznQFQZbXwT70bSqdFy
ZjcxXgi/XJpC8eqevDBS9kSRFMIvA1BX1m0j9U5BwezoViHaxEA03DkcCEYZdDLJ
bzjO1p/XXmA0XSUeupiKgpkaIENR96hQ/6Nwf0BnEJ7QRUG2KFQtd5vGWov3/wwn
mMYIgHPdf/BZWv+6wDh1irco+GBzDTkSd2MN0/hYRTXZA44Hsyn+ixbS3Z6v84j7
swbkUw5ZEO35WYf1LxSytdf/3jIYpPyjEQf4uS5IEYaYLXF7QQGLf59ilpAgVxIl
BAzJEEJ2MKVNN85YG5+Sba2wCw3J8Pa63Cfqt5SWkW772ULPdrp4QBSxQA6YFcjI
7VU76rrv1hlOC1Z/GPK7MyFwcjpL0Qib3awwBXv+9FPbVLObP0SnvPK5BwLtJWIW
ZHSJ46Qp1xYW5uOyTcHHZbQKRS717FdnKwaBSTREz2hurtPpIMvAwBEBiGPzG+3M
0cTEuPD689hQSslmnyCNDuBLnEW+DbQxdJHXPF+gskZvzTRGVOmTKA2ipYFU/DGL
nsbDBsb7iBQIUSejuT+Y2E9PF92p6UV9Tfko4ZCryW9clSchLh0qPh1iTA9o3qCE
rif0Fg/xOM2TZewJ8s+9AXPN2VircqH20Be0s8Xv7PNPIWrgINc=
=57Zz
-----END PGP SIGNATURE-----

--yaIB0r+2exwt6nEe--
