Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=wOPdI9d7u1KAGb69dzww953WpaTYVgq6Sm5yNkHqu6s=;
 b=t/IJyuy5t7wsh9cGU99ermqFWVV1rK1gjdeh8G5aAkvUqKl/KYwdQlAe2ZNwjSp/P0
 T9pLYXU00ShN/cKgndOUXXixDp71QoJYRtrHk+gtYFAOExaw9Hd9B8Ntsa9mp+SsLXP3
 wEUTd0rlMtjNO/31Il98ZHbDy+qkc6NU4k4rk02pwfWRoiFnl10euo0Cy9DwIi7EfW+E
 uMobNfff6hHSajnH7LFm1Lab3DWJze0xWkvGDra7YYURdip1lu1RhzgTeDp9zlMDOfqg
 FCrprYydj3F7qM3SSdpqkDOtNLpfkLZqtfmQ/3ehf3o0J4pGnE9squdndD/EpRlKE1o8
 VE3g==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <db97d1d6-e6db-bb83-71f6-29ceea9e51d9@gmail.com>
Date: Fri, 28 Feb 2020 20:13:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.27.2 released!
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

Bug fix release, mainly to fix regressions cause by the 
zero-page-job-support implementation in foomatic-rip, also some code 
improvements in foomatic-rip and some crasher fixes in cups-browsed

Here we go:

https://openprinting.github.io/cups-filters-1.27.2-released/

    Till
