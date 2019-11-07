Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org xA7Gn1ms022584
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1573145341;
	bh=BoYwqYHP3VaqvDONYSlSdcB7PlnWu3B/pStqsD5C6ow=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ZWBQQ+gUiw6vBOpbmja3Pxw19RRJmtrs1/SZjtnKg1nd9dTR52uA5lWbFm+xW09+y
	JW+y/Qor4gWte4JZtyM6/rAqQHlBBfUMHUS0cWCWB10xRO/uJ4re/PI0MPxrGtHD9a
	yHSDY1JsIkblMUvkaaYOPYZtlw0W015jbxsOLezY=
Date: Thu, 7 Nov 2019 11:49:01 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <20191107164901.GB5070@shaftnet.org>
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aVD9QWMuhilNxW9f"
Content-Disposition: inline
In-Reply-To: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
Subject: Re: [Printing-architecture] Upcoming work for OpenPrinting: Printer
 (Scanner) Applications and IPP System Service
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


--aVD9QWMuhilNxW9f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 07, 2019 at 04:34:32PM +0100, Till Kamppeter wrote:
> - Legacy interface functions: For filters/PPDs and
>   for SANE drivers.

(all of my comments are limited to printing, not SANE)

I'm not sure what form this can meaningfully take, other than=20
effectively being "Legacy CUPS in a container"

In my view there are really two parallel thrusts; Wrapping existing=20
legacy CUPS drivers, and the brave new world of native-IPP solutions.

Where they are similar is in their interfacing to the outside system=20
(OS integration, port selection, dns-sd, and so forth but once you=20
step past that, they diverge rapidly.  For example, CUPS=20
filter wrapping is necessarily PPD-centric, but that's a lot of=20
baggage (and complexity) that is presumably unnecessary for native,=20
directly-integrated stuff.

> - Communication with printers and scanners,
>   functionality of the CUPS backends.

Most printers can get away with the standard legacy CUPS backends, but=20
there are custom backends to contend with (often proprietary), and a lot=20
of quirks just to keep life interesting.

> For testing this we should create a native Printer Application from
> Gutenprint for example, or one for PostScript printers for which we have =
PPD
> files. We also should create a native Scanner Application wrapping SANE w=
ith
> its current driver collection.

Gutenprint is a good canidate for this as, at its core, it is a library=20
that provides a rich API for printer description, configuration, and=20
rasterization.  Its existing CUPS driver and GIMP plugin are=20
effectively stand-alone applications that rely on that library, and=20
would presumably be a decent example of how one would need to integrate=20
third party code into any printer application framework.

Gutenprint's CUPS backends are sort of bolted onto the side, and=20
typically support extensive printer configuration/status reporting and=20
issuing OOB commands, areas where the IPP model offers substantial=20
benefits over the (significant) inadequacies of the legacy CUPS model.

=2E..suffice it to say I'm really looking forward to a native IPP wrapper=
=20
around Gutenprint, and will help any way I can.

> The code should get preferably hosted at OpenPrinting as part of
> cups-filters or in separate projects/repositories. Probably we need to
> overtake some parts of the ippsamples code. Or should the lib then better=
 be
> at the PWG as part ippsamples?

I agree that this effort will require subsuming substantial chunks of=20
the ippsample code, if only because of tight integration requirements=20
that probably don't align well with ippsample's existing codebase.

But IMO a development goal here would be to try to keep the IPP stuff=20
self-contained, and if restructuring is necessary, try to convinve=20
upstream ippsample to accept those changes as to minimize everyone's=20
maintenance burdens.

Oh, one are of concern here is licensing; As well as chosing a license=20
for the (substantial) new code that needs writing, of the code we'd=20
presumably want to re-use or otherwise integrate, there's quite an=20
assortment.  For example, ippsample is ASL2, gutenprint is GPL2+, and=20
cups-filters is a mismash of GPL2, GPL2+, GPL3, GPL3+, and MIT.

 - Solomon
--=20
Solomon Peachy			       pizza at shaftnet dot org
High Springs, FL                          ^^ (email/xmpp) ^^
Quidquid latine dictum sit, altum videtur.

--aVD9QWMuhilNxW9f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQR2UQuVfi4HbxEN7SQ+4uCKLbvn0AUCXcRK+wAKCRA+4uCKLbvn
0MZpAKCB68pJdHigkDzRONwWGDqVQbBJUgCg2D9Z2ylXPHmNFvRQhqPj82zMozE=
=ueTF
-----END PGP SIGNATURE-----

--aVD9QWMuhilNxW9f--
