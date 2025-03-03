Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E8E2AEF1
	for <printing-architecture@lists.linux-foundation.org>; Mon,  3 Mar 2025 23:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741045511; cv=none; b=r0BGt4eEvmnNh9jxHfPsh+vtd/ECbTkvSL0C+oXZHVq1HVJ3DNGl/kVjiZZoA3t27DMcjfZ7kM3l81N79iNUSWttgXXQee5R6fWaUXun9tS0yOgMUttuUpgnwlXoUjX+Y4ysHJ8vrDy+IFS3U/Xv/iEQ0MYC7Z2LBZrLHwMPpVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741045511; c=relaxed/simple;
	bh=VDkKUIw3RDxrK5KzFV4hbCGgOOLpsWYpuw5wALcm3vo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Content-Type; b=ugb+CjFh5FmRrfEPa1t7yu1qLR0Hu9KI5b7DWtXEHVYWo58f8l6xUaKf8v4+X3Dv/aD7x9129+WG4AuLDQw3mbVw9vtu7kC6tmQRkO2bNa506HGXMpurUD0zgHZ6S1azwL8wETfEaszl4plHJ+iuarbhTUzA2Wggp+B2eEO/EQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qqwd8nw6; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qqwd8nw6"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED484810BE
	for <printing-architecture@lists.linux-foundation.org>; Mon,  3 Mar 2025 23:45:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -1.999
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pYdch-bUAnNz for <printing-architecture@lists.linux-foundation.org>;
 Mon,  3 Mar 2025 23:45:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::52a; helo=mail-ed1-x52a.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 591D4810B6
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 591D4810B6
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Qqwd8nw6
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 591D4810B6
	for <printing-architecture@lists.linux-foundation.org>; Mon,  3 Mar 2025 23:45:08 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5e5491eb37dso2825682a12.0
        for <printing-architecture@lists.linux-foundation.org>; Mon, 03 Mar 2025 15:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741045506; x=1741650306; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XFSuYMtMaIa8zu/UVmoViefaaUynl4kKF1cAthjGGlY=;
        b=Qqwd8nw6hsvTKFvBcVAFDiGQKLVgG7IaDy+WdqqPQ5E2T4c6fPRPxKT8YiYGq1zSMG
         FwSJDWqVirULg4lDLcBVcEwXTIdGqjkRqZE1PYVPR2L9jvZtC62skFv0IU4sIqzI8w0s
         6AXLKKlkIzLTcrSguZRZABkNORvDaqUv6yAAh2r0F4CopJMTxFcEh6XyNO+4/1S8UtXt
         z5uoT5JPSEnU0cjgZizZyLyBafvm0PRIyYo+1E9DMKNh8CR9ewBm8mobBPzMN5FfXdMz
         2DD0o7oZeb5k0oS+L/ardFMsl6y3HwSE4Ky60c6gXDFfoxvQe74deAUVyevDrpyLgQ+n
         NCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741045506; x=1741650306;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XFSuYMtMaIa8zu/UVmoViefaaUynl4kKF1cAthjGGlY=;
        b=If/dPnuk4KdhSrbxE2m51575AUNQfINrVadlmm5F4Qn2VCYsf7nejImF3YAVyVmk8i
         DsCJ2Ubpr7/hC810RcRGQXIRJ3gAhMIZ7uzKMK2gIj4kzbz9hoqr0k2c7OJMnk7CYgqE
         nQuB1+5a5+H4UUk3ejVAkVAD1J28HArtIEaFa92t5FT5wvqGj2PHnB24IFOM6/QTTeYB
         f7qtaKx2Bjr5e5NHB8kfdbSF3gjI+er5H9ywESptaAU6jAfddA/sQEvUAs4lFN7wvF+X
         FiBHj+MqphIsJ6WBgORdA/nJMCtaOFoycNEU0Wm8AlNHzD1uf8E4COUnQufn3x1wmqPT
         Z1Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUc5lmxvLYWhBNDq2uSSVdqYzsfpGhwSta43hR5GThWvuAxXr9sBrjcxiCHrgie18Wx7wAxY64lUvji764D8vyHQCUSZKM=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YzvmMJfthcU5eyYtqsbQaHT6docdQUiLfyasN8gX4Cnml437soj
	8hIco9/r2SOFgp68M5xMq3ApHCG5wmhXdbxYoFmA5hg/m+fXgQfxnY2NVA==
X-Gm-Gg: ASbGnctobw/242S160TX2ZabXyGGAcUT11adYBmHuiMHN+ajVBE+ue0Y7VxM3KhwT4M
	B0+eiR1idKWXnmCHv132zMgY8rWMeZ0sxfjjIj+z4GCGSxhbqB+Hb0O30k5gPiWEz7fneqeNxaW
	s3krJzUV2VVG8oDAdyYy62wU9KxnnaEwiZytDZyKDi+6pzLk9lG4HwwElsL5tZpTXGN+q1+rp/I
	8j7vtnT1EXIoeuIi0i4YBuikuWRV8Qagfrxhfva7mYVQmVSHiQUKRJsjQobYZxDAkbWXTJjiTRA
	/qz/Gpd/2e1phL8/xqOjiHvDh8qrT1ljHPpVJD3B3wHKYbIUIDyqDbV/Ydh7z/XxwTCw3geU2/+
	VWkMrBUE11ylNs6sChwg=
X-Google-Smtp-Source: AGHT+IGoeEhkkjTQ/lOSDzjFMRjqn9c5mJRevixJsCPngj9OcpIFCp53pg0xnpx0zILha/8Y4UpBTg==
X-Received: by 2002:a05:6402:13d6:b0:5e4:d528:7a76 with SMTP id 4fb4d7f45d1cf-5e4d6ad5106mr16513323a12.6.1741045505881;
        Mon, 03 Mar 2025 15:45:05 -0800 (PST)
Received: from [192.168.68.113] (194-96-30-82.hdsl.highway.telekom.at. [194.96.30.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3bb66fbsm7404747a12.37.2025.03.03.15.45.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 15:45:05 -0800 (PST)
Message-ID: <09ea0a16-b699-4120-93a3-2a389bb4f5e0@gmail.com>
Date: Tue, 4 Mar 2025 00:45:04 +0100
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
 <basu.aveek@gmail.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

new post:

OpenPrinting News - We got a Framework RISC-V board from DeepComputing

https://openprinting.github.io/OpenPrinting-News-We-got-a-Framework-RISC-V-board-from-DeepComputing/

    Till
