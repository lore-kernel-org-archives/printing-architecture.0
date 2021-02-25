Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614241736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=b+nB8ovTH2AKJDKYKN8hI/gp19/6cZwzXq4x03SM5VE=;
 b=h7vVmF+oPoa4NT3lum9IgbZG4olAS09biJ3FuDAA02RVxQQKaUS5SjJjZjT0rNTDNtW+Ct
 SIJ84sfvVATWBdgBJXKe/wX8tlQheCrF200zQ1tOnl7eQHYj3lY7ZoDNWSNCSfRTf4G9LW
 mw3TRLrzNdq+9bsiy0fBo/N339KYysQ=
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
Date: Thu, 25 Feb 2021 09:28:47 +0100
MIME-Version: 1.0
In-Reply-To: <YDZLEKxaIVrpLm4E@shaftnet.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="872mhOruWOnEZYocTnIgC9DA1xZ5whwlz"
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
To: Solomon Peachy <pizza@shaftnet.org>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--872mhOruWOnEZYocTnIgC9DA1xZ5whwlz
Content-Type: multipart/mixed; boundary="kyVuaeoh2nFLQNvgK8swFA0wEd87K5z2D";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Solomon Peachy <pizza@shaftnet.org>,
 Till Kamppeter <till.kamppeter@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>,
 Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>
Message-ID: <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
Subject: Re: [Printing-architecture] Automatic printer setup with Printer
 Applications
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
In-Reply-To: <YDZLEKxaIVrpLm4E@shaftnet.org>

--kyVuaeoh2nFLQNvgK8swFA0wEd87K5z2D
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 2/24/21 1:48 PM, Solomon Peachy wrote:
> BTW, current (RHEL/Fedora) distro practice is to extract the complete
> list of supported printers at "printer driver packaging" time, and use=20
> that to figure out what package needs to be installed at runtime.  IIRC=
=20
> this exclusively uses IEEE1284 IDs.
>
> And as a depressing data point, Gutenprint only has IEEE1284 IDs for=20
> about 15% of its supported models, and USB VID/PIDs for about 3%.  So a=
=20
> mechanism to auto-match based on the Manufacturer & Model strings out of=
=20
> the USB or IEEE1284 descriptors would still be a good idea..

Actually that's one of ideas to do in scp library (which is used by
scp-dbus-service and by udev-configure-printer) - allow parsing/parse on
Model/Manufacturer/Nickname strings instead of IEEE1284 strings.

Solomon, I'm sorry if it is an obvious fact, but I don't know it - would
you mind me asking why IEEE1284 IDs aren't used so much in drivers?

>
>  - Solomon

--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--kyVuaeoh2nFLQNvgK8swFA0wEd87K5z2D--

--872mhOruWOnEZYocTnIgC9DA1xZ5whwlz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAmA3X78FAwAAAAAACgkQFapqf01CJ9cd
HwgAvuB83TT3EbMwKoD4ClxcM70bE8eWqxmd+d2P5tgug0jrv6ZIiz6cP+qlFKmjr0UC2OIEKRRo
k542DHXqmi9TXSKDXZZUP7O0ob2eRDnIp7IY9774kgaEOnefx9tAtUBZi0almtfRFQhSHuQnhPNY
e7aqCu+2ejWH/Jp63bhsnP4sVNOtW8+2Nkx52MRwXifbNLW5BCr92s4QXo0pvnGfNM/gLbUumtx7
QzN8lFRPmZSFV7LucqRUgGKFR/1EkWcA2jcCsAg5PICWAjMh4tMHSYbb+jaAvDcyvPCa6yyaLwTC
1mJV1mdWdBI+hiY7YftzR8Gljwf/sKjb27pCCoYghw==
=EFd/
-----END PGP SIGNATURE-----

--872mhOruWOnEZYocTnIgC9DA1xZ5whwlz--

