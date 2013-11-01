Return-Path: <twaugh@redhat.com>
Message-ID: <1383325362.2522.10.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 01 Nov 2013 17:02:42 +0000
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-beDhhx8RVCqWVLlDe0Uv"
Mime-Version: 1.0
Subject: [Printing-architecture] [patch] cups-1.7.0: stringpool corruption
	fix
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


--=-beDhhx8RVCqWVLlDe0Uv
Content-Type: multipart/mixed; boundary="=-/LeyDQonZQzNbUSy+mNN"


--=-/LeyDQonZQzNbUSy+mNN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is a long-standing stringpool corruption issue in printers.c.

Attribute values are stored in the global stringpool (implemented in
cups/string.c), which is reference-counted storage for strings. Strings
are stored in a sorted, unique array (cups_array_t, implemented in
cups/array.c).

If the array is found to be unsorted, or a duplicate is found, the
underlying cups_array_t object switches into "non-unique" mode and
stores new strings by adding to the pool rather than incrementing the
reference count for an existing string (see the cups_array_add()
function).

The accessor functions for the stringpool return "char*" types, but
these are strings which must not be modified -- doing so will trigger
the behaviour described above.

In scheduler/printers.c, there are a couple of places which modify
attribute values in-place. Attached is a patch to fix them.

Tim.
*/


--=-/LeyDQonZQzNbUSy+mNN
Content-Disposition: attachment; filename="cups-stringpool-corruption.patch"
Content-Type: text/x-patch; name="cups-stringpool-corruption.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtdXAgY3Vwcy0xLjcuMC9zY2hlZHVsZXIvcHJpbnRlcnMuYy5zdHJpbmdwb29sLWNvcnJ1
cHRpb24gY3Vwcy0xLjcuMC9zY2hlZHVsZXIvcHJpbnRlcnMuYw0KLS0tIGN1cHMtMS43LjAvc2No
ZWR1bGVyL3ByaW50ZXJzLmMuc3RyaW5ncG9vbC1jb3JydXB0aW9uCTIwMTMtMDUtMjkgMTI6NTE6
MzQuMDAwMDAwMDAwICswMTAwDQorKysgY3Vwcy0xLjcuMC9zY2hlZHVsZXIvcHJpbnRlcnMuYwky
MDEzLTExLTAxIDE3OjAxOjA1LjUzNDcxOTgzNyArMDAwMA0KQEAgLTE4NzEsNiArMTg3MSw3IEBA
IGN1cHNkU2V0UHJpbnRlckF0dHIoDQogICBpcHBfYXR0cmlidXRlX3QJKmF0dHI7CQkvKiBBdHRy
aWJ1dGUgKi8NCiAgIGludAkJCWksCQkvKiBMb29waW5nIHZhciAqLw0KIAkJCWNvdW50OwkJLyog
TnVtYmVyIG9mIHZhbHVlcyAqLw0KKyAgY2hhcgkJCSp2YWx1ZV9kdXA7CS8qIENvcHkgb2YgYXR0
cmlidXRlIHZhbHVlIHN0cmluZyAqLw0KICAgY2hhcgkJCSpwdHIsCQkvKiBQb2ludGVyIGludG8g
dmFsdWUgKi8NCiAJCQkqc3RhcnQsCQkvKiBTdGFydCBvZiB2YWx1ZSAqLw0KIAkJCXF1b3RlOwkJ
LyogUXVvdGUgY2hhcmFjdGVyICovDQpAQCAtMTkzOSwxNiArMTk0MCwyNCBAQCBjdXBzZFNldFBy
aW50ZXJBdHRyKA0KICAgICAgIHJldHVybjsNCiAgICAgfQ0KIA0KLSAgICBmb3IgKGkgPSAwOyBp
IDwgY291bnQ7IGkgKyspDQorICAgIGlmICgodmFsdWVfZHVwID0gc3RyZHVwKHZhbHVlKSkgPT0g
TlVMTCkNCiAgICAgew0KLSAgICAgIGlmICgocHRyID0gc3RyY2hyKHZhbHVlLCAnLCcpKSAhPSBO
VUxMKQ0KKyAgICAgIGN1cHNkTG9nTWVzc2FnZShDVVBTRF9MT0dfRVJST1IsICJVbmFibGUgdG8g
Y29weSBhdHRyaWJ1dGUgdmFsdWUuIik7DQorICAgICAgcmV0dXJuOw0KKyAgICB9DQorDQorICAg
IGZvciAoaSA9IDAsIHN0YXJ0ID0gdmFsdWVfZHVwOyBpIDwgY291bnQ7IGkgKyspDQorICAgIHsN
CisgICAgICBpZiAoKHB0ciA9IHN0cmNocihzdGFydCwgJywnKSkgIT0gTlVMTCkNCiAgICAgICAg
ICpwdHIrKyA9ICdcMCc7DQogDQotICAgICAgYXR0ci0+dmFsdWVzW2ldLmludGVnZXIgPSBzdHJ0
b2wodmFsdWUsIE5VTEwsIDEwKTsNCisgICAgICBhdHRyLT52YWx1ZXNbaV0uaW50ZWdlciA9IHN0
cnRvbChzdGFydCwgTlVMTCwgMTApOw0KIA0KICAgICAgIGlmIChwdHIpDQotICAgICAgICB2YWx1
ZSA9IHB0cjsNCisgICAgICAgIHN0YXJ0ID0gcHRyOw0KICAgICB9DQorDQorICAgIGZyZWUodmFs
dWVfZHVwKTsNCiAgIH0NCiAgIGVsc2UNCiAgIHsNCkBAIC0xOTg5LDcgKzE5OTgsMTMgQEAgY3Vw
c2RTZXRQcmludGVyQXR0cigNCiAgICAgICByZXR1cm47DQogICAgIH0NCiANCi0gICAgZm9yIChp
ID0gMCwgcXVvdGUgPSAnXDAnLCBwdHIgPSB2YWx1ZTsgaSA8IGNvdW50OyBpICsrKQ0KKyAgICBp
ZiAoKHZhbHVlX2R1cCA9IHN0cmR1cCh2YWx1ZSkpID09IE5VTEwpDQorICAgIHsNCisgICAgICBj
dXBzZExvZ01lc3NhZ2UoQ1VQU0RfTE9HX0VSUk9SLCAiVW5hYmxlIHRvIGNvcHkgYXR0cmlidXRl
IHZhbHVlLiIpOw0KKyAgICAgIHJldHVybjsNCisgICAgfQ0KKw0KKyAgICBmb3IgKGkgPSAwLCBx
dW90ZSA9ICdcMCcsIHB0ciA9IHZhbHVlX2R1cDsgaSA8IGNvdW50OyBpICsrKQ0KICAgICB7DQog
ICAgICAgZm9yIChzdGFydCA9IHB0cjsgKnB0cjsgcHRyICsrKQ0KICAgICAgIHsNCkBAIC0yMDE3
LDYgKzIwMzIsOCBAQCBjdXBzZFNldFByaW50ZXJBdHRyKA0KIA0KICAgICAgIGF0dHItPnZhbHVl
c1tpXS5zdHJpbmcudGV4dCA9IF9jdXBzU3RyQWxsb2Moc3RhcnQpOw0KICAgICB9DQorDQorICAg
IGZyZWUodmFsdWVfZHVwKTsNCiAgIH0NCiB9DQogDQo=


--=-/LeyDQonZQzNbUSy+mNN--

--=-beDhhx8RVCqWVLlDe0Uv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUnPesnlVEo2joavTAQLzmggA0J4FXihWWKYLDWZB8Klr4G/OOayWP+g5
FrTpmjBSCxF19pLGLSx2VIODTSghjBnzJmew1OaSioo9j1nrgwEIx/HM8G6oTyLO
T6nyJV6ly+R2utq9vztB/wRmm09xKpIUTUwxzR7+e1BSZi/w9CxHAfuDAXwak1G3
1nH6Pb28KIDJ5sBIkQOoL05xEYpjdYs/JxiBk7UfMI+hIfG3MlryE0NJrKQbWWEk
VfmL3nM18US5ThLSCP2kY12NWobKZ1tSS4XdV2sm6L4zHL49/CGmNZMpx7B87GOo
yxD/dlQMBiy4/vyTo+Kgo9yEiIbPtvbxu4KNen50lWbdyBzEL+0W7Q==
=T4zL
-----END PGP SIGNATURE-----

--=-beDhhx8RVCqWVLlDe0Uv--

