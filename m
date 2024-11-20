Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F115625A
	for <printing-architecture@lists.linux-foundation.org>; Wed, 20 Nov 2024 06:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732084615; cv=none; b=TtJ0gIkgyBlUha+FYr8kLEkABKt8vBUu+sX6hCzwafVkePOv4R+0VhWzEZbYxUPI5f1+xKNgaDzNWyJE3ya/KLw3tFbeoTytJuH+vkMsNOUgSAQ3HzG7VLb+CKbQBxHgQSgd+xqYg2PNzpVTTM2xNAamCSBu0lQ3BRvUM8md1A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732084615; c=relaxed/simple;
	bh=949+tJ9vxSlLq8YYuo1MJ+QOCljmDt+TpeH3CSVlnHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=adZZOwRx3w5hJB8XZeanD1txPPddo1wnPGzaqRlFwnDh4ILOfrnxAs1UovxbYo13kYcgps0yIWLtAltRuXbx9mTCAuO5LogHByO9stc7q7QTC0cG2NyF4uZHxgg6jjXqiF6If6RtJlR6IXF/mQ7ylnSnAHs1g1RL3iyBzq/AWXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EFqLSIpy; arc=none smtp.client-ip=140.211.166.138
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EFqLSIpy"
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E419C84615
	for <printing-architecture@lists.linux-foundation.org>; Wed, 20 Nov 2024 06:36:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -5.79
X-Spam-Level:
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rehwnY_pWNBD for <printing-architecture@lists.linux-foundation.org>;
 Wed, 20 Nov 2024 06:36:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124; helo=us-smtp-delivery-124.mimecast.com; envelope-from=zdohnal@redhat.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E27AD8461C
Authentication-Results: smtp1.osuosl.org; dmarc=pass (p=none dis=none) header.from=redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E27AD8461C
Authentication-Results: smtp1.osuosl.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=EFqLSIpy
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by smtp1.osuosl.org (Postfix) with ESMTPS id E27AD8461C
	for <printing-architecture@lists.linux-foundation.org>; Wed, 20 Nov 2024 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732084611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ITxchejHniHPC17jHZXxncPkASlprIok3MRD/pxFc2M=;
	b=EFqLSIpyHa0rha2zEofrn2/q8UW7HIWPKaFZkUAAYfHD/zp9UsFML43SyFqXhSDghC2Mrm
	53uLgAr+UZ2ucTL9fL8BnkRxRoI3f15cwdpE2ni2gboxa6TUNjOVoP4T0PX5fR/0WU1x8r
	xFjHi1H1phirMRhHnS3rOQ5lFjs0r44=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-684-JXl6hRPFO8CH1SVQ5aPngw-1; Wed, 20 Nov 2024 01:36:49 -0500
X-MC-Unique: JXl6hRPFO8CH1SVQ5aPngw-1
X-Mimecast-MFC-AGG-ID: JXl6hRPFO8CH1SVQ5aPngw
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4316300bb15so13465475e9.2
        for <printing-architecture@lists.linux-foundation.org>; Tue, 19 Nov 2024 22:36:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732084608; x=1732689408;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ITxchejHniHPC17jHZXxncPkASlprIok3MRD/pxFc2M=;
        b=KnL2cCoAzY9eG2p6ewErki/aaZ/r+Cg+4YKAX5281NXCdu4dd72cmjliMrH44PgDc+
         wlkEB7syUiBnY+mTBTsA/rndXlQ+qggnKM4W8HX1DFtdCFrMDU2LpbUhyWnrjJxp1rcd
         KZ9iFuc8AZgyRCbey5vZ8U/WTcmb6XmrlRnDx3lmlCfsSXhe6RUZjGZbOvmHzUzW2/vf
         Ey5GfSggYkwSKaWaL/kvgrablOqYQ2/cJxF3L5K61wBigYu4ZZDEaL9p6LUEMHjSuLrj
         3NH9wxAl7vpHg19Vcxy+SsjVPUx2BC/JRFwtr5DHvzMCIKbMmmQ1RrrDUbUFFg0YIhLI
         dh9w==
X-Forwarded-Encrypted: i=1; AJvYcCW/cSJV9uY1dXsgVIJi41tT73Gk67jEB7SwsWGQ4f5l8aBszqhzmAnwBxtnrsNPJtOQHVRqAk/j/HfYbPoRFLPKRKb3g48=@lists.linux-foundation.org
X-Gm-Message-State: AOJu0YwcUXqZiAYO3H8xbv6fwKhuwuoWJ0RdbThf9cLUaY1UH5fmszKY
	tY6KbS9AI14c5/knMJQm2O3catrbGxoVKpIf2/40Pdi//8xI8CuiopeI5uzMLqU6bdjUGtD8LwM
	8O7pQs4ezx6fEBav+oFgWuoqiu7gWnTZBPefqhckxDGartY6WDK+YXwAoBgA5jpE1RWcFBYDhqj
	FC+/vtot8jN+oP0dAGN5TH
X-Received: by 2002:a05:600c:a46:b0:42f:310f:de9 with SMTP id 5b1f17b1804b1-433489d035cmr13897205e9.15.1732084607749;
        Tue, 19 Nov 2024 22:36:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcGLVxhL/m/fhZ0OPTsDsJ3inKVQBn0tHwVf35MXIOyxVfv4exybbUPy40SAV/O4ny1daGfg==
X-Received: by 2002:a05:600c:a46:b0:42f:310f:de9 with SMTP id 5b1f17b1804b1-433489d035cmr13897075e9.15.1732084607430;
        Tue, 19 Nov 2024 22:36:47 -0800 (PST)
Received: from [10.43.3.238] (nat-pool-brq-t.redhat.com. [213.175.37.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-433b4617563sm7714585e9.25.2024.11.19.22.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 22:36:47 -0800 (PST)
Message-ID: <3940d7a7-f70f-458e-bcf7-2abbde831ba6@redhat.com>
Date: Wed, 20 Nov 2024 07:36:46 +0100
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: sane-airscan 0.99.30
To: Alexander Pevzner <pzz@apevzner.com>,
 Open Printing <printing-architecture@lists.linux-foundation.org>,
 "sane-devel@alioth-lists.debian.net" <sane-devel@alioth-lists.debian.net>
References: <1793857b-57b7-44c2-a1cd-a123c828e61f@apevzner.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <1793857b-57b7-44c2-a1cd-a123c828e61f@apevzner.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jNx3Jp8RGGTIoijG9hI1YygNbO_Z57yUMzpzJZCmKBA_1732084608
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you for the new version, Alex!


Zdenek

On 11/19/24 10:07, Alexander Pevzner wrote:
> Hi,
>
> sane-airscan 0.99.30 is now available.
>
> Improvements:
>
> - Added "sane-intent" option. This option hints the scanner on a 
> purpose of the scan (Document/Photo/Text and Graphic etc).
>
> Although the exact reaction of setting this option is left to 
> discretion of the scanner firmware, its influence to the resulting 
> image is very noticeable, so adding this option gives user a chance to 
> tune his or her device for the best scanning results, depending on a 
> particular image and scanning purpose.
>
> This option works for both eSCL and WSD, and offers the following 
> variants (depends on the particular device):
>
>   - "*unset*"           (don't send option to scanner)
>   - "Auto"              (WSD only)
>   - "Document"
>   - "Text and Graphic"
>   - "Photo"
>   - "Preview"           (eSCL only)
>   - "3D Object"         (eSCL only)
>   - "Business Card"     (eSCL only)
>   - "Halftone"          (WSD only)
>
> Please notice, device may support only some subset of available variants.
>
> The implementation is mostly contributed by Alvin Wong 
> <alvin@alvinhc.com> (alvinhochun at GitHub), thanks him for that!
>
> See details, discussion and image samples at: 
> https://github.com/alexpevzner/sane-airscan/pull/351
>
> Fixes:
>
> - WSD: fixed ADF support on Ricoh Aficio MP 201 (Issue #334)
> - WSD: fixed ADF duplex on Epson Workforce WF-3520 (Issue #339)
> - WSD: fixed serious issues with OKI MC332dn, MC362dn, MB471 (Issue 
> #198, PR #343).
> - WSD: fixed ADF duplex on Brother MFC-9370CDW (Issue #346)
> - eSCL: delay between subsequent image load requests (NextDocument 
> request), initially implemented as a workaround for Brother
> MFC-L2710DW appeared to be a speed limiting factor for the very fast 
> enterprise scanners, like HP Color LaserJet Entrprise Flow MFP X677. 
> So this delay made a Brother-specific quirk.

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

