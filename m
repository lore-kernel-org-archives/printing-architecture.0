Return-Path: <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_437BA308-BE87-424F-A49B-2CF4A12EBF2D";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
Date: Wed, 24 Feb 2021 09:17:08 -0500
Message-Id: <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>


--Apple-Mail=_437BA308-BE87-424F-A49B-2CF4A12EBF2D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Feb 23, 2021, at 2:27 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi,
>=20
> one important feature for a good user experience with printing is the =
automatic setup of printers. at least locally connected (USB) printers =
either when they get plugged in and turned on or when their Printer =
Application gets installed and started.

I'm torn on this, as nearly all currently shipping printers support =
AirPrint and/or IPP Everywhere.  There are still a couple outliers in =
the desktop printing arena at the very low end (!) but mobile (Android, =
iOS, iPadOS), ChromeOS, macOS, and Windows 10 have driven vendors to =
support the standards we've been working so hard on for the past 20+ =
years.  So that leaves supporting "legacy" printers for people that =
haven't bought a new printer in 10 years as well as special-use printers =
like the Epson/HP/Canon large format inkjets and the various label =
printers (which are starting to come around...)

Right now, the *expected* behavior is that the user has a compatible IPP =
printer and they don't need any special software for it.  The =
*exception* is that a user has a printer that needs extra software.  And =
setting up a printer (with whatever software) is not a common occurrence =
for most people - ordinary users do not operate a printer testing lab or =
go out to buy every new printer that comes out.

So I'm not thinking we need to go out of our way to engineer an =
efficient solution for adding a printer, and as Solomon notes I doubt we =
have enough information to make such a solution work.

Probably the best approach is to build a "registry" of manufacturers and =
command sets that each printer application supports. Then when a printer =
is connected or discovered, the desktop tool can:

    IPP Everywhere Printer?  ---> YES, we are done
        |
        | NO
        v
    < Which Printer Application(s) supports this manufacturer or =
command-set? >
        |
        v
    Is the Printer Application installed?  --> YES, do auto-add
        |
        | NO
        v
    Does the user want to install the Printer Application?  --> YES, =
install and auto-add
        |
        | NO
        v
    Cry in beer


Note: I am fully aware that in the photo/art printing arena there are =
people that will still want to use Gutenprint or other special purpose =
software rather than the standard IPP interface - that's fine, and that =
is what the Printer Application is for in the long term. But those users =
are "experts" and will know how to install the application and configure =
it for their printer.

________________________
Michael Sweet




--Apple-Mail=_437BA308-BE87-424F-A49B-2CF4A12EBF2D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmA2X+QACgkQvmfHXsgf
MkQkzRAArz5TswwaG27cM6xqE7kt27vhNKx7MHUAInllBoOtqztOesi27SpRjHVZ
sjBvmRHENYwlywEXpAxq/TrYZgUdNxPh7e/5tTqPdXueHHoZvKzAYDunIHQnNNB8
rrVXBlgjfVUaY+6KDEthCfKdhhqIOVbGLvjfb5MhCgUn3i/Gy75xkgbR7dSoEqMW
Nsllho7HQ0d1NUmy43M2DaAz9XS/sgx0QGgasBlqf9/WqLqMgki2+DbhnPuRk6Mt
vFVDROsGTpKdSJI6ERMUfxIWbOnnjM8TB5DFKh8CCGSoVuzEERFJIWMj3y939d1M
4rqcwmPXnn7ozR8r2QAGnUt578hyOWEoSpUEn40IUUE9aTVQ34gr2+XcEn7xoXQE
fFPPJLviXkmEsPpqn2SRFC1iTArHR3ACE6ga8iH2JE4fV1itOqePy36FYH1e2AWd
eiOHS9n7oY3V4ghHr8DCys7uRY1pNlmnFCcsUECHvr2DZr1nwO4cQzDYGANtmNEB
wGf2ttVEqMi5V1ctebCObJbvaQYYsqU0L8meQua+SisTukh63TbRQgymzu2NHcN3
av2ahlc1Qj5DRTMVfqFnkDjFzrT3qKQRo3Xf7ShTTt7PN/OdmQs6LTKdfvEC70eJ
pIce1CkCqQoZo+esjFhci3KbKk8GPsR2vL8dNnUN0hFSC/aNy2U=
=6Jqz
-----END PGP SIGNATURE-----

--Apple-Mail=_437BA308-BE87-424F-A49B-2CF4A12EBF2D--
