Return-Path: <pizza@stuffed.shaftnet.org>
DKIM-Filter: OpenDKIM Filter v2.11.0 stuffed.shaftnet.org xA8DXeXU010159
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1573220020;
	bh=eLHIpXdA9ARn74nTpv02MDHiUDrzHXH9j+VBOvcI2Yw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gdKvNIi6b1kSrjH3H58DfuTkS3nZcgvpMvH3uG5s2irxwTAYy8iKgUsZUyHicQn6g
	cVGPXx9CoEkxZkDa19eD4SbCaKKLgIa6nnNQq0uIw7D9bc9v2bI+EX4eMfwpwSkFmB
	L62DEWZLxntFqBhnIhZjpIqEEf5BhTLmOo9OkK3w=
Date: Fri, 8 Nov 2019 08:33:39 -0500
From: Solomon Peachy <pizza@shaftnet.org>
Message-ID: <20191108133339.GK26703@shaftnet.org>
References: <49db06cd-6ae8-1a6b-2a05-011762d98797@gmail.com>
	<20191107164901.GB5070@shaftnet.org>
	<a04a9c9f-4c05-0cb7-7fb6-9d13f631a866@gmail.com>
	<20191108020631.GJ26703@shaftnet.org>
	<20191108115751.54932beb@workstation64.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A2x6GFCQWVc4i5ud"
Content-Disposition: inline
In-Reply-To: <20191108115751.54932beb@workstation64.local>
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
To: Andreas Radke <andreas.radke@mailbox.org>
Cc: printing-architecture@lists.linux-foundation.org


--A2x6GFCQWVc4i5ud
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 08, 2019 at 11:57:51AM +0100, Andreas Radke wrote:
> When cups 2.4.x will be out I will probably disable any ppd driven
> driver support in Arch. Just to stop people using closed source driver
> and to push open standards. Anything else will probably go into our
> community maintained unsupported AUR repositories.

It's not proprietary drivers I'm concerned about -- There's a _huge_=20
install base of SMB-exported or native networked PCL/PS+PPD printers,=20
and MajorDistros(tm) can't get away with just dropping legacy CUPS=20
before there is a JustWorking(tm) alternative folks' existing printers.

The goal ahead is good, and very much achievable, but as Till's original=20
email laid out, it's a pretty long road and we're not exactly drowning=20
in manpower...

 - Solomon
--=20
Solomon Peachy			       pizza at shaftnet dot org
High Springs, FL                          ^^ (email/xmpp) ^^
Quidquid latine dictum sit, altum videtur.

--A2x6GFCQWVc4i5ud
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQR2UQuVfi4HbxEN7SQ+4uCKLbvn0AUCXcVusgAKCRA+4uCKLbvn
0BR1AJ4vhYaguDNtY9cVUZkKcjbOeESchwCdFKkeyXS/5viqSnb/iIO223vvWRE=
=jQxx
-----END PGP SIGNATURE-----

--A2x6GFCQWVc4i5ud--
