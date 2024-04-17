Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C93E3E493
	for <printing-architecture@lists.linux.dev>; Wed, 17 Apr 2024 15:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713367082; cv=none; b=a4NnU9U7zwWEhFTXhkF/dpBg3XUlaY9GJE3mIxYj/tkHek1EtdxdE5ptG2R8QJXVC1TMAv0kLSBSsuG4n1rYzOhXCtSDMxlqCMtPLtcw+jCIW3ko7eUsE2k71vZuBIBsBzBa5O8zsC38v8EOWCl9ZCrXKOiEwCCFwmqRcQshBhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713367082; c=relaxed/simple;
	bh=x/3NHKCnCPm3Z0+KaryWAnkbXVuoGoBarYthrIk5Oxo=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=ZeQO1eE0jBE5L5fNyTIi3z6nSR6Xc7by1AX58AcUt65keTy2PFCZtS1LWJRvIB65xdGsVeObP0ImXNPB6fgBdWNnCfYTP7kPnVIl/cUcTQrFE/MM3CmB8gpk2SuMn3og+UIzeftBKYwLu+p7kzp3fI/hTqmVw3qd/niV3GCq4uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IBZ6BW/Q; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IBZ6BW/Q"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713367079;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=YFmPPyO1NobTCn4skNRs1dRsthyVeKtyq+kmxEIv9R8=;
	b=IBZ6BW/QRxE4kSuWo14ZkGxFsCoZcegE+a93jXZPQw2oqCNZO3/fDTGPtELV8Q34bnp2ii
	TlWJJSDlaWL06qYyPzkNPZJejstDn9QVlcJ0SaSsqtopOwH/6Wv3k6ATpiZUCgTi5Lln11
	nSyIWEcAMr26jw+0rPCW9C5R5Fw+/lU=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-345-XNUrbjpUOia_dfiobPZ6SQ-1; Wed, 17 Apr 2024 11:17:57 -0400
X-MC-Unique: XNUrbjpUOia_dfiobPZ6SQ-1
Received: by mail-lj1-f199.google.com with SMTP id 38308e7fff4ca-2d88271f485so49362341fa.1
        for <printing-architecture@lists.linux.dev>; Wed, 17 Apr 2024 08:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713367076; x=1713971876;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YFmPPyO1NobTCn4skNRs1dRsthyVeKtyq+kmxEIv9R8=;
        b=tLErUlMF8ynDCkIVxp+t0rmnpM5+REcbdMOM14E7m1316tnyJbhuGrPGJU/Da6HEMW
         HHFgMrudaAZgVrcOZvWsSFgvtA9JNjRh2qJ8S0B+BDZNVGNLAj5dR2lt3T+efyB2YcAM
         r8G/skD0wKL2CIy/jLNJ0x+lbZIOpdmRsN8PLjtfZhLt4ZjjCwAinPqReFLSI+1oDJPW
         lAeCRdmicGa9BnsbV8uD5ytSMpjTEu2spHIcOtNdFnDQSxQpg3AB/ovEDnpVvHVpD7wh
         RM4lZxiW4j5nJcANoBX7+hradtCNtGlcA6xd4W/DSMcS+8pDuZ/lfwSWO/iuGvo1gUJC
         E5YA==
X-Gm-Message-State: AOJu0YxfZCGKrSiYRfS9p1FEc608pwShZzoidlpNyvRzgRW4Dgat1zEp
	Ep4SR3BI7dZRkIgWkxY4p/tkUQdf5jfnL+bSMGhhLKDc0f8s1vLkvvVDJwkfdBjPyGB27H3wSWf
	qEhmyllyPV2WbMUEisabyxOS0sGQk2smk14KjwXis7fVl96Zd3TDoBX1pTbeUCn84KqkSU8GDgh
	sMtfyunwxTrxp085JXWCElV8BatTwj1VQmehnQYjBoqW+Xui5S84AIqoDQ
X-Received: by 2002:a2e:9f14:0:b0:2d8:66d:7571 with SMTP id u20-20020a2e9f14000000b002d8066d7571mr10186226ljk.23.1713367075815;
        Wed, 17 Apr 2024 08:17:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF36BuRfrfONEVSqXZWi5PovXhq8KGYncE6dk9sXCpVG5K3iGRZB/TxX/c51qKR/AtXY/VtTw==
X-Received: by 2002:a2e:9f14:0:b0:2d8:66d:7571 with SMTP id u20-20020a2e9f14000000b002d8066d7571mr10186171ljk.23.1713367074282;
        Wed, 17 Apr 2024 08:17:54 -0700 (PDT)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id s14-20020a05600c45ce00b0041896d2a05fsm3191149wmo.5.2024.04.17.08.17.53
        for <printing-architecture@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Apr 2024 08:17:53 -0700 (PDT)
Message-ID: <21cbcdbf-e6c6-4fe8-9950-94c72c4f2628@redhat.com>
Date: Wed, 17 Apr 2024 17:17:53 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: OpenPrinting <printing-architecture@lists.linux.dev>
From: Zdenek Dohnal <zdohnal@redhat.com>
Subject: pycups 2.0.3 is released!
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

today I got into fixing build failure of pycups with the newest Python 
3.13, so I created new release with the fix.

pycups 2.0.3 contains changes from 2.0.2 - mainly changes related to 
newer Python3 versions:

  * removed shebang from example/cupstree.py
  * ignore driverless utilities for postscriptdriver tags creation
    (Fedora bug #1873385)
  * remove epydoc from Makefile (#27
    <https://github.com/OpenPrinting/pycups/issues/27>)
  * fix invalid delete of pointer (#11
    <https://github.com/OpenPrinting/pycups/issues/11>)
  * Makefile uses wrong Python (#32
    <https://github.com/OpenPrinting/pycups/issues/32>)
  * define PY_SSIZE_T_CLEAN in cupsipp.h - fixes traceback during
    IPPRequest.writeIO
    with Python 3.10
  * fix the test.py when there is no printer installed (#46
    <https://github.com/OpenPrinting/pycups/issues/46>)
  * Use PyObject_Call() instead of deprecated PyEval_CallObject()

Version 2.0.3 was created to attempt to fix pycups installation via pip, 
but it was unsuccessful.

Enjoy!

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

