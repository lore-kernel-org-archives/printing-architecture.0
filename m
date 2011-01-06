From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <alpine.LNX.2.00.1101061058270.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
	<1294307620.2824.9.camel@worm.elk>
	<alpine.LNX.2.00.1101061058270.6846@roma.rasena>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-kPhbvVKyh2LDEOQgFyMd"
Date: Thu, 06 Jan 2011 10:18:53 +0000
Message-ID: <1294309133.2824.23.camel@worm.elk>
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Any news regarding colour management?
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Kai-Uwe Behrmann <ku.b@gmx.de>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-kPhbvVKyh2LDEOQgFyMd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2011-01-06 at 11:10 +0100, Kai-Uwe Behrmann wrote:
> If the PPD shall not be changed, for what needs CUPS to interact=20
> with a external daemon? It is already now possible to fetch the PPD from=
=20
> CUPS. We do this in the CUPS ICC module for Oyranos for instance.
>=20
> How shall the CMS and CUPS interact in your plans?

The pstoraster print filter will retrieve the correct ICC file and tell
ghostscript to use it.

> >> Do you plan or write a generic C interface any system or independent
> >> application can have access to?
> >
> > Yes, colord already has a D-Bus interface.
>=20
> DBUS is not a C interface. As well many applications will reject to use=
=20
> D-Bus as its is overkill. I would not consider it an appropriate=20
> replacement for a generic C interface.

Well, yes, you could write it as a proper asynchronous C interface, but
you would have to reinvent a lot of stuff.  Then if you want to run it
from a shell script or from some other language, you'd need to write a
command line front-end or language bindings.

But with D-Bus, it is already callable from C, Python, the shell, etc,
synchronously or asynchronously.

Tim.
*/


--=-kPhbvVKyh2LDEOQgFyMd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNJZcLBLQafZpK2tcRAi9zAJ4unxphYZj+C36wXcQ3T8N9y6/icgCgsO7Q
5eDP+ZxPkMOxOeZt9VOvITY=
=gQVH
-----END PGP SIGNATURE-----

--=-kPhbvVKyh2LDEOQgFyMd--

