Return-Path: <twaugh@redhat.com>
Message-ID: <1371123741.31435.2.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Thu, 13 Jun 2013 12:42:21 +0100
In-Reply-To: <51B99888.2040406@gmail.com>
References: <519537F0.8020405@gmail.com>
	<FDC917F9-BB2B-4117-9F4A-D817841E5AE8@apple.com>
	<51B99888.2040406@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-QbrmcPCRZCF1sV8r4//A"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] Some suggestions for the DNS-SD
 (Bonjour) printer support in the dialog
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
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Marek Kasik <mkasik@redhat.com>


--=-QbrmcPCRZCF1sV8r4//A
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2013-06-13 at 12:01 +0200, Till Kamppeter wrote:
> This would mean to resemble large parts of CUPS (spooling, filtering,
> but not networking) for a per-user/per-app printing system

My idea (printservice) for this was:
1. Avoid spooling altogether, just send job direct to network queue
(this is often another spooler in any case)
2. Avoid most filtering by requiring jobs to be application/pdf and
requiring that allowable network queues support application/pdf.

Tim.
*/


--=-QbrmcPCRZCF1sV8r4//A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUbmwHe7Fkar03pQsAQKzLwf9GqP85u3ePsLIPZDY0faGeprmWw5Dg9Eb
xABw/VPnxv5tWjyDeUbB8pOrJM7/Y/HEMSsJxTfGg47Ana4UsRa/zJeHBCkcG/3S
Mga/XF2Toq6VDiIX32YDPIUcuXiQsLks5wmKGVT/+0Oeq7S6JixueZDgD6a7B5X+
IM7TC7/kFKvTBqtCKk8bto0cemGzLJQOnWb+R0CKmNZVfYLZ8sHrFQoOloz4giE2
nPoe5nixqqkudO0duJh5T4pBb25rCqrcsZ1RknEgaKmRXD+YolnyETpbr+ZloOGq
oQYtyvmmXh/pK9Q7nMnGU23nmV7eKMBj1WIEOBg57EMNwrdHnIVJVQ==
=HXvU
-----END PGP SIGNATURE-----

--=-QbrmcPCRZCF1sV8r4//A--

