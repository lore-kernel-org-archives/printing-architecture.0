Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDF21DD885
	for <printing-architecture@lists.linux.dev>; Sat, 21 Dec 2024 23:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734824046; cv=none; b=Cy35sn+oxf/sdAaBVJPP6gGrVo6U/ttTiEMWf1yiA18kCqeTEKB26odMSmbKvkNrIz/k5+jbGSBAVkzg+gVMLQdkkAOl/0X1qAZBhi91kmSrOwrYgsn0p0oeBbo1LDMuu0KVXhidTzSo3juAEjXyn5Jhw0TClzTLi8WK9IYx5Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734824046; c=relaxed/simple;
	bh=M6dCUbj1TXccTXo8SOBUjS5JU94u/F7X79I8jG4MdUc=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=G6cHwPnocpJ/wwyqwddRXbfppmWQgraKYkKq+ywkPHahuHRy5Cu2NJRhvFAhstOD2vGr7IcsALX1art9xlbt8TOG6A1psx4118X0E0l0riCmfTqvUvrWfIucvKUmhlzhEE5r+LPvQofkdGxtKTzoE7Uj0vnl2yikmqOwi2gDIqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=oZNQN83f; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="oZNQN83f"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 899FF80F0A;
	Sat, 21 Dec 2024 23:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 899FF80F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1734824044;
	bh=M6dCUbj1TXccTXo8SOBUjS5JU94u/F7X79I8jG4MdUc=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=oZNQN83fGEzHFZajgPZc183wnvrdBJOT25GEHBi1BAfsGWSbX4KnSKaYja1hbLZdz
	 vbyV9I6+biO8hRlkjbZo9OGs9UUhdpdUfb2YcP1xfQgIAWm2j2TiXQ4iv9pSw2rNp+
	 XFt0QgZ1jcgsJYGwZ/BbmIaEO9ppvJgMYVo8eAsg=
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
In-Reply-To: <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
Date: Sat, 21 Dec 2024 18:33:52 -0500
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 rudransh.iitm@gmail.com,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Content-Transfer-Encoding: quoted-printable
Message-Id: <6BBCCDCE-B1BC-471E-9D93-AA6C0335796B@msweet.org>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Till,

> On Dec 21, 2024, at 4:55=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> On 12/21/24 22:06, Michael Sweet wrote:
> > We might as well.  However, you should probably also document how =
you'll manage the versioning since there are so many other components =
that get packaged with CUPS to make a working snap...  Doing =
MAJOR.MINOR.PATCH.BUILD versioning is probably sufficient for the snap =
versioning but it would be nice for users to be able to easily get a =
list of the bundled components and their versions as well.
>=20
> The versioning is the same as distribution do when the package =
upstream software. They take the upstream release number and add an =
integer number separated by a dash, the package release number:
>=20
> CUPS 2.4.12-1

I thought that snap used semantic version numbering?

WRT the rest of the stuff you wrote, let's make sure to add this as =
documentation ("SNAPCRAFT.md" or something similar at the top) so it is =
clear how CUPS is being packaged for snapcraft.

________________________
Michael Sweet

