Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org 11PFSkE51593075
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1614266926;
 bh=YSo7qAmoFRnCLHO4EbDJbRBWDNwvGHhzll+BzTAoqjE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UPtjkv+To/e3gtwGlr5r56awnY+8RgcTlXbp722R6HA9FKW6VX4830sFBrcNkZlRN
 IG4gqkeiAjdXuux8pWDDcGgzh4a0VMO0e2KJHyW5yA0tjSGIu90i/35JN0KZY4vbAc
 CmjltlOxGAkg6FXZpiwX9i01s5Iq4drRdaGzBSnc=
Date: Thu, 25 Feb 2021 10:28:46 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <YDfCLhAuxSbro6Ug@shaftnet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <bb88fef5-f33e-3ca9-14da-ca189116ce9f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Qx5zCE+oXmFDRijp"
Content-Disposition: inline
In-Reply-To: <bb88fef5-f33e-3ca9-14da-ca189116ce9f@gmail.com>
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


--Qx5zCE+oXmFDRijp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 24, 2021 at 03:17:27PM +0100, Till Kamppeter wrote:
> You probably mean the USB quirks. This is to overcome hardware
> incompatibilities.

Yeah.  Not having something like this is responsible for most of the=20
support headaches I get from MacOS users.

> For this we need support prioritization levels, like "generic" (CMD: item
> match), "third-party" (independent driver, like Gutenprint matches the mo=
del),
> "manufacturer" (manufacturer driver matches the model).=20

"generic" is going to be so much so that I fear it will be effectively=20
useless for autoconfiguration. =20

Take Epson printers -- Nearly every model produced in over 25 years=20
claims to support ESCP2, but there's very little beyond "print basic=20
ASCII text" that one can ultimately rely on.  You need a more specific=20
model family (dot matrix, mono-only inkjet, X color inkjet, etc) on top=20
of that in order to be remotely useful for raster printing.

In other words, an application shouldn't claim "support" for a printer=20
unless there's an explicit, positive match; everything else will require=20
some sort of user/admin intervention/configuration.

I'm beginning to come around to the notion that we shouldn't even bother=20
to create an automagic "figure out which printer application supports=20
the printer just plugged in" mechanism, because it's going to take a=20
_lot_ of work, it's nearly entirely an exercise in working around legacy=20
baggage, and as Michael put it, we're not likely to ever see more than=20
half a dozen printer applications anyway, and all of those will be=20
focused around legacy models.

I don't see any printer makers bothering to create=20
downloadable/runnable-on-end-user-systems printer applications for their=20
art/speciality models (and definitely not for their legacy models) --=20
instead they'll sell a little "print server" that can be bolted onto the=20
printer to achieve that functionality.

=2E..and that "print server" will be running legacy CUPS (and hopefully,=20
eventually, PAPPL) along with out-of-band scripts that detect the=20
attached printers at startup time and create/export "queues" in a=20
non-dynamic manner.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
High Springs, FL                      speachy (freenode)

--Qx5zCE+oXmFDRijp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmA3wiwACgkQrGLLO/XV
ulHhow/+If+2hmF3Mhle5TC/mUm9UwBD2dHOfNaGh3NnGS3soudTSG8kXp0oWbRz
Wzy3i9Z8IuD5Rc1cOllnc4gI/Cghwg8TOGUaoGMpaGNRxIKc61BD4JCNRjcSJ4Lh
UJGGUl2HxcYIynwYv9VqDQ+k21FJ328iiOyDQF1PAjHwJKiJrsV3lkQZsTEA49fP
WnILUWQBEXwmD3QfyntATzo0A3hqiuXBZrUXX5VrJLWwPBz/rilKarVu7x7G3WF1
I9sis0sdCT0HWFSsiK8KH6eatUkcRCmRIKkKBRdJXecUyJ/kfW79+Tncw1YLYLYX
0jpZqA9FxVvtqKSOQMsm3/Jk2zRxQEyPlaGZiCvvSX2TJz7rw8xQwadUUnn1bClj
PGTzxq7dpIZ9qXTIDDQEP+JEf3xyrpK8vlnMBZv5YxDADqFD8PGrae627oxL9xq0
cMLBzpp7c08VyYuumVQ0Zxtho+HltVQ2UyB4BphUvDo0xyCdLTY9m/uVLaYdizkY
OPifyrAVIfwuY6SE6SeUoORKk7n/MieSPtC6Ad8dp10X6sUj8BwOvy3nrLz3Pzn6
4nNZcotmiZr58ddP7G4dOAKDrpzWQhGK5LSgGLikXcpV5MKSBHNGbenFWbim03tk
D+4L/albH+KiMz0MYP7fStfI8CRa5RnbcihEZwAm1s5xFDGdkzE=
=9hMZ
-----END PGP SIGNATURE-----

--Qx5zCE+oXmFDRijp--
