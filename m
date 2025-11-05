Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE63E22FF22
	for <printing-architecture@lists.linux.dev>; Wed,  5 Nov 2025 18:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762365706; cv=none; b=YLErYhNdao7ea0GpG508vlKef12H+1URParWFmTTlDhtltVBIf2PdX7i6O4oQRFX1AMFgpsGaXDd8wChYtls2o10/U10M8LUPmJvucGniyJcOjcIfE1oS6CKA0DAzp8oayP5T0yUhwa+pJI25zxSIm+1P+K5klFq0PMlG/bkk9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762365706; c=relaxed/simple;
	bh=OAsYmS+WUGx5yPrm6UAF751VpP0Rj3hbjAg0glXrSG8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=gshcDMI0OHef8OOaaNTNJWdmngSBIsDhPteajP1BFyGMmJ6aBRctKCbXl6lWYESllTMXFcc7Gw9rFsCmfsdj85g3aTBSf+0QI4AsfBt/cS2FCKR9uZyBceID9EeBTUzSUHgK/MB2hU2nl8kMztWYjjKBYbeKtwE1FnR1vEtM7nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bZj7wA0b; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bZj7wA0b"
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640f0f82da9so105312a12.1
        for <printing-architecture@lists.linux.dev>; Wed, 05 Nov 2025 10:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762365703; x=1762970503; darn=lists.linux.dev;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OI26HS1VMnYtV8+gdvclVcCy4eha/ijJ4UJHLWB6kMY=;
        b=bZj7wA0ba/Jhe4O65O831BIWJjP1aNlD1Q9wQoEns4HGw2QXTdVpQFQTCuqP2HKwpR
         aYdQPP0EvVTs7Y0+D+Bw82J8lzA5cNtgRCuJEC6uG0ifk9GgpDbqdQ7HQQSHEF+Kg95H
         BcwvWdRiDMUjcWT61CNqIqQ5xD2WrsWapBZTo3/HrLyvLgIvrWrHRtrk/Ebt7XUp2VUg
         I+8ZY5IU4OZfGdGUuvMNmmNLWWVw6TTNffGOPbD9rkC+i0hzam4R2A9lvJVrbPD6OI/w
         nya+K/AJ2WIhkBqRlDpSCCmwe1fweTWJS9hxFgdTN70eCTCI8m2JSBE4YeYe8kkhE/oc
         72Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762365703; x=1762970503;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OI26HS1VMnYtV8+gdvclVcCy4eha/ijJ4UJHLWB6kMY=;
        b=nL0G1DC2PRchXPHh4AkZSo0woR0dyItV/PSIKatXXYx45HJyh0XvRW7AvLBtzSUm6v
         t5JQNt/ckGkLDdRLYq+rgTioOVksi4Uh7kaDs0qWQHnmpuS08gFy3KqHxj3r6L0Dx5Dl
         8Bl0hqPBfMcdwR546Qv4jzKSv9DSAnO9XfZklukuiPEOGQ0VhfthcB8yStW0vmIFpLXK
         0jgDbDBngr/sm/Esl8LDMHuy9JYE440bHebE84eL0uFtdd44y22iUHFTeHTTtd+RBdt5
         53vlcncFlmChBNc+eXDXsxhSWr+8JZJspOBll4nfQ5Dtms4ZAuVA+f/Sc731vzzqBsmW
         sk/A==
X-Forwarded-Encrypted: i=1; AJvYcCUufyx62KWJOhhxcRRmlFSBFRAf3MKda1PScLfLPfmteLzoFD+BCNbGG5a9dLLB0NaG076DzhYOl68SVrCGdTVGgoIaA/g=@lists.linux.dev
X-Gm-Message-State: AOJu0YzmEv8nAIskH+cI9Q6uPU1bzCZWJNCQIhoSmqyryG8DiiBToluO
	PcOEmHIb3TezmWFXPxnQDXAxyF2fIeji0XfmbsmqjkNLoulJDhCq0VUS
X-Gm-Gg: ASbGncvq7TYG38haLJ1SEkzKASLSDRLeooyRaPAS3y8azu63dQ4noba5L7jfVfgnEGt
	mVNn5Gg6UQiZMK8qmJNZ5bjw14V42My5CV6nBaLaOGad4KXGbsMixid6xffCS0AlTxDn/CPkq34
	O7+KTX2n5BAQ+QNrEoFRJO68x4M+7kC33Qx8ZdGW2TrAPTaPLYe1baD7f3QQPsqSZyR4YxxXwkO
	1yjSGQBObLYCKQJgAy0qeV+lxUz+G2Cmy5YTJk8905fVVSSem25lEx+lDrwg1v2APfMiPDTaz1M
	r3dg5ZwqaBVcIMbW4qpJRfYx5xodsBmlFZqef7Sj3weqC6UHdcpwu19CQZ7vqv8V3Sh/xN2HEZN
	ZWaeQcUNPo7KOQBoIpjv1gJeL7deF6f0p1v+HqxWFwg1k2ssuS3kVcmiyE22EW74dCXrJRQYCZX
	g8emd9Qj6rZtGSOQ3TjPTSuGcoYS0pWCm548p/mDruGLqcI7q9PBnvWTJVbmk3merfuTQ=
X-Google-Smtp-Source: AGHT+IHGmZDbIGA2fc3HIGaz05p6Izlbg/MqpI22/3sMwaJzOI4UmtnyPdAWsXXc5SN1ugOlp5vYYg==
X-Received: by 2002:a17:906:dc93:b0:b6d:c7e0:9da6 with SMTP id a640c23a62f3a-b7265297e8fmr370919966b.16.1762365702680;
        Wed, 05 Nov 2025 10:01:42 -0800 (PST)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b728937dd4bsm19323166b.28.2025.11.05.10.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 10:01:41 -0800 (PST)
Message-ID: <8026493a-929f-46e5-a539-0f6863eae82e@gmail.com>
Date: Wed, 5 Nov 2025 19:01:41 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: OpenPrinting News
To: Ira McDonald <blueroofmusic@gmail.com>, Aveek Basu
 <basu.aveek@gmail.com>, OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - Sovereign Tech Agency is investing in OpenPrinting

https://openprinting.github.io/OpenPrinting-News-Sovereign-Tech-Agency-is-investing-in-OpenPrinting/

    Till
