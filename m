Return-Path: <pzz@apevzner.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=apevzner-com.20150623.gappssmtp.com; s=20150623;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=4HmNv+ERA6ru8iwxfK83YNBJ+cSNxoUOYD0I/fBtmMM=;
 b=t8uOteOcVQjkWCnm3LVUkIY2k/NwSatTfNaolZECUmO6JmPSOQSDHW6g6Mye981XdJ
 IAzGPWf+ZyMRFJpEiSF3iu6+rQ1kbwEgL0OJexHrY4QxWM7mX3MvrCkC8pn2yWSpm6yp
 9Dam+My3fmtnAUzbmP7laQ82cIDYdqXKD+ajO3xFqxlIsO9yzVG4JtwZdyDvMHa8eNY8
 wzbsqCvvaJfv5xWIwmIvY6BSPBIe/J+ZO+uH0WskF9wLsALfTpbB9RPejW+Ah9l40Xj0
 UHorBtqIl5qolV9bDUALu03OdVZ7uhZpxPfqYqSyWsgNhmGThURs8msaAhi+G1T0klvl
 NYog==
From: Alexander Pevzner <pzz@apevzner.com>
Message-ID: <87302aca-8a63-03c4-e5d6-544182267c61@apevzner.com>
Date: Tue, 6 Oct 2020 00:22:23 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] ipp-usb 0.9.14 announce
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

I've just released ipp-usb version 0.9.14

This new release adds a concept of "quirks" files. As some hardware 
requires a special handling, these hardware-specific quirks are not 
longer hard-coded into the executable, but instead are configured via 
set of editable quirks files, placed into the /usr/share/ipp-usb/quirks/ 
directory

HP Laser MFP 135a device is blacklisted. This strange device has IPP 
over USB interfaces (class 7, subclass 1, protocol 4), and even responds 
to HTTP requests sent to these interfaces, but to all requests it 
responds with "HTTP 404 Not Found" status, so making IPP-over-USB 
effectively not functional. Blacklisting this device prevents ipp-usb 
from blocking legacy USB drivers to access the hardware.

-- 

	Wishes, Alexander Pevzner (pzz@apevzner.com)
