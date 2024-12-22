Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F036E2913
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 14:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734878659; cv=none; b=ZNhpIEP1Ea/UNd8Oy+cpHw+u8FA5zM6556yIt5R2il6jV+j8NG9TZDX1vGBHekDkxSNhLV643iZTTmw5+BRzw3HwPdf4l1fxcHTpSUalC0BWNlLRZTWpznn1zPVPwjILEy6Mnw7IILUBScGiD8qUFhv5Ku0EIaLxKyC0mCa42J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734878659; c=relaxed/simple;
	bh=lVa49BPf6t/s5olphda6a5/QZqB0OoSGdfI+7uiNi0s=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=PHulwjB1M87GdFMCylifEYf7l19uV731MbkLaQ5NTexkw5gEUIWFwoVMkumXcxpDvSgxFJiT7oW6OA/Fer1DKK8DDTzLee7hEWUUDcf1IgIN8ShIjqDQd2xzoR/Wsc/2vngSR0za/gEcR+00N2uLY85rO5dMxrZ9v1TWlhrSg2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=G04F6uaC; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="G04F6uaC"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 715A2803AC;
	Sun, 22 Dec 2024 14:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 715A2803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1734878657;
	bh=lVa49BPf6t/s5olphda6a5/QZqB0OoSGdfI+7uiNi0s=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=G04F6uaCzFGcS9l1VcMvcBYPja2g8iIXI0xLvddZRRchuprM+He8eCeuxMFnsdr0f
	 rSyLiJAlzaT387HLpAl1zcLBs3ztQH8r8XSLT1xyAe9Y4Evl5gWWK2VPbNd6yiC4RY
	 QZNNbwr7Emng1DypzkvsjTV0uEUNadA5xUHAB9r8=
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
In-Reply-To: <ab8c4c52-279a-46d4-bf5e-49662f49c8ab@gmail.com>
Date: Sun, 22 Dec 2024 09:44:05 -0500
Cc: Rudra Pratap Singh <rudransh.iitm@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Content-Transfer-Encoding: quoted-printable
Message-Id: <2FA93208-38CF-4CC4-B56E-999C1C24000A@msweet.org>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
 <ab8c4c52-279a-46d4-bf5e-49662f49c8ab@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Till,

Given that the "component versions" are *not* part of the core CUPS =
software, putting them in the README.md file would be confusing.  We =
have an INSTALL.md file for generic installation instructions and =
dependencies, and in other repositories I have included DOCKER.md and =
SNAPCRAFT.md files that document both how to use and what is included in =
those forms.

I would strongly prefer that we keep any component versions separate =
from the general documentation - prerequisites are normally "version X.Y =
or later" in the generic build documentation (i.e. INSTALL.md) while =
specific packages will document/depend on specific versions of =
components.


> On Dec 22, 2024, at 9:03=E2=80=AFAM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 12/22/24 14:43, Michael Sweet wrote:
>> Rudra,
>> Just to be clear, this is a separate README.md for the snap and not =
the repository's main README.md file?
>=20
> In the repositories for the Printer Applications and for ipp-usb we =
have described the packaging methods in sections of the main README.md. =
The lists of upstream component versions used will have to go into the =
appropriate sections, one list for the Snap, another list for the Rock.
>=20
> There is no problem to have the documentation files for the packaging =
methods separate, or short sections (with version lists) in the main =
README.md and long, in-depth documentation in separate files.
>=20
> Then the automation should also support:
>=20
> - Having separate component version lists for the Snap and for the =
Rock in the same file
>=20
> - Having the component version list in more than one file (for example =
README.md and a separate documentation file for the Snap)
>=20
>   Till
>=20
>=20
>   Till
>=20

________________________
Michael Sweet

