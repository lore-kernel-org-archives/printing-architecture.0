Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org xA826VFI009544
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1573178791;
	bh=0ICzElnLNWLaRbkrL3c7mUHMB/aohzTYcrT/RBcTNvQ=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=rLgma63R5ixwc53VrZljIQsgIl33jWdB6puwX1o3QpqZPC111veNVjrKR9tO6HbO2
	W7VmvevXr/vZSV2lVgHx93u2zxHJaFe91MNmwi5Xjg1qtHVJ+3lnNbxe7gHvW5hxRu
	GSmwKO9koU7Re2bz0vuzeu5sEf4tQE1UBjhSH+ds=
Date: Thu, 7 Nov 2019 21:06:31 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <20191108020631.GJ26703@shaftnet.org>
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
	<20191107164901.GB5070@shaftnet.org>
	<a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oYAXToTM8kn9Ra/9"
Content-Disposition: inline
In-Reply-To: <a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
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


--oYAXToTM8kn9Ra/9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 07, 2019 at 08:14:59PM +0100, Till Kamppeter wrote:
> - Quick solution to not loose functionality/hardware support in a Linux
> distribution when the first CUPS without PPD support appears and some
> drivers are not yet converted.

I think this should be the primary beneficiary.  I'm personally not=20
going to lose any sleep over already-abandoned proprietary drivers that=20
were never really supported to begin with.  :)

> The preferable way are native IPP applications. Whenever possible,
> especially for new drivers or for drivers which are actively maintained,
> like Gutenprint or HPLIP this is the way to go.

Absolutely.

> Is it not the case that the only backend coming with Gutenprint currently=
 is
> the USB backend for the dye sublimation printers with proprietary USB
> protocol?

Correct, althrough there are also some utilites for administrative=20
actions on some inkjet families (alignment, cleaning, etc).

> With restructuring you mean here to spin out the functional code of the
> ippsample utilities into a library and provide an API?

Yes, ideally with the cooperation of the ippsample authors. IMO it would=20
be a win-win for everyone.

 - Solomon
--=20
Solomon Peachy			       pizza at shaftnet dot org
High Springs, FL                          ^^ (email/xmpp) ^^
Quidquid latine dictum sit, altum videtur.

--oYAXToTM8kn9Ra/9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQR2UQuVfi4HbxEN7SQ+4uCKLbvn0AUCXcTNpgAKCRA+4uCKLbvn
0EDwAJ96kiV2rnjDBFami5S6a+KCBpRufACeL/sHEDmle/pThYpRbD/4toGvSlE=
=6hRM
-----END PGP SIGNATURE-----

--oYAXToTM8kn9Ra/9--
