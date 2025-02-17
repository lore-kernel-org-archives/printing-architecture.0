Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BE522577F
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 16:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739811015; cv=none; b=XLOiCZIg7PugZNi7R16frMaWmya1MY3d65SPjkL81NjNF5rS0/i7LD3pjGaY9ywxPN/nD1JuNutToP5E/VBVW4Eg1igWV4nG006xz8E7UVbID4nt0tqHWos6B+k3F2TcoLaWTMDTKLeTuaJROn6D4xB+yjL8DaZtnz7tW6N6LJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739811015; c=relaxed/simple;
	bh=Z0UAOfBtLPzxQh9FGZWn393KA6gyQFnPWx4GVttZTZI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=kUhegpFbhHpg6vcNJk+F0sHD/zTYevt0g6LiOQV+EbaMKi4KIumUmT11/QpOZiVWqR84QiCXjpSRGr80UQC2uT7V9r8AGSuDt475vnu4MMilcK07mhbNwviDf9AdprnygzRCbo46QDP8LWCaDW58GegzfFCNcaUu4/scIWSrQ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=JtkNBX5m; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="JtkNBX5m"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 414A9803C9;
	Mon, 17 Feb 2025 16:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 414A9803C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1739810460;
	bh=Z0UAOfBtLPzxQh9FGZWn393KA6gyQFnPWx4GVttZTZI=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=JtkNBX5mu1NoYmUOfQ9bp2z4klL4XXDveD4SKdoKI/C33RoUgwU6MoMRZ+rJdAMyK
	 CvF2tMYnF45yeN9avQeXbWjLk8kzcVQXbIEZST4gbuB2Zk2Mo0VX2sM8a347+aNp1N
	 KDYbW97Htc6r2Zbvega4hCmkqOh2aDYXwfGDtxR4=
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
In-Reply-To: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
Date: Mon, 17 Feb 2025 11:40:48 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

Till,

The CUPS and PAPPL sources already have many of these test files =
provided under the Apache 2.0 license.

WRT the (legacy) PWG Raster sample files, these are companions to PWG =
5102.4-2012 and are provided under the same terms as the standard =
itself:

Copyright =C2=A9 2011-2012 The Printer Working Group. All rights =
reserved.

This document may be copied and furnished to others, and derivative =
works that comment
on, or otherwise explain it or assist in its implementation may be =
prepared, copied,
published and distributed, in whole or in part, without restriction of =
any kind, provided that
the above copyright notice, this paragraph and the title of the Document =
as referenced
below are included on all such copies and derivative works. However, =
this document itself
may not be modified in any way, such as by removing the copyright notice =
or references
to the IEEE-ISTO and the Printer Working Group, a program of the =
IEEE-ISTO.

There used to be a script in the ippsample project's "scripts" directory =
for creating a set of test files at a specific resolution, but since the =
self-certification tools no longer depend on these files (ipptool can =
generate PWG raster test content) I stopped maintaining it.

The libcups project includes the ipptransform tool, which can generate =
PDF, PWG Raster, Apple Raster, and PCL content at different resolutions =
from PNG, JPEG, PDF, and text input, and I can certainly revive that =
sample file script.  I'm also happy to contribute sample images towards =
building up a repository of test files/templates that can be used for =
this testing.

For the purposes of testing:

- Media sizes: US Letter, US Legal, US Tabloid, US #10 envelope, 4x6 =
("4R") photo, ISO A6, ISO A4, ISO A3, ISO DL envelope, Japanese Hagaki =
(postcard), JIS B5, Japanese Kakugata 7 envelope, Chinese 16k, and =
Chinese #3 envelope with a mix of portrait/landscape content as =
appropriate
- Content: Text, photos, graphics (graphs, drawings, etc.), barcodes (1D =
and 2D), color and gray scale charts; multi-page content for duplex/N-up =
testing
- Resolutions: 180, 203, 300, 360, 360x180, 600, 720, 1200, and 1440
- Color spaces: sGray, sRGB, AdobeRGB, Display P3 (RGB), Device (K, RGB, =
CMYK) with attached ICC profile (when applicable)
- Bit depths: 1-bit black, 8-bit for all, 16-bit for AdobeRGB, Display =
P3, and device color spaces
- Labeling: Copyright and license text and URL/QRCode on each page/image
- Fonts (PDF): Simple and composite fonts (for Unicode text), text =
content in the various languages we support.

> On Feb 17, 2025, at 9:05=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> recently, we added several testing facilities to OpenPrinting, but =
some of them, especially those to test software to handle data which =
gets printed or which got scanned, need sample files which can be =
shipped as a part of the source packages of the component which includes =
its tests.
>=20
> For this we need files of the formats JPG, JPG-XL, PNG, TIFF, PDF, =
PostScript, and perhaps even Apple/PWG/CUPS Raster which are published =
under free licenses so that we can include them. Ideally the files also =
come with different properties, like grayscale, color, 8-, 16-bit, =
different resolutions, page sizes, number of pages, ...
>=20
> We appreciate a lot if somebody could suggest us suitable sources.
>=20
> Note that the PWG source
>=20
> https://ftp.pwg.org/pub/pwg/ipp/examples/
>=20
> is not suitable, unfortunately, as there is no license. The README =
files only mention the copyright holder but no license for them (my =
suggestionis that PWG publishes sample files under free license).
>=20
> Thanks in advance for any suggestion.
>=20
>   Till
>=20
>=20

________________________
Michael Sweet

