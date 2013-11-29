Return-Path: <twaugh@redhat.com>
Message-ID: <1385726905.2659.6.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 29 Nov 2013 12:08:25 +0000
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-I2x+ecFDAd1CHOs+HmCG"
Mime-Version: 1.0
Subject: [Printing-architecture] [patch] CUPS 1.7.0: fix corrupted output
	for USB printers
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--=-I2x+ecFDAd1CHOs+HmCG
Content-Type: multipart/mixed; boundary="=-lOqyq0maV5pvAw/j4NPA"


--=-lOqyq0maV5pvAw/j4NPA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

When using the usb backend, if a usb-1 printer connected to a usb-2 hub
runs out of paper during the job the print output will be corrupted.
https://bugzilla.redhat.com/show_bug.cgi?id=3D1026914

This is due to using a 60 second timeout for the libusb_bulk_transfer()
call. Timeout handling and retries are not reliable in every case, as
described here:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1035863

Quoting from that report:
=3D=3D>
So TL;DR: this a known and unfixable problem, and the solution is to
simply not cancel transfers (by setting a timeout) and then decide you
want to finish the transfer after all. Either decide you want to really
cancel the transfer, or just wait for it to finish normally.
<=3D=3D

Patch attached to change the timeout to 0 to wait indefinitely.

Tim.
*/


--=-lOqyq0maV5pvAw/j4NPA
Content-Disposition: attachment; filename="cups-usb-timeout.patch"
Content-Type: text/x-patch; name="cups-usb-timeout.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtdXAgY3Vwcy0xLjcuMC9iYWNrZW5kL3VzYi1saWJ1c2IuYy51c2ItdGltZW91dCBjdXBz
LTEuNy4wL2JhY2tlbmQvdXNiLWxpYnVzYi5jDQotLS0gY3Vwcy0xLjcuMC9iYWNrZW5kL3VzYi1s
aWJ1c2IuYy51c2ItdGltZW91dAkyMDEzLTA3LTE3IDE2OjUxOjQzLjAwMDAwMDAwMCArMDEwMA0K
KysrIGN1cHMtMS43LjAvYmFja2VuZC91c2ItbGlidXNiLmMJMjAxMy0xMS0yOCAxNjo0NDowMy43
ODUxMjQwMTUgKzAwMDANCkBAIC00OTYsNyArNDk2LDcgQEAgcHJpbnRfZGV2aWNlKGNvbnN0IGNo
YXIgKnVyaSwJCS8qIEkgLSBEZQ0KIAlpb3N0YXR1cyA9IGxpYnVzYl9idWxrX3RyYW5zZmVyKGcu
cHJpbnRlci0+aGFuZGxlLA0KIAkJCQkJZy5wcmludGVyLT53cml0ZV9lbmRwLA0KIAkJCQkJcHJp
bnRfYnVmZmVyLCBnLnByaW50X2J5dGVzLA0KLQkJCQkJJmJ5dGVzLCA2MDAwMCk7DQorCQkJCQkm
Ynl0ZXMsIDApOw0KICAgICAgICAvKg0KIAkqIElnbm9yZSB0aW1lb3V0IGVycm9ycywgYnV0IHJl
dGFpbiB0aGUgbnVtYmVyIG9mIGJ5dGVzIHdyaXR0ZW4gdG8NCiAJKiBhdm9pZCBzZW5kaW5nIGR1
cGxpY2F0ZSBkYXRhLi4uDQpAQCAtNTE5LDcgKzUxOSw3IEBAIHByaW50X2RldmljZShjb25zdCBj
aGFyICp1cmksCQkvKiBJIC0gRGUNCiAJICBpb3N0YXR1cyA9IGxpYnVzYl9idWxrX3RyYW5zZmVy
KGcucHJpbnRlci0+aGFuZGxlLA0KIAkJCQkJICBnLnByaW50ZXItPndyaXRlX2VuZHAsDQogCQkJ
CQkgIHByaW50X2J1ZmZlciwgZy5wcmludF9ieXRlcywNCi0JCQkJCSAgJmJ5dGVzLCA2MDAwMCk7
DQorCQkJCQkgICZieXRlcywgMCk7DQogCX0NCiANCiAgICAgICAgLyoNCkBAIC01MzQsNyArNTM0
LDcgQEAgcHJpbnRfZGV2aWNlKGNvbnN0IGNoYXIgKnVyaSwJCS8qIEkgLSBEZQ0KIAkgIGlvc3Rh
dHVzID0gbGlidXNiX2J1bGtfdHJhbnNmZXIoZy5wcmludGVyLT5oYW5kbGUsDQogCQkJCQkgIGcu
cHJpbnRlci0+d3JpdGVfZW5kcCwNCiAJCQkJCSAgcHJpbnRfYnVmZmVyLCBnLnByaW50X2J5dGVz
LA0KLQkJCQkJICAmYnl0ZXMsIDYwMDAwKTsNCisJCQkJCSAgJmJ5dGVzLCAwKTsNCiAgICAgICAg
IH0NCiANCiAJaWYgKGlvc3RhdHVzKQ0K


--=-lOqyq0maV5pvAw/j4NPA--

--=-I2x+ecFDAd1CHOs+HmCG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUpiDuXlVEo2joavTAQIlWQf/ZIp2aDqr8eDu+0Qv3zhaRDL9HJSeKpJk
bvJ2TqBa+d9UQlP+ymVmN1lIrvp1E1fYgv97SHPnhkntAJPiJKQw+/g94GqMifVy
UkgUAdBtZWQ798PUAKIkZNzHaItAWPEucm9JCG/q72DK312pGDKI2geZ+r/vIi0l
9HMAmSF+HrKm0halRhdEUlNvWqTSocKmQZnSEuHQuKs2ojaVsM4CI8U/gAMnsOOC
fA1+HzcaSew0tT6j0Y7rFBKLscJ7kMg+6SjdcndiAnyLoZKwwMfpUZWRVNoZjs0P
KbL5VekuiKG+Ev4Kwkm5HYLZGpANV10lQpEyclXEKPjED6JxAOx1/Q==
=kpBw
-----END PGP SIGNATURE-----

--=-I2x+ecFDAd1CHOs+HmCG--

