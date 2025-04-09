Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321B02528F0
	for <printing-architecture@lists.linux.dev>; Wed,  9 Apr 2025 09:23:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744190635; cv=none; b=jvjbHtRvQy9LbdIgK1tL7TBREFSx+Xlomd4baEGGLunA6sr7VcSdsRPSS1qQO6fkdJI7q6RysLYikqJ6VAgydOcgrgTML02Zy3CSfkvIXmkx+A3sy4udO5GHLg4lopILSgoYTi5Uz6FwLuJGfkpSS/viOR+DhZy5OmHeqjIBMW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744190635; c=relaxed/simple;
	bh=Kcqz65EzlYee6IU87cPOSqZoJbZhMDy7dGYOcfCg9x4=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=YVgxVecPf4QVCMMYk34QURFEH9ID5AurNVxkhmX3qOq+aM3cpzwnCqpjRQubBP+LVK8comR1JUP7rchXFTc/Ynmlq/7Is5uoXU/XCm4koFRkkZqJqpXMLfhO4MFXponmYuKs/DQdDvmkUn5Yq3H5hGxY98ziGHMU9SW2lP2k5mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com; spf=pass smtp.mailfrom=apevzner.com; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=IyxJrltP; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=apevzner.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=apevzner.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="IyxJrltP"
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54b0d638e86so7870954e87.1
        for <printing-architecture@lists.linux.dev>; Wed, 09 Apr 2025 02:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1744190630; x=1744795430; darn=lists.linux.dev;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpDrxJ+p7hvkee7o/FjEJMRR3cmAUh4gAesh86SyR+k=;
        b=IyxJrltP6iAtwFBOCehz0BStf33gX7tjXvq7hCsX8PMZqefcB4pVHfYH2OJDVXeTXu
         PTdDgDDNmJQ0uqHr7KNandgaSLJDMF/V5bxpYy6njKBgKPvZQzjI8N65QJeWyDrAWacY
         Bixd0EIqYVZ7vY98f6YpylL3VMEr2IAwFIZfXBVUyXVYdvAWXwHCRHOuqhDjmww1wC11
         HJ4QO/3jRxZYtODqPzlafDABE/IuFh8VxRk1gS1HfrqV/zdoeceNzKH/v5kQCaFOW/DN
         O1wzw6sc/I4pqMagW7+wAfjl3Vq2Zjogo9qA24+ENa6Rr+ntkMNTa42HhdIC/X463aj0
         dmqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744190630; x=1744795430;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hpDrxJ+p7hvkee7o/FjEJMRR3cmAUh4gAesh86SyR+k=;
        b=Xr6glyxhzVPxfGbJJJa+PFFTBKIMMgquE3Uxtf1mirEEFVbCK4jf2Gzj1QC+N4V1Xt
         kfYej24clgnCPyxjAHtY0liOlfoK18rcnc5EOBiX3SVnE1Bjp2rzAGDWU7mb+oNpEWFk
         5xUtUqBPhaN/RKkdrcyjH3DhJCs+QznYceHtu/nsp18bNkPi83TMOXC3Wnq4VrMo9M9I
         Qt8IMXxfgJbOEpMEYffv5g1uYEA9ehMmMgLq6F4Sul6fBIyVTCKoS8EFkXDzl/IEqTnv
         FF4NaJ7WK7QZbcXCECtbIkwhWVXqeKa8IZ5eD+C6C/VFpzcKbOOe2gVzQSsMVOCBcSi2
         XyTA==
X-Gm-Message-State: AOJu0Yzt+4O36e2t7+RPSPS110r2qCNyT24Oj6rSJd3Ed0aMxTl0cX9z
	BlNKoVmiPH44PFHWCP7+x7of1BIRE8CWnNAipph6wWoyVofDiXthp56a7RqfJlG0Dfg1r6wcBfc
	bRyA=
X-Gm-Gg: ASbGncv+G4Hyd23wxtAFEd3VrZ6CBS3zyRB17UQD/48LeN9fTKlYfe9ZcwrCKh3KtCs
	ZTyfxXDceR5sVACqo5WdR2n4cM1PgGBh47zrk+Pz6BISMUKqTXw2RRSWMj/sgIo7NnMnxrzERFh
	TfR2JMxYwZywfxAARIGYguEnl7CgNA8IgWVwfJHb+p7dFQ2cO4D9TQIGLyhz67tiJhKqk3mtYPe
	R2Wc0wfSFdL3OOSNdYtIQw6Oe9jGVG3LfEgTm80ySK+hXlL8sShDd442g41LEHC+/EVMrdEih73
	3ICesUczlINrt9Pr9ELOaqtv/9G1yNFKPw==
X-Google-Smtp-Source: AGHT+IGiXEu5X9vcuwJvr1w/NfKj+ZTx0uDrNvuOz8T/D8Wf9OsvA4nYOxBzIdTvj304tMWKo6C8+A==
X-Received: by 2002:a05:6512:1189:b0:54b:117c:8ef3 with SMTP id 2adb3069b0e04-54c44572277mr559904e87.54.1744190629472;
        Wed, 09 Apr 2025 02:23:49 -0700 (PDT)
Received: from [192.168.0.6] ([46.188.9.40])
        by smtp.googlemail.com with ESMTPSA id 2adb3069b0e04-54c4565f2c3sm86788e87.138.2025.04.09.02.23.48
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 02:23:48 -0700 (PDT)
Message-ID: <10dde7bc-c7ab-4b0e-bef6-50487051d682@apevzner.com>
Date: Wed, 9 Apr 2025 12:23:47 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: gopp 1.2.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

goipp 1.2.0 is now available.

1. The handling of extension tags has been revised in a manner similar 
to libcups (they are now treated as a special case of "binary" data). 
This fixes issue #6, where goipp could panic when decoding an IPP 
message with a low-value tag encoded as an extension tag.

2. The semantics of Groups.Equal, Attributes.Equal, and Values.Equal 
have been clarified so that empty Groups/Attributes/Values are no longer 
considered equal to nil.

3. A new .Similar method has been added for Value, Attribute, 
Attributes, Group, Groups, and Message. Unlike the .Equal method, it 
checks for logical similarity—meaning the same set of attributes in a 
different order is considered Similar but not Equal. This method is 
particularly useful for writing tests.

4. A .DeepCopy method has been added for Value, Attribute, Attributes, 
Group, and Groups types. Additionally, a .Clone method has been added 
for types where it was missing. The difference between .Clone and 
.DeepCopy is that .Clone returns a shallow copy, while .DeepCopy returns 
a fully independent copy of the original.

5. New convenience functions MakeAttr() and MakeAttrCollection() have 
been added.

6. By replacing sparse tables with Go maps for operation/status names, 
approximately 140KB of memory has been saved.

7. Numerous cosmetic and code formatting tweaks have been made 
throughout the library.

8. Tests have been significantly reworked, now achieving 100% test coverage.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

