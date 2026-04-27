Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E46F3A9625
	for <printing-architecture@lists.linux.dev>; Mon, 27 Apr 2026 21:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777324433; cv=pass; b=bozTUlHArBQjdwwER+KQbS6WCFtfrWAWHLyusIdmsSW/JnDUJwA0Vjsr8XDstXt7s0ld+UCQgWVC2afJe0iuQS0evNHogD3rFcXis7yVuuOwdvWxrbqTgMlW5u4HSMoGxyixc2ICMYmRHxvgMzKqYIIxH19DbPiF9HFjYzCZiUo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777324433; c=relaxed/simple;
	bh=EdoA2IlWfN7Y/JyDf5dtR+mljnGd5UES7bQoSmnFxn0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=UVaXf/e6cs5XCTxkcsfszqOD8zGXhJCZ3zC8vnj1ibCh7e/+hwEhy0ZAfDxW8cUNgkzL65KrMWfpKAhNoBWvP43nFj99kGU2QBrvjWqyNBEcMpX2hqHxean5nyExWkCG/XikZmAzv0lXKNynwm8pjwUC/8i1Njeeyyi29d3BJR4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gdIx6SUJ; arc=pass smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gdIx6SUJ"
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38e12c67a6fso106773571fa.1
        for <printing-architecture@lists.linux.dev>; Mon, 27 Apr 2026 14:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777324430; cv=none;
        d=google.com; s=arc-20240605;
        b=iV7CBoyHYmeB4G6fFdi4jUHBiax96fAOUkJUzpUCVzFjaKSExqVOKKhM76EWdkuJJC
         tFfRAddqVQ1aaPZ676WtXM0h6kHRoRykBdYZjgJBJLVtMs///0zYYOp2hc7lpF0e9un2
         neZ+tgEhOcZt3lg7z39tIaE9NuoUNB4VWv7Pf/vZVDR1t85vUt1nRtWcgS46/O5MWxF0
         awZVLBSbkHrXwmZTDuvbgSO2axvSoED7Yecox4CxjoWZ9QDHCAq+7qiOTl+HrPYS7wuo
         61TbxwhfukTO9lPZfKyHG+B41IM4owBFbLkOElr98y/kFayu7jN7HL7oiy7VhEoROyT2
         5UKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EdoA2IlWfN7Y/JyDf5dtR+mljnGd5UES7bQoSmnFxn0=;
        fh=m4od8JhQ2tHYJn2BKlkxtLRo/12dAAVN3EaHINuco2Y=;
        b=ke5+UQRWyP4ZwnAA7TGxhiPuoadAkz3bM5ISnIe36Gou8sA4nkXvBsIQDvmEKFapX+
         jmdj+9Hg2Nr4mnU0Rhj5VrH+FMGl6JLT10zwBl1MxLy97qbDmEB0eUMOmRP+JXgAuBz+
         1kKq6dqtT/1+WKLpcNJP9BW0dm0+BXtbmPNysDorTaIbOqLD2H0qAsWapJH+Q9Jfj8Ji
         xYYsXR0DC0pz6m3FMfE2Adb4GcE2Kux5qGxNV2ZY+aHye3h0x9wPGfMvyyWXIXnsW+IG
         aldvjvr1PmGDQAi91FQ8FNY6AX73D2YkZ8G3IKgoMNZZmS+s5iH9SJMbr4NmboeXj4fm
         zDcg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777324430; x=1777929230; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EdoA2IlWfN7Y/JyDf5dtR+mljnGd5UES7bQoSmnFxn0=;
        b=gdIx6SUJcRaPG8fMABFgrNh/PZwT7XRkS7wPQMOp65k1kn0aM5RYEK/HNLnPgPeBQp
         l1x+drzvRZqYsTe32sefJ8TZZ9Hc3N25ZLZgrhPSxuWdey2DE1xIuPl16lclW3w1P6A4
         1im0iCYHujoGk3XAQM75b92U6vwdot+MsyOixjCLXXsYz4C0h5JWYW0ZV7v6CP2uBxAo
         /JFpyCtqzd0HOblb1dRKEBeBKwHbNCTdEZXP+1Ag6LrO1Kh0ATMlXe54MJM/Es1SPXQ8
         befj1YgeEoG5IcihW1XTktFVZOtCHYKwANHJXVNordl9g/6LQ37wILy6y3pl/dgNDbKK
         lgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777324430; x=1777929230;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EdoA2IlWfN7Y/JyDf5dtR+mljnGd5UES7bQoSmnFxn0=;
        b=IjwemLCo2BvzaAxHa9FfN/7Li2cspHsN+HxlSLFMwdWjM/TIwJMcPFcO88sLRzL0ij
         i3faooRhGR7PWrXDO8A/pUh0i6wD6GRuycn2cf/wGSZfoJdpK35Z/Oq711kBYYqieE0N
         lqLfzih9LN/kHrh7DxTrKL8MWgNrBWjhZW9PGJLXIXD47kXaX1kzp0XkDUc7rwf0U8c1
         M1YOErvDVepcAZbnO7R73j39MnRauEgmfvlF1ixlBwDnuNPmtJ4dEYzdBJ7SG/FslL2V
         /TG86qAKZBeGSTT/k63EYhfm4mPohZKU4qSOdSpajdCCgY/cPLe1nv1z9ft0Sw/e78Jw
         uWdg==
X-Gm-Message-State: AOJu0YwS60NxkO4hPuQLv8OmDEBKMtuTsAz6J9Y91MUPcBIqHt2VGw5t
	WtHnytlQqk7FNeKHIG+7cJLpBLroevLI+pnE2+sKY+O5SjgmQzrGYOyqFY5CHMVodzNXwyaSqGA
	RVNeBOoXD4X313O+A5j2qLb95HxorpBTVPtqzMJ4=
X-Gm-Gg: AeBDieuERf7u0i34ZnL06kbbGbyJPhqg3XBCporjE8AVevnI9YtDuqAjlPGFRf3kHX4
	yJ/By4AOl1CrsqJcWpg1afwtDR92NIL3WHTsSB2dF37GVNergs86Txrd7F7NTJM3M60MFiELqSJ
	lHPkTF2ik04PqtVhcdmmT6Dok11aLSRnQFS/+cJ2smRBE02LJSs32oDldGCjP0ZXxVrwALuoPTd
	ibxQzlTcnXSjPOzS9d49uhVy79p7gLN5kZLRT1o6U8ynDLTH2sRaAceliRP7w9DZvy8OSVu9YHf
	lKBCfHSUovO+cEDBQfQA7wqEew==
X-Received: by 2002:a2e:bd12:0:b0:38e:8902:7a7f with SMTP id
 38308e7fff4ca-39240d0a437mr545391fa.13.1777324429809; Mon, 27 Apr 2026
 14:13:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: David Day <davidday@gmail.com>
Date: Mon, 27 Apr 2026 14:13:36 -0700
X-Gm-Features: AVHnY4JxSixJ9PWSI1M3joDIHVoNinxjPQVSgnOZ-RarXXxtyXJAIbZ2-WCrsrw
Message-ID: <CAAcCaTTPopK=4DU1Qw_R6WMWc5vBUEU620=4xfzuEq3mwOi73w@mail.gmail.com>
Subject: Xerox Phaser 7500DX PPD
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Greetings,

Not certain if this is the right forum, but I am in the process of
switching my desktop cold-turkey to Linux (having last used UN*X on a
Sun Sparc 10 workstation in the mid-1990s) from a Windows 10
environment. My beloved Xerox Phaser 7500DX printer is suspiciously
absent from the list of drivers on the Open Printing
"Postscript-Xerox" page, and I was summarily dismissed by the support
folks at Xerox. Is anyone aware of a native or compatible driver for
the 7500 line, or any kind of workaround? The similarly spec'd 7400n
driver prints 2-sided, B&W, size up to 11x17, and resolutions up to
1200x1200, but the color profile lists, "Unspecified profile" with no
option for color printing. Thoughts?

Thank you
