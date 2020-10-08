Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=jx2+b/v6+kXf1pDb4C9T5LC4f6r4d5GK/XLR+PfQoO8=;
 b=HRKwEZlIIeFmX2vJQPr4axCQ7hNpWnX7Nydg5s7KPTz+2ZhRX6q3RsQxZGfsR6zx0K
 4edgSAEOuNuzn05nGgb6DhIC3vvWsy7XVHF6aEoLDuWtF81zVlNcd8RoW3SiVSTvUWc0
 RYXoN0XVJC+JaviYkBFItXlmvZfq94Qulj7sW3PteXcGw/7qW10eJ1sgX3VUEyfsA2df
 FAJOXcMAjPIwEqrI+sDqonl+qKOhOmdw7qNZ0DivjaZdTEa84L6HZuowinLL9ycnzdnw
 FTWF7VTDSARLEBYX+PcB6GKAAUyFtyYYnKmMTaeZVK1XKgpNaJWOhaVoWlUFq8fV8o4H
 yYBw==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <e1fbc4c3-a623-a240-e7e7-badc9b4ec974@gmail.com>
Date: Thu, 8 Oct 2020 12:44:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.4 released!
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

Bug fix release, mainly to solve CUPS performance problems caused by the 
IPP fax support of the "driverless" utility

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.4

    Till
