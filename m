Return-Path: <twaugh@redhat.com>
Message-ID: <1383567790.3894.4.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 04 Nov 2013 12:23:10 +0000
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-SdvNSobwe5rO6O6QtLgp"
Mime-Version: 1.0
Subject: [Printing-architecture] cups-browsed: how to treat rejecting queues?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>


--=-SdvNSobwe5rO6O6QtLgp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When cups-browsed creates local queues to forward jobs to remote queues,
I wonder how it should treat queues that are not accepting jobs? The way
cupsd used to behave was to copy the remote printer's state to the local
implicit queue, but cups-browsed is not structured in that way: it
doesn't update the queues it creates.

The problem with the current behaviour is that the GTK+ print dialog
will allow a queue rejecting jobs to be selected.

See also discussion of this for Fedora:
  https://bugzilla.redhat.com/show_bug.cgi?id=3D1025263

Tim.
*/


--=-SdvNSobwe5rO6O6QtLgp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUneRrnlVEo2joavTAQJdUwf+LM50y313Grt2mG0Nxozevwft/Xoc9aus
Cfg6GnJLwKoVWPCgk/CjfVfawEY3zA3BqCGHHKEjWPeFNrpzYRi2WiyAsxHTbOT/
by0qJCx626WH/4eJ4EJqAh6Wxv+Uhu7qKcS8q7B7MeiJ7Q3O/OXGGZ81FDgWAmSt
b0XqxustXNXGHmrtVkrIAJblDajDWPnIsiNfDrMe4RW2cOS6wfN7ZEgiUrGJzLtw
Pnqizb4SFjtbghu0ziJOObfHNNViZes7zSex/IaYLeZmM9sc7hDrKyYop4nMdp7Z
XClSbAKWkwWsNaBSzcGWBGp03TPk6egpfj8nmxu/SQyyzFvjrQ4oZw==
=L8MZ
-----END PGP SIGNATURE-----

--=-SdvNSobwe5rO6O6QtLgp--

