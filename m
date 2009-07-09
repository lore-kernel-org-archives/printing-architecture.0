From: Alexander Wauck <alex.wauck@gmail.com>
Date: Thu, 9 Jul 2009 08:56:52 -0500
References: <4A5364E7.9000904@gmail.com>
	<ED4094DE5E8ACD4BBDACA6AD398E608F418827@EEAEX03.us.epson.net>
	<ED4094DE5E8ACD4BBDACA6AD398E608F41885E@EEAEX03.us.epson.net>
In-Reply-To: <ED4094DE5E8ACD4BBDACA6AD398E608F41885E@EEAEX03.us.epson.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3075781.NjPVe0ONxz";
	protocol="application/pgp-signature"; micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Message-Id: <200907090856.57775.alex.wauck@gmail.com>
Subject: Re: [Printing-architecture] new cpd specs
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org
Cc: "Petrie, Glen" <glen.petrie@eitc.epson.com>, Till Kamppeter <till.kamppeter@gmail.com>

--nextPart3075781.NjPVe0ONxz
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> I thought of another useful button for "pages to print" (Should be
> called "Content to Print") is printing the Clipboard.  Since this is the
> CPD, the clipboard is something app have in common.

Do Qt/GTK+ applications have their own clipboards (I'm thinking of OpenOffi=
ce in=20
particular), or do they use a common clipboard?  I don't think that=20
functionality belongs in the dialog itself unless applications have their o=
wn=20
clipboards.  If the common clipboard is all there is, then a clipboard mana=
ger=20
application (like Klipper) should provide this functionality.

Alex

=2D-=20
Public keys:
http://dragonfly.mediaservices.gac.edu/alex/keys/

()  ascii ribbon campaign - against html e-mail=20
/\  www.asciiribbon.org   - against proprietary attachments

http://www.gnu.org/philosophy/no-word-attachments.html

--nextPart3075781.NjPVe0ONxz
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iQIcBAABAgAGBQJKVfckAAoJEDuw+vejsw6Umn0P/ijTK/OB4pibZqY+go7HvjMa
/OV5sENcVTcUOjtYbUi/yWDYb3TBsw8z/gk7Uz1wRiweeXTbdfEeFQ9zMXA2Af4t
VLEBYyo7S0HJfoktM2kvkGD3q1WoAFFqXYvnyyk6kFwq8KjexvVpno7ubMQtAi0W
KtgIVoEeIVaC8MiyUKTfYxBsaoje5Wr0goKxMcaWyJUa7+VHKgOHskHn+/bAyBr7
z6uj/U9y7vyW87Ic5bWQb6pgawofIAKqSTOuq+eiP4nPoZuBTRwOVJFF4qW6FaXz
qG4bq0lDIBjG5q2tIDYINabZF8jUdBXZpoa6EvhbnL8INRbj6QmOWFnmhUcETvty
fTeC37L8Yx9HdZx/XY2AmClFmhOXcN95LUxfz2DzDc8eLWz2freZ49ZuxemHBkFL
H4aVtpBYg/x6RfEfwxNhjNE9Qu23IxMKff3wKBQm1CVIfxTpSEbIikAkhH3XO85S
bsPv+UIYR2fjW4NIMc0YUSl6gFe0xiAwob45JLJlU9yYtBUQg1hXN8DxkWutjNDI
7MdgYgdHI6JMs1XAdOt9RVLSYsSyyk94woZ7wAKZs09QfQbFXrycWGpHDzWe/3fN
2O3/qoDfGBVuvJQD3rDulVrsfaRQNsqxqTnKBkMXTzdjUKz59itNyCmzo1mTfjL4
Owd3BoRhZmp4Oc/lKEVQ
=BkTP
-----END PGP SIGNATURE-----

--nextPart3075781.NjPVe0ONxz--
