Return-Path: <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_054E0798-DEEF-4F78-A824-15E9BC6A8EDD";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <4cd209b5fc90aa7ccfc8e1a7c380f982@suse.de>
Date: Thu, 25 Feb 2021 08:53:54 -0500
Message-Id: <4E960FA3-AC84-4BA6-81D6-8F8780E44B10@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <bcc4538ef1b6e8ef9395dda295f00eac@suse.de>
 <4978914c-e66a-3084-251f-4b72ad364eaf@gmail.com>
 <4cd209b5fc90aa7ccfc8e1a7c380f982@suse.de>
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
To: Johannes Meixner <jsmeix@suse.de>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_054E0798-DEEF-4F78-A824-15E9BC6A8EDD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Johannes,

> On Feb 25, 2021, at 5:30 AM, Johannes Meixner <jsmeix@suse.de> wrote:
> ...
> What I do not understand is how a Printer Application
> detects and communicates with its associated
> actual printer device

So in PAPPL I've essentially created the CUPS backend interface (renamed =
to "device") so that a Printer Application can discover USB and network =
(AppSocket) printers out-of-the-box, with hooks to support other =
protocols/technologies as needed.

> For example printers that have both a USB interface
> and a network interface with several network protocols
> like TCP socket, LPD, (dumb) IPP (no IPP Everywhere).
>=20
> How does a Printer Application implement
> detection and communication with such devices?
>=20
> Does each and every Printer Application implement
> it for each and every combination of methods?

PAPPL provides a common implementation for Printer Applications, and for =
network printing it only supports AppSocket due to IPP and LPD =
variability in older printers (i.e. AppSocket is the most reliable =
choice for old printers because the vendors couldn't screw it up...)

> Or in other words:
> In traditional CUPS device detection and communication
> was separated from the "driver" functionality by having
> separated CUPS backends for different access methods
> that are also separated from the other CUPS filters.
> How is that done with Printer Applications?

Printer Applications are "vertically integrated" =F0=9F=A4=AA

Basically, the goal is for a Printer Application to be a self-contained =
piece of software that doesn't depend on CUPS backends or filters.  =
Rather, since those things will eventually be going away it needs to =
expose a platform-agnostic interface (IPP Everywhere).

Whether an OS provides further isolation (Printer Application X can only =
access USB printer Y) is beyond the scope of what I've done for PAPPL, =
although if a method were provided to get explicit consent from the user =
per device I could add support for it.

________________________
Michael Sweet




--Apple-Mail=_054E0798-DEEF-4F78-A824-15E9BC6A8EDD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmA3q/IACgkQvmfHXsgf
MkROYw//VFFM0iCUifU8VfIv6bKTUZlvf+ik1gqZ0A0IbeXoFYdMEWw1eT23Harp
bJ6VNnSOtfJa0fjKGmj6gzS+oeehT+xWm6KWz7N/Slx+Jghs/6KWD6rTQBgfx1Zn
AmOXd203hgULum3juxD0dJx5kiwAQOHKjiWmdrY9JcRLqOu3aaYVQmjy6+ksjiEl
hWwvp7WNM0oNKnSDxwtMi+3zLiirzcPewLAgLaievrZJFJbwnFOG9nZtsHbt1S6m
JooDjw+XWyo6UI7u6vSPrrx2i0v+wolC5hQuUFzPdqmSQPkt6SeaqISXyC5V3LcD
2jxVYb+bE/vRGDuONfrNrYgI53QMpTqlBzzKF9e6IuroJXSw0yqPiPjYmMkDmXNe
ax4o4bFH2hCmA7rTM1bRN8bJME10XQciEpMPI35or5VIL5QW49dIonxN96wbmBhy
Gfn70ogJrOTikixmyNzmtKCTkbBod/CXSFbaNFX03ZUFszLr1h5ShWZ7NxKH7AQi
i/VNgAtGAwx1Cudm58AfFb5EFzsS6F2rFWySRzztMuKB7ow/zm/MA7PQP14JquW4
19FgXfJ70ZrejwU3m/aiRwjWUP2fXnIVIrSeIE8pUqG6YSiHuHCcMYZ5dVUlT4b+
qoyUo79Vc17keJQJFfz2unR+v15J/o0lz6YGN1la/wx3hIA8moA=
=KRqS
-----END PGP SIGNATURE-----

--Apple-Mail=_054E0798-DEEF-4F78-A824-15E9BC6A8EDD--
