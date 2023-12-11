Return-Path: <pizza@hurricane.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4251960F80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1F7160740
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 3BBEdwoU4180553
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1702305598;
 bh=JQkbwZ7xR8gLoge3dsEmG3ikILy2SdUeTrq88BAQ9cI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nEPAhS5h3qlzUBOBZHrOCaaM58fQrmLX6KrixuonIzmAaifiSHQe6Rc2QXnJYDqFT
 K1OiKdX+fessnWROI8G0akJYn0xYA3XGmSZWZeAQWnFcDOZVwepFoLBqzMUkii/1RN
 TAdjXq7/tiloUeniWlnWLTEKHuhPNr5Cz1TSDgO0=
Date: Mon, 11 Dec 2023 09:39:58 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <ZXcfPm-zUYQIqhM0@shaftnet.org>
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
 <ZXYwgQqZayDJsT9-@shaftnet.org>
 <9B9A7C8D-5C36-465A-890A-44CF6AF68F6B@msweet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="wKR4bVwlfOq7epMY"
Content-Disposition: inline
In-Reply-To: <9B9A7C8D-5C36-465A-890A-44CF6AF68F6B@msweet.org>
Subject: Re: [Printing-architecture] RFC: Pantum M7300FDW and similar
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--wKR4bVwlfOq7epMY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2023 at 05:38:04PM -0500, Michael Sweet wrote:
> What you might be running into is that AirPrint from iOS/iPadOS often=20
> exercises a different part of the IPP stack than CUPS 1.x/2.x.

Heh, that reminds me of the quip "The United States and England are two=20
countries sparated by a common language".

(But whatever the cause the net result is the same...)

> First, we really don't know whether the customer has the most recent=20
> version of the firmware.  Second, we don't know whether the printer=20
> works with any of those other OS's.  Finally, this particular issue=20
> might not manifest as a "problem" (one that prevents printing) unless=20
> you tried to print something that doesn't match the media in the=20
> printer...

Pantum doesn't list any firmware updates for public download but that=20
doesn't mean anything if the printers expect to have its own always-on=20
connection to the internet.

Given that all of "those other OS's" come are provided a traditional=20
native driver, and that Pantum emphasizes use of their own app for the=20
mobile platforms, I think it's safe to say that yes, the printer is=20
fully functional _unless_ you're using a spec-compliant driverless=20
IPP-based path.

(Okay, min-rant time)

Of my printer fleet, only a handful support driverless IPP. None of=20
them reliably work [1] with Linux/CUPS, iOS, or MacOS.

I have a Brother HL-L2370DW and several different Canon Selpy models. =20
The latter have received firmware updates that fixed some of the IPP=20
problems, but Canon still heavily pushes their own app that _doesn't_=20
use IPP. The fully-up-to-date Brother works well with Linux/CUPS=20
(driverless) clients, But MacOS/iOS clients remain a crapshoot. =20
Ironically, I found that [re-]exporting a traditional CUPS queue that talks=
=20
to the printer via PCL6-over-JetDirect is the most reliable way to print=20
=66rom iOS clients. (Happy printing, happy wife. Happy wife, happy life!)

The promise/potential of driverless IPP keeps clashing with the=20
experience of dealing with real-world printers/manufacturers, I find=20
this both _incredibly_ frustrating and... par for the course.=20

I guess if I have a point in all of this, it's that printer makers (in=20
the mass market/consumer space, at least) are incentivized to=20
discourage/deemphasize driverless printing, and instead funnel them into=20
using a native driver or printing app, as this lets them datamine their=20
users and provide opportunities to advertise/monetize/upsell/whatever.=20

ANYway.  Back to my usual duct tape and bailing wire.

[1] As in "I can expect something to be waiting on the printer when I=20
    get there"=20

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--wKR4bVwlfOq7epMY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmV3HzsACgkQrGLLO/XV
ulFYcRAAh1tj65irSDrjUNgJbeAAnW3u88EBfTLe4zF19SiHFJ6qwnlzwm0k4G4e
fWmMdrMWW3d+uBAEEiLCoces4Wj0XJVpQULdUqcdrShmwqjDnJU+ZlkBzSeEVuk5
dgZLQiAxz23C7sjB29mDCIv5jUviH/cEkZDlWNnk8Z/u8qz21Bg68ePauin0369H
t7E6q/UjvHnjlhp38pmCNZ6IpfzY6D3WpNfb6jpMMzeIq31M92yEfNH/Oicw6otx
1xaA0KLRc70qt1nabUEWmhqMbYBrx0JaWQ7AhQOsziFxPRMcVhbP4zo6NFK7mkC7
hp5vzckPH0y2phRVaZUt8GPfbo38mlJQhS2lcGRZhyKSqx7HukK5rOpdjdLqcMCM
ikRiGlXG4yGcXQoufykMtBIcZ7luN3ux8P0gZDfvzfyVbR0wZkdVQreF75ATWy66
9Yz3DVQ6PbyibH0bdOdP9Sll2XuP6KBVHSfowq5Y2wGT+0WvfyLvYAmyvet7TbA/
NfLusn/lbRo37dumyWwQvs6oZAZW1Nj8kLt5GIHAo/VDwFb1b0573Esc3I0UU/E+
oGnv+yN2URNHHWUsV8xpCYjVulOMfGXqlFa0sguHwGULtfkNaPJloOH4Whe/y8hj
OFbf6QNXGdyrwHP+N2MSADylRQ6QY3PnpRPDAlJZQw5Mxj/dmGM=
=zIBA
-----END PGP SIGNATURE-----

--wKR4bVwlfOq7epMY--
