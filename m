Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BFE823B0
	for <printing-architecture@lists.linux.dev>; Sun, 23 Mar 2025 15:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742742143; cv=none; b=YlIHiV7WkQFej4NO/8kMGccPNj/nnd68yTy5saUU8lxf9mAsU1GBU9FpSSOgb1Nxy5GiOzumojtMgSmbDXHOHv7HyNLwxkeRQM+R6yn1AuYEr+iZbiZkEKtBVCOklWHeH65Sl5DtjX0kiWASb3nw6NZ8h9FfrYf8JRsEnoenc40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742742143; c=relaxed/simple;
	bh=NnhindfzOejve9Yo0a+OEmos+r0DTwhyrnlArxg+ybk=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=nTRjSgS7WS2OC9Jap4X5t3VkYIhFb6g/XUvPyEdFWh6lz+xQ4G0feOKum8x+RaWZfiJbZES7DCGY9DImifN+75yipBPzPQfCWuKokL7Grhwjefe8D69Zts0335jZgbV0HjKl0uHNDCrJFDKHWKO2MKXSaiBFxP1TDaZMSlTMQBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=KSeSbCep; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="KSeSbCep"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 327B180445;
	Sun, 23 Mar 2025 15:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 327B180445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1742742134;
	bh=NnhindfzOejve9Yo0a+OEmos+r0DTwhyrnlArxg+ybk=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=KSeSbCepKewQ7Zx44fflWZuw97SKNmbzdRy1F8NocDyh0t/GtP2DySvMqzoqRSP2x
	 gPCX+TRX1g85nyGzjPWO70lTpwe9qkrehLks28rcL7HF9wpwx4j0NczZ3Zj/ztDH7S
	 QqiVPbF4VVTdiGxlQj4ICXlxR7OzTc+w/xKmWeJE=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: Issue with adminutil.h Removal in libcups3
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <CAMCgP36ngL7_xSv2_O+AkCnAkhz4KzG9AmkaC-EwU=cA6D4acQ@mail.gmail.com>
Date: Sun, 23 Mar 2025 11:02:02 -0400
Cc: printing-architecture@lists.linux.dev
Content-Transfer-Encoding: quoted-printable
Message-Id: <5FA7ADDA-B1C3-44E2-B891-E0E3B5B36CB3@msweet.org>
References: <CAMCgP36ngL7_xSv2_O+AkCnAkhz4KzG9AmkaC-EwU=cA6D4acQ@mail.gmail.com>
To: Tarun srivastava <tarurak4@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)

Tarun,

> On Mar 23, 2025, at 5:14=E2=80=AFAM, Tarun srivastava =
<tarurak4@gmail.com> wrote:
>=20
> Hi Maintainers,
>=20
> I=E2=80=99m working on porting the KDE Print Manager from CUPS 2.x =
APIs to
> CUPS 3.x APIs and have encountered an issue related to libcups3
> functions and macros.
>=20
> Currently, KDE relies on the macros and functions from adminutil.h to
> interact with the CUPS server and later use this result in UI
> components. However, since adminutil.h has been removed from libcups3,
> I=E2=80=99m unsure how to proceed.
>=20
> Could you guide me on how to interact with the CUPS server without =
adminutil.h?

CUPS 3.x changes a lot of the assumptions people have made about how =
CUPS (and printing) works.

*Most* users will only ever use/interact with cupslocald, the per-user =
print spooler which will have very limited configuration options - =
basically just "configuration profiles" to supplement mDNS/DNS-SD =
discovery.

The sharing server (cupssharingd) will likely have a configuration file, =
but mainly for things that are currently in cups-files.conf.  Other =
configurable things will be accessible via IPP operations.

So the short answer is: adminutil.h is only for CUPS 2.x and earlier.

________________________
Michael Sweet

