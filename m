Return-Path: <twaugh@redhat.com>
Message-ID: <1405506739.2713.12.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Wed, 16 Jul 2014 11:32:19 +0100
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-8l79YVz3wpsXB3k4KQ4j"
Mime-Version: 1.0
Subject: [Printing-architecture] CUPS: fail-over without load-balancing
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


--=-8l79YVz3wpsXB3k4KQ4j
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

I'm investigating how to implement fail-over for CUPS, but without
having load-balancing as a side effect.

The usual way of implementing fail-over is simply to use classes, so
that printers are used round-robin fashion.

However, I'd like to implement fail-over as follows:

Each class will have one active printer accepting jobs, and a fail-over
printer not accepting jobs. When all is well, only the active printer
will be in use.

When the active printer fails, a daemon will spot this and start the
fail-over printer accepting jobs.

This is planned to be accomplished by having the daemon subscribe to
notifications. When it sees a notification that a printer has been
disabled due to a job failure, it will look for classes containing that
printer but no other accepting printers.

For each of these classes, it will look for a printer with a 'failover'
attribute and set it to accept queues. It will also move any jobs queued
for the failed printer over to the newly-accepting printer.

Does this sound like the best approach? Is it something that would be
best implemented as part of CUPS, or cups-filters, or a standalone
project?

Tim.
*/


--=-8l79YVz3wpsXB3k4KQ4j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEVAwUAU8ZUtXlVEo2joavTAQLa8AgAncoXpjlzCAeErMLc2Z+keoAtiHWF9iBa
SyovMzM1grhm0uiPofClSO8Mh6lsHdvNmEtbi2/kMAUpvqTKVO3zOjj+gl2y/IsK
MRpLn+O5DoIO+MrjEktUnuXysqD/D5uVB1wzfgLGLqJV5G92x/BUUBc0dXQNNALS
qslmIlFGOSQARLZwD4v+cAjRjGRlavyilvd38k4c9vs6IKbCwwUmW+x/ngW2nVqH
DydutM3zng8VNhlnGe2cZexSKUKwoyb3RIt2Itp3ZOa9pgixpXgKPtxF/UE81bq9
pLKik/FAOcEsfaM2pM3/VOcvuBR/DmFdCiiA+aiuvwd+hU8+XUVwWw==
=jVWz
-----END PGP SIGNATURE-----

--=-8l79YVz3wpsXB3k4KQ4j--

