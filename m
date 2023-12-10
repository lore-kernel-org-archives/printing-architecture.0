Return-Path: <pizza@hurricane.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1F8D81E7F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E4B181EA4
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 3BALfLbT3867565
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
 s=default; t=1702244481;
 bh=wNP2bdqRDC09ntqn1za+zAQ4GmUzUEAV9HE0t/+gVHM=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=CvffLgkj8PSyJ3+zB9HscrC+wtzJqc8QLjNuG2teJOf8tm6ui2egjm2b10N/CXuD3
 X3V8l7P5Zp/epUM63SRWmc99psavQlYcvSGA4e1iGLk+Jp/vZnFF1J6EHCxMlDAWa7
 sTC1QQ/HqCFsfD+IojTJ5VMHwHVJT9vhNbcEK5VU=
Date: Sun, 10 Dec 2023 16:41:21 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <ZXYwgQqZayDJsT9-@shaftnet.org>
References: <c4acbedb-c17d-4440-9945-c1b04abcd052@apevzner.com>
 <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="JIoj6zRmH9FK+CfS"
Content-Disposition: inline
In-Reply-To: <AE4A3F66-C7EE-470F-B326-A4B357A55F2B@msweet.org>
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


--JIoj6zRmH9FK+CfS
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2023 at 10:11:05AM -0500, Michael Sweet via Printing-archit=
ecture wrote:
> They already won't be able to print from iOS or macOS, and probably=20
> not from Windows (IPP class driver) or Android (Mopria print provider)=20
> because the Get-Printer-Attributes response cannot be parsed.  And if=20
> they actually ask someone about the problem they can be pointed to=20
> Pantum to get a firmware update.

I should point out that Pantum seems to make no mention of IPP in the=20
documentation for this printer. They provide Windows, MacOS, and (x86)=20
Linux drivers for direct USB attachment, and state iOS and Android=20
printing is supported via "the Pantum APP".  The extent of the AirPrint=20
in their documentation is about how to enable Airprint sharing for a=20
locally-connected printer.

A little digging shows that Apple lists this printer model on their web=20
site as supporting AirPrint; I presume this would mean the printer "nativel=
y"
supports it.

With regards to Mopria, Pantum documents using the Mopria Print Service=20
on Android devices.

So assuming that getting certified/listed means demonstrating that you=20
pass some sort of compliance suite, this means that the Mopria and=20
AirPrint clients don't actually care about these printers violating the=20
IPP specification.

Over the years, Airprint's not-quite-IPP-compliant nature has caused=20
quite a bit of grief in my little niche.  This may be another one of=20
those "We support Airprint, not IPP" impedence mismatches.

One would think Pantum could be made to care, but given that this=20
printer family apparently already works with Windows, Macs, Android,=20
iOS, and even Linux, this is just some geeks being overly pedantic about=20
something (ie IPP) that Pantum never claimed to support to begin with.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--JIoj6zRmH9FK+CfS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmV2MH4ACgkQrGLLO/XV
ulHM+Q//Z4Q+diBW0WwLACp8Nw1F4rl6P2e4K/3/oX+8bAx4LdLnrmtGGm7OAD5e
KAqRQDfMnNtiHc19w/yZi5DyfrJ9oRGHqOmf/UoxlpTdyTEV2SzRxnmo0t6KE1/N
qB5Q3Cp0iG2LN1HK+whNHFwzDms8EnJfAqDoAisMlaFx4r0XFXPlG4vROWD6l+CL
9A7ZTxnbZ+j2G9tsoWPD9e/+ADItVAO6KEoXImwpovoj1/faQslqKZPkllqd8+5e
mavE7ZZQsY5wbDZuibvQoLT0TmLuuvgPSU1ggUTg3aCSGg6Ep8zPsJLz35Yn+UwL
LEAAABP2CWcVPGmBC+Hpc3foRN5SwHprci34ROUGn9FMuC5n4+2hAzzLNIhdjfBC
YRIy3l5nXmLfsBCJDp13l3oICdDcIRUcTzVBTaasCdC2QPl+cevLvSxjqq4wIo7Q
oBq4pYq0xtY8EM5BTL266FAoLAdGZmgDNA4ANHinGdSjNLysifOOSZryTPkZuot8
L9FCI6NCP4oPt5tXN1CpUCaGHe519LNQl6SO0e/R/wt3EOGQKgmHHmo2CfbHNhFg
mEWpsdi8Lcn2Taew2uJv5UaKAFxFwMUTcPt1BWkFodw1RhxJrKd0eRszG7odOtHG
xDgwxcS7EzFTuYSXVTvvks0Y+kB996ZU2ELhCzVMDfhrjlXWItM=
=WJ16
-----END PGP SIGNATURE-----

--JIoj6zRmH9FK+CfS--
