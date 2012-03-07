Return-Path: <twaugh@redhat.com>
Message-ID: <1331113827.3119.7.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Wed, 07 Mar 2012 09:50:27 +0000
In-Reply-To: <20120306.144653.295962394.sho@bbr.jp>
References: <1330689855.32498.25.camel@rubik>
	<20120302.213857.23722135.sho@bbr.jp> <1330949378.9812.3.camel@rubik>
	<20120306.144653.295962394.sho@bbr.jp>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-2wEq8AtWHO2AQ4yl5F4v"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] XPdf bundling in pdftoopvp as well
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
Cc: printing-architecture@lists.linux-foundation.org


--=-2wEq8AtWHO2AQ4yl5F4v
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2012-03-06 at 14:46 +0900, Koji Otani wrote:
> oprs/*Splash*.cxx are not copied from poppler while they use poppler data=
.
> There may have vulnerabilities, but it's not because of copying from
> poppler. We should fix them in pdftoopvp.

OK, that's good.  I haven't audited them so I don't know whether they
have any security issues.  I just want to make sure that duplication
from xpdf/poppler is kept to a minimum, or even avoided entirely.

Tim.
*/


--=-2wEq8AtWHO2AQ4yl5F4v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT1cvY+7Fkar03pQsAQIANgf/UInVWdL9ooWtuQXQm26n4Ht+qC9vQtWA
g46tm2+jMrMoTbCp6Wrc2ZlDy8zQE6kKzEzEjWl1yMGux6U2nIOFmPhceJ38tgCO
tPI18MLjiV9pGd7qQyLsEpKMvfzoEQFWT+2nvkAANHywvwDUt/0JsCcU5l06tcN1
6aMvtp5CaF9QfRB8BP0r6XObMF2Z/ZsmudV4vnglCYKKKnrKROOjM4/guSi3wG2q
AdyLesg4425J1/Fr0fL/ByYajVvTLvr9hkpVaurtRN4kIkztUkWqAPsR08Y315yl
zWAl/vQAijKpckuOV78kZvBWqUpIsG2vMLsnXgabI7EmV3K/ZivxvA==
=9y/7
-----END PGP SIGNATURE-----

--=-2wEq8AtWHO2AQ4yl5F4v--

