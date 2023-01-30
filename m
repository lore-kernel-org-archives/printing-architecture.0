Return-Path: <msweet@msweet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 13A2981551
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 133C981443
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 3004E803A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
 s=default; t=1675045913;
 bh=3ndph7e6aLfpXmqfyEPGiGnelhi5LDZtRtX+EeunmXo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=ozrJIx0F0lVDd0DXuPZTV7GmsbORb89ETP1RzGNgVDFuXHIWOQwLp31h4rTgcem1S
 ccokHxKfJeAO3HJae2VLxemmkkN4GwMrhaaGAlXjOIP3RV9CqKaW51Y8VDFhjcPTax
 Qfg8HfSXtB6u6vK4O/UOUFYuzOhcFYoL5mcVbYsM=
Content-Type: multipart/signed;
 boundary="Apple-Mail=_61EABF73-AAA0-4D87-B9FE-6D30A270D8F1";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <b137b92a-b1ff-32ea-4831-4c4273b790ad@gmail.com>
Date: Sun, 29 Jan 2023 21:31:41 -0500
Message-Id: <AFDE93A8-E52D-4322-942A-ED296FD3328B@msweet.org>
References: <1ea9f7d3-e1c0-2e7c-64fb-7ce18a5202b7@gmail.com>
 <E6D91613-2ADB-40BE-BE4A-3AA462D4E0E1@msweet.org>
 <b137b92a-b1ff-32ea-4831-4c4273b790ad@gmail.com>
Subject: Re: [Printing-architecture] New issue on GitHub:
	Bug/Feature/Security selection screen
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
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>


--Apple-Mail=_61EABF73-AAA0-4D87-B9FE-6D30A270D8F1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Till,

Create a .github/ISSUE_TEMPLATE directory, and populate it with the bug =
templates you want.


> On Jan 29, 2023, at 8:58 PM, Till Kamppeter <till.kamppeter@gmail.com> =
wrote:
>=20
> On 29/01/2023 22:47, Michael Sweet wrote:
>> Till,
>> The SECURITY.md file can easily provide a link.  Not sure the bug =
templates can, though... :/
>> But absolutely file an enhancement request to Github to make this =
more discoverable.
>=20
> But how did you get this selection screen in your PAPPL repo?
>=20
>   Till
>=20

________________________
Michael Sweet


--Apple-Mail=_61EABF73-AAA0-4D87-B9FE-6D30A270D8F1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkIbDzcZsP1Y8+PQFvmfHXsgfMkQFAmPXLA0ACgkQvmfHXsgf
MkSgNw/9HXr3e7RERRTb/4dKXSmUgIFJJzhdgSfridiuichY33fC5Rvcs7d8uA1r
dXcsR+ow3olbHK3bBV2kdV37JjB+iyd94MuN9VKO/xX37Ikp6WPWTgSP2dIxB4+e
7PTqL4/gChf2sWoBecFLH/MWTTh/6nWGgPovy/CaPv43v0dBCkq+PtXAwz42Qo8Q
sYvnaO1ceUiN5s7OMy9rp6XLIB+ufsERcFEYY5sm+JYYCGYjqUsqCd5DpHhhyurO
ORkX+8NA10ZhO/tVJKqvvSeJBTr3HPdyGjSTkQ+gkMgPp3jAuCAe8TrUKNieoj9z
2MXafZV4LJ67g2gkIrISNKP/IqUCrbwrohmYx//aKZ7R6pnZAooiiAa2PoQvpXHK
vjTudjlcgjGLusy51vErpV+FQIOnUAer0h8HtCpXa58+OVyu64c7R4Y1kzSYjCLp
I4g7raM+J8Ke12/K13vHwvASrLmpai2T0+B0GoH0HIj/GdIradX5KrSgOgtTUR/V
xQX3zWZPoHE1TJHS2nonQ6gYuE5OGCK/Ic+MjXBLuunCj4cr7EIVAt00Lt+roYyN
F/4Xx+h22e3gFhc7UyfR67/qGxkLR2eiA813Dtd5+xxBfbH9vWmIvzyLzwag5sVa
HIJmdPSLVMlB3sjOxlou84zaGl3Otzrp/nlFlhJkEGVDJW+TwXY=
=sXlx
-----END PGP SIGNATURE-----

--Apple-Mail=_61EABF73-AAA0-4D87-B9FE-6D30A270D8F1--
