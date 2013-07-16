Return-Path: <twaugh@redhat.com>
Message-ID: <1373985228.4007.4.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Tue, 16 Jul 2013 15:33:48 +0100
In-Reply-To: <0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
References: <51DC8343.4020104@gmail.com>
	<8CA7D32C-A551-482E-9F26-9C1909D74736@apple.com>
	<843B55ED-9D7F-4ECD-B50B-272848E9649B@apple.com>
	<51DD7DB2.4070808@gmail.com>
	<FF2054C7-A4B4-4709-8267-D6D202DC0BCE@apple.com>
	<1373532534.14725.3.camel@rubik>
	<0B81606D-48D0-451E-9575-C5ECF92704D0@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-UI6bPeVttcNJ9HkOpv6O"
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


--=-UI6bPeVttcNJ9HkOpv6O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2013-07-11 at 09:11 -0400, Michael Sweet wrote:
> Unfortunately, I was unable to coerce GIT-SVN into pulling from a
> single repository. The CUPS SVN repository has been split since 2002
> (easysw.com and apple.com), and so what I ended up doing is pulling
> all of the snapshots and releases from easysw.com and the commits from
> apple.com since late April/early May.

I haven't tried that. I would have probably done two git-svn clones, one
for each SVN repository, then tried to merge the newer into the older...
but the merge point would have to be *exactly* the same and I guess
that's where you had problems with it.

Tim.
*/


--=-UI6bPeVttcNJ9HkOpv6O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUeVZzXlVEo2joavTAQIbVgf/TSomabdZtBebZAAyG+HyWulrp0w7G18E
iSUqwZBYj0hugzvqX8Cb9bs/BuDGi87rJdfRHwuPX0FGNEfjQD4rzUzJzlcPNQW2
G7agZPUlpbQkvhyholbw+BnBLL0dprKR+IrvpSjqF6HcYHI8l7n4C1tISquGj4hV
idpf5ai1yIznh9/ZI/mZI8iJkY5gobo3GLzMM40cDWE5/4UXWwa5oZe4MbIjpj4g
HFFDdl1ITUl50SbaXC5lpUBP0/j3J+9MwEMkuRLNlU/bn70cffVyS+pE4X9cAFKN
6dupnNvZjHrmWrS8zEWzHm8nY2KqkEiZhOzaLxL2wYgilxWQIFri0w==
=PwbW
-----END PGP SIGNATURE-----

--=-UI6bPeVttcNJ9HkOpv6O--

