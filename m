Return-Path: <twaugh@redhat.com>
Message-ID: <1330949656.9812.8.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Mon, 05 Mar 2012 12:14:16 +0000
In-Reply-To: <20120303.113354.329374074.sho@bbr.jp>
References: <1330687322.32498.3.camel@rubik>
	<20120302.210815.55716582.sho@bbr.jp> <1330690418.32498.29.camel@rubik>
	<20120303.113354.329374074.sho@bbr.jp>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-d7H9jcwAYNaCG+l4bfFI"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] pdftopdf
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
Cc: printing-architecture@lists.linux-foundation.org, till.kamppeter@gmail.com


--=-d7H9jcwAYNaCG+l4bfFI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2012-03-03 at 11:33 +0900, Koji Otani wrote:
> Sorry, I'm not good at English.

Your English is fine. :-)

> It seemes that poppler provides parsing and rendering PDF.
> pdftopdf needs modifying PDF such as number-up, duplicating pages ,
> inserting empty pages, scaling pages, embedding fonts and producing PDF.
> When I began to develop poppler, I considered about various things
> such as limited time, cost, etc. And I decided that I developed pdftopdf
> outside of poppler. (Developing pdftopdf was funded by a Japanese governm=
ental=20
> organization)
> It may be ok for poppler to include these features as you say.
> I would appreciate it if you put these features into poppler.

Thanks for explaining.  If poppler doesn't currently expose enough to
allow pdftopdf to do what it needs to then some work is needed to change
that, in order to avoid duplication of bugs.

Who knows the pdftopdf/poppler code well enough to do this?

Do we know anyone on the poppler development team who could guide us as
to what sort of changes they will accept?

Tim.
*/


--=-d7H9jcwAYNaCG+l4bfFI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEVAwUAT1SuGO7Fkar03pQsAQK5GQgAredjpqfuJbMi02B0VRshFJEBki/Kf1Ja
pk/ug8YAbo7x4V2l1Qvg5SYtbkaYsbSWgcqf0QPH+g/3MWKfh9YqI2cIoSWAuNAm
wSu+CHmkOsORlUCGjjTKCo0eAUq2zIu1CDnVxBHlt2e+f3aGu2BBele7Rm6jcQy/
33mouHLO7rt26+GbD2bwqtaS8IgqI+kVSRlzdskXbkGmvoCV7/HfcdrLvGh3+udU
EH3enwi32+M407aU3PfMB4pyDBzWrDrHnkPDONuVKIWCXPAbbwKt7lTPJ+o4oZCO
i6BUK23QpTrtuBVowb5XmATTJx1ebGFU76ySn07QPmrwoPTHerCfng==
=71X4
-----END PGP SIGNATURE-----

--=-d7H9jcwAYNaCG+l4bfFI--

