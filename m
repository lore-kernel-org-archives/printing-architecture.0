Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F616CD33
	for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 08:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784363157; cv=pass; b=g//arv7hvFvKOe/5Ao061+tc4ekj3JG9kRsoOpL1W44JtqeDAILPCZ3loGWzhXyRBBzLNu31C6tsUdwLEGLh0ttztJEdBRQcfYQc/mT3e/iM1NaqsW1roi5/DjhcMbCx08GQwhZwkLorJJ7Bgd1Qh8Q44TrIK/7U5Ved8lMkhtA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784363157; c=relaxed/simple;
	bh=qQ79Yi1TmjJRYwlQLLbqqghRDbquUjvDdEttijaice4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=GBAepamApmDgT9LCLzzd7Sj81Hv8b2JHAHL4ke/1OWpGtrTdrwe6jM2laaGRdLxhE+PvOb7Hf4VXjpbZ7g8LTZ9Ag10fbYOmDBRRll+LmM4T0dd40wBrxr8hmvlc6lqJrNI3f5FNkPH/frJ1nKYzW2msO3ny2sdmIeIr87zlB8o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=qcprints.net; spf=pass smtp.mailfrom=consultjkb.com; dkim=pass (2048-bit key) header.d=qcprints.net header.i=@qcprints.net header.b=ekGncP83; arc=pass smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=qcprints.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=consultjkb.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qcprints.net header.i=@qcprints.net header.b="ekGncP83"
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-8fcc43c48f7so81695896d6.2
        for <printing-architecture@lists.linux.dev>; Sat, 18 Jul 2026 01:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784363155; cv=none;
        d=google.com; s=arc-20260327;
        b=GI5v5ghZTK5YM42X2rhdepyOJk9LRh4scnXRNlglkVh8xFv2kAKUc6e6mov7HDrBPm
         zUWhPE59VewOi1jBCqO24NdsFoqHctFQDA8ztOFZJ2SKo6rs6I6Aud+SATdxv++J5Zb1
         DnSdR7zFXFg4pcBr2o42glzX2nCjwxubN1R4RtujLDKoOt/NWi+M6A6lX6HgIa0CCXn7
         xLMnCFvyHN5rSx0N9sW4Sbd/Ea35FTTAU6iwKIQJQRf/f2wpjqWcLZFqbl5EeNda9iKT
         IpAetz37sllC038nh4HFUoy+GjspngJIi0mg9mIrp2lA0IorjJIK02B3uWsffUIEsjEJ
         uAeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=qQ79Yi1TmjJRYwlQLLbqqghRDbquUjvDdEttijaice4=;
        fh=m4od8JhQ2tHYJn2BKlkxtLRo/12dAAVN3EaHINuco2Y=;
        b=lP6kTfdZ3e54PkwNvN6/76HpWV59H1F5I7uaXvCT1LWE3yeFqglE7k3tQLLjE7wZsj
         YiZgjq/UIYG43tOoXJvCrVm8tUP9w/ewvJdoFARdeXTQvDpmS4UvF1CxNfmyCX0+CU/g
         wDyqsmUUl+5h5lCSBFao/se6O6mW+93wNS++/f1Le3Cwy9IddoJMTlRsVjc/Cp/xr4gf
         1FJEaS1Yi3inmpIOX1udlm/0+Lx2aXSBjVI71K880bR9kOuzj2nlbxOM2rNMRR9h7Lbx
         X57hqk3HV0s8quGY+5UwRdngHUFKhdo79tM/guBelOhhd8JQt0DlI7gAzHnrMw/D/PVD
         IJWQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qcprints.net; s=google; t=1784363155; x=1784967955; darn=lists.linux.dev;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=qQ79Yi1TmjJRYwlQLLbqqghRDbquUjvDdEttijaice4=;
        b=ekGncP83R7OuNieFJ7yS6Mqf+JZ/xNWSjYLmwACC8cqhS03SNC4298ehorYRCPwZM4
         6qxzbkS6so6FT/nftpQuEciqGS5QgCYCnDBH69t09gpObU5mbp/l0AKuMS8QUteufgP2
         d2mhIbUWqIhpavS7twzrMmyq9f448aE2njrbdCSBHEyBmK5GzJ4tQw6b4csHK5xh3sbJ
         +PCHfRZ8GWbni4CN+nH0MJLf4lmT8EOZ/jOFsYJDUJHpSInmnUvh500EZQpzODGwfczf
         M3DIHtxCcE/NUm39en8bOZ2ajIHhf0p3AfoBpLL0XPBI12BKKwbvR4wOB2dKUegTPxLR
         qb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784363155; x=1784967955;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qQ79Yi1TmjJRYwlQLLbqqghRDbquUjvDdEttijaice4=;
        b=XJ/TZrvcHsf/J6iQFdiMseI10nbRaP0cTWG/ixaK36djHTOpCBnyByAZmFl8UUPD+J
         MKdn6ahjcM083xiDiVrCK/Bbqu4/yzlu9VQOg55+1cEJKPJICaOKduPiT37WKxZGlYSd
         T7BZQsAJFo88sCWF4gkUrhkt2LRmDPAdZUM6CaUoWNQO+Sntm4eHGc63qtXgv7ZfynVa
         J5STY3qxxauR8UArmXnKBMWxK+UyDiSDFh6nxMF1PGXNw2lqlM13at5jCOT3Ush/KBvj
         L/EDxXhdJGFLe+KYzqseBMO3CUd6qsAWo3mQ0p6/HpW4sAk+cVeip+ksU3AsejqJdk2B
         7Gzg==
X-Gm-Message-State: AOJu0Yx2eJ1WyyFcKC+yF5HveAQFRsW2Go9Meb2duVn8ca5kdJwqXr58
	buKB8TpM3sQ4tEHmWhR+65CvvRM9acSfLTsJqVAOXxjeF0KLA291DjvUWH7mPI06G72pQh5TZYX
	N7K4ZCxmhq52UD6ZTOsQ4MV/QVYgSk0Xr3akc8R70AGTGSP6E1c1fas4=
X-Gm-Gg: AfdE7clvkxNbL06fDNscpDvwRD8ZybYUOnlh1b5TQG1UbVNA7dlQ8WGYlC8aJXfQupM
	alSJApwOob/1SP/tIWhaHN/m3d+7INXl3NU0Bl35eQS0MvWchOk5B9HeH3LHooCFyyGfhH61V67
	DaSC7MSSNhJHeci0S4OwG96pUD/Ri+sWczfN13ZUj4vzSuAGwck+bFPfo51Xwa6v4XMq7PWSTeF
	eLaPjRQAt28gh76UEnqCUWyiT+FpHdqzzC1yISlIBywBJJDguJ2Oe9xMQnXE3r2fNXyRJLZMbkn
	SE9Jb+bZLt9ezohs
X-Received: by 2002:a0c:f202:0:b0:8f0:9d9c:52c1 with SMTP id
 6a1803df08f44-907783a217bmr69938496d6.38.1784363154981; Sat, 18 Jul 2026
 01:25:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Joshua Braddock - Queen City Print Shop <joshua@qcprints.net>
Date: Sat, 18 Jul 2026 02:25:44 -0600
X-Gm-Features: AUfX_mzMxcPlfVYWWJGBSvcmTAmQTBwAkTiPdIMMXzSpMTM1wjmIrjN7ntFKLqo
Message-ID: <CAMk8RBYmD3ad5cANY+VSXMn01TZEyW0pS5Vn6zSOowFjZXxWwg@mail.gmail.com>
Subject: Exploring a universal production printing architecture
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I've spent many years working in commercial production printing with
mixed-vendor environments (Xerox Fiery, HP DesignJet, office printers,
legacy Windows print servers, etc.), and I've been thinking about
whether there is room for a higher-level printing architecture that
complements CUPS rather than replacing it.

The core idea is to separate document generation from production workflow.

Today, applications generally render directly to a printer driver,
where media selection, finishing, device capabilities, and
vendor-specific options are all intertwined.

I'm wondering whether there is interest in an architecture where a
universal virtual printer exists on any supported operating system.
Rather than targeting a physical device, applications would simply
"print" to this virtual destination. The resulting job would then
enter a vendor-neutral workflow system (headless or GUI-based)
responsible for production decisions such as:

- device selection
- media selection
- imposition
- finishing
- routing
- job scheduling
- recovery after interruptions
- accounting and auditing
- communication with vendor-specific drivers, RIPs, or printer applications

The workflow engine could operate as a local application, centralized
server, or completely headless service with a web interface. The
virtual printer would provide a consistent interface to applications,
while the workflow layer would determine how and where jobs are
ultimately produced.

My question isn't whether this should replace CUPS or existing printer
drivers. Rather, I'm curious whether OpenPrinting has already explored
an architectural separation like this, or whether this is an area
where discussion would be appropriate.

I'd appreciate any pointers to prior work, existing standards, or
reasons this approach has already been considered.

Thank you,
--
Joshua Braddock
Queen City Print Shop (qcprints.net)
701.203.2873

Notice: This email, including any attachments, is intended solely for
the use of the designated recipient(s) and may contain confidential or
legally privileged information. If you are not the intended recipient,
you are hereby notified that any review, disclosure, copying,
distribution, or use of this email is strictly prohibited. If you have
received this message in error, please notify the sender immediately
by replying to this email and permanently delete it, along with any
attachments, from your system. Thank you for your cooperation.
