Return-Path: <twaugh@redhat.com>
Message-ID: <1387214818.12274.33.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 16 Dec 2013 17:26:58 +0000
In-Reply-To: <52AF35A2.6060804@gmail.com>
References: <1387213857.12274.26.camel@rubik> <52AF35A2.6060804@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-KF2NQ8VcI9jg6HEm3QQj"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Useful utility: cups-filter-check
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--=-KF2NQ8VcI9jg6HEm3QQj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2013-12-16 at 18:17 +0100, Till Kamppeter wrote:
> Should we perhaps make this part of cups-filters?

Yes, sure -- or Michael Sweet's suggestion of enhancing cupsfilter would
also be fine. It's quite nice to be able to loop over all of the
configured MIME types though. I guess it can be done in a shell script
(reading *.types)... it just might not be very pretty:

grep '^[^[:space:]#]' /usr/share/cups/mime/mime.types | (while read t;
do set $t; echo $1; done) | sort

Incidentally, while playing around with it I noticed the only route from
application/vnd.adobe-reader-postscript -> application/vnd.cups-pdf is
via image/tiff. Is that intentional? I expect any printer capable of
handling PDF can also handle PostScript, and that path works fine at
less cost.

Tim.
*/


--=-KF2NQ8VcI9jg6HEm3QQj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUq834nlVEo2joavTAQLdKQgAnjnK5OBzEEHWPWALyNzQ12YDtzXdq64y
lzBLoR0GXd/DpatCpTnW8yx3BOAYDtjkstGFd1o71cy3wCoCUWIpIR7d3X2Q1sAp
Recbs99RgajlnQNHZNTUGI3OGUG9XigHrH2OuNajIDsATWMY0p0xinzd52D6JL4I
PP5ybUrbiLPkuV0wU/n72gyiRkh3cF5O3yrHe2W1RcexHhAYpF9ydkNcUFH2mksZ
di5wLqSodq2VuQs3Gu6lRrtYnJUhLW1cJvY6jZsg3MdwiG3LJHpkpBdQfGQyWQM9
h5vWg4OtTv9OQ3PyLegwy6qpfjGasMR++Uepz49j11bdmlqyMCL1tg==
=/mhm
-----END PGP SIGNATURE-----

--=-KF2NQ8VcI9jg6HEm3QQj--

