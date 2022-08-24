Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D549960F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70EBA60E6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc;
 bh=PklY5XGZ8QFNHI6QCQY93M6FNiY2JbSqNYG82x3AKeQ=;
 b=VXfTL2FRJfTxol1jAT05EA0suZEgRRj9Vbjcz3i/YXE8HxGMZQvFRJNirQhb1wYohM
 IL31yOJsECz3G3PsfRJiuecVM6jtu8bNtaPgqlnya8GQg+sYhHVZBSCyPzoO4ye1hX/8
 vIiurD4FSJkldRSf8frMpTDi4k9OOGIQACG1WCGIMsgG17vIf+uklbxDKBGgdLCkeMB6
 MWLembtSVMvlnLcA34u5LLrUtsZu8myoUuQ3tKdPa5wYAKY99mIzzAw44pXvrwMv08Pb
 1up+VvtWjzO803kc2PP9BZakRsolM5x40Gkz3H0Zxvm+fxyM2B2lfdE303/NB2iRYsFb
 cFqg==
Message-ID: <95af656b-d7bc-8c76-73a4-989c1ed2a633@gmail.com>
Date: Wed, 24 Aug 2022 15:22:05 +0200
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.16 released!
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

I have done another cups-filters release now!

Bug fix release, to make images be printed in their original size with 
"print-scaling=none" and to not use deprecated data types for reading 
TIFF images.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.16

    Till
