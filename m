Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A5E1AA1D2
	for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 22:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739829615; cv=none; b=H5lNviUIKjT5BlutBWbs5gTsdyyDtSi49WmMnCQfknpcwae6rJLVABAh6jgNGsBHr53WeeyRsHtZBYNSqYdUKcvAMb/JKoBUqubaS4TNj8FgLd3a6DcehW1peWW1N0560qBlbR6kWnAB4lf+DGv8VeAiBZ7wGYSHNpy7errJCEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739829615; c=relaxed/simple;
	bh=JWVa87WCt8tcHaHnw2RCuvphCBUz06vHGPSf6MwiHck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fzOqhpZIUjTOMR9UmtOfUzU1auWvUcSAncwPmre8ursC/NNMdHgt4o5mL0E9+3TqXcjbJmqv46YHcaL0mtW2gb2Yq/dkQc7rPWpr3lSG01bWZzMP1tRemoGjE4KqkvOC2QPLuJQzqmWARbyrei3H+gDhRei8BAK4aKlMp1yE1Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N2w17tPA; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N2w17tPA"
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38f2f748128so1593960f8f.1
        for <printing-architecture@lists.linux.dev>; Mon, 17 Feb 2025 14:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739829611; x=1740434411; darn=lists.linux.dev;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v0qjg4LVWGVfr5bCUS1/Cb+JlC1N6f6W1O2Vrku9jhg=;
        b=N2w17tPArtIXtu+Q30oTxoW/PYopmBNMXk2/uUobKiDiKWQ0C6lRyMVHindCgyBVOx
         kIiYyNi3Y6qOzqxLCXk/ZvdbLkeREmoyUxXxX9Pv78e858Ztu7OsjpLuxTmWHuld7wTM
         egNlC8+Nl/OQEYXwgzspiPISN1EX9V2SMMkP8DDJs16ok6sjha0uz/Pqf5GB9G+REfc7
         ay27xU50xJ/EjKfAbvaTqs3IMAAQigVfJa1JCjtri+1AktEH2y6XdHGvRLIUy2ZA9P5K
         xRk9rQJdTZwwYEx1DPcVzg1AwO6TQj1yS8QYA8+cOKe8iwefgka59jTJqjiCNj/Q6Ihn
         ealA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739829611; x=1740434411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v0qjg4LVWGVfr5bCUS1/Cb+JlC1N6f6W1O2Vrku9jhg=;
        b=GCDvARNW33GfRoD8P/hEzs1QCotFEw9VOYQ4B5Caf/6yQ856bqeUJOOJz3Vzkn67OS
         xzpLIgB/yEyeXS8s2fX5C4gfrTOyPGL527Hr9zumO6JQEUgRqdjSnGmQ/xOLfdBjZCfN
         1PjGrM/7DxjhvXJ5CvkBSqPz85Ki3Fsuiw6ZEJuNK9hjI5tv/p6zgmoNqGM750TeQ2y9
         BBu5xqdSEFKkcsHCDPWVU171HesMYsz3CqVpglYW2bN/ptlPwTCe4fSgjn2ck0Y8mtwJ
         x8+iJ2S3XqeVwiujHWZai5fL6aF1iyrP+8hH00C2APBvClMeOQrM8ohEon6ThXPEE9ip
         pApQ==
X-Gm-Message-State: AOJu0YyrZXLu28mHl5YI7NeozUwjwGiktGDDeTKKKkrGRdtB7bvK5EbC
	fyV3qnv2e8cJum7TM6PYkSjZY2zKcQr3rbiOzXfrvn1Tt4Tp/yh2
X-Gm-Gg: ASbGncuEYxQep8GvbYSYwziSriYWcW9Kaaz6TqyjSN/OKYoAx78k1TTX3Y0G+3iLZ6i
	b2r0ZqAUhrqGQA4HZNDYsD81I3pdog3zTar0Kbo4sMnKzLnOpKqVe2SoutOUWg7G1COqiebDeLT
	pd9mHsCTmDz22b45EOX0iw51qM6ERhCPwtBSDjo4bqmJRVNIUIft1d0kH+2xABoMOn8WHrCuk0/
	JHJxJ27u5u3NDKTi49TLJT0BBgTgU7YDYbqn6AcFP4WU+DLH1nHCl5/VUCfCAnqYdiTc2qfmi35
	sfuNLc45k/mFlJ0BKEVv66P4aBH1GnW9vnanJifuPjm/s/J7JU5aqzn+pUXmNnWxDg==
X-Google-Smtp-Source: AGHT+IHsQxqa0d9lx1uD/nf2jTxwbyBLmaOGFGHvur0IeEQIJ/r7k9Pz2V3OxG8W39hlXKGBlaTNqw==
X-Received: by 2002:adf:f446:0:b0:38d:dc4d:3473 with SMTP id ffacd0b85a97d-38f3417156cmr8921134f8f.51.1739829611391;
        Mon, 17 Feb 2025 14:00:11 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25a0fe5esm13407077f8f.99.2025.02.17.14.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 14:00:10 -0800 (PST)
Message-ID: <c7163593-4cd6-4ad2-b39b-8a0daaedeede@gmail.com>
Date: Mon, 17 Feb 2025 23:00:10 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Free-/Open-Source-licensed JPG, JPG-XL, PNG, TIFF, PDF,
 PostScript files for print filter and OCR CI testing
To: Michael Sweet <msweet@msweet.org>
Cc: OpenPrinting <printing-architecture@lists.linux.dev>,
 UDDHAV PHATAK 22BCE10731 <uddhavphatak2022@vitbhopal.ac.in>,
 Titiksha Bansal <titikshabansal0209@gmail.com>
References: <4c111a8a-caed-4539-a9eb-96de0988bfd1@gmail.com>
 <CB450CD2-139A-4735-BF41-DFCED376D44D@msweet.org>
 <a677abf6-085b-448b-88b7-28b830f2f133@gmail.com>
 <DD25184F-36DF-48D7-818D-FEBC045FEB71@msweet.org>
 <762971A3-E6FA-4764-9C1F-2C1C83434303@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <762971A3-E6FA-4764-9C1F-2C1C83434303@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/17/25 22:48, Michael Sweet wrote:
> Till,
> 
> I created an OpenPrinting project to hold the sample files:
> 
>      https://github.com/OpenPrinting/sample-files

Thank you very much!

    Till

