Received: from hurricane.shaftnet.org (hurricane.shaftnet.org [135.148.100.103])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47731C0DEC
	for <printing-architecture@lists.linux.dev>; Fri,  2 Aug 2024 12:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=135.148.100.103
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722603265; cv=none; b=GrffpSQxjzBxPXAPAS8PILPMIVk/R5BeUcR+20T4B+BA9LjGteRZCR+ZN4akO4QOHFBUfZgHR6/KVphYaemeM7uNK4yn5k/KRNqSbM3pLzuUWG5bgZJWh4g6Xcdo4DibAGFHiRG7qPewZMjLb0P19t1seoFbcAGHzac80uBY42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722603265; c=relaxed/simple;
	bh=5pmfatOx3HLyorjLoNKK6dwLx+Y3945+WlCZhpsp9GE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rn60uR9yTM5EYONxbqvPYpXdS5ZsCNU8fL50ZLa1lrNRbcfagtpVLvCaSTa86Pdsg+UX373x5i2TgQbhRdQIC2RLN5l5GufK5mKWmJCwuqDqKsU+3Z42Tf2bGjTlOl/sVGaIPOSoUcKSbBx+FhYFooRD8WPUFu2NnrAfN0WT/iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org; dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b=mKtxv9AD; arc=none smtp.client-ip=135.148.100.103
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=shaftnet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hurricane.shaftnet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=shaftnet.org header.i=@shaftnet.org header.b="mKtxv9AD"
Received: from hurricane.shaftnet.org (localhost6 [127.0.0.1])
	by hurricane.shaftnet.org (8.17.2/8.17.1) with ESMTPS id 472CQx0t773624
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 2 Aug 2024 08:26:59 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 hurricane.shaftnet.org 472CQx0t773624
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaftnet.org;
	s=default; t=1722601619;
	bh=5pmfatOx3HLyorjLoNKK6dwLx+Y3945+WlCZhpsp9GE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mKtxv9ADobHWrS+Yb//0YN040uyERkVHrYy2YywzykGj1iDm+WwNBdG+He0MdA5Q4
	 7iWa9jJXS8aSSZ75H6hAmMbOCSTEP+8TfMOnbt/k/Y26avVnJlBC0JIvGy45pLuUHz
	 1iXBScieGs5GkLNWXoPRcYCAQQ8LHtTlhUAeLVIc=
Received: (from pizza@localhost)
	by hurricane.shaftnet.org (8.17.2/8.17.1/Submit) id 472CQx5r773623;
	Fri, 2 Aug 2024 08:26:59 -0400
Date: Fri, 2 Aug 2024 08:26:59 -0400
From: Solomon Peachy <pizza@shaftnet.org>
To: Douglas Kosovic <doug@uq.edu.au>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>
Subject: Re: Experience with new model Brother DCP-L2600D - no IPP-over-USB
 support?
Message-ID: <ZqzQk8FdOfjIRwtl@shaftnet.org>
References: <ae94bdb7-69d6-48dd-9195-91ba6511273a@redhat.com>
 <88461E86-DF80-4738-B813-E50CDF4A82A1@msweet.org>
 <SYBP282MB2617A02AAAB3E0756077C15E87B32@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u5pCTy9HNBy9wkhp"
Content-Disposition: inline
In-Reply-To: <SYBP282MB2617A02AAAB3E0756077C15E87B32@SYBP282MB2617.AUSP282.PROD.OUTLOOK.COM>
X-Spam-Report: 
	* -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	*  0.0 T_DATE_IN_FUTURE_96_Q Date: is 4 days to 4 months after Received:
	*      date


--u5pCTy9HNBy9wkhp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 02, 2024 at 04:11:51AM +0000, Douglas Kosovic wrote:
> Looks like the DCP-L2600D is the only one in the series that is USB only,
> which is a shame when they don't support IPP-over-USB with their USB 2.0
> port (but do with Wi-Fi and Ethernet for the other models in the series).

This actually makes sense.

The networking components of printers are typically an entirely separate=20
subsytem grafted onto the side of a standalone print engine, and that=20
networking engine also deals with with the IPP bits.

Given the significant complexity (and moving target) of IPP,=20
IPP-over-USB is almost always implemnted as a proxy/tunnel to the IPP=20
stack running on the networking subsystem.  (Think of this as the mirror=20
of the 'ipp-usb' project!)

So if you take away (or often merely disable at runtime) the network=20
component you lose IPP support, wihch in turns mean you lose IPP-USB.

(The last few Canon SELPHY printers function this way; if you don't=20
 properly configure the printer to talk to a wifi network, IPP-USB gets=20
 disabled. Which is counterintuitive and quite asinine, IMO)

 - Solomon
--=20
Solomon Peachy			      pizza at shaftnet dot org (email&xmpp)
                                      @pizza:shaftnet dot org   (matrix)
Dowling Park, FL                      speachy (libera.chat)

--u5pCTy9HNBy9wkhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3H5Sx9DyiyB5hnENrGLLO/XVulEFAmas0I0ACgkQrGLLO/XV
ulGkuBAAsDplGfIOqR9jUm4WnsJ/B7cn71w54ekytw/89PK44Qlb3sQnF/XtbWHx
SZTKIlpe1r/BBFu1n0i/lqyGk8Csj+5f98tmAwF6CP6BWXAGNGZ6Ve+S72PZ6mTJ
EVYR0WU15TWVyv2GI0VbDYOP+zrgbzrhordOS6Z7/det0RUXs6hZ4w2q4bAF+Uhh
KKeqHxOUvhaiHQ8Ly3Wr7V99NeUvCYWBMnZPfS9f/Oa2rfXXOU72BDfctvNrx5uc
L2w+quc3Hd4ZxUOBDsnS0dQVRH2ygI9TzcZZf637+hYFDPuIX8Pt1gHHB52Ug31d
zyVfuC52IQ/Bzfl4A2zzmi8bi4OywQzm+4KzjwEdpEnMp2tuSKhzAngK9ymUEgNQ
73YbH6mrDavYr6hSY7qTkD8nxeKS8IExaBl/1rLWy7MBJA6lP5XF2t2P4SRXV55S
72HaRfSAELWOw4PeQbRka83rtgVCb8T7+Mri/trNabRwPZXyi27E1U1HiYOqwULJ
V5mlbxS+xtVB26Ue3TXmONj0VwKO8zF5tPzDzCUqyEdelqRVfnayO8nZwb28l6Rh
ZYSLBxqU6slTKryqQrBwYsI51vejUeAiXr/SFCnQj/596uDzPnR+ZHX8IqsLY68A
d4qzqbIRkmcSnUMpAaynATvMFZ2gVdclZvFXUPKWT4lUsH1g6/A=
=xmCD
-----END PGP SIGNATURE-----

--u5pCTy9HNBy9wkhp--
