Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B68418B476
	for <printing-architecture@lists.linux.dev>; Sun, 22 Dec 2024 13:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734875013; cv=none; b=SbE/FkAZBKISe9ewGyUuZZV2VbwcIHPxIRtg7Rl7aiRJLuqQndSP8wZVy0kRBtPbe94gnPtJTAonh99Dbu9m+i5rE2eoRQsmOX90qYnP4dJjP878XV3XCZTkDsbPxtDnZXPP9WUhDJbbK64SyXOgp+e/LgLec4CbeGghR1zaeNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734875013; c=relaxed/simple;
	bh=riI1/5OB0rvAwKHOgG2wq7vG5EaWZvMZKO7n8sW6LlQ=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=CABTNqSqHj0FM2g2g1ZGdaILVCXrA2mgBoSI7IG9HvWB56uqoFbKyPK88w7IpnEqMMsdd+B0iD+p0eUjGAo1HQ/x2v6UiL6U6z5BfIglYBJS3hx7bQXZlsOJ+v/xm1lHfn3xqP9JCpImU8PxlBbjJSxDh7KN8i2mkdgqL0sPM/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=rEK5NBSM; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="rEK5NBSM"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id F22BC803AC;
	Sun, 22 Dec 2024 13:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org F22BC803AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1734875010;
	bh=riI1/5OB0rvAwKHOgG2wq7vG5EaWZvMZKO7n8sW6LlQ=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=rEK5NBSM4UAH9g8lJ07+WPKti7Mn687Etf8oKtMwTevagB3cM35sLyVphZo58YS6/
	 VTVf9Jy/EwcMtztUYSHk2GI0BsOZ4bQMIxKUiHecUzGUBTEMF7CEGPa6KDFHMXCtWJ
	 7htwxlURSmbmGoJiAGydTGe1Rb8AAh0hfk7ypSPo=
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
In-Reply-To: <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
Date: Sun, 22 Dec 2024 08:43:18 -0500
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Content-Transfer-Encoding: quoted-printable
Message-Id: <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
To: Rudra Pratap Singh <rudransh.iitm@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Rudra,

Just to be clear, this is a separate README.md for the snap and not the =
repository's main README.md file?


> On Dec 22, 2024, at 4:23=E2=80=AFAM, Rudra Pratap Singh =
<rudransh.iitm@gmail.com> wrote:
>=20
> Building on your suggestion, I believe implementing automation to =
maintain a component version list in README.md is an excellent idea. =
This enhancement would provide users with a transparent and up-to-date =
overview of the included components, making it easier to track changes =
and understand the current state of the package.
> Here=E2=80=99s how I propose approaching this:
>     =E2=80=A2 Marking the Spot in README.md:
> We can designate a specific section in the file, such as:
> <!---->
> ## Included Components
> <!---->
>=20
>     =E2=80=A2 Updating the Section During Workflow Runs:
> When the workflow runs, it can update the section to something like =
this (and will auto update as versions are changed):
> <!---->
> ## Included Components=20
> - CUPS 2.4.12=20
> - Ghostscript 10.04.1=20
> - libcupsfilters 2.1.0=20
> <!---->
>=20
> I can try implementing this either in the =
https://github.com/ubuntu/desktop-snaps repository or in the =
https://github.com/snapcrafters/ci repository once it=E2=80=99s =
included.
> Best regards,
> Rudra
>=20
> On Sun, Dec 22, 2024 at 3:25=E2=80=AFAM Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> On 12/21/24 22:06, Michael Sweet wrote:
>   > We might as well.  However, you should probably also document how =
you'll=20
> manage the versioning since there are so many other components that =
get packaged=20
> with CUPS to make a working snap...  Doing MAJOR.MINOR.PATCH.BUILD =
versioning is=20
> probably sufficient for the snap versioning but it would be nice for =
users to be=20
> able to easily get a list of the bundled components and their versions =
as well.
>=20
> The versioning is the same as distribution do when the package =
upstream=20
> software. They take the upstream release number and add an integer =
number=20
> separated by a dash, the package release number:
>=20
> CUPS 2.4.12-1
>=20
> When a new release of the package is done because of a new upstream =
release=20
> being used, the new upstream release number is used and the package =
release=20
> number is reset to 1.
>=20
> When a new release of the package is done due to any other change, =
like a bug=20
> fix in packaging, a backport of a selected upstream (security) bug =
fix, ... the=20
> package release number gets bumped.
>=20
> So it is practically the same as you suggest.
>=20
> In our case with the CUPS Snap and also the CUPS Rock, we do =
practically the=20
> same, and as the principal upstream component of these packages is =
CUPS, CUPS is=20
> the donor of the upstream release number, so we have always the =
upstream release=20
> number of the CUPS in use before the dash. On any other change, =
including=20
> updates of the upstream releases of any of the other included upstream=20=

> components, like Ghostscript for example, we bump the package release =
number.
>=20
> The Snap and the Rock have some maintenance automation:
>=20
> - Update automation: Every 24 hours a GitHub workflow checks whether =
any of the=20
> upstream components has issued a new release. If so, the instruction =
file for=20
> building the package (snapcraft.yaml, rockcraft.yaml) gets updated to =
use the=20
> new release for the package build and the updated file gets pushed =
into the GIT=20
> repository.
>=20
> - Versioning automation: On each commit, both manual commits and =
commits done by=20
> the update automation, the version number is updated. If the commit =
has updated=20
> to using a new upstream release of the principal component (CUPS in =
our case),=20
> the upstream release number is updated appropriately and the package =
release=20
> number is reset to 1. On any other change, the package release number =
is bumped.=20
> The new version number is then put into the instruction file and the =
instruction=20
> file committed. After that the auto builds for the Snap Store and the =
DockerHub=20
> are triggered. So this way the auto-uploaded packages are clearly =
versioned.
>=20
> The GitHub workflows for that are currently done by the Snap =
maintenance GitHub=20
> action of the Ubuntu Desktop Team at Canonical:
>=20
>      https://github.com/ubuntu/desktop-snaps
>=20
> It is planned to merge this action with the one of the Snapcrafters, a =
volunteer=20
> organization snapping applications:
>=20
>      https://github.com/snapcrafters/ci
>=20
> For an overview of component versions we should perhaps do a CI =
automation to=20
> keep a list in README.md updated. This could be added to the mentioned =
GitHub=20
> actions or its merger.
>=20
> One would need to mark a spot in README.md, for example by a headline =
like
>=20
> ## Included components
>=20
> and the automation should take all the version numbers which are under=20=

> observation by the update automation. The update automation could =
actually do=20
> this step of generating the list and then not only update the package =
build=20
> instruction files for using the new upstream versions but also update =
README.med=20
> to have the current component version list.
>=20
> So README.md will contain:
>=20
> ## Included components
> - CUPS 2.4.12
> - Ghostscript 10.04.1
> - libcupsfilters 2.1.0
> - libppd 2.1.0
> - cups-filters 2.1.0
> - ...
>=20
> Rudra, Soumyadeep, could you add this automation?
>=20
> I think, this way we will have a user-friendly and easy-to-maintain =
solution.
>=20
>     Till
>=20

________________________
Michael Sweet

