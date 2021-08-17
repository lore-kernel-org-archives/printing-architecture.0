Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=tDzSpo15Yh5FmT4+GwjHBLVk/VNTB9AKJXB2EeeL018=;
 b=e0qPFHS40TnqYL79nKlCiaUjnMRrmEcq988gJEjMBZQ5u+04YdS9Ivbc23iLrV7c6l
 E1w8knyfffM/c1lwZ9+XbPOKzPHGH8QpuxMO/kH2mgs+sRjtV6KlxDkgJzQll8gUgvP3
 FPYB6ZYq2S9ECA5eqWL3nqaZ4n0Nu8+gwGQ5Hs2g9Hqmu/SpnhHKpjx9BnnfPKPPtblf
 URVHULqHWkd5GBFNGVgNRbh6OIvBb7+CLJf5vpu+XkJ5vkFSGt6D0GfCqIYTpgoXBQxJ
 ihg1vlNCfbDITud06hlRgbUIjS3hQUbwxbjH9i/fnt/UBJFhnamnfUvu/+BIpeKunaON
 g87Q==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <50fec94a-b9e2-1e9b-7857-6358465ff8a0@gmail.com>
Date: Tue, 17 Aug 2021 13:55:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.10 released!
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

Bug fix release: More reliable legacy CUPS browsing in cups-browsed, 
improved PDF printer sample PPDs, with borderless page sizes, eliminated 
unneeded dependency on DjVu font, minor fixes

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.10

    Till
