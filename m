From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <4D7BAF1C.8070400@gmail.com>
References: <4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
	<4D6D5FD5.4010506@gmail.com> <4D6D6D45.3070907@gmail.com>
	<87ei6ndyi8.fsf@avasys.jp> <20110304172254.GF30872@piware.de>
	<87hbbfyat2.fsf@avasys.jp> <87r5aefjf2.fsf@avasys.jp>
	<4D7A4ABB.7030200@gmail.com> <1299862755.2770.25.camel@worm.elk>
	<4D7A5FD5.2060006@gmail.com> <4D7B9D9C.4090209@gmail.com>
	<4D7BAF1C.8070400@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-mcaLqw9Qfrp1Y5wr9w3C"
Date: Mon, 14 Mar 2011 11:13:24 +0000
Message-ID: <1300101204.2990.3.camel@worm.elk>
Mime-Version: 1.0
Subject: Re: [Printing-architecture] [Printing-japan] Ubuntu Natty the first
 distribution which does automatic download of binary printer	driver
 packages
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
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, Martin Pitt <martin.pitt@ubuntu.com>


--=-mcaLqw9Qfrp1Y5wr9w3C
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2011-03-12 at 18:36 +0100, Till Kamppeter wrote:
> Tim, I have attached the patch of the last fix for the upstream repositor=
y.

That looks like a Python bug to me.

If scheme is e.g. u'socket' (i.e. a unicode object), that should still
give True when used with 'scheme in ["socket"]'.  It does here:

>>> scheme =3D u'socket'
>>> scheme in ["socket", "lpd", "ipp"]
True

python-2.7-8.fc14.1.x86_64

I'll apply it in any case for the moment, but you might want to check to
see whether Python in Ubuntu is behaving correctly there.

Tim.
*/


--=-mcaLqw9Qfrp1Y5wr9w3C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNffhSBLQafZpK2tcRAvSbAKC9LBDzxBT3yPuRURbFoWqPWyrDxwCeP9/2
D3+lFD5vtOVyaqBr2AkERiY=
=lPao
-----END PGP SIGNATURE-----

--=-mcaLqw9Qfrp1Y5wr9w3C--

