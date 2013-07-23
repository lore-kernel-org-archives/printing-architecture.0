Return-Path: <twaugh@redhat.com>
Message-ID: <1374570518.4832.2.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Tue, 23 Jul 2013 10:08:38 +0100
In-Reply-To: <0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
References: <51ED6BDA.2080206@redhat.com> <51ED6CC4.1040501@redhat.com>
	<0C413B5E-6225-4CF7-BF17-8E164B520D7E@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-+QGIzn4qGZUssuMvVaKP"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] printers.conf frequently gets truncated
 to zero length after unclean shutdowns
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
Cc: printing-architecture@lists.linux-foundation.org, Eric Sandeen <sandeen@redhat.com>, sbergman27@gmail.com


--=-+QGIzn4qGZUssuMvVaKP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2013-07-22 at 23:00 -0400, Michael Sweet wrote:
> The problem with fsync() is that it is a blocking API. Blocking cupsd
> (single-threaded daemon process) is *not* a good idea.

Aren't changes to printers.conf deferred anyway, to allow changes to be
batched up? So it wouldn't be an fsync call every time the values
change, but every time those values are written back -- which is much
less often on a busy system.

Tim.
*/


--=-+QGIzn4qGZUssuMvVaKP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUe5IFnlVEo2joavTAQJ/4AgAgOuU4I0qeSHnuBVE0/ZGQkyn7dXuT/Q0
6RscTcOI2eaaaBvxfdB1Q8X+1C+xWgQlOGh+cMQRoIlGz515jtOksH2KgrHmktD8
Vv91UcbquzaTcw3nhu2mb1bFc9S6u/C1wGk/SRc2WgE0pn81hOPe5j3mNlcxVuek
bl5r40FxT3gkHVIosb70FOGN/FkwXSt9xiFwVnvSWHJescRi2/NGa9P89wDnt97W
hkVShRtU+QdcDmJHVFsRO7fY8KKnI9g9aCmmpjdIFsYM9j8AsgQpN2UzpeiPPUNH
JVAq3sTOP245fTU0O+2TATnzGZg4e7djOExtZkil5puwOUXhfdsFvA==
=sXdx
-----END PGP SIGNATURE-----

--=-+QGIzn4qGZUssuMvVaKP--

