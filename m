Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359283C00
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 15:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731511664; cv=none; b=Gch7t6GI27JJ7eMU2JZ5G8OdQFB9CCJBR9ReoP7Gsafb1YG6XvQOplXTsrypa7HZ/Xm9z5LgdeLWoB+m1b8bWcsb7BR7O/dqIe74fLI9jYORszVVVFeU++rIaaGj5i8nrrwQg6HhH6SjcOSVZl792m35Re0/s2HFTJRh2k2/NkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731511664; c=relaxed/simple;
	bh=oUFY8uuluaMSd7khlxpyczQ1EAK58cqh+ADq4PaTJH8=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=oWmDegjJ0YDUN0H3Wt8pjxPGiVTGND/WZtJfUm9uGB+eO51IdXsPbdIombtFvgcKtmVaq2iIlIzlRF2xyi6alluo6suJ4ccmIlWuejfBXAf9ukzf/zYhhgGk2oxwxUjNEsm/x0Yrgadp+DP5ObDmJvwiiKX0cmYlEaM9EUTg2iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b=sc+3tv0A; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=msweet.org header.i=@msweet.org header.b="sc+3tv0A"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C481460898
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 15:27:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.791
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DGOI4XM52nnp for <printing-architecture@lists.linux-foundation.org>;
 Wed, 13 Nov 2024 15:27:40 +0000 (UTC)
X-Greylist: delayed 384 seconds by postgrey-1.37 at util1.osuosl.org; Wed, 13 Nov 2024 15:27:40 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 972B46087F
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=quarantine dis=none) header.from=msweet.org
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 972B46087F
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key, unprotected) header.d=msweet.org header.i=@msweet.org header.a=rsa-sha256 header.s=default header.b=sc+3tv0A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=173.255.209.91; helo=mail.msweet.org; envelope-from=msweet@msweet.org; receiver=<UNKNOWN> 
Received: from mail.msweet.org (mail.msweet.org [173.255.209.91])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 972B46087F
	for <printing-architecture@lists.linux-foundation.org>; Wed, 13 Nov 2024 15:27:40 +0000 (UTC)
Received: from smtpclient.apple (cbl-66-186-76-47.vianet.ca [66.186.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.msweet.org (Postfix) with ESMTPSA id E514B80F0A;
	Wed, 13 Nov 2024 15:21:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org E514B80F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1731511275;
	bh=oUFY8uuluaMSd7khlxpyczQ1EAK58cqh+ADq4PaTJH8=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=sc+3tv0AlwzJUS/6tvFIWC1gC4p9qpyNSbN0PQuM1UIcUK/RCo5QMNc+kD9zXP/OI
	 miQ28M/w+ahZQj0NIanP39tlUzy8T8fXitkatzbQn5gdkSaCTtDP0T+JndlModtA8S
	 stUuQN01uQ6GabxmMr7HPKoHV47UafNNXJF/ESKQ=
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3818.100.11.1.3\))
Subject: Re: ipp-usb: exposing device serial number and vendor/device ID via
 TXT record
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <534756ed-ba9c-4f19-8692-329cd7d22d0c@apevzner.com>
Date: Wed, 13 Nov 2024 10:21:03 -0500
Cc: "printing-architecture@lists.linux-foundation.org" <printing-architecture@lists.linux-foundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <5D78AB47-5A38-48E4-8C7F-9068214DBE2E@msweet.org>
References: <534756ed-ba9c-4f19-8692-329cd7d22d0c@apevzner.com>
To: Alexander Pevzner <pzz@apevzner.com>
X-Mailer: Apple Mail (2.3818.100.11.1.3)

Alexander,

This would be fine, there is already some precedence for this with =
IEEE-1284 key/value pairs.


> On Nov 13, 2024, at 6:35=E2=80=AFAM, Alexander Pevzner =
<pzz@apevzner.com> wrote:
>=20
> Hi!
>=20
> I want to be able to match devices, exported by the ipp-usb, with the =
underlying USB devices, because every second user asks "where is my =
newly connected USB printer?" and needs to be pointed to the list of the =
network printers.
>=20
> For this purpose I want to add a couple of parameters to the TXT =
record, published by the ipp-usb:
>=20
>    usb_SER=3DVCF9192281  ; Device serial number
>    usb_HWID=3D0482&069d  ; Its vendor and device ID
>=20
> However, if there are already standard names defined for this purpose, =
I'd prefer to follow the standard. Please, point me to the right =
direction at this case.
>=20
> WDYT?
>=20
> --=20
>=20
> Wishes, Alexander Pevzner (pzz@apevzner.com)
>=20
>=20

________________________
Michael Sweet

