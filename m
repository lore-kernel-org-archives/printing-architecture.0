Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:from:subject:to
 :content-language:content-transfer-encoding;
 bh=gHzShM3wwSdWWGbNPhtPCxZXmrxkPbAznVf7tPsaO+I=;
 b=l68il6FfritzISbqH13hh/acFTbMbb0wj39ltM2YILhcrxt4BlaCYLabgVQg0Snxi/
 A1QB9FxJLWA6b/Oba4dZZ5HPCM+Ws5RC5HScSkzorMjOXCqfFdIRjDPCufuy5rG/6Uau
 GaX/ucgszUUzWSdcYYNy3l588yrlOaCINR7TJ2Jf4F6TwzjrPJ/lOgW4pUn4CR6H4rDY
 oqIOIDpgB4YFJoc4sOyMOeD9s+xoVd/DxfA7nksZXlIDaCT2LFkWcawZ1WsFuLDUAM+S
 nv39jlyHiecI60iyLbX/TymmfumOW5KdlvdcMAyUWoKpyBXzlgIG04hYlBTsTJShwWAQ
 Z2VQ==
Message-ID: <06b1ee92-55be-0290-dedb-d04e60da9dfd@gmail.com>
Date: Sat, 15 Jan 2022 23:12:45 -0300
MIME-Version: 1.0
From: Till Kamppeter <till.kamppeter@gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: 8bit
Subject: [Printing-architecture] cups-filters 1.28.11 released!
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

Bug fix release, containing backports of many of the bugs recently fixed 
during the preparation of the cups-filters 2.x release. Important is 
that cups-browsed’s queue naming is aligned with CUPS’ temporary queue 
naming now and several bugs affecting driverless printing are fixed.

Here we go:

https://github.com/OpenPrinting/cups-filters/releases/tag/1.28.11

    Till
