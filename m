Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BE0200127
	for <printing-architecture@lists.linux.dev>; Sun, 23 Mar 2025 09:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742721312; cv=none; b=OGKSwuv4fwyuccjuVPeQMrEqcVCeGMRdeuZWYqjc/6qIrnF3iiupeyyWOCGmUreiSIILk0OOSQGreo76Jw2bKQoD2SId3zA1puJGOnxIF+/QD8Hkfq2ALqDI545iG6Hrk88u8C1oSvTgkCDGNb1yLXupQyKj8cDdnlrx/F0sn3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742721312; c=relaxed/simple;
	bh=HLs4s4k31XGqVv6DXesHAqFuOzz32l167DJYplNyUYs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=OwfNPQ89UW4E52VW+2mjK6Mo7KvnAHHI5z3OHfQynTCIUHqMrm0wiRVD/UNWa2a38nBNIs90C92TM0QtStGRqajk5FvOuF6RpilZwX67yleDAH/QDJFgxHlo0iuRW4ESyUWa6L9GEiOdKi95c1FWnaih90FxOFSD+eQ8QkKAFpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iW7zxGGR; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iW7zxGGR"
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-72c0b4a038fso1649477a34.0
        for <printing-architecture@lists.linux.dev>; Sun, 23 Mar 2025 02:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742721308; x=1743326108; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HLs4s4k31XGqVv6DXesHAqFuOzz32l167DJYplNyUYs=;
        b=iW7zxGGRUxgH3N4HePWnNVZMVPfNa863uEyzjplZ99dd2ZXaNJhDNkEkmqu4iIJFtZ
         2h0A/vTUB9HVkD3mkbf3f1lTw7fkM54u8OcGjdtWlAW+/a75eZ5iW/iDXXAUkBsOgJwr
         oxjtt3UmcuEydV0r9g0P5X8VMaDqWoz9CwVsazaXZDuAd8I9yl3xe7ODqHWI8XRbgMX1
         2my9sU2iiY32SdJB/g/BXLdiMsCVB9H/LcLpnyJSGUAF0C5nUSHC+3NUk99uZdF6SN+A
         fQ8VgINImR9tWxfw0myh2PlDxUC4JhhTt2TEqb1Nx0c1X0Vsf3cPECnFbpguFAiwfzb5
         /t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742721308; x=1743326108;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLs4s4k31XGqVv6DXesHAqFuOzz32l167DJYplNyUYs=;
        b=RC05NnvfDJeFcTpD0+yNzwyDI85IXDozigtrj2Mb54LDHKlPcUhBwPd/s+hGMX5zxZ
         VN7fSQitx2jTbu3krqs9TQEyxaXI0JlRjcwnbfjiQ4pyVLqk8tCJvxBdPMHYjAkT1vPI
         L7gwZzujRZKwXiALxneLym2+W0cezNyuqzIaLh0X50xF1kbC9SO5b6V4NurtzmhDeF5U
         GpMBeWNNtA4pZnuhMw6xt/ObJVBER9lOZu0EHTPfK8HtflKOtxVxuGR6zBAIw2yjquIY
         SXPjlg+XIf0YIsa+oLRsXWyiSwNlRs5PQ8ZNvQanP/3Yt0AnXIi+kXbOM5FJWMEyAVmp
         VsnQ==
X-Gm-Message-State: AOJu0YzOh2YaiUPXWV1potfkD3gcVtUqW7m4p4/PaeVlhtbtxeW/0RFG
	qiroxfIxdwhuWsOxoyU8fQUtV2Ao3TlAxa66yLp0rjHtcSzuwkKwa/WTQbO2ll5ffLHIWRaZ7TW
	eF6SmwCbtE43HmOT1K4nemZ10Ot3pd/5w
X-Gm-Gg: ASbGncuBohuzulU/UVeL5o3T5jwEG7OD1S9Gv6dpLmb4rMz85Z5wPmk+2sAfRUaT9hn
	+nAl6W9QFyOifKeIK8ypkFRzerwP0/yKd2SObw+tOxKJoQx4XpEz3pvUNnCHhmoq5gGSUW/VUvE
	+EWXsHUA3OtLkeOzEM+IqRtu/L7Q==
X-Google-Smtp-Source: AGHT+IFbiwYWC5QIFHDKiJTyQLUGALMqz80uYMx8wlkWqK3HEiu1MPz7EFJMK3ODIsIYLV7RSu2c5+nhThuZVlR8opY=
X-Received: by 2002:a05:6808:1812:b0:3fe:af32:d986 with SMTP id
 5614622812f47-3febf722d07mr5217846b6e.14.1742721308349; Sun, 23 Mar 2025
 02:15:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: printing-architecture@lists.linux.dev
List-Id: <printing-architecture.lists.linux.dev>
List-Subscribe: <mailto:printing-architecture+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:printing-architecture+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Tarun srivastava <tarurak4@gmail.com>
Date: Sun, 23 Mar 2025 14:44:56 +0530
X-Gm-Features: AQ5f1JqeQK1i-RKRRiZoPYdSgHLJxGfeD1zkWFR-hj1PLS2FToL2zALBbIfJERc
Message-ID: <CAMCgP36ngL7_xSv2_O+AkCnAkhz4KzG9AmkaC-EwU=cA6D4acQ@mail.gmail.com>
Subject: Issue with adminutil.h Removal in libcups3
To: printing-architecture@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maintainers,

I=E2=80=99m working on porting the KDE Print Manager from CUPS 2.x APIs to
CUPS 3.x APIs and have encountered an issue related to libcups3
functions and macros.

Currently, KDE relies on the macros and functions from adminutil.h to
interact with the CUPS server and later use this result in UI
components. However, since adminutil.h has been removed from libcups3,
I=E2=80=99m unsure how to proceed.

Could you guide me on how to interact with the CUPS server without adminuti=
l.h?

Thank you,

Tarun
