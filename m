Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
 s=ore17; t=1652721220;
 bh=PR2+474An3Lfl8V7iWl5eNQO+Prj1au6rrriB/2eUFw=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=jL4rCbcRgH9YGvYm2mXnr4wuhhrgJ8iMfLmnHPafuYGLbhtN0BpWYxkemMrtFRmE2
 qDlRb4L16OOhFJzO+I562J97iMmgLANU8ssHygaqaNQu/xIe86pDdg5G7jd+/a3gey
 3+V8eQ/tOXqTywouPLHm4FCdHXK13KQC6UIqOWDCpN5wfFNzm54Hs05uiRGN9kjXlY
 zjBr2qEqgB/NFsdCIuGfZ7OXZ0r9CPlIlroFGA7R5xGCgHLu8WQHKUWEqym10ebicn
 PMzTdvpFNK2YkGkw1/inMaDonrMEXWvzfXXLavNB4ZfrWKAik2IhrmDfM+g/lgCfUE
 z2P1D6p1/VOOQ==
From: James Cloos <cloos@jhcloos.com>
In-Reply-To: <FB549E97-8B2E-45A1-9550-684DC2A499B7@msweet.org> (Michael Sweet
 via Printing-architecture's message of "Mon, 16 May 2022 10:46:18
 -0400")
References: <7AECB015-F222-4111-A05F-B57F68F76FAD@msweet.org>
 <b3d58dc0-1405-fc42-34d7-e3964407b5da@gmail.com>
 <D352678D-C1E1-4B39-96E1-EC54026FD4FF@msweet.org>
 <2d78d025-3216-2d0f-aae6-a4e5db4e11d1@gmail.com>
 <184255CD-9208-42EC-9919-3E980378E57E@msweet.org>
 <4a81b64b-c2d8-bdce-a64c-8fe4697f0cbf@gmail.com>
 <DDD5F2DC-E1A4-4EEB-9613-CBEF15462563@msweet.org>
 <m3y1z1o89y.fsf@carbon.jhcloos.org>
 <FB549E97-8B2E-45A1-9550-684DC2A499B7@msweet.org>
Date: Mon, 16 May 2022 13:13:33 -0400
Message-ID: <m3sfp9o0xu.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Printing-architecture] PAPPL 1.2rc1 (Supply levels)
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet via Printing-architecture <printing-architecture@lists.linux-foundation.org>
Cc: Till Kamppeter <till.kamppeter@gmail.com>

the failing box still had 2.2.6 on it.

i'm in the process of trying to update that, but a simple emerge cups
failed.....

-JimC
-- 
James Cloos <cloos@jhcloos.com>         OpenPGP: 0x997A9F17ED7DAEA6
