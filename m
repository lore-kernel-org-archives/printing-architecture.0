Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA603396E7
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760710875; cv=none; b=Jp70tsNY6cm+yAg168xgFVqJ1erpxpgqw0buTeHBek+181DJb6X//coTyX/Oba6uNDVD+A78EgivJmuA6KM+ASqq3RpNdWqqUQ/LasYXbwqVmp6/XcKbXkDGh04FYC/rfy2rjxeHTc66Qy4fMZiPrbc2uPGow/4iwIGYnBtFU1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760710875; c=relaxed/simple;
	bh=wC1YsD+v1YkrlSg0zvrsB0jumJtgD1YIxGQWQ8MOZLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tQNOz3vYT0CKMgtxPheUoFhk0K564xmyVdbHjUXiFpT2z0sarvZuV8IlH1owXwV0UAVORlFL6EGm0AZg5olcSH+9As1dFwLrtwDYd8dkyKBsne98ind6wSiyAwCcE5ojOjrtMZZEsPA09E/SpzqhOVCerVxCmQXcCUpocvR2TYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Blame5EL; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Blame5EL"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EBCA40854
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:21:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.099
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J4riIc5J3Lfe for <printing-architecture@lists.linux-foundation.org>;
 Fri, 17 Oct 2025 14:21:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::632; helo=mail-ej1-x632.google.com; envelope-from=till.kamppeter@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CAF6540693
Authentication-Results: smtp4.osuosl.org; dmarc=pass (p=none dis=none) header.from=gmail.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAF6540693
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Blame5EL
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by smtp4.osuosl.org (Postfix) with ESMTPS id CAF6540693
	for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 14:21:12 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b3f5e0e2bf7so377602366b.3
        for <printing-architecture@lists.linux-foundation.org>; Fri, 17 Oct 2025 07:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760710871; x=1761315671; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z0XEd+QfB4ttSA7/LyG+Car/AQYNm8V4F2gfSazZhUQ=;
        b=Blame5ELp+bxrOh6NQaezgIth1kSiIwcO25VUPp6QsxGVQDqRLoW5uhKyB5aEyd/xG
         mWgWJAPb0gdRL+uXAg7nrzARVvvW1SDGl+pqyShcp50yY9xgIjHPzbpwQQ6S3P3V4hrF
         zkVE3i779m7DBfjDmE/EMpiEZRKmAjdbMIcmQhBxkGr4Mq6mjfO4g5+0L9Eh49+CRzsr
         UJMK1D0PJtG7yLvw3o2XELV/3MyZJAOra/+NygaYaB49DtURVeZpdueabopD3Q3W9mVL
         BrQf1fCp+XvB3/dMYho91VTkS8chuzQiULP9gx6m/vn7bfIU6puu554p5mzyXIDM9uuk
         GaAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760710871; x=1761315671;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0XEd+QfB4ttSA7/LyG+Car/AQYNm8V4F2gfSazZhUQ=;
        b=Te84u2fuTRI6Mp55n1t31uyP1mF56sShStPPfXB+gMhVpr3ylQn7Dn/SD4RCgpQ32m
         fo868kbJ2I4s8Ct7laMHwzfXTF6boO1xGEufrf5Xp62SmWgzIhbIB+jamV41ons7UBy4
         MoBLGc9Cy2E9olzHSJDum/qx4tESrJGZmMAYd/5I9BEN0Qv8lyCkDQcQF3CNDgBorxDz
         MYl0dMyUsoGL8/5lWvDJdoh96qQ4n4hiVXTJxz+3iMqXdqfiU4xxHmhE9cZYaJhRIuKy
         wtgfboPZxniwGr91A+ju/gPKzXCIYX6oQP2/hEtzy92mth94XUpANaTRCmkPnuCBtT30
         cgxQ==
X-Gm-Message-State: AOJu0YyRtey7LEU/aiNqOzQx7P0+Di4gxTtUbWtJNckz7weG/bqlGkQi
	91RkzJN5mPMWu+PQ7YEJ0GJvlFqPaJUNOL3MTV91GyugsU3WtVak7YNC0IQdAQ==
X-Gm-Gg: ASbGncvWXMYw2uQCv4NzJlkbfvEaR3ePI9y3L0wkoBnX8J91nJ1f3AylwIiC/8qlF+Y
	TL2BLhc99BNJupEZQbsHsU3bhtsFV8HkTGlQR9hXtbEcZKutJYptCDLqprRJeobtXWxcpgi5H53
	dIW9xrvmagDXFsAXYA3iIMVqk/JIrGdXaccHHfvixGtcVfpdfN6GmJ2nm9Jj+Rp+bw82f3FR+Ug
	L1WPpnPPMldeNY6pkYOgpcKklXwN/mV+ZnVfRJlij+misICeymI+iTpeBikaOD+LqaABclOyPKC
	QgkF1PNlP/MwAiijr+CJrhDkMS+PWy3dEe1fwkKK2J0zBlqDNc4A3MUeKMNP9KCLeKG6VvJtrHd
	r1X6jMZR6MCdSpaZQlbzARp6YY9sU5/XJra+OicHo+1QBR2uVOuDfhPiCd7zWPk9uxFcKyaVLGg
	vKS5jDOWAkqXiJzqD1LmhFBVXvU1znYH7svDZacsOB1VxGJU0glwKpywpT
X-Google-Smtp-Source: AGHT+IEaiy1aVblq0EOnbzJz3BB646svsr2aijQi8FuX/zProTupoX861Cc/6EBmuikHABIFD9mZbA==
X-Received: by 2002:a17:906:3b85:b0:b65:622f:9de1 with SMTP id a640c23a62f3a-b65622fa5eemr133220766b.65.1760710870248;
        Fri, 17 Oct 2025 07:21:10 -0700 (PDT)
Received: from [192.168.68.113] (193-80-180-232.hdsl.highway.telekom.at. [193.80.180.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb965ddf5sm831806266b.15.2025.10.17.07.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 07:21:09 -0700 (PDT)
Message-ID: <caf1bd22-0938-4aee-908c-2a08efb3fe45@gmail.com>
Date: Fri, 17 Oct 2025 16:21:08 +0200
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: First beta of CUPS 2.5.x series
To: Michael Sweet <msweet@msweet.org>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>
References: <556fd321-14ff-4964-a9e8-c908c41f81ca@gmail.com>
 <F0332FC4-A5B8-411A-B5B8-9B5D51E4800C@msweet.org>
Content-Language: en-US
From: Till Kamppeter <till.kamppeter@gmail.com>
In-Reply-To: <F0332FC4-A5B8-411A-B5B8-9B5D51E4800C@msweet.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/17/25 15:38, Michael Sweet wrote:
> Not quite yet, we still have 14 open issues in the 2.5.x milestone.  I'd like to clear out the non-bug issues (7 of them) before we go to beta.
> 

Which are the 14 open issues? And which are the 7 non-bug which still need to 
get completed?

    Till

