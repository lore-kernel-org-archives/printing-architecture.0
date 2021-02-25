Return-Path: <zdohnal@redhat.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614243181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=A3YPDcrBf8Nu1UHd/LK9jOeCG14h956dBPNsoObApCs=;
 b=ZqyyZWyLA1vLMzmazDxZR3iOHxbD0+3dypCSpfS4dfy2pFb+kb1NN2XPpbC5apwSb3HnR5
 vhB8y+MTOu1Rj7xwiZNNZ0Yb4k/kHtoGf7KFeB1E9pu4adRdPHX5aqJASWR3vUf1GxEHmA
 bCkGv9fbUiyLhTt3nWKcDERzWhJxzLg=
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
From: Zdenek Dohnal <zdohnal@redhat.com>
Message-ID: <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
Date: Thu, 25 Feb 2021 09:52:53 +0100
MIME-Version: 1.0
In-Reply-To: <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="u1a3yK2kQAZRWg7HQZgJAqlerdSk0dOPb"
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
To: Michael Sweet <msweet@msweet.org>, Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Jai Luthra <luthrajaiji@gmail.com>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--u1a3yK2kQAZRWg7HQZgJAqlerdSk0dOPb
Content-Type: multipart/mixed; boundary="fLjlKn00JBE3wzFLapvI3f8WovTPLToJM";
 protected-headers="v1"
From: Zdenek Dohnal <zdohnal@redhat.com>
To: Michael Sweet <msweet@msweet.org>,
 Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org"
 <printing-architecture@lists.linux-foundation.org>,
 Jai Luthra <luthrajaiji@gmail.com>
Message-ID: <b6f4687d-fe34-c3e7-d378-a07405dc936e@redhat.com>
Subject: Re: Automatic printer setup with Printer Applications
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>
In-Reply-To: <1099419D-7CC7-448C-84B1-5C35D75F7A03@msweet.org>

--fLjlKn00JBE3wzFLapvI3f8WovTPLToJM
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi Mike,

On 2/24/21 3:17 PM, Michael Sweet wrote:
> Till,
>
>> On Feb 23, 2021, at 2:27 PM, Till Kamppeter <till.kamppeter@gmail.com> w=
rote:
>>
>> Hi,
>>
>> one important feature for a good user experience with printing is the au=
tomatic setup of printers. at least locally connected (USB) printers either=
 when they get plugged in and turned on or when their Printer Application g=
ets installed and started.
> I'm torn on this, as nearly all currently shipping printers support AirPr=
int and/or IPP Everywhere.  There are still a couple outliers in the deskto=
p printing arena at the very low end (!) but mobile (Android, iOS, iPadOS),=
 ChromeOS, macOS, and Windows 10 have driven vendors to support the standar=
ds we've been working so hard on for the past 20+ years.  So that leaves su=
pporting "legacy" printers for people that haven't bought a new printer in =
10 years as well as special-use printers like the Epson/HP/Canon large form=
at inkjets and the various label printers (which are starting to come aroun=
d...)
>
> Right now, the *expected* behavior is that the user has a compatible IPP =
printer and they don't need any special software for it.  The *exception* i=
s that a user has a printer that needs extra software.  And setting up a pr=
inter (with whatever software) is not a common occurrence for most people -=
 ordinary users do not operate a printer testing lab or go out to buy every=
 new printer that comes out.
>
> So I'm not thinking we need to go out of our way to engineer an efficient=
 solution for adding a printer, and as Solomon notes I doubt we have enough=
 information to make such a solution work.
>
> Probably the best approach is to build a "registry" of manufacturers and =
command sets that each printer application supports. Then when a printer is=
 connected or discovered, the desktop tool can:
>
>     IPP Everywhere Printer?  ---> YES, we are done
>         |
>         | NO
>         v
>     < Which Printer Application(s) supports this manufacturer or command-=
set? >
>         |
>         v
>     Is the Printer Application installed?  --> YES, do auto-add
>         |
>         | NO
>         v
>     Does the user want to install the Printer Application?  --> YES, inst=
all and auto-add
>         |
>         | NO
>         v
>     Cry in beer

Sounds reasonable, except for crying in beer! That's never reasonable
around here :D

So udev-configure-printer would:

1) check if there is a USB device - if it is IPP-over-USB and isn't in
allow list (probably there will be devices which will present themselves
as IPP-over-USB, but it will be broken, so they want to fall back to
printer application...), break out

2) find a printer application which supports the device

3) if it is not installed, install it - this will need to be updated -
currently PackageKit is used in scp lib, but PackageKit is going away in
the future [1] - I heard there is some work in DNF regarding PackageKit
functionality, but I'm not sure how far they are. Not mentioning it is a
distro specific package manager, not sure if other distros have already
some alternative to PackageKit.

4) auto-add the device to a printer application - scp lib for adding
print queues is now for CUPS only and written in Python, so it will need
to be rewritten in C/Go using PAPPL.


[1]
https://blogs.gnome.org/hughsie/2019/02/14/packagekit-is-dead-long-live-wel=
l-something-else/

>
>
> Note: I am fully aware that in the photo/art printing arena there are peo=
ple that will still want to use Gutenprint or other special purpose softwar=
e rather than the standard IPP interface - that's fine, and that is what th=
e Printer Application is for in the long term. But those users are "experts=
" and will know how to install the application and configure it for their p=
rinter.
>
> ________________________
> Michael Sweet
>
>
>
--=20
Zdenek Dohnal
Software Engineer
Red Hat Czech - Brno TPB-C



--fLjlKn00JBE3wzFLapvI3f8WovTPLToJM--

--u1a3yK2kQAZRWg7HQZgJAqlerdSk0dOPb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEettYIDyl8EbygCWyFapqf01CJ9cFAmA3ZWUFAwAAAAAACgkQFapqf01CJ9d5
OggAle6yuh4Zalv2nj9SGHfHS9np/VfX9+4kthcjoX1++D5Q8dvieDGiGfaHUVNVTAc5lAbw61iT
YVZBvr7UMVbZvJrgRi7hrYNG/BWLCKkaKEjk5XEgy++JmdEjL6x6/G37jPkNmorkgi6v1afk66I6
LpMC0t1kuJJXmZSgGZH85tLKB+x8kR6KiduSZyoD7yQuS5c5iyngH4cMeGezlOUWlluOwtMsMLCi
DJFAtpFiNEyl/U5NltBNep0itrYF1h6xvNW/JXPqvSK7iFQsFeKOegM5qe2IZvXMrS4rkSvFf31u
Pz8Pg1NxJnkGNERRC73Fs870LcVCbUviRzX6w0MCsw==
=RSea
-----END PGP SIGNATURE-----

--u1a3yK2kQAZRWg7HQZgJAqlerdSk0dOPb--

