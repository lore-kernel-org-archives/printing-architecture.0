Return-Path: <twaugh@redhat.com>
Message-ID: <1413446961.20196.0.camel@redhat.com>
From: Tim Waugh <twaugh@redhat.com>
Date: Thu, 16 Oct 2014 09:09:21 +0100
In-Reply-To: <02668022-214A-4993-B2BE-C3C25730BAFD@apple.com>
References: <02668022-214A-4993-B2BE-C3C25730BAFD@apple.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-oK5FHZUCFrK21uI6r4C8"
Mime-Version: 1.0
Subject: Re: [Printing-architecture] CUPS systemd issues
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
Cc: printing-architecture@lists.linux-foundation.org


--=-oK5FHZUCFrK21uI6r4C8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2014-10-15 at 15:27 -0400, Michael Sweet wrote:
> 1. Remove the localhost listeners from the org.cups.cupsd.socket file
> and just run-on-demand based on local domain socket IO. When the web
> interface is enabled we can disable the on-demand mode, just as we do
> when printer sharing is enabled or when there are pending jobs.

I think this is the best approach.

Tim.
*/


--=-oK5FHZUCFrK21uI6r4C8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEVAwUAVD99MXlVEo2joavTAQLYYggAz1qtXpFo+28naxLQtO2GqabkwJoCca4h
9S898Tc+73YMlHg427UYe95dIo6TsxlFB1Jq31wg5rrFKjvNqPR+exZY6gSjpnKr
BQObq+4vK3BFHubn94NEM3BBZnZdrZhxaZnB/547G1TiPW2jp9WvrB6eltDO7Sjv
iFjCcEAHhKZd1nTzFjwUbA94tgWoIxzLqKPQCa6YAUR4yOXzSys2+uf/Mma/TP4Z
5c3mdDCYdR6RtRCjB9KDbtOxL1Do435fwYOLMliJv3p1QcIa2cX1TZm8ESwrbVDu
jjQbUZTZG16Ybh6kue2o7xIVuocEtBgbrKx8AXLitoVJT3TAYzCjsA==
=W7UM
-----END PGP SIGNATURE-----

--=-oK5FHZUCFrK21uI6r4C8--

