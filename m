Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096B71DA2F6
	for <printing-architecture@lists.linux.dev>; Sat, 21 Dec 2024 21:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734815736; cv=none; b=nshCJMIWHym5AxHgQBCl6s7LBq1t389KnED+lK8AOfJBSs23yeCCmtC6MiXcj4Jvs/flgtXYbHymKRMxkyBkuJ/E7WWyxDfzG4NUJRuITSZd8AKLArOaAQOdKHfbgXNZG91oUP7nWoQirRCzAYg6czFluJeIqeo4cmLqxbj7OMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734815736; c=relaxed/simple;
	bh=pvhe/p2v4G+T3DU8BYi4XTMVnXN4pVrLaFTPj7aYUfo=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=bTU5NPAtaFTQOgtYDSHOXkYrKYYS1wzZA5a2/D7vaXVAlYeq29V5MHMyEg8jSdvFWC1Nq4N7TjGn+V3ojZFIQN1cZMOCeqw0Lic4iJpgbKCBYa+OlJTPcuG+yufa2AgUhWbU2mZQusMETE+c+Y6pUlA20Zis1up+o9umrvA2hw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=DWGv2i4H; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="DWGv2i4H"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 88FC880F0A;
	Sat, 21 Dec 2024 21:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 88FC880F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1734815192;
	bh=pvhe/p2v4G+T3DU8BYi4XTMVnXN4pVrLaFTPj7aYUfo=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=DWGv2i4HaaIc9WdumI6o0G7drMdIC0rt0rnh80H7KnVwMT48qLWYdREoLbXDYlcwF
	 QMrN0IZzLI261mv2PmJKameed+lyVAh2rggU7PRnpIxPYEPtxj5fNb9O3N16sr0afG
	 NJR8A3AJQwyj/G+Dii7tqkbF6w25LBupNg2r0D3k=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: Re: Merge repositories for CUPS Snap and CUPS OCI/Docker Container
 into the CUPS repo itself
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
Date: Sat, 21 Dec 2024 16:06:20 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 rudransh.iitm@gmail.com,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Till,

We might as well.  However, you should probably also document how you'll =
manage the versioning since there are so many other components that get =
packaged with CUPS to make a working snap...  Doing =
MAJOR.MINOR.PATCH.BUILD versioning is probably sufficient for the snap =
versioning but it would be nice for users to be able to easily get a =
list of the bundled components and their versions as well.


> On Dec 20, 2024, at 6:55=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> Hi,
>=20
> when I started snapping CUPS back in 2017, the CUPS source was still =
maintained at Apple and therefore I created the separate repo cups-snap =
at OpenPrinting.
>=20
> As I generally recommend that Snaps should be created by the =
respective upstream projects I am snapping all the projects of =
OpenPrinting, including CUPS, and also the (retro-fitting) Printer =
Applications and ipp-usb. As for the Printer Applications and ipp-usb =
the repositories were all the time at OpenPrinting I have included the =
files for snapping them right into their repositories. The same I did =
now also with the files to create the rockcraft-based OCI container =
images, on which Rudra (CCed) has worked in his GSoC project, with =
Cristov=C3=A3o (also CCed) as mentor.
>=20
> Now we arrived also at the point what to do with CUPS, and my =
suggestion is to not only add the OCI-container-related files to the =
CUPS 2.x repository "cups" but then also migrate "cups-snap" to "cups", =
so that all the distribution-independent packaging methods are included =
in the "cups" repository, where also the code is.
>=20
> For CUPS 3.x we can then migrate the two packaging methods Snap and =
OCI container over to the two new CUPS daemons, "cups-local" and =
"cups-sharing", so that each of them will be available in the Snap Store =
but also on OCI container image "stores" like DockerHub.
>=20
> This is Rudra's final report of his GSoC project:
>=20
> =
https://medium.com/@rudransh.iitm/gsoc-2024-final-report-container-chronic=
les-759fe7f23ac6
>=20
> This is Rudra's repository of the CUPS container image:
>=20
> https://github.com/rudra-iitm/cups-rock
>=20
> Rudra's work on the retro-fitting Printer Applications is already in =
the appropriate repositories "ps-printer-app", =
"ghostscript-printer-app", "hplip-printer-app", =
"gutenprint-printer-app".
>=20
> Mike, WDYT? Should we migrate the Snap and OCI-image repos into the =
CUPS one?
>=20
>   Till
>=20
>=20
>=20
>=20
>=20

________________________
Michael Sweet

