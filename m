Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=W/QFGQdz8NLt/MrQfQEcvsvckIa5bjGFWc+0wmrQ8qw=;
 b=q4b4e7I2Uu277uIvC0bNObNRlAIlNUyaf7Tg3vxJz0DyDZ18kzcoWxj7cKI/E72G+s
 94xKFazsiSPChrREpRDOyCipAMvYlF/r7CmQnvBF94cbv2eqC93vVb277UKONVSSaDHu
 UlDqq51nLctC8KBDr7hdSJD9xzMhJRbfCeC8J3CKLn3DxUghKKwegffWzXGj7zrTJgku
 5qRDH/seInPvP0cYMjbMDiJ3nciN7kbW2XwVMmBQQiwN42r27jiLc8ev3H2hLQFR8AXf
 O0vMYkbLl9o/HTpRFRK2nY5bfpQC+4YItJqoGLIz73/IkgIeiFPIn7uC3adswW1p65al
 oMsA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <40d40511-657f-ca03-68dc-65247549b4c1@gmail.com>
Date: Thu, 27 Aug 2020 00:17:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] cups-filters 1.28.0 released!
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

Bug fix release to fix several bugs in the new IPP Fax Out support by 
the "driverless" utility and also to fix some minor issues.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.1

    Till
