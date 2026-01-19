Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246B328B56
	for <printing-architecture@lists.linux.dev>; Mon, 19 Jan 2026 17:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768844114; cv=pass; b=P8P5BsH2tGiEUSAR6Hx8NUKuMgO6m04Jy0sVbxO+1qe3Wh/FCcLGEnboDd82XtjHKs9IBKudNMx3xDf4jJ3XQSB7SVx0iXNaUxA7s7Wif9JWoK7EGiAPaOrvHuXPh7llVK0wtpASuckyxrKmcTePRzpaDKwJgQc7J42sOTbvTnk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768844114; c=relaxed/simple;
	bh=TMISbm7b48OxYpdOhepbcV+PSi7e/acKGt1Xqgyd/Ag=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=Fc0PbO0Ucc3whHHQg5XsHvXiIcSIw2gBX4+mVteEWYzCAuWNH5f1H8CnHeyPyjYRxMAaN0o8LFQfPhDRibR0UQpz3/TGRS354AUD6xARc0R58YY8I3vw7JfwJuqNlS0jYF+cnKSqcCt+sjBkk+MghOZkgm0ZNp9upleG6yoVgvg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JEMB1qzz; arc=pass smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JEMB1qzz"
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0834769f0so31044265ad.2
        for <printing-architecture@lists.linux.dev>; Mon, 19 Jan 2026 09:35:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768844112; cv=none;
        d=google.com; s=arc-20240605;
        b=Joi6BAdOeR/xl/ZjAxvEfWMiUD4L9/LZtCNlsQd9UBoBuR/v4dIVCY9apvHkSuYpOq
         R25TJoXT7hXAPe+uypUoT7FSrXvAWDzjqKqNkuTlazCpHHhs3ODVB0YkKnqSuSRpoC3x
         S9/d1iDS+gIkAncg29St56TZk1MsCBOnM+u4pIGbnMRuS/PN/foGCt48Lk67rYt0kMSr
         mvJbAFltXPsk2BeZ/1awhu4Wvm6kB72IYo3wziX2mC/DD5ES44bxt9w/v6VbcVVZUwhY
         ANusc7XkTmCveqeYDKjGjvfAe8TCAYnrs8PDUGumzq4XDfqd0G9zPGAzHgx1IHTV44hQ
         Ur2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=TMISbm7b48OxYpdOhepbcV+PSi7e/acKGt1Xqgyd/Ag=;
        fh=m4od8JhQ2tHYJn2BKlkxtLRo/12dAAVN3EaHINuco2Y=;
        b=TT8pSYYtxawEuFXaNBFssJIpEhBr08uDJmXh0LdImIYxMZdJwwqWM/4KMk8i5lrhnG
         uQJMikMFLRVSwZVhFrR4cVLbnMowUzsZ+OP4rWPC6xhcoXesX9TPdw4A+6lSE6fFLE9l
         A2xaff9DGeKlPRNiEEFbjeEcl/4ZiEnijEfNZGDxfVcpcSpojwaB19zlW6sq3T2l4KF6
         yW0IN0hrKvx136t9Gtb3qQVe2Yzu/qrNjmRxYyfXdVR9o7VTD+kXWeTuEjKu17sK6VqC
         IarZViaZfn24OmRWaBt8+FvzoBGJSRx67V8aTNJXb1Ouz/T7JK602J63oHj/78DwzvPN
         +5IQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768844112; x=1769448912; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TMISbm7b48OxYpdOhepbcV+PSi7e/acKGt1Xqgyd/Ag=;
        b=JEMB1qzztLFquz/Gnzw2UfsZARl0tkNOXpxxviEiLilj+EqPb4N3xz9fOQ0pXYK/4u
         PP4oaELCV2buHhYSgLdeFsZrY+/XJYCjdKAQbNd4nX/re8FTyoj6PkNv36lbWdoGBgNF
         8YcYIIXR3bRKsWI1fqx+iYehVvi2BJYpIu37DpW6YqTLtvam/d5m+ez1ibh3+y9XfkZm
         k7LTRFqP9bBTu7STNO8lBCnAkuwm7C6g2cVXuT6hD9zbjHDQOC9aXBcCTPsfPOXgGoGS
         YN9ErxmSuWBxGFjWiv1gBq7duIrf+3OZeL9lXvYWqOoF4AvpEu8F9W3Q5bmXyUtmva4B
         0A8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768844112; x=1769448912;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMISbm7b48OxYpdOhepbcV+PSi7e/acKGt1Xqgyd/Ag=;
        b=SXZS+QNLLZtFNivY3dyChqN/UPoZOKJ0cvr+gvooeMuDOuLEgR5ysw7rCVfSDg1oUD
         NMUN3AQ+Nwgziz2b7YdVsb5nxRQxUQw6/q03n2njMzlFwjDlUCoF8t2FE9D2TVB2CG/D
         EZBM5gctkHBTKivGJpfwxnYXJIvOiI1NsmTfyY8g0x/vFqEuqZmUyPLVo2daOrBCyNGQ
         NyWRB751D/miC/1sfF1lFCwAdkzBo9Zh63+2C7lwdhMXQI8m+o4iwvFuM47rW5L3pkMt
         fHstezrreYEYE/NZb+sqXL3rINjOVbgCs+8zdeoMrifoO42r75MJcK/P5U3rbOEOaNGF
         eh/A==
X-Gm-Message-State: AOJu0YzawAb6riwChW+ZX+RBbQK5dd7vfgnf4l55ZUB6di+E9gbl4b0A
	E1YVGDcB+5YrbZrVe8KWzpHOnAMJEXCcooruQuZqG2QDmnVnZNVx5bPpHxBhNpJ72A+FzhuH7Aw
	QjpC/hDDy/WKlNFq7vKPO3Iwcm8WodeN6StW1
X-Gm-Gg: AZuq6aIlQ65jzM6qWeGIlMUQSzHDCo2gt6MX4qk4lSWWpHnvrXRXB/561nyd4Qp8zYu
	4eFgyVankMP0PMjDYqTeHW4ST5+gfEQEn3Na9Y2cS5zREC28ADkALkvpzbrfWJW43x1dBzHJfWc
	hVV4QLgFcRrhzgA/orM4FSlJ+ziyJt8zd39V/ROfzGMeivquUeIvv1S0PibxzyHZG+P8QDvgcnJ
	GKvZb6JWWyyBWVWo+G9siSlHEaTP0hxohEDnCaTCJz5vaswaASAKFpJ1kyRvrAA7UK8w87lsNGS
	vBJo40GL1Q==
X-Received: by 2002:a17:903:41c8:b0:2a1:360e:53a7 with SMTP id
 d9443c01a7336-2a71887cfabmr114907525ad.13.1768844111652; Mon, 19 Jan 2026
 09:35:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Rohit Kumar <rohitdhankhar7347@gmail.com>
Date: Mon, 19 Jan 2026 23:05:00 +0530
X-Gm-Features: AZwV_QjirLiayBtbKaDWfyXasLHz94xETrE0MgAEBE8-L9EuMB_xHRI71KCKlFw
Message-ID: <CAHuB0--i=BWWi30DTHRYDoBhRJ-9E4AdD0cHFz9dVyq3BBv7KA@mail.gmail.com>
Subject: [Winter of Code] Proposal to Standardize CI Workflows for
 cups-filters and libcupsfilters.
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,
My name is Rohit Kumar, and I am a participant in the Winter of Code,
working under the mentorship of Till Kamppeter. My project, "Complete
CI Testing for OpenPrinting Projects," aims to standardize the
Continuous Integration infrastructure for cups-filters,
libcupsfilters, and cups-snap.

Per Till's suggestion, I am reaching out to share my technical roadmap
and seek feedback from the community.

Current Analysis & Strategy:

I have performed a deep-dive analysis of the CI workflow in Michael
Sweet=E2=80=99s core cups repository (.github/workflows/build.yml). It serv=
es
as an excellent reference model, particularly in how it uses a Job
Matrix to parallelize builds and capture make test logs as artifacts
for debugging.

Currently, the CI for cups-filters and libcupsfilters lacks this
robustness, often failing due to unmanaged dependencies in the runner
environment.

Implementation Plan:

I plan to adapt the cups workflow architecture for these repositories
with the following specific adjustments:

Platform Scope:
Till clarified that unlike the core cups repo, the filter repositories
do not support Windows or macOS. Therefore, I will strip those jobs
and focus the matrix strictly on Linux distributions (Ubuntu LTS
versions) and potentially BSD to ensure stability across our target
platforms.

Dependency Automation:
My initial audit revealed that builds often fail due to missing tools
like autopoint, cups-config, and libcups2-dev. I will implement a
"Prerequisites" step in the GitHub Action (similar to the cups
workflow) that automatically scripts the installation of these missing
dependencies before the configure step runs.

Static Analysis:
I also aim to integrate cppcheck into the workflow to catch memory
leaks and code quality issues on every commit, mirroring the rigorous
standards of the core CUPS project.

Request for Feedback:-
Before I finalize the YAML configurations, are there any specific
legacy build flags or additional BSD-specific constraints I should be
aware of for cups-filters?

I look forward to collaborating with you all and helping make the
OpenPrinting infrastructure more robust.

Best regards,
Rohit Kumar
Winter of Code Participant
