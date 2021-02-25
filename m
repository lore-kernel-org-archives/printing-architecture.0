Return-Path: <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_4EDC96D4-84E0-4638-91E3-B6000915C795";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
Date: Thu, 25 Feb 2021 08:33:41 -0500
Message-Id: <1AF4A2E5-31EC-4B89-97E1-C181FF4ED4DF@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
 <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
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
To: Zdenek Dohnal <zdohnal@redhat.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>, Till Kamppeter <till.kamppeter@gmail.com>


--Apple-Mail=_4EDC96D4-84E0-4638-91E3-B6000915C795
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Zdenek,

> On Feb 25, 2021, at 3:52 AM, Zdenek Dohnal <zdohnal@redhat.com> wrote:
> ..
> Sounds reasonable, except for crying in beer! That's never reasonable
> around here :D

:)

> So udev-configure-printer would:
>=20
> 1) check if there is a USB device - if it is IPP-over-USB and isn't in
> allow list (probably there will be devices which will present =
themselves
> as IPP-over-USB, but it will be broken, so they want to fall back to
> printer application...), break out

Actually, I don't think you're going to find as many broken IPP-USB =
printers as you think since all but the first couple HP models  =
implemented IPP-USB to get AirPrint certification, which means it got =
tested extensively... :)

> 2) find a printer application which supports the device
>=20
> 3) if it is not installed, install it - this will need to be updated -
> currently PackageKit is used in scp lib, but PackageKit is going away =
in
> the future [1] - I heard there is some work in DNF regarding =
PackageKit
> functionality, but I'm not sure how far they are. Not mentioning it is =
a
> distro specific package manager, not sure if other distros have =
already
> some alternative to PackageKit.

Up to you, but I would expect some user confirmation before installing =
any software on my computer...

> 4) auto-add the device to a printer application - scp lib for adding
> print queues is now for CUPS only and written in Python, so it will =
need
> to be rewritten in C/Go using PAPPL.

Why?  The printer application can just be run with the "autoadd" =
sub-command, no need to link against PAPPL for that.

________________________
Michael Sweet




--Apple-Mail=_4EDC96D4-84E0-4638-91E3-B6000915C795
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmA3pzUACgkQvmfHXsgf
MkTIdhAAsG6PIUz/owmd3M8bu6CG0ri2ywyzPDl59BMTj0JmL2mKo86Bcl/+ioEU
qvTVYPnXJpCN2cmUlJFSmcyfqM9NkYxs6EBB/hjL/UIhS8Q6tsAvWU0G+6XE3CM9
t5k+CT3xNE33caPBzElkaiqzZk1YxViEUFqX6NL/MHLIRHHsRH4TWN45BtQWD1QM
/ELM8R93icBRfD2NrCX+N6lfI2siKIjQcFNPYQpazaCLXBCFZj5qGeLCgTJyH6+W
ije0RxaBU02a8GzXs0Ws8WObiZMcHnk24YnH+KKHLw3tJNQwGGmYLaMclnRCdLB9
QzSmlL9x5i5VVhxcoYIcon33TjCnlIaPi4y1hzKqP5gW0TgXDElEKyqDEOJ/alMk
IWe0/yn57KMXGAhp4IVHkIKkxQzS45DWJBb8yW6MGZIrAaqHhTDYbOwHMs7z+Nd4
+DSAKHESBA71q3BcLKQ9ZnQPbpuhViW9fTc3qfLMr1Ik9krNTN3Dmr6z4rlZEa+s
/vHSJQWd2H4dy46Qm4hhPHJhpFLeko8d80b74HGiSdniJ6mOHKjRn+8jbAGxyqlH
RtvJOM0Vnpbp3nJuNvtOfzjWhvD3ZrFr7X3jWprmjBG2TspsLksOSM6/aKhDGdl0
fSIyzoIYG00GwCF//orQBIqHrQkwYXTkLOYeI8C9i5GJWEHXaxU=
=qIt1
-----END PGP SIGNATURE-----

--Apple-Mail=_4EDC96D4-84E0-4638-91E3-B6000915C795--
