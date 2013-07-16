Return-Path: <twaugh@redhat.com>
Message-ID: <1373992044.4007.37.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Tue, 16 Jul 2013 17:27:24 +0100
In-Reply-To: <3FEAB426-CCAA-4897-BDB2-66DBAEDF60E6@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
	<0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
	<1373985228.4007.4.camel@rubik>
	<3FEAB426-CCAA-4897-BDB2-66DBAEDF60E6@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-+osup08I+miPGfoih3M2"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Options in /etc/cups/printers.conf
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>, Till Kamppeter <till.kamppeter@gmail.com>


--=-+osup08I+miPGfoih3M2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2013-07-16 at 10:48 -0400, Michael Sweet wrote:
> To make matters worse, it doesn't look like GIT-SVN is properly
> mirroring things with the current GIT repository and I think I need to
> redo the whole thing again to make GIT happy...

I've found that '--stdlayout' is the magic option to make things work
right, every time I've used git-svn to date. *shrug*

Tim.
*/


--=-+osup08I+miPGfoih3M2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUeV0bHlVEo2joavTAQIJqQf/QZpBHUWpB7PGV9HZUJ5oq1l7twvaRykc
uV9d5HHQYoe+lAxjZjwp15YIXdWHJ8F+XwNCK9AUZbiKsZfwH4GUQtfP3Cf13j98
RdOKjRkis2B+aPp96KhhsSQb0C9hwH7fIm5uxQeMjRPggM39iTllsfKu2QTp0LT2
HCHc8sXgloz9sN9S2yVYjBo+crSalThs7m8QQmJeFIbiDdObrDzNqM0KLk4DQEmh
iS/JOHxQkd27wh9tK+2eAt84eraH7glP0ycsMSt1v4M+yLr7trM4Pf7bueyq/ze3
fSDDP83p574SqT13C34UtMUZzffTTYrkhwJmMmIa8Cc7vxTMXsIBgA==
=ICVH
-----END PGP SIGNATURE-----

--=-+osup08I+miPGfoih3M2--

