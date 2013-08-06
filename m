Return-Path: <twaugh@redhat.com>
Message-ID: <1375791638.6320.8.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Tue, 06 Aug 2013 13:20:38 +0100
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-lUc61jHF4H41sQpaWJCk"
Mime-Version: 1.0
Subject: [Printing-architecture] Handling multiple files of varying formats
	in CUPS
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>


--=-lUc61jHF4H41sQpaWJCk
Content-Type: multipart/mixed; boundary="=-nl4dn6NCQ4ry0pxUnoEK"


--=-nl4dn6NCQ4ry0pxUnoEK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Multiple files handling seems a little broken in CUPS 1.6.3 when more
than one format is involved.

The scenario I'm looking at is this sort of thing:

lp -dtheprinter postscript.ps text.txt

(any two supported formats will show the issue)

where theprinter is a remote IPP queue. I'm testing with remote CUPS
queues.

What happens is that the Send-Document request fails altogether:

D [06/Aug/2013:11:13:39 +0100] Send-Document client-error-bad-request:
Missing last-document attribute in request.
E [06/Aug/2013:11:13:39 +0100] Returning IPP client-error-bad-request
for Send-Document (ipp://192.168.122.1:631/printers/DESKJET-990C) from
192.168.122.243

This is because the client, the ipp backend, only sets the last-document
attribute for the last file -- but the scheduler requires it for each
Send-Document request.

Attached is a patch to fix that.

However, even with that patch there is another problem. The files are
auto-typed correctly but the ipp backend sends:

Create-Document document-format=3Dapplication/postscript
Send-Document document-format=3Dapplication/postscript
Send-Document document-format=3Dapplication/postscript (WRONG!)

In other words, CUPS sets the document-format attribute of every file in
a multi-file job to the format it detected for the first file.

I don't think the ipp backend has access to the auto-typed formats for
subsequent files (just the CONTENT_TYPE variable, which is set to that
of the first file).

One possible solution is to simply use application/octet-stream and let
the remote queue do its own auto-typing. I'm not sure what possible
downsides this might have.

How should this be handled?

Thanks,
Tim.
*/


--=-nl4dn6NCQ4ry0pxUnoEK
Content-Disposition: attachment; filename="cups-ipp-multifile.patch"
Content-Type: text/x-patch; name="cups-ipp-multifile.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtdXAgY3Vwcy0xLjYuMy9iYWNrZW5kL2lwcC5jLmlwcC1tdWx0aWZpbGUgY3Vwcy0xLjYu
My9iYWNrZW5kL2lwcC5jDQotLS0gY3Vwcy0xLjYuMy9iYWNrZW5kL2lwcC5jLmlwcC1tdWx0aWZp
bGUJMjAxMy0wOC0wNiAxMDo0MDoyOC4wODExNDU1MjUgKzAxMDANCisrKyBjdXBzLTEuNi4zL2Jh
Y2tlbmQvaXBwLmMJMjAxMy0wOC0wNiAxMTo1NTowMS4yMzc3Mzk0MzEgKzAxMDANCkBAIC0xNjgy
LDggKzE2ODIsOCBAQCBtYWluKGludCAgYXJnYywJCQkJLyogSSAtIE51bWJlciBvZiBjb21tDQog
CSAgaXBwQWRkU3RyaW5nKHJlcXVlc3QsIElQUF9UQUdfT1BFUkFUSU9OLCBJUFBfVEFHX05BTUUs
DQogICAgICAgICAgICAgICAgICAgICAgICAicmVxdWVzdGluZy11c2VyLW5hbWUiLCBOVUxMLCBh
cmd2WzJdKTsNCiANCi0gICAgICAgIGlmICgoaSArIDEpID49IG51bV9maWxlcykNCi0JICBpcHBB
ZGRCb29sZWFuKHJlcXVlc3QsIElQUF9UQUdfT1BFUkFUSU9OLCAibGFzdC1kb2N1bWVudCIsIDEp
Ow0KKwlpcHBBZGRCb29sZWFuKHJlcXVlc3QsIElQUF9UQUdfT1BFUkFUSU9OLCAibGFzdC1kb2N1
bWVudCIsDQorICAgICAgICAJICAgICAgKGkgKyAxKSA+PSBudW1fZmlsZXMpOw0KIA0KIAlpZiAo
ZG9jdW1lbnRfZm9ybWF0KQ0KIAkgIGlwcEFkZFN0cmluZyhyZXF1ZXN0LCBJUFBfVEFHX09QRVJB
VElPTiwgSVBQX1RBR19NSU1FVFlQRSwNCg==


--=-nl4dn6NCQ4ry0pxUnoEK--

--=-lUc61jHF4H41sQpaWJCk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iQEVAwUAUgDqFnlVEo2joavTAQIJ6gf/U+qFQ2092PWHZmtSNvwjPeH2d5OJ/IE5
H1mWi8mpQPrPkIDSVTtpa958vxowooEsVOhWgVZrneaMboJmGYuJtfJ2o2aKzjGy
IHxsWexjxjI+00F21vVGupwkOaRD9RPvzLjbA+OTxrmLzklcQuPIr0S8a+/4g4Zy
HavoxqsBNi3klRfyr2FXDnr2WTMQTTgcYf2aEXGgp88/T14QaCFXsb5PkXJHz+Yi
QyGwCFwKpUn1fRJj/c8yBFvl0N53RL0qAzIerbH6TGopvJ0CTTZi3IsKiGqtgNk8
uqHYj9skV07h7KYW+skdkGr7r5mE8pLm9XpFDYfpxWGOLt3dMSBWEw==
=dCDX
-----END PGP SIGNATURE-----

--=-lUc61jHF4H41sQpaWJCk--

