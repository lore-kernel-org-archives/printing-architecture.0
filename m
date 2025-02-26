Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D3323815A
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 09:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.136
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740561927; cv=none; b=OpVFDLJbe4NZEHaYTNeIej7JXAapBjiBGQhRzNm+R5vP5DBr/ALVWpzgQL5vgYlfUZGnnm+kDMRlejRm30NSdwhj+X1WarkqfHvc0gWjwBN9J0WCnd0hgSZTrbsQAqtZSymG+AFSMG1KNmzGWUD9HKdF+AK69U03MvHF++oq9vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740561927; c=relaxed/simple;
	bh=Aq3i5sxwG3ZYEgnTd+3BU/Nw1GG9j9j1pL1eNg8qGP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=XvlnqWGm1nkZqWB5To9l+kKToag5pwaAoQs97tUjPLjsFFZGPP/VlYKePac9hMT5uRnm8Dd/Aaj6vPZsjPjIE1dEgEqotajR0fCVuWafQ3Bf6cfzBRenPOm5B4wTEkz5esQfP0IIH0tREfPs9+1VQhiIdQHdP/vDHQoqLIf4UCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fdXUu6mO; arc=none smtp.client-ip=140.211.166.136
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fdXUu6mO"
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56ACB60AD1
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 09:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.79
X-Spam-Level:
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KR5XSSPQIxoM for <printing-architecture@lists.linux-foundation.org>;
 Wed, 26 Feb 2025 09:25:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 35A44607E0
Authentication-Results: smtp3.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 35A44607E0
Authentication-Results: smtp3.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=fdXUu6mO
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 35A44607E0
	for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 09:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1740561922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZtH1bILcg/6RTOZC6Ef3RNATJwa621iTaaovGJ3BmRQ=;
	b=fdXUu6mOk0MjUdmpnJZr00+q4Sw0U6+LitKQl10aNBHd15K6b26rz6Gf7BF6b9bpXO+qJu
	zFLSYHRectCBoYgIdZBZhlu5/gV0kmeVnnEanTZSHIqtkEyFEknGxSwdFolU223Pzhg1ek
	YOOeF+F7XceMCI3eUI5A3XxEpx+VpQw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-153-MNaw_XRAP-yhBhmUbLpcSg-1; Wed, 26 Feb 2025 04:25:21 -0500
X-MC-Unique: MNaw_XRAP-yhBhmUbLpcSg-1
X-Mimecast-MFC-AGG-ID: MNaw_XRAP-yhBhmUbLpcSg_1740561920
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43941ad86d4so33040465e9.2
        for <printing-architecture@lists.linux-foundation.org>; Wed, 26 Feb 2025 01:25:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740561919; x=1741166719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtH1bILcg/6RTOZC6Ef3RNATJwa621iTaaovGJ3BmRQ=;
        b=CvAo3d85Gtc6/TS4gOOmlGDWTkeGqOJrn1cVu1fZkWpJo2xaiXxfw87S5FENr51H+w
         4kplUMTRvExJMbIJqW5GXTc4iEFfWBSjbkGkaZWEibG36mTP/mkF2Eq9YQebbQxq/83D
         5Lrgyvcyze/UrPrgP9SUuyWpl4SGkKgb8eKQmdvtdP2WCYRF/lFrA1Jjc6U31FxKi+EN
         sgXTPQkOmgvetPJpfgvqgmNTvprs/qIAhDHjQwPMZbsTeioagCg96RbLYThofjecjw+h
         Hm/m6DFx1bdsdL6XnsWxO1/ZCoVplV3pn/XbnwJeFMa+JINq6MctW5zEGfLRNv1QZ5a/
         OVNg==
X-Forwarded-Encrypted: i=1; AJvYcCUo8tCw3klEeO01Cos3MIUPSq6gqVYiJdtTRJqBEbDuD5U2OLgHCgTnAM/8eZw7+OYtxhfkjFgQD8387bhER4xZtgXQOHo=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YzNq+sZA1Xpm51AxrhvphkD4cGWyFdEpjGQsWAKe0TX6XjqKYvW
	uHSgTaZnbwKfru1U29beFa+p3Ue5SMJND5rDpII/gXOg01ytRiED2QHFzmEpXAkaK7kMSZkao80
	PAluAxXlg7WwLWoycZded2HmYS3vyeueVpLfDslZf6wyWO6/kJnYZRZ3fhQvglHuT/Zh7msxqnz
	8oEKHPlWCDTZFPclzoQThP
X-Gm-Gg: ASbGnctpQt+PGZVDXxo8EhP3Aj/9t32gfEG23Gq+JzxyOd/qTnXHZHvQwk1LOOebI7h
	/eWg8Goe1AtAuFTHB2pp1RSc+9tHLevwNjanY9za4TKzdbNqLnxWB5HoAXAT8nV4iLU5Dv12F1s
	5yr5ZlvoAQ27oAc/jfMLvhPDUxbkpIS4rg9EjOU8XLmfTMUebm1eKg3xiDD9AjEbEny4hq2Cfn3
	PhEMG+1bY1p8/gu9uhsXTGs/ulV/5A7WOT93lrD2O8zi4Z4d6UDn0juu0XtB7DmxFh7LvbPmfRZ
	+pAsHSplJq2taCcTSOHhycSHW3oMbaP0tcjbgbw=
X-Received: by 2002:a05:600c:3b04:b0:439:98ca:e39e with SMTP id 5b1f17b1804b1-439aebc36a9mr132830305e9.24.1740561919508;
        Wed, 26 Feb 2025 01:25:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtevl66qxY0ig9ptlzJwp8usfFL1HFIKoH1tyZBUTJU+DbhXZy6FGTYW8BbmsbqGkxIYgdSA==
X-Received: by 2002:a05:600c:3b04:b0:439:98ca:e39e with SMTP id 5b1f17b1804b1-439aebc36a9mr132830105e9.24.1740561919051;
        Wed, 26 Feb 2025 01:25:19 -0800 (PST)
Received: from [10.43.3.35] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba543f21sm14380535e9.28.2025.02.26.01.25.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 01:25:17 -0800 (PST)
Message-ID: <c4066f25-c650-4037-9bce-864940daf3fa@redhat.com>
Date: Wed, 26 Feb 2025 10:25:16 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Qt issue with printing landscape-oriented images
To: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>
References: <2ebbd828-47f8-406e-8d67-ad1a8abb9393@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <2ebbd828-47f8-406e-8d67-ad1a8abb9393@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EUVHbo6NZ-BSGFOhUWMbVHMIBq6nhQXz0ErVGEkf1TQ_1740561920
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alex,

thank you for heads-up!

To be honest I have never seen IPP attribute landscape  :D - I know 
there is IPP attribute 'orientation-requested' which is used for setting 
whether you want portrait, landscape, etc.

Based on the code for image it looks like landscape is really a thing, 
and if okular wants to do landscape this way, it should pass 
landscape=true instead of false.

The older cups-filters ignores anything besides landscape=true, but the 
current libcupsfilters sets "auto-rotate" if landscape=false is passed, 
which looks correct to me.


Zdenek

On 2/18/25 15:18, Alexander Pevzner wrote:
> Hi!
>
> This information may be interesting for printing stack maintainers of 
> various Linus distros (Zdenek?).
>
> I've already posted it into the OpenPrinting Telegram group, but as 
> not everybody subscribed to the group, I repost it here, by Till's 
> advise.
>
> We've recently noticed, that the Okular (Qt-based image viewer) 
> incorrectly prints images in the landscape orientation.
>
> When printing image (see attached test.png) it sends the following 
> Create-Job request, followed by the image, converted to PDF (see 
> attached 00000020-data.pdf:
>
> -----
> IPP: request message:
> {
>     VERSION 2.0
>     OPERATION Create-Job
>
>     GROUP operation-attributes-tag
>     ATTR "attributes-charset" charset: utf-8
>     ATTR "attributes-natural-language" naturalLanguage: en-us
>     ATTR "printer-uri" uri: 
> ipp://localhost/printers/Kyocera_ECOSYS_M2040dn
>     ATTR "requesting-user-name" nameWithoutLanguage: pzz
>     ATTR "job-name" nameWithoutLanguage: bug.png
>
>     GROUP job-attributes-tag
>     ATTR "media" keyword: A4
>     ATTR "sides" keyword: one-sided
>     ATTR "landscape" boolean: false
>     ATTR "number-up" integer: 1
>     ATTR "number-up-layout" keyword: lrtb
>     ATTR "job-billing" nameWithoutLanguage:
>     ATTR "job-priority" integer: 50
>     ATTR "job-sheets" nameWithoutLanguage: none none
> }
> -----
>
> It can be reduced down to the very simple Qt example:
>
> -----
> #include <iostream>
> #include <QApplication>
> #include <QPrinter>
> #include <QPrintDialog>
> #include <QImage>
> #include <QPainter>
>
> int main(int argc, char* argv[])
> {
>     QApplication app(argc, argv);
>     QPrinter printer;
>     printer.setPageOrientation(QPageLayout::Landscape);
>     QImage img("./test.png");
>     img = img.scaled(printer.width(), printer.height(), 
> Qt::KeepAspectRatio, Qt:
>     QPainter painter(&printer);
>     painter.drawImage(0, 0, img, 0, 0);
>     painter.end();
>     return 0;
> }
> -----
>
> The problem is obviously in the ATTR "landscape" boolean: false 
> attribute. This is definitely at the Qt side. Seems like all existing 
> versions of Qt are affected.
>
> We have submitted PR agains qt-base, it is pretty trivial and 
> currently on review:
>
> https://codereview.qt-project.org/c/qt/qtbase/+/624835
>
> I believe, all more or less modern Linux distros are affected and 
> wonder why nobody complained before
>
> Note, the problem doesn't exist with old versions of the cups-filters 
> (I was able to test with very old version1.28)
>
> Looks like the landscape attribute attribute is silently ignoring by 
> these old versions, and without this explicit orientation setting, 
> filters set correct orientation automatically.
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

