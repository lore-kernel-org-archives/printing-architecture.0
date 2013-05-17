Return-Path: <twaugh@redhat.com>
Message-ID: <1368784965.9612.0.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 17 May 2013 11:02:45 +0100
In-Reply-To: <FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-NUbJhClb1bSny26G76LS"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@apple.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>, Till Kamppeter <till.kamppeter@gmail.com>


--=-NUbJhClb1bSny26G76LS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2013-05-16 at 22:32 -0700, Michael Sweet wrote:
> You need some sort of local spooling, but it need not be cupsd doing
> the spooling. Consider writing a small DBUS-based spooler that
> provides UI for monitoring and canceling the job.  This spooler could
> also handle the basic conversion from PDF to PWG Raster and could
> despool to cupsd or direct to a printer.

This, in fact, was almost precisely the plan for the "printservice"
project, currently stalled. :-(

Tim.
*/


--=-NUbJhClb1bSny26G76LS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUZYARe7Fkar03pQsAQK1FwgAuymuXPull3EHeZCn6KmqlEAoIfVKHSW5
0Z1+L2vMSQ0okprwLE+VGLlCCoxuMtDNdPyCHcskVgXkGj60l8N2vLX8Nd2eLrJb
Wfwpx5C5UuEAX9DIFOmUxx/PTiXfWK/tm0OVuTA7UjdyMUEUFz03bEth2z05RhXW
JHA1Hfd1VD2dGadGg+xoV7o9Kt1UPlJ9sbK79vICvAwjWbp0dMJz3sjvGl1ET0MQ
60pwrpexQNk2gLX88IUAw4H5rtF+q4WFxmYMsYxSaXwXS1z+d1SPpdkyZrB3xxBD
EhVgk1b6trqbsecY1C9tgV3/WkT7tBYXB24yEoVEr67ZhpDwMxjX4A==
=V1D9
-----END PGP SIGNATURE-----

--=-NUbJhClb1bSny26G76LS--

