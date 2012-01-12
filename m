Return-Path: <twaugh@redhat.com>
Message-ID: <1326365475.8483.3.camel@worm.elk>
From: Tim Waugh <twaugh@redhat.com>
Date: Thu, 12 Jan 2012 10:51:15 +0000
In-Reply-To: <4F0E23F2.5010608@gmail.com>
References: <4F0E23F2.5010608@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-XcucFB/DMTH4mi2InNE9"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Removal of features in CUPS
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-XcucFB/DMTH4mi2InNE9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Till,

I think that CUPS Browsing is also being removed in 1.6, leaving Avahi
as the sanest of the remaining discovery methods.

The current state of the Avahi support patches is that service
announcement is working in the scheduler, and service discovery is
working in the dnssd backend -- i.e. by manual user intervention.

What is currently missing is automatic service discovery in the
scheduler, so that shared queues can be discovered by CUPS itself as
used to happen with CUPS Browsing.

Tim.
*/


--=-XcucFB/DMTH4mi2InNE9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEVAwUATw67JO7Fkar03pQsAQLrsQf/aoYLusBhmDzp0iGy0nmosasH3j/rpcIb
xZa3eoYj1gd0/1hYwdAjIT00XKVOn9RKzNPjsDJtN6QqEVyQsqaJRq+jCL73/47j
JHY+V9XlQNXTq9daYzPbNLkaLLMR4rtEyj8Hko7upeWKplZUW5xRKoh51AqU3wSj
WvpcpUMfaO2jjikSmlalj+oQYRN+ov+vzNCIRvz15/XtZdSYWiu1dMAsxi+z55sq
fcuO0qeLaUtOiC5r5InMM7YcO0NF4wLAyrJt5PjgwPdywgPei9e5wCWlAOZT/G8R
lPAcD6YoKwuKTYEQjWHNW6wXlF0XnpMyST7ZnyLtxcxe0o7xrdw0VA==
=366Z
-----END PGP SIGNATURE-----

--=-XcucFB/DMTH4mi2InNE9--

