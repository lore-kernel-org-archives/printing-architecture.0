Return-Path: <twaugh@redhat.com>
Message-ID: <1382715382.32506.5.camel@rubik>
From: Tim Waugh <twaugh@redhat.com>
Date: Fri, 25 Oct 2013 16:36:22 +0100
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-FahSUjLFgEyCGMNBfVXT"
Mime-Version: 1.0
Subject: [Printing-architecture] [patch] cups-1.7.0: job history fix
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


--=-FahSUjLFgEyCGMNBfVXT
Content-Type: multipart/mixed; boundary="=-a5frpudYptK6ckuctB0W"


--=-a5frpudYptK6ckuctB0W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

While playing around with a logging enhancement=C2=B9 I discovered a bug in
the job history code. It was introduced some time after the public
source repository was taken off-line, so I don't know what the
motivation for the change was.

A cups_joblog_t declares 'char message[1]' for the message, and is
allocated with enough storage for the intended message. However, the
message is copied in with strlcpy, with a limit of
sizeof(cups_joblog_t->message). As a result, the message is severely(!)
truncated.

The fix is to undo the change as attached.

Tim.
*/

=C2=B9 http://cyberelk.net/tim/2013/10/25/cups-adding-support-for-system-jo=
urnal/

--=-a5frpudYptK6ckuctB0W
Content-Disposition: attachment; filename="cups-jobhistory.patch"
Content-Type: text/x-patch; name="cups-jobhistory.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

ZGlmZiAtdXAgY3Vwcy0xLjdyYzEvc2NoZWR1bGVyL2xvZy5jLm9yaWcgY3Vwcy0xLjdyYzEvc2No
ZWR1bGVyL2xvZy5jDQotLS0gY3Vwcy0xLjdyYzEvc2NoZWR1bGVyL2xvZy5jLm9yaWcJMjAxMy0x
MC0yNCAxNTo0MDo0Mi40MTIwNjI0MTIgKzAxMDANCisrKyBjdXBzLTEuN3JjMS9zY2hlZHVsZXIv
bG9nLmMJMjAxMy0xMC0yNCAxNTo0MDo0My4zMjkwNjY2MTcgKzAxMDANCkBAIC01MzQsNyArNTM0
LDcgQEAgY3Vwc2RMb2dKb2IoY3Vwc2Rfam9iX3QgKmpvYiwJCS8qIEkgLSBKbw0KICAgICAgIGlm
ICgodGVtcCA9IG1hbGxvYyhzaXplb2YoY3Vwc2Rfam9ibG9nX3QpICsgc3RybGVuKGxvZ19saW5l
KSkpICE9IE5VTEwpDQogICAgICAgew0KICAgICAgICAgdGVtcC0+dGltZSA9IHRpbWUoTlVMTCk7
DQotCXN0cmxjcHkodGVtcC0+bWVzc2FnZSwgbG9nX2xpbmUsIHNpemVvZih0ZW1wLT5tZXNzYWdl
KSk7DQorCXN0cmNweSh0ZW1wLT5tZXNzYWdlLCBsb2dfbGluZSk7DQogICAgICAgfQ0KIA0KICAg
ICAgIGlmICgham9iLT5oaXN0b3J5KQ0K


--=-a5frpudYptK6ckuctB0W--

--=-FahSUjLFgEyCGMNBfVXT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQEVAwUAUmqP93lVEo2joavTAQJ3IAgAshMF0spTngppMYfGlv6DPacd8JT96umq
lDya9b/DxVygRMK99DiVnm7zKSNJwWD+6WPfhYJG3//sEPFnVH+pQGpzobBMMxAz
7oKgIpa0gyNkGawgF0/hRkADaVcMMQIUfm/QfuCK7QEADKhVMhByB4+J2wSx82dV
aSBQ43TQ5tqla5RLFnVfleOGGw+v9rVcxAKCWUkQ0O/vEeYvj6sjPIONiCODrOro
5XgbBZn9sjLoUEZD8GywfKINkUnMR/YPkjz3FLg9yx9t1wm8SZ9SjuAVIjiJWKBM
TVE9zN1OdX04y9x3yVst1ez+6melJXyrXy7N9JrqKOm7Z+2aoGtwFg==
=Ovrz
-----END PGP SIGNATURE-----

--=-FahSUjLFgEyCGMNBfVXT--

