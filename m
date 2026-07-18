Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDB22D46A1
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 19:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784402410; cv=none; b=CL0UNDXQLSyCVX5B+5a+/vc7QOSgalqqJvqKVZkv4TBjOMVoTUTbxbpfBARB3VhXwDTKhPO3m7lN3GSHex94HJ7m0Zc8z2dp3zSwUFtaNtqBIkHBFYdKIIPFlPvLOwjN7EWxW5OfYq6bfkC7o26H8ZpFBuGoaK9xJwQROfRiAiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784402410; c=relaxed/simple;
	bh=9oM6Uu6Ar+9Pa5F/24vmMbn9cBvKfEL7kMmFD6xXKqQ=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=OWewMTx1yfKyNTVmkk7taGg4iLGs/WCG9y4CoI2r3s43wdI4emHeDtaT1vnfmw8xCclRutGSi3a9GizbJhcOIT077VxRjji263WTr8AjdyB9kE8eXkFBObrDWrIqYORIWGHJrjuebMIJ/7sLJUqXNIT7niMqYTHbRFkC2jxHsv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=BN9BQe2/; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="BN9BQe2/"
Received: from smtpclient.apple (unknown [153.67.41.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 1FAE6803DC;
	Sat, 18 Jul 2026 19:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 1FAE6803DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1784402408;
	bh=9oM6Uu6Ar+9Pa5F/24vmMbn9cBvKfEL7kMmFD6xXKqQ=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=BN9BQe2/TRMclZDsHb07mWrfcSMZoKwshFhSEBh16UcJIDA07cBy4keBnPz1ob6oZ
	 Z2LclvAOR2bVhJvgKzxZFBQjC23+7BWPxQba4cOR6m96XrlubxdRW6N5MtuXDrqZQP
	 LkrXORlYuAT2JCSkJ325OkTeAcI94FR3fiF4kq3g=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Re: Exploring a universal production printing architecture
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAMk8RBYg_CMrbaQiXEmiKDkn-v7uFikGrshCXiqFjpYc7j=nbw@mail.gmail.com>
Date: Sat, 18 Jul 2026 15:19:56 -0400
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <059507C1-47C3-4C00-A1CA-AED9BBC7B93A@msweet.org>
References: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
 <E82AE91D-DFFC-4598-B19B-6DF903D95165@msweet.org>
 <CAMk8RBYg_CMrbaQiXEmiKDkn-v7uFikGrshCXiqFjpYc7j=nbw@mail.gmail.com>
To: Joshua Braddock - Queen City Print Shop <joshua@qcprints.net>
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Joshua,

> On Jul 18, 2026, at 11:34=E2=80=AFAM, Joshua Braddock - Queen City =
Print Shop <joshua@qcprints.net> wrote:
> ...
> What I want to preserve is the output composed by the application
> through its normal Print path. The logical production destination
> would capture that submitted print content and create a persistent
> held job from it. The underlying transport representation might be
> PDF, PostScript, XPS, PWG Raster, or another standard format,
> depending on the application and operating-system print path. The
> important point is that the workflow receives what the application
> submitted for printing rather than requiring the user to perform a
> separate PDF export. The workflow could retain that original submitted
> representation and, when necessary, create a normalized production
> document for previewing, transformation, routing, or output. Any
> normalization would be recorded as a derivative rather than silently
> replacing the submitted source.

For macOS or Linux, the standard output from an application is almost =
always PDF.  The few that don't are specialized applications (shipping =
and other label stuff, point of sale, etc.) or (if you are using a =
PostScript printer with an Adobe application) PostScript.

For Windows everything ends up as XPS or (in the case of PostScript =
printers and Adobe applications) PostScript.

> ...
> My corrected questions are:
>=20
> - Is an IPP Infrastructure Printer, Printer Application, or another
> existing IPP model the appropriate basis for a logical production
> destination that is not initially bound to one output device?

Yes.

> - Can an operator-facing application hold a submitted job, modify its
> production attributes, and then route or reproduce it against a
> selected Printer while remaining within existing IPP semantics?

IPP allows for this, and operator overrides get reflected in the =
"xxx-actual" attributes.

> - Could locally installed printers, shared queues, and remote systems
> running supported native drivers all be represented as output
> destinations behind that workflow?

Yes.

> - Is there an existing open-source implementation that combines these
> concepts into a mixed-vendor production console rather than presenting
> them as unrelated individual device queues?

I am not aware of one.

> - If the standards already express nearly all of this, is the missing
> piece primarily a reference workflow implementation and
> production-oriented operator interface?

Yes.

________________________
Michael Sweet

