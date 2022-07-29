Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F63260F1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C16A60B66
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 943E38207F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1659096742;
 bh=KaeIqrqYeZ1qTNrYsni5/U8ZA0l2+rw17vXbYO4yZm0=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=gYjbyBVj2V0M5/OF/ISGw58nMY6SbV/iMb7an+ffq1pC4aWSy5HjyJKoOqlStthv/
 WauR1JtYS2gEChB8D/fpN0W5VBKdLCsJnvroeEPcGHBGtX37Z1NyfdYRq11oQ4d0LM
 WGTFzZY2irOveY66sijc7sXUswJEpDjBgVSNIbWY=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_C5D962FF-A53D-4FFB-B8DC-A54672966006";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <7690e8a3-6bf6-cb69-03d6-e8e8328df373@redhat.com>
Date: Fri, 29 Jul 2022 08:12:19 -0400
Message-Id: <0A96DCFA-C478-4516-9CE7-BEF0E3D851FE@msweet.org>
References: <7690e8a3-6bf6-cb69-03d6-e8e8328df373@redhat.com>
Subject: Re: [Printing-architecture] [IPP] How to send a job to printer's
 internal memory to have it available for reprinting via IPP
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, bugzilla@countrybusdevon.co.uk


--Apple-Mail=_C5D962FF-A53D-4FFB-B8DC-A54672966006
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Zdenek,

> On Jul 29, 2022, at 4:08 AM, Zdenek Dohnal via ipp <ipp@pwg.org> =
wrote:
>=20
> Hi all,
>=20
> I have a user (Neil in CC) in Fedora (see comment =
https://bugzilla.redhat.com/show_bug.cgi?id=3D2095755#c22 ) who has a =
Kyocera printer, which is capable of driverless printing, however he =
sticks with classic driver, because it can save the print job data =
directly into the printer's memory, and user can reprint the job =
directly on the printer (he doesn't want to reprint from CUPS interface =
on PC).
>=20
> Is something similar doable via driverless printing over IPP 2.0+ via =
CUPS? Or is there a standard defining such functionality?

Yes - PWG 5100.11-2010: IPP Job and Printer Extensions - Set 2 (JPS2) =
defined a job save functionality.  But we are in the process of updating =
that specification and how job save is implemented because (as far as we =
know) nobody actually shipped that version of job save.

The update has been renamed to IPP Enterprise Printing Extensions v2.0 =
(EPX), available here as a prototype draft:

    https://ftp.pwg.org/pub/pwg/ipp/wd/wd-ippepx20-20211101.pdf

(FWIW, this specification is also where "job-password" is defined, and =
that *has* been implemented widely...)

> I can imagine a similar behavior with IPP can be achieved if the =
printer has a job log and saves the job files for some time (just as =
cupsd does), and provides a button in menu or somewhere which will =
reprint the job - but this whole would have to be implemented in =
printer's firmware...

That's exactly the functionality that has been proposed in the update to =
5100.11.

________________________
Michael Sweet


--Apple-Mail=_C5D962FF-A53D-4FFB-B8DC-A54672966006
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmLjzqMACgkQvmfHXsgf
MkSe+g/8CByPVw1lr2S+NRZsR+Z57yQssxgxHUO89Eb2E3gllqvTyPaMj2CSWkcF
JT9JiwDNlwX/1HX3DwvI0soDjL3pjLoEGvzIx1/PSfVXADHgjIlz8bqbiNOWELJw
FuZUN2y/Tf7yTeU5NHltRNiEh+j0AEbvhK29kDPYSqFOZs2A1Yzeq9vQ1aHhBUrB
NEGSLM8amaM0QmX3yIxgjQ2fih4AdHfOhzIk3LjwigX9OLYGdazpNnkjhWaUDuCT
NgXKxXBAIxLfLB76Ft0jfLfP5eYZHodhWpOZDS4ICE1boMZk0987N2hABEY2Horf
HyyME3IPmWiS6iDbyTGEC1LD+n5/seefm3gHREAGA+9IGsEmk65/0xMtH8NUJV8y
O2rXZldO+Vl6tEGm4JJKr9NBFyoZ7rwEn+4ZcIDVyZuBdQZ1C7TMeNReSZNsseca
L4dSojGqo2+lndFImfyZMuSamhEa8/IDQfi4f9L2nc2xwLAjndqDYq+QJyBSrl7T
RPlOTA/qnt8td5u3IYG5MG7OJK+tJNIxH69h3As+mLilr7SWshvSf2sU0CFVI/zt
UpMLxwdYozrB07Wv2IySOgcGw2a3kBppuzatjlrg8xDWlVRwSWvuL6iJyG1ZMJmq
eC6XbPcOTac0jU2N4zUd80Ah0z0/g+EzrRiTdi/BTSfOKwKgN0Y=
=nVvX
-----END PGP SIGNATURE-----

--Apple-Mail=_C5D962FF-A53D-4FFB-B8DC-A54672966006--
