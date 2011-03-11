From: Tim Waugh <twaugh@redhat.com>
In-Reply-To: <4D7A4ABB.7030200@gmail.com>
References: <4D265C61.2000703@gmail.com>
	<F30723B8678F584CB6A4269E911255CB04E6F468@m1a.epkowa.co.jp>
	<20110131104358.GC4406@piware.de> <4D662705.9020803@gmail.com>
	<F30723B8678F584CB6A4269E911255CB05241E44@m1a.epkowa.co.jp>
	<4D67A34D.4020008@gmail.com> <1298669202.5347.0.camel@worm.elk>
	<4D6D5FD5.4010506@gmail.com> <4D6D6D45.3070907@gmail.com>
	<87ei6ndyi8.fsf@avasys.jp> <20110304172254.GF30872@piware.de>
	<87hbbfyat2.fsf@avasys.jp> <87r5aefjf2.fsf@avasys.jp>
	<4D7A4ABB.7030200@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature";
	boundary="=-rjte9IUSTEVi66U9nMzQ"
Date: Fri, 11 Mar 2011 16:59:15 +0000
Message-ID: <1299862755.2770.25.camel@worm.elk>
Mime-Version: 1.0
Subject: Re: [Printing-architecture] [Printing-japan] Ubuntu Natty the first
 distribution which does automatic download of binary printer	driver
 packages
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linux-foundation.org/pipermail/printing-architecture>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linux-foundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Till Kamppeter <till.kamppeter@gmail.com>
Cc: printing-architecture@lists.linux-foundation.org, printing-japan@lists.linux-foundation.org, michael.vogt@ubuntu.com, Martin Pitt <martin.pitt@ubuntu.com>


--=-rjte9IUSTEVi66U9nMzQ
Content-Type: multipart/mixed; boundary="=-X/rUl9Zw9ymHbOcfzMMr"


--=-X/rUl9Zw9ymHbOcfzMMr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2011-03-11 at 17:15 +0100, Till Kamppeter wrote:
> Tim, the patch to fix this (and which I have applied to the Ubuntu=20
> package) is attached./ Please apply it also upstream. Thanks.

Thanks.  Actually some of these are incorrect, so I've applied a patch
that fixes the correct part and have removed the incorrect code.

diff --git a/newprinter.py b/newprinter.py
index 0d58a40..fa113cc 100644
--- a/newprinter.py
+++ b/newprinter.py
@@ -637,6 +637,8 @@ class NewPrinterGUI(GtkGUI):
=20
             if self.dialog_mode =3D=3D "ppd":
                 devid =3D self.device.id
+                if not self.devid:
+                    self.devid =3D devid
=20
             if not devid:
                 devid =3D None

This entire block is stale code I think.  If self.dialog_mode is "ppd",
self.device.id is definitely unset (we only created self.device a few
lines above).

@@ -655,6 +657,8 @@ class NewPrinterGUI(GtkGUI):
                                         include_schemes=3Dschemes,
                                         reply_handler=3Dself.change_ppd_go=
t_devs,
                                         error_handler=3Dself.change_ppd_go=
t_devs)
+                if self.devid:
+                    devid =3D self.devid

No, that's not right.  The reason is that the getDevices() call
immediately above these new lines is asynchronous.  The reason we're
calling getDevices() at all here is precisely in order to get the Device
ID for the device we're changing the PPD of, because we don't already
have it.

Here's the patch that fixes the problem.  Another patch is in master
that removes the stale code.

Tim.
*/


--=-X/rUl9Zw9ymHbOcfzMMr
Content-Disposition: attachment;
	filename="0001-Ensure-all-uses-of-ppdsloader-supply-the-Device-ID.patch"
Content-Transfer-Encoding: base64
Content-Type: text/x-patch;
	name="0001-Ensure-all-uses-of-ppdsloader-supply-the-Device-ID.patch";
	charset="UTF-8"

RnJvbSBiZjU3YzAyNDRkNDM4OTcyZDk4MzI4ZDEzZDA1ODlhMDdlMmM5NWI2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogVGltIFdhdWdoIDx0d2F1Z2hAcmVkaGF0LmNvbT4NCkRhdGU6
IEZyaSwgMTEgTWFyIDIwMTEgMTY6NTM6MDkgKzAwMDANClN1YmplY3Q6IFtQQVRDSF0gRW5zdXJl
IGFsbCB1c2VzIG9mIHBwZHNsb2FkZXIgc3VwcGx5IHRoZSBEZXZpY2UgSUQuDQoNClRoZSAicHJp
bnRlciIgKGkuZS4gTmV3IFByaW50ZXIpIGNhc2UgZGlkIG5vdCBzdXBwbHkgdGhlIERldmljZSBJ
RA0Kb2J0YWluZWQgZnJvbSB0aGUgZGV2aWNlIGxpc3QuICBEaXNjb3ZlcmVkIGJ5IFRpbGwgS2Ft
cHBldGVyLg0KLS0tDQogbmV3cHJpbnRlci5weSB8ICAgIDQgKysrLQ0KIDEgZmlsZXMgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvbmV3cHJp
bnRlci5weSBiL25ld3ByaW50ZXIucHkNCmluZGV4IDljMTMyMjUuLmY1YWI3OTEgMTAwNjQ0DQot
LS0gYS9uZXdwcmludGVyLnB5DQorKysgYi9uZXdwcmludGVyLnB5DQpAQCAtOTcwLDcgKzk3MCw5
IEBAIGNsYXNzIE5ld1ByaW50ZXJHVUkoR3RrR1VJKToNCiANCiAgICAgICAgICAgICAgICAgaWYg
bm90IHNlbGYucmVtb3RlY3Vwc3F1ZXVlOg0KICAgICAgICAgICAgICAgICAgICAgaWYgc2VsZi5w
cGRzID09IE5vbmU6DQotICAgICAgICAgICAgICAgICAgICAgICAgZGV2aWQgPSBzZWxmLmRldmlk
DQorICAgICAgICAgICAgICAgICAgICAgICAgZGV2aWQgPSBzZWxmLmRldmljZS5pZCAjIElEIG9m
IHNlbGVjdGVkIGRldmljZQ0KKyAgICAgICAgICAgICAgICAgICAgICAgIGlmIG5vdCBkZXZpZDoN
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGV2aWQgPSBzZWxmLmRldmlkICMgSUQgc3Vw
cGxpZWQgYXQgaW5pdCgpDQogICAgICAgICAgICAgICAgICAgICAgICAgaWYgbm90IGRldmlkOg0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZpZCA9IE5vbmUNCiANCi0tIA0KMS43LjQN
Cg0K


--=-X/rUl9Zw9ymHbOcfzMMr--

--=-rjte9IUSTEVi66U9nMzQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQBNelTgBLQafZpK2tcRAhZcAJ0dS4PVdLT3tKGB/ovcUBfK3oV98ACdESkm
GcYGm8UqGKP9n9qlUjQf3TI=
=HlFc
-----END PGP SIGNATURE-----

--=-rjte9IUSTEVi66U9nMzQ--

