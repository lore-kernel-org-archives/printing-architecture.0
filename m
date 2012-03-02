Return-Path: <twaugh@redhat.com>
Message-ID: <1330687322.32498.3.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 02 Mar 2012 11:22:02 +0000
In-Reply-To: <20120302.185849.486545915.sho@bbr.jp>
References: <1330610112.28173.5.camel@rubik>
	<20120302.130333.126929817.sho@bbr.jp>
	<CAD2FfiGa5qyHQ9q-CT6RcDzQU4Yyov2kxq-nB6cSB21CeivdqA@mail.gmail.com>
	<20120302.185849.486545915.sho@bbr.jp>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-hGbRyvnwQFcjOeLSDtQf"
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
To: Koji Otani <sho@bbr.jp>
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com


--=-hGbRyvnwQFcjOeLSDtQf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2012-03-02 at 18:58 +0900, Koji Otani wrote:
> pdftopdf is linked to libpoppler.
> And pdftopdf used some modified codes of poppler.

So, the parts that are copied from poppler would need explicit security
maintenance outside of the poppler project.

Why do these files need to be copied?  Is there a way the poppler API
could be changed to avoid the need for this?

Tim.
*/


--=-hGbRyvnwQFcjOeLSDtQf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT1CtWu7Fkar03pQsAQL7sggAojZVCr/CCBPkqya04FmhQO/LOM2TQacT
Ny9+e+ku4plVw7WGZmKLfe/QcPno5xko9MSII9LdfqlTZwbRwH8G0a3KO89t+BHI
8YDeV2xG5/ZGoLZhc7+C80v6DwkFKhlFgzbHlc1tqtjxWGHY+9QhNaW6qnTXCtYi
NJEzbjgV/94dOzyK+i/OUdknvsAOD/Vzdirj01fEuhablQ8EoQie7/yTVHz2JPFk
eu7GO3o5zGUptdu0xC70KtuOgz41E1vOqP3/NBtAT65+D197rFwiQgdPRJad/04B
Z2HEWhrW4MMwcUe5/5If56nSNn06nmIf0PDTmn7zlj6pfAmfrXH4Zw==
=ddL7
-----END PGP SIGNATURE-----

--=-hGbRyvnwQFcjOeLSDtQf--

