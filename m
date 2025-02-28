Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C642D23F38F
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 22:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740780478; cv=none; b=CuAmagaKFnWqHaGqq+FaU4cKx5LW29ZAYamZ76N7df9f3307PxihKYsFO9UvfBq0y0+zxzSh6W/8NMVBl/eA9iz5VpITNDJyNUXbr4cIp8oFUwR0H8TjKFk8vk2o2K4z7KJcmKc+jb8OIITCXVWKIVu3FYncJRv3Dqv8OT2Ay7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740780478; c=relaxed/simple;
	bh=8cLuyncg2GlfwlTXdxihL7Yt5GkAQemK/6445ogIot8=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=TBUVIcIAF47HW41aLWkVdREAGVmi9KIAgUUQkKzxwJ3y+PHXE+3tVkLJmjZdolXCbgHah8tTgNWAgA/F+U+Mmk0ijeNiAgfzQCIcOaErGrm31wuRNWCJlPExWxF288xNHzeyP/xw+j1KHXx31XEFfP9GuW9Udger3vILmLLADb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b=Ci6PxAn8; arc=none smtp.client-ip=140.211.166.137
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=apevzner.com header.i=@apevzner.com header.b="Ci6PxAn8"
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44A1C5214D
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 21:29:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level:
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XvMGK5iS0TsV for <printing-architecture@lists.linux-foundation.org>;
 Fri, 28 Feb 2025 21:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com; envelope-from=pzz@apevzner.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC8E94F3B3
Authentication-Results: smtp4.osuosl.org; dmarc=none (p=none dis=none) header.from=apevzner.com
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC8E94F3B3
Authentication-Results: smtp4.osuosl.org;
	dkim=pass (2048-bit key, unprotected) header.d=apevzner.com header.i=@apevzner.com header.a=rsa-sha256 header.s=google header.b=Ci6PxAn8
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by smtp4.osuosl.org (Postfix) with ESMTPS id EC8E94F3B3
	for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 21:03:03 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so2744069e87.1
        for <printing-architecture@lists.linux-foundation.org>; Fri, 28 Feb 2025 13:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apevzner.com; s=google; t=1740776581; x=1741381381; darn=lists.linux-foundation.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWh8RdVg+MowQONiyhMGPySYpmVJtJmDns4iBBmXtIk=;
        b=Ci6PxAn8VFS8vGyjW2qFPFrWfvIZCcpX08ru8TijgRFa1fXBGlHWbCr1YasDtI6Fv1
         Ms7IoCpOIo6A+OugQLtQ0wxLtiAcscFlFHMZiUkk4kJftxD8Y2MNXO/1nY7THkcxcIhm
         JLu/lI8WAW4QMrDRl6f6zxN9bE0bRN/gHoNY71oTcWkLv6sVfpqmIn7SO01kjDtqAxB5
         6AbXDYMbMtiQUMNl8PyRnWUWf4GL6G8DUJXKgf6HGkm0/fQODdcdSrX09Kwr5fHR0AEY
         SrJZcwNJlTf4yA8PjVog9RCugJZFqA/QDgkmfYq7oYSVaXl6w08atCdI6iY1CAcBttwk
         t81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740776581; x=1741381381;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AWh8RdVg+MowQONiyhMGPySYpmVJtJmDns4iBBmXtIk=;
        b=ozeDa21/gyzfxz0+ruHShxJn/mszIZkxJ873Ut5F5GrndzrrjlUyhfyl1ZMqYy64CW
         eVOcHsnz4sVXMH9keaBELO5eSWjUlDXuLMu3YioUdOFNiJDekZ05aLh7YQGzP4km7NfU
         ymfqv69B/EK2RdiU6KGatzJBbepmhoEmRPL1mDXYvVUJbDuJoNjG+CDII2i3L9CV883R
         tOcO/S1ylkSBIJLsDTWTPg4jMR+q/xJARErQ36O6NcV0UOipI+dBdEUKiV3klMhtjxY0
         /Ug3Pfn0OqMoUYMLiTV9ERj0pxvxoHP9s+HvfdLyBkhoUIWpaiNy9hBR85p1a2t/SfBn
         vGQw==
X-Gm-Message-State: AOJu0YxgJt4l/Diw2MYaUwn3Fbq0GR5mlu/R/KxEmhdn8YXmsAO3hQxc
	wgZl9RG3/ELNr5fXiqJqvSC5g8HdbgMjhuTsoGjpXTKrzFyfHyJPnebukOAnux0fV0IxxVLOzui
	q
X-Gm-Gg: ASbGncsvZSMYv8lDikKVx+lKGUvMFIKb4hpTOLafD95jtRNYk7IIgE2iD05PLWJ6oCh
	cY0IJedqD78QAgaLPCfdDQztwDpI88v03/pdOHrynLv0bLPl92rqWfTJG+ccB5DA/wOhKJwGcHj
	1R2sAZVDyBHdWNoas/v70XNUHs9+FZSO9Xuf0moVz56Sb6o7K8YjKAy5Kn+LsbvKvqol7dTEdEH
	7WD2e+nr5eLZccRcOGLdsQQh0k3ttf6k/CTvlFuIoezzXn4thPHXSs+9iV6KklfSjVbxnhhLRFv
	pCDJpbtfWmGm3xN/mzIIvoBVM87GbqqfOv8MJA4RyD03zZQLIQiPivgNjfiXLw==
X-Google-Smtp-Source: AGHT+IGsup77L7v0UcnN200gNEe+kkWGPnW4IAtUZoZxnaqdZp9+zvlXNFuoDlOlPgtV/TcR+aGYrw==
X-Received: by 2002:a05:6512:1103:b0:545:5d:a5cd with SMTP id 2adb3069b0e04-5494c129d3cmr1665631e87.6.1740776580682;
        Fri, 28 Feb 2025 13:03:00 -0800 (PST)
Received: from [192.168.0.6] (ppp85-141-194-124.pppoe.mtu-net.ru. [85.141.194.124])
        by smtp.googlemail.com with ESMTPSA id 38308e7fff4ca-30b8dbd1ad9sm5058981fa.76.2025.02.28.13.02.58
        for <printing-architecture@lists.linux-foundation.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 13:02:59 -0800 (PST)
Message-ID: <a267e901-53d5-4084-997c-a3307c26cebc@apevzner.com>
Date: Sat, 1 Mar 2025 00:02:57 +0300
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Open Printing <printing-architecture@lists.linux-foundation.org>
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Subject: ipp-usb 0.9.29
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

ipp-usb version 0.9.29 is now available.

This release addresses issues #64, #32, and #83 and introduces several 
enhancements and bug fixes.

1. Performance Tuning After Receiving 0-Length USB Packets

When a 0-length packet is received, there is a high probability that 
subsequent attempts to receive a packet from USB will return 
immediately, also yielding 0-length packets. To prevent excessive CPU 
usage, ipp-usb introduces pauses upon receiving zero-length USB packets 
and employs an exponential backoff algorithm to manage wait intervals.

The algorithm's parameters have been fine-tuned to avoid performance 
degradation when working with high-end devices capable of transmitting 
large volumes of data at high speeds.

2. Fixed Crash in ipp-usb status Command (PR #85)

A crash occurring when executing the ipp-usb status command has been 
resolved.

3. Added TCP Port Information to Status Output (PR #86)

The status output now includes TCP port information:

   $ ./ipp-usb status
   ipp-usb daemon: running
   ipp-usb devices:
    Num  Device              Vndr:Prod  Port  Model
      1. Bus 001 Device 039  04a9:1912  60100 "Canon LiDE 400" status: OK

4. USB Serial Number and Vendor/Device ID Exposed via TXT Record

The following parameters have been added to the TXT record published by 
ipp-usb:

     usb_SER=VCF9192281 ; Device serial number
     usb_HWID=0482&069d ; Vendor and device ID

This change affects the _ipp._tcp, _printer._tcp, and _uscan._tcp 
services. The _http._tcp service remains unchanged.

This enhancement facilitates matching devices exposed via ipp-usb with 
those detected on the local USB bus.

5. Refactored Quirks Handling

The internal implementation of quirks has been significantly refactored 
to simplify code maintenance and streamline the addition of new quirks. 
This change does not alter the syntax or semantics of existing quirks.

6. Revisited Device Initialization Timeout Handling

When a new device is added, ipp-usb performs multiple HTTP requests 
(IPP/eSCL) to retrieve device parameters for DNS-SD advertising. 
Previously, the entire initialization process was governed by a single 
timeout, which disproportionately affected different requests in the 
sequence. Additionally, fetching unnecessary response bodies was not 
subject to a timeout, potentially causing ipp-usb to indefinitely hold a 
failed USB interface and prevent a clean shutdown (see #32 for details).

The updated implementation introduces individual timeouts for each HTTP 
request during initialization, including a timeout for body reception.

7. Added Alternative Syntax for Delays in Quirks

Delays (e.g., init-delay, request-delay, ...) can now be specified using 
the following syntax:

    init-delay = 15s

This syntax is more convenient, especially for delays longer than a few 
seconds. The old syntax remains supported.

8. Added 'init-timeout' Quirk

This quirk defines a timeout for HTTP requests sent by ipp-usb to a 
device during initialization.

9. Added 'zlp-send' Quirk

When enabled, this quirk sets the LIBUSB_TRANSFER_ADD_ZERO_PACKET flag 
on each outgoing transfer. This causes libusb to terminate outgoing 
transfers that are a multiple of the endpoint's packet size with an 
extra zero-length packet.

Note: No known devices currently require this quirk. It has been added 
for completeness.

10. Added 'zlp-recv-hack' Quirk

Some enterprise-level HP devices, during their initialization phase 
(which can last several minutes), may respond with an HTTP 503 status or 
similar. While this is expected, the response body may be truncated 
(often missing the terminating \n). In such cases, ipp-usb would wait 
indefinitely for a response to maintain synchronization with the device.

These devices also send a zero-length UDP packet at the end of the 
truncated output. When the zlp-recv-hack quirk is enabled, ipp-usb 
interprets the combination of a zero-length packet followed by a receive 
timeout as a valid termination of the response body. This quirk only 
applies during initialization and does not affect subsequent operations.

11. Added 'init-retry-partial' Quirk

When enabled, this quirk retries device initialization if only part of 
the device's functions (e.g., only the printer or only the scanner) have 
been initialized, rather than continuing with incomplete functionality.

This is particularly useful for devices that take a long time to fully 
initialize. During this period, some components may respond normally 
while others are still initializing. For example, a device may quickly 
report its scanning capabilities shortly after startup, while its 
printing functionality may take several minutes to become operational.

Some enterprise-level HP printers are known to exhibit this behavior.

12. Fixed Initialization for HP Color LaserJet Flow X677 and HP Color 
LaserJet FlowMFP M578

With the help of the newly added quirks, initialization issues for the 
HP Color LaserJet Flow X677 and HP Color LaserJet FlowMFP M578 have been 
resolved.

This release brings significant improvements to performance, stability, 
and usability, ensuring better compatibility with a wide range of devices.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)

