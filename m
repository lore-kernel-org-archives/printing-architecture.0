Return-Path: <twaugh@redhat.com>
Message-ID: <1330949378.9812.3.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 05 Mar 2012 12:09:38 +0000
In-Reply-To: <20120302.213857.23722135.sho@bbr.jp>
References: <1330689855.32498.25.camel@rubik>
	<20120302.213857.23722135.sho@bbr.jp>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-l3KDfiW/BkZ/RdWlGY41"
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


--=-l3KDfiW/BkZ/RdWlGY41
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2012-03-02 at 21:38 +0900, Koji Otani wrote:
> From: Tim Waugh <twaugh@redhat.com>
> Subject: [Printing-architecture] XPdf bundling in pdftoopvp as well
> Date: Fri, 02 Mar 2012 12:04:15 +0000
> Message-ID: <1330689855.32498.25.camel@rubik>
>=20
> twaugh> It looks like the same issue also affects pdftoopvp, although
> twaugh> mysteriously the Glyph & Cog copyright notices seem to be absent.
> twaugh>=20
>=20
> If you say about OPVPOutputdev.cc, pdftoopvp uses SplashOutputdev=20
> as a template to make a driver of poppler. =20

I do; and there is an overflow in it.

I haven't even looked at pdftoopvp/oprs/*Splash*.cxx, but I expect those
also have vulnerabilities of one form or another.

If this code really must be duplicated (and I hope that is not the
case), there *must* be a plan in place to make sure that security fixes
in poppler and XPdf get checked for in cups-filters.

Tim.
*/


--=-l3KDfiW/BkZ/RdWlGY41
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT1StAu7Fkar03pQsAQKhnAf7B7z5Ry5hw/EREWbplyZRB+y6227624Dr
E2sYN/e1milEbkDkbqpAfXOc+b9Uz+qxh8aG7/X1yFXUaWx0W46Kk+5Ybj465Ado
YERozM7LQpER9XVFuftHONaTJQkrOp5SJyOX8PDWfo+UIzSAec4uWQmK3bja2o67
QJc3KH0PrzitnK/q1XDz6bpczuSWDR1cKlSrf1ZVXRm5+5eCSNrKMMUp3cX9ur3G
hKosU3ynPVn+8zipY4VU+qk/8YaWCbaqOEKlChD0JHEKfa73SGVnWz8VLpO8xD4P
6PrDrn4wH0ZPOnNK+YAQb8UG94khvs2QcX2qiLgoysXe7Gr6zSQlYg==
=1hWY
-----END PGP SIGNATURE-----

--=-l3KDfiW/BkZ/RdWlGY41--

