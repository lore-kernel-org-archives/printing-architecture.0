Return-Path: <till.kamppeter@gmail.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2E9141603
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 039F1415FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-language:to:subject:from
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=og9lGzlbnOLDwlPgE5m1q3G6TKNDMY0T1+/vPJ7yHjI=;
 b=I1wY7SKgk5yPqyDJ174WDtJJ3woYt2CePxz+U6aAVQBYNi2WptnKsYYknEGtLUrvA0
 A861XvY3WNxhxORX+j+HBFMW839qU9hC6gSe5Zx8brx8o1h2mbFIi7XB3jYw7Uqxmnqc
 L3kaxRo8r6Xv0xraHsd3Unk2MTwEOuQfDfBB5VLAJDymG3z4p5A4CEvqcUlDIjP+MrtA
 I/nukhy5vSDUy2rwQKYIQmDcINBYSjVUSmuKST6qSSJ8+u0y5udfV4WBI6DrXXtGVbF6
 GFu3EOQ/NxZD3gSbKm/F2pHfKItQXmh2+CNtOGCO4KX4h+ym+BUAQGbOnV/IAd7oWM2z
 /qYw==
Message-ID: <c286c6bb-7381-754b-4072-685167d02d1f@gmail.com>
Date: Tue, 24 Jan 2023 23:09:49 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.17 released!
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

I have done another cups-filters stable release now!

Mainly for distros where the freeze is nearby or already passed and so 
they cannot consider cups-filters 2.x.

Bug fix release, to more reliably discover all printer capablities from 
driverless printers, especially borderless printing, and to preferably 
use Apple Raster instead of PWG Raster or PCLm.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.17

    Till
