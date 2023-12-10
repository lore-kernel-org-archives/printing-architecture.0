Return-Path: <pizza@hurricane.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AFD9415F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7C9D4161C
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 3BAMVXUP3886070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1702247494;
 bh=J0BeweJkF+7wBq8euT6IXb6eYZJCjGE/4Ahme4AZ/MA=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=I5AMSbP5c7aFAliERicEe7/9kHRznwQKjhiABK3us4XOa44kxYWP9FCY+Le983w4n
 UVqU7sqDoFHwu6Uyw2CBqs724MuG+RoKkUlM01eHKDj8kIdDG/C+fLkbY13jmonVK/
 Vu5TuxtQAChW6QsKa4bh+aj0K3L3z3UMHzfnUQDg=
Date: Sun, 10 Dec 2023 17:31:33 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <ZXY8RUrpqRmoaxDZ@shaftnet.org>
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
 <ZXYwgQqZayDJsT9-@shaftnet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="AUJrBoiQHoeugMwF"
Content-Disposition: inline
In-Reply-To: <ZXYwgQqZayDJsT9-@shaftnet.org>
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
To: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--AUJrBoiQHoeugMwF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2023 at 04:41:21PM -0500, Solomon Peachy via Printing-archi=
tecture wrote:
> The extent of the AirPrint in their documentation is about how to=20
> enable Airprint sharing for a locally-connected printer.
> [...]
> A little digging shows that Apple lists this printer model on their web
> site as supporting AirPrint; I presume this would mean the printer "nativ=
ely"
> supports it.

Correction:  Their manual also documents using the standard iOS AirPrint cl=
ient.

So the printer presumably works with both Mopria and Airprint, despite=20
its violations of the IPP spec.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--AUJrBoiQHoeugMwF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmV2PEMACgkQrGLLO/XV
ulEhTA//aCMNoxGuK7hQK7JJrqlF8TxN0jJ/eHBd1RfYScEAhOreOVBt2BpCdKEp
lUIi4/isU5XPZh9j2qi55HthkVfSMbuN/2JTghScnrO1jgJ5Irou2wxqoq27NpFW
lK91wGZav4Z4hK00/9HvpekJGn44VaRA7lQtujWWbDlimxk1uyHF7bYpyKUi/+tT
as6ilFD15TT6QM7197+W5+kjUIW3hs8ZK85KALdkV28hr8nttgKwqpjZuDpcqcBT
xIwkMOQMErE44Ski8StwTHRurAtYckKaFoRlY40D4qbXyyXKkiiwQJPMzbuCo9Xb
QFNRUhHN0/JVSo6b2b/qwR82oj/Z5jKFh4uGBjneQXoKgyHL1aSQ16kmBoZmCdqf
9g1sF/Va9Vy/faoJG9mXKirNixNVGsdPPVlxMNoDz0eIxZ8UqQOO0U3yDPWPHsZ2
zUL1Ja8LuZkX9/yFxSj24DXN53LWBuzVl0aPdtIOTOytxTHsptWSq12ipsxOXd5+
g6sR2LQ6Na5jaR4SFZmlibNkZWLQah31Y+Ep1fKyDbPHa5mc8S9qZlDv82MYubi/
J3kHiQVEQCxJeB01DVpfb6iG25drFpkZxOgzKrrh9ahpU7dRnw0n2uk30VHZri1Z
XGVorT4QbJe/PMRm/LuSs7Yi2uWMFDxGF/O5Xa5TfBio3fRd3zk=
=QWPs
-----END PGP SIGNATURE-----

--AUJrBoiQHoeugMwF--
