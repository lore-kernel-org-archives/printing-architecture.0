Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFF01C5D64
	for <printing-architecture@lists.linux.dev>; Mon, 13 Jan 2025 18:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736791377; cv=none; b=ojR9tbrJEeklIkDjmLaZckf7UkY8dn6GBra0LLIedFM+dMFJlJYaQ90sf8y2+2KA1O6QjiUIXHH+RnxwGYXcPjhJKVXUACcw1QQuJPnme7WJo0nbd4zGYHOUYPoGt81LXD98yHMQHz1lHqVswiIjvRN3vGn+Y0sXoLOkvsHfyS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736791377; c=relaxed/simple;
	bh=VGGAwklaoG6JXAKv6LOf22DPgbgHwGxBd0NMMiMkBM0=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=iq70W9emayNBmVtsic9D+DCXzVBXfRX0ykIP2Dg74Zzi/CJEQKiNJTYdEQ0OL+Tyo9Goz34Bg+wSgSV2KzJxVlbUorBFYI9pVXqdyoqKEn90LhZt3+ighcgzpVxZBOPQZRYgCIOMIHXyfS29/fPFItW+uUQlfW+IA0L+SLCajfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=qyAAYKMx; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="qyAAYKMx"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 588A581D95;
	Mon, 13 Jan 2025 17:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 588A581D95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1736790929;
	bh=VGGAwklaoG6JXAKv6LOf22DPgbgHwGxBd0NMMiMkBM0=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=qyAAYKMx7hQQn29cTmDnFjr4QeDTwqM3N2CNMi0jGogILcr+N0f9AXYeROP+ZsQSs
	 fNmVVDIt02Fg3CDSMyCeHp2lhBDE9J7hV8k1yXfSPm/2Pd2TvtABZ/D9MGXz3xMGlV
	 Pqkyny1nvlix84pdIO8+qwUlGiumIp39LbT6Qeqg=
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
In-Reply-To: <CADmOQaf4hsBwrz-qkW_o8SZnfP1faD9ma4+T1FyA_GUYRgKhuQ@mail.gmail.com>
Date: Mon, 13 Jan 2025 12:55:18 -0500
Cc: Till Kamppeter <till.kamppeter@gmail.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>,
 Cristovao Cordeiro <cristovao.cordeiro@canonical.com>,
 Soumyadeep Ghosh <soumyadeepghosh2004@zohomail.in>
Content-Transfer-Encoding: quoted-printable
Message-Id: <004DC663-ABED-4733-96E6-B01FE19DAA0A@msweet.org>
References: <1ca4c555-aa30-43db-a9b4-74bd2729f8dc@gmail.com>
 <8F866723-E2BF-4CC3-A3CA-646F33D7C947@msweet.org>
 <d2a4cbb1-eb0a-4e34-9ec3-a83fd8533a9a@gmail.com>
 <CADmOQacnfVS5VR+dpudVt2NxgV_HG+K0in0mm-h5Hwe0nfF0cQ@mail.gmail.com>
 <EA694437-FF7A-4A92-9927-D752C965BCB7@msweet.org>
 <CADmOQafms3c=7FAzeX9cbvnPOYDcf9Xxe9QyKUjYEYTgJq3AJw@mail.gmail.com>
 <34cc8c02-8e8a-47ba-856f-9ce834bd4496@gmail.com>
 <CADmOQadkw-BY2vNqQtJDqi7TqGpHErVM29rkPfGAajiFVhGUiw@mail.gmail.com>
 <7fa0204d-0804-4d7a-bb10-ff228dea2e67@gmail.com>
 <CADmOQae0YNffRYsMZLLcwMY2GxFpThyfaq5Hm0rw=ke0pkuvZw@mail.gmail.com>
 <CADmOQaf4hsBwrz-qkW_o8SZnfP1faD9ma4+T1FyA_GUYRgKhuQ@mail.gmail.com>
To: Rudra Pratap Singh <rudransh.iitm@gmail.com>
X-Mailer: Apple Mail (2.3826.300.87.4.3)

Rudra,

Thanks for this, and at first blush it looks really good.  I'll have =
some time tomorrow to do a deeper review tomorrow...


> On Jan 13, 2025, at 8:31=E2=80=AFAM, Rudra Pratap Singh =
<rudransh.iitm@gmail.com> wrote:
>=20
> I have raised a PR (#1137) in the CUPS main repository that includes =
all the code and configurations for both CUPS-Rock and CUPS-Snap. These =
are organized within the packages directory.
>=20
> Regards,
> __________
> Rudra
>=20
> On Mon, Dec 23, 2024 at 3:36=E2=80=AFPM Rudra Pratap Singh =
<rudransh.iitm@gmail.com> wrote:
> I have raised a PR (#840) in the desktop-snaps repository. This PR =
implements our use case of updating the README (or any Markdown file) to =
include a list of parts. This needs to be reviewed by Sergio Costas Sir.
>=20
> On Sun, Dec 22, 2024 at 9:11=E2=80=AFPM Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
> On 12/22/24 16:37, Rudra Pratap Singh wrote:
> > It would be easier to pass the path of the README (or any Markdown =
file) where=20
> > we want to list the parts, directly in the workflow itself.
>=20
> OK, yes, you are right. We have the workflow in each repo with =
automation ...=20
> Let us do it this way.
>=20
>     Till
>=20

________________________
Michael Sweet

