Return-Path: <twaugh@redhat.com>
Message-ID: <1383933680.30503.9.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 08 Nov 2013 18:01:20 +0000
In-Reply-To: <52779F4C.5070909@gmail.com>
References: <1383567790.3894.4.camel@rubik> <52779F4C.5070909@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-DLWk5UYsDmmIqc51hUIQ"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] cups-browsed: how to treat rejecting
	queues?
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


--=-DLWk5UYsDmmIqc51hUIQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2013-11-04 at 14:21 +0100, Till Kamppeter wrote:
> Tim, one can solve the problem, cups-browsed updates queues on changes
> in the Bonjour record from the server (but not sure whether on all
> changes). Rejecting jobs is encoded in the printer-type TXT field, by
> the 0x80000 bit. See /usr/include/cups/cups.h, CUPS_PRINTER_REJECTING
> constant.

OK. It should also update the existing queue states when using
BrowsePoll as well. I can look at that if you like.

Tim.
*/


--=-DLWk5UYsDmmIqc51hUIQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUn0m8HlVEo2joavTAQL/mgf/XIzcUd26dFCUQc0y3YQgESwXyllnou+E
g382kDWqdBWrJE9/f3cJSAT0JZnfegNQ5Et/ls0OMNax53qyRQsKw+4y6mVAk/6F
EXviMEFCKY4+TMWUluPhlfONWUefTY9iq7S5bCqCltYWRyRSHBG+bwlWiE4KxTtz
hQFyMVqJJzQD15Zm9iJRmZ23F+uAitygjqAFjnVF+3MLGG6lthy59alumWgxnYfb
ffC20xiDyqTTH1A2F2CeofW6fjwGnHrCxaXExkjohyX5CfenNqj/1PZQrhgMqK1d
eU6p0XFfZVef0T6pKkErgh7SQ+g7tt9p7zpvYUPxVv0S4PUCfVtR5w==
=Ol6o
-----END PGP SIGNATURE-----

--=-DLWk5UYsDmmIqc51hUIQ--

