From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <4D67A34D.4020008@gmail.com>
References: <F30723B8678F584CB6A4269E911255CB0392318F@m1a.epkowa.co.jp>
	<4BD18655.8060000@gmail.com>
	<F30723B8678F584CB6A4269E911255CB03BF5E5C@m1a.epkowa.co.jp>
	<4C091F92.7050102@gmail.com> <4C1284F4.3000707@gmail.com>
	<4C89CF0C.60003@avasys.jp> <4CE55A84.3070006@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04A457B1@m1a.epkowa.co.jp>
	<4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
	<4D67A34D.4020008@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-EhazUEiMNOJl8elZQ7da"
Date: Fri, 25 Feb 2011 21:26:42 +0000
Message-ID: <1298669202.5347.0.camel@worm.elk>
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Ubuntu Natty the first distribution
 which does automatic download of binary printer driver packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, martin.pitt@ubuntu.com


--=-EhazUEiMNOJl8elZQ7da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2011-02-25 at 13:40 +0100, Till Kamppeter wrote:
> Tim, is there a new way to test the driver selection and=20
> automatic-download for a given device ID without needing to modify the=
=20
> code of system-config-printer and without having the appropriate printer=
=20
> physically? Or do I need to re-develop this feature?

Use: python newprinter.py --with-uri URI
(requires current git master... I'll do a 1.3.2 release in a week or so)

Tim.
*/


--=-EhazUEiMNOJl8elZQ7da
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNaB6QBLQafZpK2tcRAnXcAJsG9dFAwuU17O4c64Otv8A9wjZBEACeKpUI
N5enYAhjJLjs8zHEuTFfudQ=
=A04a
-----END PGP SIGNATURE-----

--=-EhazUEiMNOJl8elZQ7da--

