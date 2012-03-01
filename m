Return-Path: <twaugh@redhat.com>
Message-ID: <1330610112.28173.5.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Thu, 01 Mar 2012 13:55:12 +0000
In-Reply-To: <4F4F6D64.7030100@gmail.com>
References: <1330600735.18587.3.camel@rubik> <4F4F6D64.7030100@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-szv5SgZitPNWv93uJQaw"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] pdftopdf
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


--=-szv5SgZitPNWv93uJQaw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2012-03-01 at 13:36 +0100, Till Kamppeter wrote:
> Tim, I did not know that. At least it links against libpoppler.
>=20
> Otani-san, is there still code-duplication of XPDF or Poppler in the=20
> pdftopdf filter? Can this be avoided?
>=20
> Tim, which version of pdftopdf are you looking at?

I'm looking at the pdftopdf from cups-filters-1.0.2.

$ grep -l 'Glyph & Cog' *
P2PCharCodeToUnicode.cxx
P2PCharCodeToUnicode.h
P2PCMap.cxx
P2PCMap.h
P2PGfx.cxx
P2PGfx.h
parseargs.cxx
parseargs.h

These are from xpdf aren't they?  Or copied from poppler?

Tim.
*/


--=-szv5SgZitPNWv93uJQaw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT09/we7Fkar03pQsAQIPhAf/SWd5fwk0QobGSg1xJsBkaQtcrt6/WsTA
32kZEasi8S685v+4MGQthjUtVn2Hq0ooFNGr6s4X5jRvlhI0a2mCCSfUXZpk9lBg
xON97/jY3b7nT0x3ZTYbjfJFD4lLIQB5dyDh81r7Q1+djyGICHpTeeBk7hIOd4ki
EUPzEL0/AnzAVeDVdyexcu71lR75BpwtDZO7TluUnS9dzO8u1dy/IDgOe4WCSxdC
KvTjOJAjs2wIHxeGlw8i7HOC1CVofthG5c/fTVjdn0opJURgxU/f11uWhUzJZXCO
uwzyQLoKci9nseo8oGKEk8s0cSNWg0rBiB95pODvduuV9YSB29h2qA==
=Gtog
-----END PGP SIGNATURE-----

--=-szv5SgZitPNWv93uJQaw--

