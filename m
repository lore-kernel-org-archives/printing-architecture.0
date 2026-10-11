Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0E11C5D5E
	for <printing-architecture@lists.linux.dev>; Sun, 11 Oct 2026 21:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791753602; cv=none; b=TYJ7gylNfBnW/bOzFZGCPRJO7FCEZfd8tOwuWoTeGC+SUhvIAUHjBcIDO7jkZKrVdtHiJ1JGSm6jhoOW21ZNXOctMHP6JaCmhfL2ZScEoycUTXqZCxZ11M/24yjnxb6is4dPg74WfMwkaXrMVGNXxyXJDkkf52soXS0fSBTjx/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791753602; c=relaxed/simple;
	bh=rNaiqLWyzUPaRFum4MccikEB7wWeyBtdiekPqBvMpeM=;
	h=From:Content-Type:Mime-Version:Subject:Message-Id:Date:To; b=uLExOf79Evejh4d2wTaobOOU2QHSlewiH2hG8cE2AX9L3o7r5vDtDXFh12KeOS65Yb+qYKX0hSxcWnFECiVZV5hmxegB6pZcwPaPdUThVzb1br4kPY0Ac/cD3LhQhlgeKz+qQsPmaBkHyCtzN1ug4AslyDz8d8PGorB7pvOmq0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JHxb99rn; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JHxb99rn"
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-141395927feso2265260c88.0
        for <printing-architecture@lists.linux.dev>; Sun, 11 Oct 2026 14:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791753600; x=1792358400; darn=lists.linux.dev;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :content-type:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rNaiqLWyzUPaRFum4MccikEB7wWeyBtdiekPqBvMpeM=;
        b=JHxb99rnIge6w7yFv8N7L0hU9MQmrDQK7FfvsHqWnFFLxHx9hKZXg2+zd7J2pu0a/T
         wypdloA8zxYzzYmij8tioC0MMMG0QG6qKILmciJn7APUsp4XLFcqlzYSMQoqG6ErAfba
         tegsM480dVK1OLZnCFJzEiSMUdlrGFMkwG1k8E1uhBJ01XKijVfq/iuufZfHOYbgbjXo
         Wo+mI22ZuoydnV9ekCNLL0xvtP8ebDEuXakav40ZYVbdFIfjvvXCuAHmfweVEWQiuI1f
         iaMVfBXDDHqFqioPKTeOXhpu/M6yslNXYesrEm+8yfeLPHdT4pyZQT12qPDyI7y95jY+
         Cc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791753600; x=1792358400;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :content-type:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rNaiqLWyzUPaRFum4MccikEB7wWeyBtdiekPqBvMpeM=;
        b=RvvBc+CraoBQodTdaa4kq5VgN1Z61beD6WOdszQe0uAFmfBSjTMxRK2ZcEIV1tW8w3
         I+zfApEngYgjeUTikaAmjAy57Ksg3uvIaK3EliVeKdA6CVDS1gDgUEjGqNGecft/s6pV
         zjNPJ/QdO/7pMHzJ9ZDd7iEY0SifU+kj0oCBYyJr2WnhW2RBxTDadNG7sjfnB8M/d4xq
         F+liDQWT2Vr0cq7TGqMAvWYgutSOSlPcslzePkbDZrOWoJF/VzR0mnrSKF4tTgkzzNgg
         KguDIguwSt/WgG4/oopzHDkqfuTy98QM6+lkGqEPoGgWbOIGMwjaYiLzF6tgE1R1JoW0
         +8zw==
X-Gm-Message-State: AFq9FYIp3bdY70UEa3doIJfAWgGoWgQ/sREwL/0EoyIj4f4389r8iDl8
	9npf4mUEtUEgEabpeHvRD6HkPf706fAdBHRBBDBOCe46XrCSYrTHu3osbexLJw==
X-Gm-Gg: AYBFou3NyJmtnh8T2pqofiVeerjxno6VcKmn9qgFvdVTZmj7CGd9C3HY5fYd9G9Axsq
	2dFr3To2Dhj43iX4wJh8ZmA0efbKoImmWbrdRtaGrWKH56ujD64eHvkK0vCjlrT3T53KA8iJvju
	FzkWa3l/O1ee0jgFT9fi0L4JZnElA/7IsnDdRI+W1xvXcCvDKUBuoKUYU4QSWYCtazYi5oNRx22
	MQJnQN5OP2lC8+11iLP8sLhr9bIYQjaFzjjsGOKOeaFA0ccIQr/v0sjsre2MZuW8W7sbvyOUx3C
	oFA0fsLMYY6EfzuG79k161wzFZ1NvDTkOV4++4Qdz1GaA53u3QfRyo4kGnQCRndR3R5S6rRpR/V
	VyjZWFj85pDOLsQgmTdUYI4r366Rj28OTzIrmyinhrky7QBx4fY1MLHVcwQiRkaf96g47iK3mgg
	1k1lryryaCW+rxx2rx7maQ3h31ox/h2p/GjDzbocESTt07+FsF8HACLJnEsZgopnb1nHWaXzPOn
	tounWLppZN5FVzzN3xrFskCYEjkCH11VcH2VDCkdmP2JVEM+HSHqxv1hbi3pz1MsbQ=
X-Received: by 2002:a05:701b:260e:b0:159:aa67:28c1 with SMTP id a92af1059eb24-16a5eb53f9emr12014926c88.20.1791753600313;
        Sun, 11 Oct 2026 14:20:00 -0700 (PDT)
Received: from smtpclient.apple ([2405:201:404d:2829:d4a6:db2e:49af:a73a])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a6021e49sm23950029c88.20.2026.10.11.14.19.58
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2026 14:19:59 -0700 (PDT)
From: Dushyant Prajapati <dushyant20nov@gmail.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Introduction - Dushyant, interested in contributing (GSoC 2027)
Message-Id: <39E3AAB8-58C2-47D6-842A-A7EB7C57C2DF@gmail.com>
Date: Mon, 12 Oct 2026 02:49:46 +0530
To: printing-architecture@lists.linux.dev
X-Mailer: Apple Mail (2.3864.700.51.1.1)

Hi everyone,

I'm Dushyant Prajapati, a 2nd-year B.Tech CSE (AI/ML) student at
Sharda University, India. I mostly work with Python, FastAPI,
PostgreSQL and React/Next.js/TypeScript.

I'd like to start contributing to OpenPrinting and hopefully apply
for GSoC 2027 with you. From the 2026 ideas list, the AI-driven
printer compatibility portal (ML pipeline + web interface) fits my
background best.

Could you point me to an area where help is needed right now?
Meanwhile I'm setting up openprinting.github.io locally and looking
at issue #202.

Thanks,
Dushyant
GitHub: https://github.com/Dushyant-web
