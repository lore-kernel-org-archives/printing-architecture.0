Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FF0239089
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 21:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739827382; cv=none; b=A7Rl4iC8Fzbg6f+f+l2TGXo6VkfWevIMHELQV3QeUkrEf8sjHvNEHodYSQPS7/1SD8rZfMkhdAeznnf8ACjdtkIqcE8ncX3qFNCOB9cjFWzDRII8cLlcQx5sCtKCbMeEZaVVDNhxpwU3dFila+enoBrUd8n2++pa1C4TJENAEW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739827382; c=relaxed/simple;
	bh=KghDob9SOFyk2Gy2YqKfPtEJHFN8iacYJI8gf+QfRKs=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=lSQ1+8e6Mqk/ZqguSrQlTv8XInWr7UZ39D0tyPze7YbQ3Qj8Zhsi7412q4AxGvaRrKF+hNy0ZxYRA0CfSwtGZm67j3g/XIEN7V+BvkTDnmRevQDnBBo+Pzw2QE3DRnFB9hYjI9/zQbyN6Iv/z9gcHwUswG2nSnSfwf4zPE5MwSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=gyKn/kr/; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="gyKn/kr/"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id AB3CD803C9;
	Mon, 17 Feb 2025 21:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org AB3CD803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1739827379;
	bh=KghDob9SOFyk2Gy2YqKfPtEJHFN8iacYJI8gf+QfRKs=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=gyKn/kr/cKfFE6Gn36C/zZLTgPxlajRElupLd6CcZ+XzR1GyFMooAg20XT+hALovw
	 pS6zVWN9np0MD/s1DR7h9mDd5squboruPnAoUyRELtQixuQ+hX/cg9Y0N+IzZ2nXv5
	 HDIe9cl5MZR9in2E0eOJyJ4e1WsHkT0402hvEILU=
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
In-Reply-To: <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
Date: Mon, 17 Feb 2025 16:22:47 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
 <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
 <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

Till,

> On Feb 17, 2025, at 1:30=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>> ...
>> to the IEEE-ISTO and the Printer Working Group, a program of the =
IEEE-ISTO.
>=20
> Is this a well-known free software/document license? And if yes, which =
one?

I don't think it is a well-known "license", however the terms match the =
Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND =
4.0) license.

> ...
>> The libcups project includes the ipptransform tool, which can =
generate PDF, PWG Raster, Apple Raster, and PCL content at different =
resolutions from PNG, JPEG, PDF, and text input, and I can certainly =
revive that sample file script.
>=20
> Could you please do so?

OK, I'll set something up as a starting point...

> ...
> As JPEX-XL is a format which I am newly adding to the filters, how and =
where could I obtain free sample images for that format?

I suspect you'll need to generate them.  I think ImageMagick supports =
conversion to the format, so that might be a way towards that goal.  The =
libjxl project also includes a cjxl utility that can convert PNG files =
to JXL, and libjxl also provides a Gimp plugin...

________________________
Michael Sweet

