Return-Path: <twaugh@redhat.com>
Message-ID: <1326369369.10576.6.camel@worm.elk>
From: Tim Waugh <twaugh@redhat.com>
Date: Thu, 12 Jan 2012 11:56:09 +0000
In-Reply-To: <4F0EBF78.1020805@gmail.com>
References: <4F0E23F2.5010608@gmail.com> <1326365475.8483.3.camel@worm.elk>
	<4F0EBF78.1020805@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-RP+NrJgf7j2z/s8RH+ox"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Removal of features in CUPS
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-RP+NrJgf7j2z/s8RH+ox
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2012-01-12 at 12:09 +0100, Till Kamppeter wrote:
> Does libdnssd-based upstream CUPS do automatic service discovery by the=
=20
> scheduler, meaning that your Avahi patch is not yet complete in this=20
> sense or is automatic service discovery by the scheduler even not=20
> implemented at all upstream, meaning that by removing IPP browsing one=
=20
> of the most important features of CUPS gets lost?

My Avahi patch was a straight port of the existing features in CUPS to
Avahi.  Upstream CUPS does not currently perform DNS-SD discovery in the
scheduler but -- given that CUPS Browsing is to be removed -- I expect
that it will in 1.6.0.

Tim.
*/


--=-RP+NrJgf7j2z/s8RH+ox
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEVAwUATw7KWe7Fkar03pQsAQJQeAf+Om1W/5pzXAvU8bs9hD5Wf2JOz+KhBsvj
bH3ZyN22Z2TRItLvoIYPNgas8pEsWdVFyWQVgS8dOiGyYK52pPZXaoZXXaP2h1pK
TYCRarRmC0d4OyPEyL8ndEKOcv1P4oz2m66iF4a9WG6pB6BTnZ7p6SROqphxp/Jt
v0+sisnacacAeEwjvX9VbJVW/Fy90NgiE7rH2gdZOfuLbcvQ3ZT9LtnFop4ePbJy
hmCb4as5W79E3SunVR2M1wN1G5DQ7GJkfipzGc3Kp00aIh+iccugdw8sguV7V4hh
3asriC7mmhE6DbdL7pArZtTE6mzMR8KDgX410eIb8og+YzeqZpyHBQ==
=t9Ys
-----END PGP SIGNATURE-----

--=-RP+NrJgf7j2z/s8RH+ox--

