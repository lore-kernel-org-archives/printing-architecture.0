Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F317D3A1DB
	for <printing-architecture@lists.linux.dev>; Sun, 16 Feb 2025 17:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739727188; cv=none; b=flVTc5QdU0RGZ4umcznS6W790wD30qpH1iiStvB5nOoAzONAeuq4dV4sUon/xCF2IFdtw8/7nz0R7ZC0nCb8Bo2db56jhoeekLZpuBUGyusfq5o3IRdR76wyG0MJDv322eEDInHPmeiCJmHmtcvfJPDyUwnuY6KXG8NSzPavcwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739727188; c=relaxed/simple;
	bh=hQVhFWmdpQZMRM/ZIARI1ecZQqp/n6KdphWj50DocUE=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=N79tP/VddESZX5UOka0+ah8dd+m2X0hQlDF2+YoK6D4jMuT3tpED9zvLAZKSaBwkso98McE9SLWcB8TIPBfB9a4713DArSTsZQlwpv56JtmZREfDhnPFYu17sd+nsf25CxvjhpXuQATot4iXEQ+gpubglU7oaeJBPJalMD2dzWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gbBVGmSb; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gbBVGmSb"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5dea50ee572so5295160a12.1
        for <printing-architecture@lists.linux.dev>; Sun, 16 Feb 2025 09:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739727185; x=1740331985; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hQVhFWmdpQZMRM/ZIARI1ecZQqp/n6KdphWj50DocUE=;
        b=gbBVGmSblAd09O7Qb3EJFgYHwnc8ZkBrOAiknyAVPtoKQgLfXqlg2h9sfqpZhxMriR
         s5NmRtvam8IOcMgkGeyiBzcVCemmeOZq0c3ZGU6T+f6jfQx4h/fuOQxAFnkpkiGxlMjM
         avWzS0vNIoHFyPeXJbYJeBNE6osK9/TGBMvZAf+sy1gsYSLkf6H2geWbk9cO4x3Jby84
         F0ETsQOMbVdS2Xc7pDMM+BDYg+6mpH7rsY6pmPjTcnln3K2NmjZrgKbKqlQGYDfXPHRQ
         vtSCtUR0vHQfX7EEWwS0qLLmAnrYdAFY2KV1XAYKluhuf9Z/9meppxxjbOImj8hYlLZP
         hwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739727185; x=1740331985;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hQVhFWmdpQZMRM/ZIARI1ecZQqp/n6KdphWj50DocUE=;
        b=qRSPrplD3v3N3+Rr4hHRHHktSARvyERIF1b+6Yzs2kfh9/A5UhZZi3L/04wOpTIlMN
         MAPUoCyU0wzsRLI4HXLTnQwJBdyXAq0s6FqVaxLCwSn1oO3h0e/8BIQeBChbp6bYxrVq
         Z9m/htJIMC5gbGk+zlRdArRs5taRYEpK1d8ACScwbOmKY6CYYtfLXWua+9+sk/P/XWmB
         jLemDsYXI5ugdYA0IqMjff7pTmmGx7/11JuA5EyRX2wimIH4wj32VcJPrZcjw0gb9F5A
         QuRXNYth9kQKeZ4MiFzbWKISgoMuAEH7puYAN4VyYeQaYTO9jCI9OV7GPhfEEgK25cs3
         lvXw==
X-Gm-Message-State: AOJu0YwUtFz9IYCLTPZ/VwYnMw4D0Npiw2Po1ECMVSsN8YjnMxK242L1
	CsFZ/hKNvyju87fg2EH7Ysnklv5Xe26jem7WrTMl+swrxcV64xmnhoBvRFnic+fTQFAEAPt7ctb
	/wCVH24Jm9Evk6CrX3XwjgEOQdrCTDg==
X-Gm-Gg: ASbGncthjBDb3jO2lWFm3zXdlxQjt0I9AKPBO+Kn86yKJKZriCDO4YC89N3XdL3dPL5
	REjbRKJslBMEzbHWY8nIbSFQHr/MGnbS2G2QHeU4nAANlQtIgaUkCoOoyK56+qzepxoCjyMYNny
	CpYNsaG+00N6k9qHBnp3p0ZjLu/Hm8TA==
X-Google-Smtp-Source: AGHT+IFMjgWHGfBof3QZS9vxp+bQaOeVmot430rLhax3+DYeP8oGrbHYVlg2fI19KG1JFtOL+WduGc+PWTdJPTg+LsA=
X-Received: by 2002:a17:907:7fac:b0:ab7:cc00:4d4a with SMTP id
 a640c23a62f3a-abb70d95cb3mr670071766b.35.1739727184547; Sun, 16 Feb 2025
 09:33:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Uddhav Phatak <uddhavabhijeet@gmail.com>
Date: Sun, 16 Feb 2025 23:02:53 +0530
X-Gm-Features: AWEUYZlP97NIZs1sSEUXtLBdWTp0PUxwat7Y27MY2NIlYuXpU_UHT7dGS-bb2qY
Message-ID: <CABWkgU75SkAL0BjEP6iQ3hNhjuj98QEsgYYRnthN=ora3fWP9Q@mail.gmail.com>
Subject: Request for Sites for Freely-Licensed Sample Files (PCLm, PWG, Apple Raster)
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,
I=E2=80=99m currently adding test cases for pdftopdf and need freely-licens=
ed
example files in the following formats:
PCLm, PWG Raster, And Apple Raster(URF)

If anyone knows of a reliable site or repository where I can find
sample files in these formats, I=E2=80=99d really appreciate the help.

Thank you,
Uddhav Phatak
