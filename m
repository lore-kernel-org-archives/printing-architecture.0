From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <alpine.LNX.2.00.1101061031470.6846@roma.rasena>
References: <alpine.LNX.2.00.1101061000050.6846@roma.rasena>
	<1294306085.2824.3.camel@worm.elk>
	<alpine.LNX.2.00.1101061031470.6846@roma.rasena>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-WtmDIvzcy3zKKzLb06+1"
Date: Thu, 06 Jan 2011 09:53:40 +0000
Message-ID: <1294307620.2824.9.camel@worm.elk>
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
To: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-WtmDIvzcy3zKKzLb06+1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2011-01-06 at 10:33 +0100, Kai-Uwe Behrmann wrote:
> What are you doing inside CUPS?

CUPS needs to register ICC profiles with colord for each printer queue,
so that colord can associate ICC files with them.  This way a user can
choose an arbitrary profile without having to modify the PPD file.

> Do you plan or write a generic C interface any system or independent=20
> application can have access to?

Yes, colord already has a D-Bus interface.

Tim.
*/


--=-WtmDIvzcy3zKKzLb06+1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNJZEiBLQafZpK2tcRAh6rAKCE2rVOCUeaJINHL6RXSjyDgnvA0ACcCzzP
konQcIFewgje9EA/SE5HRyc=
=7nfC
-----END PGP SIGNATURE-----

--=-WtmDIvzcy3zKKzLb06+1--

