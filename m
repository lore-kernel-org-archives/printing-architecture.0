Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8989A43DA49
	for <printing-architecture@lists.linux.dev>; Thu, 26 Feb 2026 19:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772133312; cv=none; b=HjWUrTeqfWd2sHvFfGUZmIkNslHTlU5HCYXWOLDW5NVs3zQjF1mIdE+3Bt48/Of1KIHYczNw/cjT65SMnl6h2Ar4orlN4Gpy9he8zWap/1ZZdRARJUNm8RV/8V70XiVcj5dYsPV3Y6TP7GoRSxTIP1AseuhNSWBrYAGFn0jvjoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772133312; c=relaxed/simple;
	bh=AIjl48FXAWrlxONbhw2aHR8Okdu6jMx5FGijPRCWLJI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=ZKC07TN4D5NmpzMt185lP6H/R1SnVQLKkDd91oiMHOa1hfu9hK+uc26bAnFxWZbtKJT0p3M/dYnGrm5JrzH+JtkX2gJj1K8KAvKMiPjI9b68cq1vwBlKTRnh06xbg4rLwzUN4oLT9Qs4tv/CrJfEr51TxJUVRRD5J1YI62wGS2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=Gy7VyXvZ; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="Gy7VyXvZ"
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id C0C6882425;
	Thu, 26 Feb 2026 19:06:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org C0C6882425
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1772132795;
	bh=AIjl48FXAWrlxONbhw2aHR8Okdu6jMx5FGijPRCWLJI=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=Gy7VyXvZwNYRGZhpMRWGiOlCSlu0jIsypBnu/qn1+fn5DLUwoRBcBeNwTHXwXa54x
	 bvaCkY21bvwFFEe4OlYWCByLRxSpBFbOUfLXa0Qd10ycSc8a4nfD93btmT7+IvfBAB
	 Bit0SyCs4KaQe9wpzN6aAOfKh1VgaQdMYJps+eLY=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.500.161\))
Subject: Re: GSoC 2026 Inquiry: PDFio Renderer Project - Ahmed Fatthi
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <SN7PR06MB7088C44E2C747CFD45F26B2AA972A@SN7PR06MB7088.namprd06.prod.outlook.com>
Date: Thu, 26 Feb 2026 14:06:23 -0500
Cc: "printing-architecture@lists.linux.dev" <printing-architecture@lists.linux.dev>
Content-Transfer-Encoding: quoted-printable
Message-Id: <89525601-C118-4FC7-BFE1-2E106F7AD093@msweet.org>
References: <SN7PR06MB7088C44E2C747CFD45F26B2AA972A@SN7PR06MB7088.namprd06.prod.outlook.com>
To: Ahmed Fatthi <AhmedFatthi1040@hotmail.com>
X-Mailer: Apple Mail (2.3864.500.161)

Ahmed,

This particular project is on-going.  Last year's work-in-progress is =
available at:

    https://github.com/OpenPrinting/libpdfrip

PDF rendering is definitely *not* a beginners project, but please do =
look at the work that remains to see if your skillset is a good match...


> On Feb 26, 2026, at 2:06=E2=80=AFAM, Ahmed Fatthi =
<AhmedFatthi1040@hotmail.com> wrote:
>=20
> Hi everyone, resending this in plain text as my previous message was =
rejected by the list server for HTML formatting. Looking forward to =
connecting!
>=20
> Dear Till, Michael, and Ira,
>=20
> My name is Ahmed Fatthi, and I am a final-year Computer Science =
student at Helwan University. I am reaching out to express my strong =
interest in the project idea: "Extend PDFio to be a PDF =
renderer/displayer."
>=20
> I was previously a GSoC 2025 intern at the GNOME Foundation, where I =
worked on prototyping a new architecture for the document viewer Papers. =
Currently, I am also working as a Junior Backend Developer at Wisemen.
>=20
> While I believe my work at GNOME is slightly relevant to this project, =
I have some concerns regarding the difficulty level. I am familiar with =
C, but I wouldn't call myself an expert yet. Is this project suitable =
for someone at my level who is ready to dive deep and learn quickly, or =
are you looking for a more advanced C specialist?
>=20
> Additionally, if you have any "good first issues" or starter tasks you =
could suggest, I would love to work on them. This would help me get =
closer to the codebase and gain a deeper understanding of the project =
before the application period begins.
>=20
> Thank you for your time and guidance!
>=20
> Best regards,
>=20
> Ahmed Fatthi
> https://github.com/AhmedFatthy1040
> https://www.linkedin.com/in/ahmedfatthi1040/
> https://ahmedfatthi.pages.dev/
>=20

________________________
Michael Sweet

