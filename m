Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE05202C21
	for <printing-architecture@lists.linux.dev>; Thu, 10 Apr 2025 05:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744263293; cv=none; b=DZJyuNC3f71q5wxGN0UA4Tv32RAPX42P1AyvdeYlNxh1kYIPd+znW9VCGyqt11g1WybguMjNQ9SJJQ2sgHgZ3SoR9g2Qm2ATB/U5hoffthkDcFSZQT/Rx3hWRbhGUpSsT4BQhnwBECIa5qGje+eCwdQYbnlnhXspEo4aSZs3XeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744263293; c=relaxed/simple;
	bh=xSEreFAiZo80ysB42wy1gUVptOTViaEN11Mx3tr2KRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=B/+36V501fB5NrdMumcrKSLK7p1y2teM9NTtO5LeAbohLIS9kGeml3pzv5UfiCW3CEcPUGOci34k/YJeUjnWR2fgCB9Ds9VDNwT/D8qwV8DJBxnf0lR+97GZcQx5FItiZM/e3u6PFZtRUVinLlTSvkKbP9kqQ5v3aj1/RUW4Ahs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BceVCRFC; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BceVCRFC"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744263290;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YxSifKYokeqTe8dgWPuqRUElm7A36Ixb+sYcm0CYmwY=;
	b=BceVCRFCqyiVDiDCPEBIWjat3YW7vu/zwmnRrnwdMIKou3eJUERUAEu2fAz4pVT7hJz/4b
	wkC8CgOiFLaYj3GHuG4zmvwKmdPjcmoM26chF9uJNPz2CXlzhyfGCvtNP9eEMdOT7oGR6G
	y5ssL2H43Qkoqc4g4DRhPS2zyiFtI7E=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-266-bCbpVt_GNJaQyKYDcmoYtg-1; Thu, 10 Apr 2025 01:34:48 -0400
X-MC-Unique: bCbpVt_GNJaQyKYDcmoYtg-1
X-Mimecast-MFC-AGG-ID: bCbpVt_GNJaQyKYDcmoYtg_1744263288
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-43cf446681cso3069285e9.1
        for <printing-architecture@lists.linux.dev>; Wed, 09 Apr 2025 22:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744263287; x=1744868087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YxSifKYokeqTe8dgWPuqRUElm7A36Ixb+sYcm0CYmwY=;
        b=Q6olD4PirbwmyGzzX2plROqfTVPpceDSSosFMzA0l+DBBnnseTi98Fu96f0Bxse0V2
         lCOfCD7ZDGz6nOUNFToCuGCOQ0XOKQtFypHLfcetsB/1tmgTFlWa+zKJZQSz9fTqSWLV
         BJc4mCEnV0Fh5AvnUQ0e0+oqtp8qs5Wt/RQ36QHobwFzxJK94JRl1cAziLB6kEkgkssF
         nNbLmJkdjoUNdXVDrnvCjq64yMlNYKM4WJC1wGYxytPAXTlCpLVKzWn6EJTZv12GsgDi
         fkYcvATEjSPfDDmhENZCAJJmWrTuNsryt5V2fpd3Y3wjWYCxi8hZ2wcLSrGUjehOiIPD
         PDkg==
X-Forwarded-Encrypted: i=1; AJvYcCV0Dysx4cILm2+DeyEQswiZKDyi6afl3SH+atXBv2tkNknwJhxFc+9ZY6KV6sRbPd7dAvmJ6XGIOKEMLhy7HIHW4y48HzM=@lists.linux.dev
X-Gm-Message-State: AOJu0YwAN4B5mikhUuGLNe4WU2CtGkx8tPL41BsH/bh/iWPARmPXjl4F
	wcZKoYqoPMG75tF39OaFyON7Fp2BqaPIxIOTuOFdD3tmvNinHoRBkYIJCVNouSpi7O1xOTwo0/o
	X020Ag5DllG7DTIcRGE4fdJ+Ib1Wqg7Bd6YZVwgecpI3DMoyqeTZOT5/mtHvfXBjsSAv0v0xept
	AaaPownw==
X-Gm-Gg: ASbGnctpAszRzCRjDIZ6zWIx2w5ADDrUu+u5G9jKcH0oMRgcFiZcd6ilWKeU6NxYTXR
	iDcOMuonYZygnl/FQv7Nz9HbOgCewKvWv9V/rsw2RL7u4g1dRHyAYspzFgd2+8sT0BkydP09d2S
	40JjtyGaJn7lam2t6pFwy7ebMDKAK5/Vorgrh+sLa48xLVPSmESPxSWer6NrqyY5B23ecM3oOIJ
	CIYAGeFNafE15WIKwHLQ77Cpb0MOxnRXfK7oQ2osgPmj10isfnz9mvuCy6ull9JYtJwYSkhE+/x
	fwy4lVUr
X-Received: by 2002:a05:6000:220b:b0:39c:dcc:f589 with SMTP id ffacd0b85a97d-39d8fd4844amr621180f8f.20.1744263286924;
        Wed, 09 Apr 2025 22:34:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnzaPGYDTF8tK6t10HOHrtEpS/wRqrqaLVNnMIsrED8i/sjqUYrP/PewpuO2LM45gNw9yQlw==
X-Received: by 2002:a05:6000:220b:b0:39c:dcc:f589 with SMTP id ffacd0b85a97d-39d8fd4844amr621166f8f.20.1744263286607;
        Wed, 09 Apr 2025 22:34:46 -0700 (PDT)
Received: from [10.43.3.35] ([85.93.96.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d893fe28fsm3666161f8f.96.2025.04.09.22.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 22:34:46 -0700 (PDT)
Message-ID: <754fde2e-55b3-40f6-b117-162a66f8d3d0@redhat.com>
Date: Thu, 10 Apr 2025 07:34:45 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: gopp 1.2.0
To: Alexander Pevzner <pzz@apevzner.com>,
 OpenPrinting <printing-architecture@lists.linux.dev>
References: <10dde7bc-c7ab-4b0e-bef6-50487051d682@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <10dde7bc-c7ab-4b0e-bef6-50487051d682@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 30STqMD-6OhxJ-EY78NeetAHwS47Dg-OIsEB12XHIgQ_1744263288
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you for the release, Alex!

On 4/9/25 11:23, Alexander Pevzner wrote:
> Hi,
>
> goipp 1.2.0 is now available.
>
> 1. The handling of extension tags has been revised in a manner similar 
> to libcups (they are now treated as a special case of "binary" data). 
> This fixes issue #6, where goipp could panic when decoding an IPP 
> message with a low-value tag encoded as an extension tag.
>
> 2. The semantics of Groups.Equal, Attributes.Equal, and Values.Equal 
> have been clarified so that empty Groups/Attributes/Values are no 
> longer considered equal to nil.
>
> 3. A new .Similar method has been added for Value, Attribute, 
> Attributes, Group, Groups, and Message. Unlike the .Equal method, it 
> checks for logical similarity—meaning the same set of attributes in a 
> different order is considered Similar but not Equal. This method is 
> particularly useful for writing tests.
>
> 4. A .DeepCopy method has been added for Value, Attribute, Attributes, 
> Group, and Groups types. Additionally, a .Clone method has been added 
> for types where it was missing. The difference between .Clone and 
> .DeepCopy is that .Clone returns a shallow copy, while .DeepCopy 
> returns a fully independent copy of the original.
>
> 5. New convenience functions MakeAttr() and MakeAttrCollection() have 
> been added.
>
> 6. By replacing sparse tables with Go maps for operation/status names, 
> approximately 140KB of memory has been saved.
>
> 7. Numerous cosmetic and code formatting tweaks have been made 
> throughout the library.
>
> 8. Tests have been significantly reworked, now achieving 100% test 
> coverage.
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

