Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E031A3CFF55
	for <printing-architecture@lists.linux.dev>; Tue, 16 Jun 2026 18:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.255.209.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781635813; cv=none; b=nuESjF4/9iq+s9HqJA/Jolp1cmN6xQIE/Q0g9eu06zqYexNx2RPh1SZp5D892Ha3SNm2/3VDGyb3O/OKnqXfVHPx7suZ/EM/laEHjlLpF7AbH3xs6UWmMXEqCeMBeO9euVAJ7DllGvNQskMpZ3/x6TbcocPWmnhbA11v8f1aarA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781635813; c=relaxed/simple;
	bh=jHQjLF56Eajp25L3PqWmv2AI4wPz0j4ob8Afq37DxnM=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=k69lZP4QdDABMwNIyN/vAzO/9QwiAIGi6CA9lEU64d3/4IZ3m7fXuqBJZYNegbgtqnETlS1YDjQh6AArICwTd+iHx8T3s13uGHF3DJoxI16cN4Vw061tvsPHDWw0yupADRoqc1fzYc4UZZePCX0Y9rT8TcmC2Z2xvp1HCbc9CKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org; spf=pass smtp.mailfrom=msweet.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=EaG3oN2m; arc=none smtp.client-ip=173.255.209.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=msweet.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="EaG3oN2m"
Received: from smtpclient.apple (unknown [184.151.190.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id 9C28782426;
	Tue, 16 Jun 2026 18:40:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org 9C28782426
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1781635225;
	bh=jHQjLF56Eajp25L3PqWmv2AI4wPz0j4ob8Afq37DxnM=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=EaG3oN2mBr+e5V3yzEusOyBxIIeqiYgFmmDkC6pj3s9eU4/0OkRGfpjkLNzFF5gmq
	 ZlCNQH6a/wnAoYleBL6PCmcFsLde8nNqtumyXuEA4E/N5L8G50XQWJs6WOZWsG2/Hi
	 duZcpXn8HiX5T/lWud1djn3Iry1NEpvmApzrzW2I=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.600.51.1.1\))
Subject: Re: handling of printer-more-info in CUPS
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <e10f02b2-3f97-4957-b762-3e045457720b@gmail.com>
Date: Tue, 16 Jun 2026 14:40:11 -0400
Cc: Armin Felder <armin.felder@gmail.com>,
 printing-architecture@lists.linux.dev,
 Kaushik Vishwakarma <kaushik.vishwakarma2003@gmail.com>,
 Mike Noe <noeerover@gmail.com>,
 Tarun srivastava <tarurak4@gmail.com>,
 AbdElRahman Khalifa <abdelrahman.khalifa.gad@gmail.com>,
 Michael Murphy <michael@mmurphy.dev>,
 Titiksha Bansal <titikshabansal0209@gmail.com>,
 Mintu Gogoi <mintugogoi567@gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <691463A2-4F5E-474B-A065-0A5BC2BF518F@msweet.org>
References: <1afc196c-d7cd-4484-b7cb-9ec434a85d01@gmail.com>
 <e10f02b2-3f97-4957-b762-3e045457720b@gmail.com>
To: Till Kamppeter <till.kamppeter@gmail.com>
X-Mailer: Apple Mail (2.3864.600.51.1.1)

Till,

> On Jun 15, 2026, at 6:06=E2=80=AFPM, Till Kamppeter =
<till.kamppeter@gmail.com> wrote:
>=20
> [ CCed the developers for driverless IPP printing support in the =
printer setup
>  tools of the GNOME, KDE, and COSMIC desktops ]
>=20
> Armin,
>=20
> thanks for the hint with "printer-more-info" in the printer properties =
reported in response to a "get-printer-attributes" IPP request and that =
the functionality accessible through this URI is often not accessible =
via the standard web admin interface of the same printer.
>=20
> Anybody developing printer setup tools,
>=20
> according to Armin's findings, it seems that for each IPP print =
destination listed by the printer setup tool there should not only be a =
button for opening the standard web admin interface, but also, if a =
"printer-more-info" attribute is reported, a button to open the link =
provided by this attribute.
>=20
> Also, the "get-printer-attributes" IPP response should be checked for =
other interesting URI-type attributes which could deserve/need a button =
in the printer setup tool. Michael (Sweet), as master of IPP, anything =
worthwhile here?

=46rom a current CUPS/PPD perspective, the APSupplies keyword (value of =
"printer-more-info" attribute) points to the printer's embedded web =
page, cupsChargeInfoURI (value of "printer-charge-info-uri" attribute) =
points to any accounting/paid printing page, and cupsPrivacyURI (value =
of "printer-privacy-policy-uri" attribute) points to any privacy/usage =
terms information for the printer.  There are also other attributes =
("printer-supply-info-uri" and "printer-home-page-uri") that point to =
the supply level and root/home pages on the printer (AirPrint requires =
"printer-more-info" to point to an AirPrint-friendly page, which isn't =
always the root/home page on the printer...)

Longer term (CUPS 3.0) I will probably extend PAPPL to mirror these =
value with an "smi55357-" prefix, so you'll see:

- "smi55357-charge-info-uri": The printer's "printer-charge-info-uri" =
value
- "smi55357-home-page-uri": The printer's "printer-home-page-uri" or =
"printer-more-info" (if the home page URI is available) value
- "smi55357-privacy-policy-uri": The printer's =
"printer-privacy-policy-uri" value
- "smi55357-supply-info-uri": The printer's "printer-supply-info-uri" =
value

________________________
Michael Sweet

