Return-Path: <msweet@msweet.org>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_970D01B7-AD47-4FED-B092-AB434B1C154E";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <YDjphxlKK64gkm+U@shaftnet.org>
Date: Sat, 27 Feb 2021 16:07:48 -0500
Message-Id: <63B75AC8-EFAC-457D-AC21-D8F0A2F0A389@msweet.org>
References: <12af8541-3113-341d-6b7f-d7393203368f@gmail.com>
 <949aea1f-a0f0-df47-1538-d7782f5350ab@redhat.com>
 <66430674-dc47-4a81-406b-aedefc065a37@gmail.com>
 <YDZLEKxaIVrpLm4E@shaftnet.org>
 <e9d76903-993c-7fd7-3a8d-809c176cc931@redhat.com>
 <YDe6L+I0u65ncSXP@shaftnet.org> <821b4df56f518b8d2cc38ce846e8cc48@suse.de>
 <YDjphxlKK64gkm+U@shaftnet.org>
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
To: Solomon Peachy <pizza@shaftnet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_970D01B7-AD47-4FED-B092-AB434B1C154E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Solomon,

> On Feb 26, 2021, at 7:28 AM, Solomon Peachy <pizza@shaftnet.org> =
wrote:
> ...
> Meanwhile, as this email thread demonstrates, someone still has to =
write
> the "driver" for a given printer, and to be honest IPP-Everywhere =
makes
> this task _much harder_.

For sure, if you start from scratch.  But if you have a ready-made =
wrapper (i.e. PAPPL) then you can just focus on the driver bits.

> ...
> (A related recent trend I've seen are printers that only claim to
> support printing via a manufacturer-supplied smartphone app.  I don't
> know if they rely on IPP under the hood, but even if they do there's =
no
> guarantee it's standards-compliant IPP/Everywhere...)

I've seen some of those polaroid-style 3x2 or 3x3 photo printers, and =
they use a custom Bluetooth protocol.  I haven't seen a regular desktop =
printer that can only be used via an app in many years... (fortunately)

________________________
Michael Sweet




--Apple-Mail=_970D01B7-AD47-4FED-B092-AB434B1C154E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIzBAEBCgAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmA6tKQACgkQvmfHXsgf
MkRBJhAAo0nj5g+jVreRpJEgates61IQA0gqV+suVlflWcvYUYZfn2MRLKK6ZL6N
uYflTuTTXWXyEMy0SNrUpGfVtrFuKNC0wSKPfOnRaMF4gMoytSyC5MStWCg+4iuX
Obsk412CRMeJgIx1+w8UuMaB0oFuAgGypexpsyh7ZYOGTRY8IzOObI2Jur1lE3UG
r3MVROBp4h0yomM4VB2bV7o8m66F9F+HB+TmFfzk4jSg2mzkDuwuozGIremHkzaj
/JXIml4zIYshN1yxj2GfLxg62fEoVCp7h3yx+/sGci+Ex6wgSrtHgDfFafPjrEtu
UjXr6ADlfJfZ3fflaSdJyocBALqWIy4moE6Be2fsrz7xmOBgtSP1e8gh93UsOzS4
AYNNh+j8ZM90OH5v3LSK51alsHyqdY0zzynDnrNnKfKcDxy5VVcfkYnRU4wEOL1K
ZxLQt9hgVXlbDvTAHnxd2VQeaQQscDjZa5C3voVdRT93miK3y8OJHWlnGu9Qe5zS
rne/16Yg+Q5mTxoCdJlVCsnEDPhhiIz1f/tIxTjNULupLaEoAvtAFn8FkEFRgq6K
tGqloOGGNi924nMwxK+3V72fkhcqaoVq14/2K6XBewQ+zvqDE1DNpOHtK7ZMzY6o
YGaClIBF71JHsPjCCQzNWg4gSCn6JhyRBs2KLT7rKxZ433+20I0=
=aydS
-----END PGP SIGNATURE-----

--Apple-Mail=_970D01B7-AD47-4FED-B092-AB434B1C154E--
