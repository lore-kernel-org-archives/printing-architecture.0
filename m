Return-Path: <twaugh@redhat.com>
Message-ID: <1384339124.2286.3.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Wed, 13 Nov 2013 10:38:44 +0000
In-Reply-To: <5282AA4D.9010201@gmail.com>
References: <51BA5B58.3080208@gmail.com> <5270DD07.4080601@gmail.com>
	<B68BB93E-6180-44CE-BEDA-3A499C72D823@apple.com>
	<5282AA4D.9010201@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-qAKhSWl0xepR/kCTslwB"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Concept for PPD-less CUPS-spooled
 printing on Bonjour-discovered network printers
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, John Layt <john@layt.net>, Marek Kasik <mkasik@redhat.com>


--=-qAKhSWl0xepR/kCTslwB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2013-11-12 at 23:23 +0100, Till Kamppeter wrote:
> Another question is whether cupsEnumDests() can run in parallel with
> other, independent services, in my case Tim Waugh's backward
> compatibility CUPS browsing/broadcasting.

It isn't meant to. The BrowsePoll and Browsing(send) support is for
legacy sites, and Browsing(recv) is a stop-gap until all the dialogs use
cupsEnumDests() or the equivalent. For GTK+, it uses its own
implementation (as cupsEnumDests is blocking -- Mike, please stop
writing blocking interfaces ;-) ). For Qt, I've written a patch to use
cupsEnumDests():
https://bugzilla.redhat.com/show_bug.cgi?id=3D980952

Tim.
*/


--=-qAKhSWl0xepR/kCTslwB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUoNWtHlVEo2joavTAQJTGwgAk/2KARwlOb7I+8J9TR+mwJcsfr8DXG18
WIbhMCkuto8VL2xH+H8EtnD33DF1S9vZu9qhPZFhiw9GNiM72H01vmGho7spQfEX
OQ82Wv4/bbsJ/9vk+2V2YGteHMby6JCbuccpwzoGzhmHj7Mj0/w8aWGwISsyzCg4
zOrJFMphDJbA6hFz+T+wjBhez5pOYmKDnWX0IjLDhbRyYokdHzmj+oHTqfNZ5V3C
pAJCZGRtubwuxlLoE56OQ5XSBDUNkIkoUIEy7oR3Rvdrq06PdAn0aSikfb2kPggH
As17ERsO4kJ8ttWQgQp9/0ZZRiNpKUtBPZ2Sxdi6mPRYjUb6vHuitQ==
=P5cn
-----END PGP SIGNATURE-----

--=-qAKhSWl0xepR/kCTslwB--

