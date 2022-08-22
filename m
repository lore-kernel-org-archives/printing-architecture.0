Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 760EE824EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A272782422
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org AC38B81FD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1661169100;
 bh=y+es94fsVs9mNBN06JbjSAQBE/M0JyA9AL52WgRqksY=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=OUxLYpcEL5afxwsyM9wVyau258B5dP4AKq4mQNZvfZ6W63UhWN9v6A/zRIRjAnjNR
 epRbsi+vnLgywcLJM5lHCgjoAerOvLMXRFhwTdAGKrXkmnY8MSYo3gOa4KGB9JexHl
 yDcAG0YLeiZs5GmlHjWZBEAUKFAtKkJ+/xC0Vacg=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_21C36549-A0B7-4059-817C-6911DAA86C7C";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
Date: Mon, 22 Aug 2022 07:51:37 -0400
Message-Id: <BDF4CF3B-C196-4CDE-AA35-6D47AC4B3CDF@msweet.org>
References: <e75ae2ef-3b1b-649e-24d0-74e9311268cb@gmail.com>
 <b9ea823b370b12f20c91e6ee00dabcb5@sebastianwick.net>
 <49e9161a-6ded-8196-cc67-9ce8d06c8176@gmail.com>
Subject: Re: [Printing-architecture] Bye-Bye colord - OR - Poll ICC profiles
 via IPP for soft proofing
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Sebastian Wick <sebastian@sebastianwick.net>


--Apple-Mail=_21C36549-A0B7-4059-817C-6911DAA86C7C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

> On Aug 22, 2022, at 4:14 AM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> Hi Sebastian,
>=20
> thank you for your explanations on how to do soft proofing and sorry =
for the late reply.
>=20
> Hi Michael, Ira, ...
>=20
> is there any way to poll the printer's ICC profile(s) from the printer =
via IPP ? Or is it not needed as all IPP printers are required to =
receive their data in sGray/sRGB/AdobeRGB and then convert to the =
printer's inks/toners internally? Would soft proofing still make sense =
in such a case? If yes, with which profile?
>=20
> Would it still make sense to soft-proof and also to color-correct for =
higher-end printing also if the printer is driverless IPP? Or is =
driverless IPP generally avoided for higher-end printing?

So you are asking two different questions...

Color Profiles
--------------

While IPP Everywhere and AirPrint printers will always support standard =
color spaces, high end photo/fine art printers will also support device =
color spaces (typically RGB or CMYK) which are described by the color =
profiles reported by the "printer-icc-profiles" attribute.  For AirPrint =
printers printers are also required to support uploading new profiles to =
a printer via HTTP PUT and registering them with the =
Set-Printer-Attributes IPP operation so that any client on the network =
will be able to access the same profiles served by the printer.

The ICC profiles reported by "printer-icc-profiles" are also used for =
soft-proofing, although because more printers don't report their own ICC =
profiles (because they don't support device color spaces) this is far =
less likely to be available.  In this case, there is no meaningful way =
to do soft-proofing (a generic CMYK profile won't really be useful) but =
conceptually you could download profiles from a vendor's web site to do =
it.

The upcoming update to PWG 5100.13 adds a new set of ICC profiles that =
simulate how "print-color-mode" values affect the output - this is =
specifically targeted at soft-proofing (even for standard color spaces) =
and could potentially be more widely implemented.  But you can expect =
that this will take some time to trickle out to shipping printers over =
the next 3-10 years.

Finally, there will always be a need to use custom ICC profiles that the =
user supplies/downloads. If you are going to bother supporting =
soft-proofing then there should be a way to use them as well.


Drivers for High-End Printers
-----------------------------

The notion that IPP can't be used for high-end printing is utter =
bullshit.  IPP has been used for all kinds of printing from day one, but =
until 2010 (AirPrint) it was best supported on high-end printers.

In the case of things like EPSON's large format printers, they spend a =
fortune on one small group of color scientists inside EPSON to develop =
custom modules for converting sRGB to DeviceN, and these modules are now =
part of the printer firmware.  I spent years trying to convince them =
they could do this with ICC profiles while dramatically reducing the =
size and maintenance costs of their drivers/firmware, but universally =
their response was "can't be done, impossible!" even when I demoed doing =
it for a brand new EPSON printer in an afternoon.  Even "custom" ICC =
profiles for different kinds of ink or media are RGB profiles that treat =
sRGB as the device color space for these printers.

You can still send DeviceN bitmaps (for the subset of printers that =
still support ESC/p2) to support custom ink sets and media, but the =
market for that is small (less than 1% of all users) and is best =
supported by a printer application rather than wiring all of those =
controls directly into the print dialog.

________________________
Michael Sweet


--Apple-Mail=_21C36549-A0B7-4059-817C-6911DAA86C7C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmMDbckACgkQvmfHXsgf
MkTsMBAAtclHCV4pOB8EHAFspgrIphOLtm8MLzYJQGTfI811Y+xNzi2zE8TH/Ry7
5fOdtguv6uHwl4/UvfvCi0592Mn0wSWH6s2jqgUC9LFpyCvPTZc0VlovDn3uoOhp
2u+/9ttzybgBX97GXUpBqsGKs/fW0dsT6fwzc+4bm+TNKI227wYW6rb+JXcbeyQs
c0STIz5fbi2Fdys+eB8azvv4dFRK0dN7vvyXWWjyc7YA0Ii4CoiBi5TKF7d/1yE6
CPMb5wrA59hc8izDFj3mUcODTsga8PUGs3G8aJnnT+8F6iLpq4+e8IruVi4VDs96
U0T7tksv3aUnj5ahuWxsjmQ5EX2kWpCR9CXJ0rAq0Bi7GCjH2NZgNyC789U7O95C
6dBg00biwVOjjN1v6f2iVr3V7lrZZxz4B3u9SCbDfC3yhWu2QoSAuh2ccqgeLbOn
KxSXkfqDOjU46Pg0Bbr+4Ycj8tPsYKdQW7ImkEcWi1zhk5wUcQtLbyUtfgzAIwOZ
UCKewo4U+jlzRxrDoZzrvO69Ec1hW/7Z+9AtiJxPIIuvWguos96YrZv4quqQfQuO
TdFBzkfKYfLZJKzFdrIgGaESMiYLvrP06W6gJRkShOZh9efNS9YGIvrolcYiuHAY
TZjsM5gaAuqR/UKu4iKxBogttxoPYHl4NMmFiJaWLwTCwC2o3fI=
=XL15
-----END PGP SIGNATURE-----

--Apple-Mail=_21C36549-A0B7-4059-817C-6911DAA86C7C--
