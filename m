Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943823321D3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 11:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760699322; cv=none; b=Efk3PpNl8Kln3/dxw9Z2Mg5nYUOB29B2LAtQgAFxC7veRDJJCHdM0wLH+oWGM4cPHAvqidWodBCeuo7pfX2XyM4G+i6TgpYNQKHPQzbfoWo/lvCo0GABbbq9gbDgj2BFor1zcbz3tp2G42nkw6iLExYoAiJh8BqmXKPfIecHzZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760699322; c=relaxed/simple;
	bh=ChZBC8YZhT7uB09oXYmD01O+Q1dbz5geXgVXETDblKU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=F86fn+ED752wzcRvCP4nmiqhqAU7kdATZTpDmq7y05J0UfH1qrT6wkbeTGGJDzom6Jf2+QZ96Qw8iJOkuBODsuGFm0Ui1IOZmpZR3PgaN372CNOpB0UntIRq2LEu695JEC3AjYEe8pLMDQwkCXe6W2/3X5uELQBBjX3t18OKXNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QDazKc2H; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QDazKc2H"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3951A40746
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 11:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p8lAb0shdL4E for <printing-architecture@lists.linux-foundation.org>;
 Fri, 17 Oct 2025 11:08:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6183940737
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6183940737
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=QDazKc2H
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 6183940737
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 11:08:40 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-63994113841so3126495a12.3
        for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 04:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760699317; x=1761304117; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ljOeCqVVeDOJG8JPVmOPX0PQH5MOU9TLGd0ZX4YsKg=;
        b=QDazKc2Hc1mE4Oa/n1Nz9C04E9qMgnEUUoSDqml+P8ZZVMLoZix+aufFYASFg6ZOzp
         HG/Jl6PKJ3bB183WTvvqjoEnLpFtns96E1oKfn88TEErprZw95UHa9HbK1mx78nMth87
         BVhRFOkPtTUNkykR1UYBfjfc1wczn6yoSWavSU9pjpTUFqimrv4fhzUaq/dK5Wx4lYl8
         7CuS7X51M+YtlCvXoucYmNs0qd94hWXKGdW0EiMeYFJ5oLGLDkjT2OCJT6BrkYasrWaf
         WVKNQ27ETI+/ib1rKCmU6vlDY4bqrhGecXvA8bfpE9LV/JGjqGBVi5l7VK9AsBIf3oUN
         nnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760699317; x=1761304117;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0ljOeCqVVeDOJG8JPVmOPX0PQH5MOU9TLGd0ZX4YsKg=;
        b=IM0a5+Tes0cGmnfxyaPAgIrnNIN+hDUsAqupifZS342Qo8hGAoI4b85pLVm4GVnWpm
         uG/U5qIYUA7keC6edVUbPelY7puW6/WuLXQla8x0ysmRZfQr7P5IcsmJySs8TqRtirXL
         VUFU6Qcdx08aZTCAxewHTlGr5z8i1I6cOijraRjC0oLFgrGvDP4o3XlKYeBlDT+bs9JW
         TrvnDL+Y86WA9fXfI8natzf+AqTU1GnPFkrrF7JEcx+5JjqoUglpO9bg1IrAbVSTMkiD
         U0Uw5HzOKQlOQEpt8LsIaCebpZuOC+Wt54vSRGYjuw90lpe6jauGqKWkhKqOLRZrQ2ov
         Kyxw==
X-Gm-Message-State: AOJu0Yy1MyLtmcPYS3Xok/6k0uNDAHMWc1V1cSTd0ONhSPAx0YpWYa3I
	7s2u0dasdfit4tz8rSUx+z98jSdLN6Mx7vvHycqO5ZCLC2CODTf7ahsYO5yCIQ==
X-Gm-Gg: ASbGncsiq7KqXvKA5TXqSZoBLYBd5MP0uWQQvL+N7fJ/+Pnn9t83lPtPn/0AOdX9rJH
	JJR5rQmXSG+8on+JmRcrs1x7XKq0HXjoXi44pCU02JADJjH5CS3dxIn7SOFlt6mbStPJCatyamW
	Lnn2Qn6zMC/BBs2P2+bI93upKf4V8OYfC5mkMBCAn5TjvtD7LenxDis8DgFr+7XHA9yjOOkFnpQ
	qvG/rZTM5fcHcoyr+zIxJURDUmPOOROPiqgmDGcCFsMoSwHQwH0FaIvFrK3RwCPeRS77lkTcA+G
	gjwzx+Qyqs49wqvbMbYM0boBET+gRg/ln73tknct4msFsY+yu7KTqmVcjSo+o4cQlXQKrTd2VEq
	O0IDdDvxlwvr5FQ0o5s+PD+y7ZodUhbFkRe9Eon/sMU1JVHZoaby3xWxTaTl1GIhMehiHXOXwYB
	bChGGkUxI9nBdmzEsN1bhtcURRVByf4H7lH1AY8t3Ih/ZUlkyINiCrM6UGeAosteWdNNk=
X-Google-Smtp-Source: AGHT+IFMQeLOQ21bbgSZGvjuTAKSstYSpyYin9xQARURVuIoYafJV4vPgnFXN3Kr4oUkf5aYlnLk9Q==
X-Received: by 2002:a17:906:6a1e:b0:b04:563f:e120 with SMTP id a640c23a62f3a-b6474941528mr391768166b.53.1760699317175;
        Fri, 17 Oct 2025 04:08:37 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccd2a6847sm780346866b.67.2025.10.17.04.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 04:08:36 -0700 (PDT)
Message-ID: <556fd321-14ff-4964-a9e8-c908c41f81ca@gmail.com>
Date: Fri, 17 Oct 2025 13:08:36 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Open Printing <printing-architecture@lists.linux-foundation.org>,
 Michael Sweet <msweet@msweet.org>
From: Till Kamppeter <till.kamppeter@gmail.com>
Subject: First beta of CUPS 2.5.x series
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Michael,

how far are you with your development work of CUPS 2.5.x. Should we release the 
Beta 1 of it?

    Till

