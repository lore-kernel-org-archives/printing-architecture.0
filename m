Received: from mail-43166.protonmail.ch (mail-43166.protonmail.ch [185.70.43.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A697015D1
	for <printing-architecture@lists.linux.dev>; Sun, 20 Apr 2025 02:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745117424; cv=none; b=g1VTQJNr8b+sAP0LDwrt0Cdnm8oitNNn2QQlD6u+jQhfCrDKrkGyc3B0XswnAosdgRXuJEj/cxWaoN3nFXzO/e1+jE3v7YlCBDs1h3PISnYvVzqVkRJszFISg9WqvBeGpbIG/NXwClq+W2g7Bn7ej3BoNufIs8MwfioXkz+CHus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745117424; c=relaxed/simple;
	bh=SjDJj20du91CSfqhB46Km+BtV+HvbuF5a86pVEC7Vzo=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=ZK0/PVtZshqeg6ZFdrZybsxZ5sLL1itkGLEc8i5SZjQGU2DWI6yDVQuSW1lArY5u2YskpSxP2oFvRVW3ph9h0fdvdK+qrDgekjk8ezO9i1AaYZkWnC4VRBO5rtG0MZ1hQxISaiCGPw1dmzdplsfLNNTC4Lv4sS/hUEKt4mpiKrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.ch; spf=pass smtp.mailfrom=protonmail.ch; dkim=pass (2048-bit key) header.d=protonmail.ch header.i=@protonmail.ch header.b=BfNGNcLj; arc=none smtp.client-ip=185.70.43.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.ch
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.ch header.i=@protonmail.ch header.b="BfNGNcLj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1745117420; x=1745376620;
	bh=SjDJj20du91CSfqhB46Km+BtV+HvbuF5a86pVEC7Vzo=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=BfNGNcLjmStTC/XrM2ekwqgspP+42nhWjSraNALNmIoL1NbE6ljpwiXxnGxsVh2D8
	 EDWAqyNEuGIBpEN0p29A9QV44bvjgiMA5cAx+mQD9PXjQnfA7YAixHCPJwNwbOz8NM
	 xE/NSsER82ggA5FyiP0JhN2si2dIlyUjDI64Jz0dSrtQFz/Y0upmg+BvNkfu9IjvuV
	 NW9IuiMQcdBatwJI7XGJIf82eN8O7kV3jVLgtJBKm4aMmrbkTDRycTfgYmRrES/bys
	 KA4nr25pdHaa1o0OjjujRqJFAY3jI7sXqzGwIonqRaaO2dSEHouCXbxCFDcGMieYl9
	 tCbvq9SaUSVUw==
Date: Sun, 20 Apr 2025 02:50:14 +0000
To: printing-architecture@lists.linux.dev
From: aisuneko icecat <iceneko@protonmail.ch>
Subject: Exit behavior of system-config-printer
Message-ID: <f364e80a-cfe9-47ca-ba7a-7af5fc881ebb@protonmail.ch>
Feedback-ID: 34173221:user:proton
X-Pm-Message-ID: 4d8c72ed4f28562b6939890bc1416f6e5c3ad25f
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi list,
when I inspect the failed systemd services on my system, I came across=20
the following failed udev configure-printer@.service, which belongs to=20
system-config-printer:
Apr 19 22:51:42 liquidice systemd[1]: Started Configure Plugged-In Printer.
Apr 19 22:51:42 liquidice udev-configure-printer[29612]: add usb-007-032
Apr 19 22:51:42 liquidice udev-configure-printer[29612]: device devpath=20
is /devices/pci0000:00/0000:00:08.3/0000:65:00.4/usb7/7-1/7-1.2/7-1.>
Apr 19 22:51:42 liquidice udev-configure-printer[29612]: Device already=20
handled
Apr 19 22:51:42 liquidice systemd[1]:=20
configure-printer@usb-007-032.service: Main process exited, code=3Dexited,=
=20
status=3D1/FAILURE
Apr 19 22:51:42 liquidice systemd[1]:=20
configure-printer@usb-007-032.service: Failed with result 'exit-code'.


Is returning exit code 1 on "Device already handled" intended behavior?=20
I believe this could be misleading at some point.
Thanks,
aisuneko



