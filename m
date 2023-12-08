Return-Path: <pzz@apevzner.com>
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFEAB408BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 541BC408B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner.com; s=google; t=1702051340; x=1702656140;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:subject:from:content-language:to
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8bH6/lPe4ltUbqLcOSfmya8q7f6hP06qdkRETU/3xkU=;
 b=OhA/XpU1v4KeJW5eM3Fc9QcBzymQHUbUsxjzr78QkKdRKzXj5/WkPmwIjr1SG5LfFt
 uSkKH8aW/Vr9ZIhIXfbNKddmbbBj2jLdhxRiq8ONsjbzcplGAP92myQMaghSIS17S8SF
 Z6zR2ncTeMrTl90UxBDNvNOCH8gxTvZYUX7lsru37wNYVMdusQTdJJ6/XXOKJRP62YaM
 J9ejt3URjw6n5gKtgAIdDaqzVPlX1NJk+9N8uDHfVPnWan5XQSCeYJVjP6R4IKInJk8Q
 YDnFnk+BuWkD6LY7oLqT/bVp36Xld1CtlDyu15xgP4z+XamKPNSHNZuPB9Jpj6XhkYCw
 eahw==
Message-ID: <fa90fbc0-1523-4dc0-b16e-3bbb8e2dac56@apevzner.com>
Date: Fri, 8 Dec 2023 19:02:19 +0300
MIME-Version: 1.0
Content-Language: en-US
From: Alexander Pevzner <pzz@apevzner.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] github.com/OpenPrinting/goipp 1.1.0 and
	ipp-usb 0.9.24 announce
List-Id: Printing architecture under linux
 <printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>, 
 <mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: printing-architecture@lists.linux-foundation.org

Hi,

after long delay I'm glad to announce next releases of goipp and ipp-usb

(1) goipp

goipp is the independent, fairly complete implementation of the core IPP 
protocol (per RFC 8010), written in pure Go. It was created a while ago 
as a part of the ipp-usb project, because being working on that project 
I've noticed, to my surprise, that there is no working implementation of 
the IPP protocol in Go, and was moved into the separate project in 
assumption that it can be useful by itself, as a general-purpose IPP 
library.

This implementation written from scratch. CUPS code was only consulted 
as a source of expertise, but Go implementation is 100% independent.

The 1.1.0 version adds the following things:
   - workaround for Pantum M7300FDW. This device (and, probably, many 
similar) violates IPP protocol and encodes collection members as named 
attributes instead of using memberAttrName tags to represent attribute 
names within collections
   - Groups field added to the Message structure. It allows to represent 
IPP messages with repeated groups with the same group tags (like Get-Jobs)
   - near 100% test coverage
   - few minor bugs were discovered and fixed (mostly related to more 
accurate reporting of IPP decoding errors)
   - general improvements of errors reporting, mostly in formulating 
error messages

(2) ipp-usb

1. Added support for clients authentication 
(https://github.com/OpenPrinting/ipp-usb/issues/61), requested by RedHat 
a while ago

2. Added workaround for Canon Selphy CP1500 
(https://github.com/OpenPrinting/ipp-usb/issues/73). This device returns 
invalid IPP status in the Get-Printer-Attributes. Workaround implemented 
as the ignore-ipp-status in case it will be useful for other devices.

3. Added support for HP LaserJet MFP M426fdn, HP ColorLaserJet MFP 
M278-M281 and, probably, some similar devices.

These MFPs use non-standard Class/SubClass/Protocol combination for IPP 
over USB, 255/9/1. Ideally it should be implemented as quirk, but for 
now simply hardcoded (for idVendor == 0x03f0).

4. Workaround for Pantum M7300FDW (explained above, in the goipp announce).

Please note, that fixing Pantum M7300FDW requires the similar patch in 
CUPS, which is not currently approved (see 
https://github.com/OpenPrinting/cups/pull/826).

5. User-contributed FreeBSD port (see 
https://cgit.freebsd.org/ports/commit/?id=c30e4415453a5d3c5c0cd00d253250b8f7e2054d)

6. Some other bug fixes and small improvements.

This version requires goipp 1.1.0 for building.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
