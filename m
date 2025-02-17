Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC8C224F0
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 21:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739828918; cv=none; b=TRF+PG5lxiSHVrSEF8JkXLIysueaDf4OqSGqGWD5UYJ+hniuxdYCEf+GVZypE5fjuyXZs8cRVubBdFrkPipg7AVcGRJ42B5Btj5eaTX5i2cuBsA5DlG1YOr/iI3np39mk7HHUZaoYW4HY8IFZ793rXQQKWmuWLkd2NAIR6+cr40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739828918; c=relaxed/simple;
	bh=hFBnHqnLSXY2MUnhBhjO28Qh9D6UcQm/l0IG4jY9d/k=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=OvAF3wpg5jUKIQtsZ8n85w9nWoRJGweNR5kAQwxigqMaYTPskJjktpKVMtZky3tXwFNIqko+rX8kkiLEGWVsJDDsp3tTOTIkv4KrWbo4hmeV5QRvb5gQM1B5Z0NJ0Sosn/n0YxflBwVh7j+le4cGkBjSBTX0IV8oM4vlGLU2L0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=j3zUvZb4; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="j3zUvZb4"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 8457C803C9;
	Mon, 17 Feb 2025 21:48:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 8457C803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1739828916;
	bh=hFBnHqnLSXY2MUnhBhjO28Qh9D6UcQm/l0IG4jY9d/k=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=j3zUvZb4C3dGmMz9EwuiV1cK9Rorm9ekbFFhOHvgQgVwYGRi6bEOUvZek25VvPumZ
	 4Inn43xmDMmqcSjjO3q1nWbbDemmXxnHpY7qNhI7ZicSkHKsSr+SkMtTORDncHEsGP
	 SOkx+PlSpk7wA7DkVLUgoWa9BD0FJD04eXvdhyLM=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: Free-/Open-Source-licensed JPG, JPG-XL, PNG, TIFF, PDF,
 PostScript files for print filter and OCR CI testing
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
Date: Mon, 17 Feb 2025 16:48:24 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <762971A3-E6FA-4764-9C1F-2C1C83434303@msweet.org>
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
 <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
 <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
 <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

Till,

I created an OpenPrinting project to hold the sample files:

    https://github.com/OpenPrinting/sample-files


> On Feb 17, 2025, at 4:22=E2=80=AFPM, Michael Sweet <msweet@msweet.org> =
wrote:
>=20
> Till,
>=20
>> On Feb 17, 2025, at 1:30=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>>> ...
>>> to the IEEE-ISTO and the Printer Working Group, a program of the =
IEEE-ISTO.
>>=20
>> Is this a well-known free software/document license? And if yes, =
which one?
>=20
> I don't think it is a well-known "license", however the terms match =
the Creative Commons Attribution-NoDerivatives 4.0 International (CC =
BY-ND 4.0) license.
>=20
>> ...
>>> The libcups project includes the ipptransform tool, which can =
generate PDF, PWG Raster, Apple Raster, and PCL content at different =
resolutions from PNG, JPEG, PDF, and text input, and I can certainly =
revive that sample file script.
>>=20
>> Could you please do so?
>=20
> OK, I'll set something up as a starting point...
>=20
>> ...
>> As JPEX-XL is a format which I am newly adding to the filters, how =
and where could I obtain free sample images for that format?
>=20
> I suspect you'll need to generate them.  I think ImageMagick supports =
conversion to the format, so that might be a way towards that goal.  The =
libjxl project also includes a cjxl utility that can convert PNG files =
to JXL, and libjxl also provides a Gimp plugin...
>=20
> ________________________
> Michael Sweet
>=20
>=20

________________________
Michael Sweet

