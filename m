Received: from hurricane.shaftnet.org (hurricane.shaftnet.org [135.148.100.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36988462
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 13:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=135.148.100.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784379998; cv=none; b=s6EF0tYlXu9h8MY3ceKytj4pe2kYqyjZtrNWUNtDS4nyXQFXpY0llPL2WSOEza98au8Mbn7qqO54VOARE7bZ6BkzFLp+z6dFGubMXPglVLK6CEAPPDs+weCAVsv29DaZrrUlnWCzPn46Jj9poxFAAj2SNufCr/He6Y2ok8fue90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784379998; c=relaxed/simple;
	bh=R+wgQTHdY+6L/+dHxxeHs7eNJFsv6flHju7duIxH5Mk=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aGldXi4YXBmCcXpd1rJuIVo5ZQ+57xv6NiBB5Ho2Y2qPhTMYm1Tsag0RhtTiLf/mMVIQcQIO1uIyf1LH7TU+MITMYCAaO8lUuSeRFFAe0xsYcYkBumKtZqdxlpURjIpktJ7/kl08YgiWxwl7ZkgqgkTHXyZtQzhzc61QX/xH8bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org; dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b=JEw9vLPM; arc=none smtp.client-ip=135.148.100.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b="JEw9vLPM"
Received: from hurricane.shaftnet.org (localhost6 [127.0.0.1])
	by hurricane.shaftnet.org (8.18.1/8.18.1) with ESMTPS id 66IC72Nc607444
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 08:07:02 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 66IC72Nc607444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1784376422;
	bh=R+wgQTHdY+6L/+dHxxeHs7eNJFsv6flHju7duIxH5Mk=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=JEw9vLPM7lj9qVAGVHbp9jAsga7TXC7vs3+HjHqgLmBLwb5Y8zcpBWiCtk4YO9MJI
	 fomc30WA7qgoBYxLcL6KdC9PCrlf1vNgFcg51pW9Sb2sA7RroM+KRRYgQ2q7+Y2Oye
	 2wIHc+kjZz4L9OiIEfmq0TeZihZULM+bL6Mc9rsQ=
Received: (from pizza@localhost)
	by hurricane.shaftnet.org (8.18.1/8.18.1/Submit) id 66IC719D607443
	for printing-architecture@lists.linux.dev; Sat, 18 Jul 2026 08:07:01 -0400
Date: Sat, 18 Jul 2026 08:07:01 -0400
From: Solomon Peachy <pizza@shaftnet.org>
To: printing-architecture@lists.linux.dev
Subject: Re: Exploring a universal production printing architecture
Message-ID: <altsY1aZkiFIBvU_@shaftnet.org>
References: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WRbEwD6+uXmiaJL8"
Content-Disposition: inline
In-Reply-To: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	*  4.1 DATE_IN_FUTURE_96_Q Date: is 4 days to 4 months after Received: date
X-Spam-Level: ***

--WRbEwD6+uXmiaJL8
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 18, 2026 at 02:25:44AM -0600, Joshua Braddock - Queen City Prin=
t Shop wrote:
> I'm wondering whether there is interest in an architecture where a
> universal virtual printer exists on any supported operating system.

Isn't this effectively the "print to PDF" option already typically=20
present today?  (And I might add, this provides the basis for IPP)

> Rather than targeting a physical device, applications would simply
> "print" to this virtual destination. The resulting job would then
> enter a vendor-neutral workflow system (headless or GUI-based)
> responsible for production decisions such as:

> - device selection
> - media selection
> - imposition
> - finishing
> - routing
> - job scheduling
> - recovery after interruptions
> - accounting and auditing
> - communication with vendor-specific drivers, RIPs, or printer applicatio=
ns

Other than the first two, isn't this already what we have today with=20
CUPS *and* IPP?

Keep in mind that the first two have drastic effects on what the=20
application needs to produce (ie physical size of pages).  Even in=20
"standard office document" territory you have A4 vs Letter output, which=20
drastically (and continually) affects the pagination, so you need your=20
application to be aware of the constraints that directly flow from the=20
output devices's (and selected media)' physical properties.

Or when printing photos (or any single page thing that not an office=20
document), different models often/usually have slightly different native=20
dimensions/margins/aspect ratios for a given nominal print size, and if=20
the application isn't aware of this your "workflow" will produce a white=20
margin on one or more sides or crop (perhaps something important) off of=20
the others.

> The core idea is to separate document generation from production workflow.

I belive this is the fundemental basis of modern IPP, but...

> I've spent many years working in commercial production printing with
> mixed-vendor environments (Xerox Fiery, HP DesignJet, office printers,
> legacy Windows print servers, etc.), and I've been thinking about
> whether there is room for a higher-level printing architecture that
> complements CUPS rather than replacing it.

=2E..the problem you are having is "proprietary vendors and their=20
proprietary solutions suck" -- usually by design.  Once you step beyond=20
those constraints, what you appear to be clamoring for already exists. =20
(Indeed, there numerous proprietary printing stacks are implemented on=20
top of IPP)

(Modern) IPP revolves around applications supplying a PDF and=20
specifiying the output "intent" and letting the rest of the system work=20
out how best to achieve that.

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--WRbEwD6+uXmiaJL8
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmpbbGMACgkQrGLLO/XV
ulH8VA//YouyIeXWZzIPOfUdsQxjtrSEe7SBf8SERYBE4u0BWRBiJZOgOwIMCFsq
GInr81JbeijP5o8ZO/YbSeV4h52asryTRTqhFY2A83dLKAHHdSCKovI5a8KVE2T7
DC9hWomiGsAXt/dGzPTGzKEU7SLBLSITOXF2JFCf8/iJZRVUqDlHrVoA41Rt0Taa
eqIhq8E6952Y28icWVhA53MoZBAWvbwV41xVnn7SD2nFOwr6Q7MAWXM7XSfW8o9s
a85uy2+Yf8zHEd6dHcPgXKpDyAcTaeQO5zr/s1cm0UB6Zh2V2YRmkWH8m7Auu7sf
xoQNUPfE/BCrpdi7izu+GPSnoW5S1NlQJgRnIoyTGOsW9/A87BginjGw46XjQwzm
iMlXPP1NNIEvjGHJZSVK44fvWrSYIouycLoLh5pX0gYIsyiiEbp8kqk3qcOOJc0t
MATq//wdXxGE71M1NfEd125tdO870TB6ez3t/pNEu8TJNO/FURLNnEY1y1UmDT5y
QcCz5BKo5qRnVto9BmjuEqVBAyr9v0kX0wHZQsDcLukudYRglZUOOgnAYGUpLbr8
QWAjBOskRUfmXNWa+EjlNPfTeuId/JdRAaeoq5ZBZGqX8S0OqMIgfda6hMvhvx5V
wya1PA3w7RWPSLcEJ0MbqQj7qfcr/eOG5SquQYqYtPsUqa9zwLc=
=O6aE
-----END PGP SIGNATURE-----

--WRbEwD6+uXmiaJL8--
