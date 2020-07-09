Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=4zAeufa3GX5ayK8Ujdly9TpFXPBZsWOjKRRjrO5zJiU=;
 b=Hjo72b5gQKZDIUmS2MQngm/5filOCLeAe2bL9iFcDYr1+U/9z/duGtsKJEUBX0RalQ
 TeUzJtSFQi2G5nXa5ngrENpNb6Qz5cOxuEmgWMqq81olRdc/JSZ4JrhcEL6r4g1LXT8V
 DBhiFMXv/S4XziErUGgcJbMRR5Y7/oC1cL7g5pkODAkKjI2R6iH8cxJ68V/1FvGyiUQK
 O0PNzaQ6GQ7SJ//3FChH2enX1Ea2Gd/i1AJmkNoxMFUk4ntIs313LSjDdKeGozQUJXws
 FfWp3lAjtIA3FTcBhJIQQ829Zt38WLyMXSA7XxtG1AUZVNdwlCY25dvUigjxiNxh8duh
 W3hQ==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <6fae827a-3644-798a-034b-45edea3829c1@gmail.com>
Date: Thu, 9 Jul 2020 13:28:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Printer Applications: Retro-fitting classic
	printer drivers - libppd
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: Michael Sweet <msweet@msweet.org>, Jai Luthra <luthrajaiji@gmail.com>, Sambhav Dusad <sambhavdusad24@gmail.com>
Cc: Open Printing <printing-architecture@lists.linux-foundation.org>, Aveek Basu <basu.aveek@gmail.com>

Michael, Jai, Sambhav,

first, thanks a lot to you all for working on PAPPL to make the base for 
Printer Applications.

While I am waiting for the CUPS Snap to get integrated in the snapd 
environment and put up in the Snap Store, I am working on cups-filters 
to provide valuable code for Printer Applications.

One important point for the CUPS Snap is that it does not support 
classic printer drivers, consisting of PPD files and filters. So for 
using it as default CUPS implementation in a Linux distribution, all 
existing printer drivers need to get turned into Printer Applications, 
and this with a minimum effort of coding.

Most of them (probably all except Gutenprint) are difficult to get 
converted by their original authors, as they do not maintain the drivers 
any more, supported printers are old and no one want to code for that 
any more, driver is simply only a big bunch of PPD files, no code, 
driver is proprietary, closed source, ...

So we need a way to retro-fit these drivers by wrapping them into 
Printer Applications with lowest coding effort possible and if needed 
also without needing to modify the original driver executables.

This works best if we use the driver's PPD files inside the Printer 
Application and so we need to handle PPD files, also after the PPD 
handling support got removed from CUPS and especially libcups.

To avoid that we have to invent the wheel again, writing a lot of 
handling code for a totally obsolete file format, I have grabbed all the 
PPD handling functions from libcups (current GitHub state, CUPS 2.3.3) 
and put them into the new libppd which I have added to cups-filters.

It has the following properties:

- All PPD-handling-related functions from libcups (except loading the 
PPD from a CUPS queue) are overtaken
- Also the CUPS-private functions related to PPDs are overtaken and 
added to libppd's public API.
- Other private or internal functions are overtaken from libcups as they 
are needed for the PPD-related functions to work. They are not added to 
the API.
- Some functions of tools and utilities like ippeveprinter and ippeveps 
are overtaken.
- All API functions have names starting with "ppd" and written in 
camel-case, some needed to get renamed for that.
- libppd is separate from libcupsfilters, so it does not need to get 
included in a Printer Application which uses functionality of 
cups-filters but does not use PPD files

NOTE: This is NOT to encourage printer driver developers to continue to 
create new PPD files for new printers. It is ONLY for retro-fitting 
existing classic CUPS drivers and PostScript PPD files. There will be no 
further development on the library's code, especially no new PPD format 
extensions.

The next release of cups-filters, 1.28.0, will contain libppd for the 
first time. It is already, shortly before completion for 1.28.0 in the 
GitHub repository, in the ppd/ subdirectory:

https://github.com/OpenPrinting/cups-filters/

I hope this will help for a smooth transition to snapped CUPS.

    Till
