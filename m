Return-Path: <twaugh@redhat.com>
Message-ID: <1393264107.2696.17.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 24 Feb 2014 17:48:27 +0000
In-Reply-To: <C7A94624-AB3F-496C-9BDA-E0C9B9E2E2A2@apple.com>
References: <1393263259.2696.12.camel@rubik>
	<C7A94624-AB3F-496C-9BDA-E0C9B9E2E2A2@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-Zxnr3+GfbKy0bRk5COVu"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] CUPS 'marker-low-levels' attribute
 question
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--=-Zxnr3+GfbKy0bRk5COVu
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2014-02-24 at 12:37 -0500, Michael Sweet wrote:
> The intent is that marker-low-levels is the point at which you report
> marker-supply-low-warning and marker-high-levels is the point at which
> you report marker-waste-almost-full-warning.
>=20
> Put more simply, if the marker-levels value is outside the range
> reported by marker-low-levels and marker-high-levels, then you need to
> do (replace) something soon.

Thanks, I see now.

Tim.
*/


--=-Zxnr3+GfbKy0bRk5COVu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEVAwUAUwuF63lVEo2joavTAQLqzAgAhlM0P4j5dXOJO2FOBIo2XyxftmZ7pk0G
BvcjhQju1j+m0sZ5Ecl2ngeCS4tERyEG7OLGUNYK9ilhWEFsjYzPcYfDb/AV5LVc
ZLy8jzeMKHD+a/lrK/nemFQLyIM8AGTuZNLUAGNkiNwvuJh/wnmbnVe55Ux6SzzU
rhvUO5GHoJGJygOMJxNdWti2Iq3URbA70YdUkKpguE7pAhcp95G29aPYiPROo8Bj
c9GHGe8IvBqTuGIHGVrIrYBxFNK6jlt66yqx2TIF5O8exX2vqG0rQ/0I8pqJDSJ5
ZfMXvK7xMv/PKns8pvwuqeQgz/aGqsVgWGG3ELuSWrZq9n8ZXE51tw==
=U1fc
-----END PGP SIGNATURE-----

--=-Zxnr3+GfbKy0bRk5COVu--

