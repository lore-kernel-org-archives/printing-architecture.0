Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785BF34AAEB
	for <printing-architecture@lists.linux.dev>; Wed, 22 Apr 2026 11:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776856796; cv=none; b=aaiUfa3XJDsUej8JqrWLfZji21TcKICvy7zv6ABbPHpH9VlDHsyxpLBl/sB8FWC/BEk8SCFGKeMz0QPQYqsDG0nxxCIve3PCBOZfdUd5vLqRp2G9ARznmKXGCy+rgrmKcgUA4SZoMgqqGnpjLK1w4zIjgn1/eGUbubMr28L+zzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776856796; c=relaxed/simple;
	bh=74Ia4OA3fsbP3jg8L9NN9swtBbnUhdp07zenE3gAgv0=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=X9Xe/tNc9bwLbsCb7NKGCCx46t3k2TAtpXdh/UlExgn1N79u6tPQXmYwcPnOJuRkbOBWasUnQwO6g+WzrmmKMb9bAQ/NLhHUs/c1un1LqMy++Z1J/KvTKH/tbcfVAEBpnPIg1+KJDP/zXVjmcJHPqxiJo2DZbp7a/RuOi2wYiMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WyTrNs34; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WyTrNs34"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776856794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=RppxsXX1SMP4/A4f+oakK4Qfq34XECBr74aIeAqdUL8=;
	b=WyTrNs34H/J0Gh0kbGY9oif6h0vCQUwdnopPrg0RFmEKhW9QYCbeXjStCz3IcgGqOwJE1E
	TXhltv/pRQVUj/uBEraeyf1C5rXsUra+oIy9xEveO1Vig2IsJGqVOUuDx/8+PoOyIAi58h
	In87n7jsVWEXQpHD/fkCEWS9/iZDRJo=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669-DOKBJZn8OW-_Tq8xg9qYMA-1; Wed, 22 Apr 2026 07:19:53 -0400
X-MC-Unique: DOKBJZn8OW-_Tq8xg9qYMA-1
X-Mimecast-MFC-AGG-ID: DOKBJZn8OW-_Tq8xg9qYMA_1776856792
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b465bf993cso56322445ad.1
        for <printing-architecture@lists.linux.dev>; Wed, 22 Apr 2026 04:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776856791; x=1777461591;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RppxsXX1SMP4/A4f+oakK4Qfq34XECBr74aIeAqdUL8=;
        b=CAqnp340BYlSVjxoyA4jnPFs5q2vqcqyVYHCu6E6Eowh8ckzHlvlqogSV0UUnDkNK1
         if99PNYI0AyThUV6Gmxrg6lzscIO5RKfvRNYGEFnnBYEZsNmdCh5hY3o8hUi5iSM8feT
         zfbmc0btbzvBYFLPdUE+o/P2UG4qk33FDXlMWUn4mwlAo3w3zqKGqruhldSkgKQdR43J
         c2QT0x5ruEfzCwnrKSWYRCrmfXPDiJ27JAcquyQ4LzCaUFOBkrYksDk0QhhAKOA0db63
         2H/ycogfNZj+4D3Qvd43N2q/pNbIzb/AW6/rpF+6tlNAgsFqlk3LxyR5NEYOE1eC6CV5
         M99g==
X-Gm-Message-State: AOJu0YzcbXeW3I63flQs3gIxCJIdsz3SngSfuCj5Xq6ZBW9hTa7iTsR+
	RaBOQOSMesUmaVgVz+YLCWEuFoauANdjjmurdOYlL2sHV+YU+JKh/jAHsn01UgRhgBuPAdYMLvv
	VZv6MKWXr0856SMqpUnuaKQjTt4b3bG95ymG8cIKguMziiR4P5k39mjCwtFgZEBJA3MDNWkZRUQ
	y6qwFb02yQSF/7tPcSrNNK9DffgBPjnvFo6aWnjg4YIFYZYXEMJoETjYNTjDF/
X-Gm-Gg: AeBDiet6l5HLEHOW0L4LZZGaPiUszJX8amSTUw7vLyFEIDpxFPahxman3XryPRF/BX4
	/ImzvBb3c2OUznpjlbkYjiUtUGEzZIFt9iMFvzCLvS4Ep+SzBDZkCFEtTmhQq8ntypJOX8QSvIo
	UXjHuVt+CDKPWiz+VJmHbQk9LBLjRX2XBGNxGVDeC5bxSX3Zlqgt/KxOKj5ybeTFvGQJgEGucOo
	R/fzQ9lI4ZpGOfEmx/V3szI27gktWTYwDBQdTXGOyo45uxTfRGpEA7KVC9skO02Y+bS6X2onJiq
	enJR+mFDnXsDqf0pYvav09EO5kLRP2+/50Y8sXjzmXdsjGS8S9kHY34WRBhlZ39TTxiNN94RW10
	TaMC11DRLvFCw6IA9SwMw
X-Received: by 2002:a17:903:110c:b0:2b4:5e7e:34ce with SMTP id d9443c01a7336-2b5f9fb90efmr224679055ad.39.1776856791594;
        Wed, 22 Apr 2026 04:19:51 -0700 (PDT)
X-Received: by 2002:a17:903:110c:b0:2b4:5e7e:34ce with SMTP id d9443c01a7336-2b5f9fb90efmr224678685ad.39.1776856790944;
        Wed, 22 Apr 2026 04:19:50 -0700 (PDT)
Received: from [10.43.3.35] ([213.175.46.86])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5faa33486sm196581985ad.33.2026.04.22.04.19.48
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 04:19:49 -0700 (PDT)
Message-ID: <706917c4-28d5-4c84-ae87-c63c04eda935@redhat.com>
Date: Wed, 22 Apr 2026 13:19:45 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: CUPS 2.4.18 is released!
Autocrypt: addr=zdohnal@redhat.com; keydata=
 xjMEYfKEjRYJKwYBBAHaRw8BAQdAJggn9NALyWqrgrFGPJ9RvPb7wYbskxKRKQcLv+8HpbrN
 QVpkZW5layBEb2huYWwgKFRoZSBvbGQgNEQ0MjI3RDcga2V5IHJldm9rZWQpIDx6ZG9obmFs
 QHJlZGhhdC5jb20+wpQEExYKADwWIQRwgqClCi6SZA84gODkUi3MmyRv9wUCYfKEjQIbAwUL
 CQgHAgMiAgEGFQoJCAsCBBYCAwECHgcCF4AACgkQ5FItzJskb/fbUQEAm6R78JoZSIOpu68g
 tUUp1qbfDdsfoQkbdyfws/myB6gA/A6/9QiIk50DNCmBTisZk5CFP51YNvwnyxafmE3cDn8G
 zjgEYfKEjRIKKwYBBAGXVQEFAQEHQF6Qgj5UQqUdvqvnDqygQ6Vm59nRGHbPVDTwendtM5cC
 AwEIB8J4BBgWCgAgFiEEcIKgpQoukmQPOIDg5FItzJskb/cFAmHyhI0CGwwACgkQ5FItzJsk
 b/e2CwD/SyRi/I5Il5XY5VXEL/eBsnNvvtaO0T10V4/vBMiDb+sBAK3YmRl6WStfRiEvMXQv
 OhMT+sEjx6ufQXkuPeXHvrgK
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: p4wQbY2A3yV72K7ltZKWQ0Ob_cE5bB0rfAP0LUfGw8g_1776856792
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all!

The new release 2.4.17 contains hotfix after CVE-2026-27447 fix:

  * Fixed cupsd crash if user does not exist (Issue #1555
    <https://github.com/OpenPrinting/cups/issues/1555>)

I'm sorry for inconvenience and enjoy!


-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

