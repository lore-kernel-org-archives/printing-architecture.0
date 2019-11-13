Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=H7+FVzlJmlFzsu3TUfnap4mTs+IxteCrpnsO8gzDmC0=;
	b=CpMNxERkwGm4x2Cir6aAsFw9f9STPTBNRUTWIzPHcCD3b5ozlAvhd3zsnwMnvk+Pyd
	XpBHJbTxPcxEmDB6KXMlVirG0eVDroMQ7E44F8g0rn43Q9T/FrooMYxXuVWbK2DTnO1D
	oegAhoEWMS+0/5OjlVA6mJ+iR3r3dw1eug+gmuz2gfwIKwkBhutKUCiMAF4lAo0InIwn
	pmiJYCWt9TysX1nEPHmuye6hIU6EtQhRjhLCqB7++HQA9zfkYupZ1Tnr4lGwAUoO4BUb
	zY+4vA6ZCCnhGuOP1l28PPLivtoPI7g4XtjGjL/FZzUlPpzKUoHA9A6d8wNe2q4sFdbw
	le2Q==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <02265d8c-8678-5edb-be08-a948d5ee9dcb@gmail.com>
Date: Wed, 13 Nov 2019 12:27:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] PWG Raster format (IPP Everywhere) not
	reliable
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

recently, I saw several bug reports where certain printer models advertise to 
understand PWG Raster but in fact are not able to print this format. Fortunately 
all IPP-Everywhere/Mopria/Wi-Fi-Direct printers also do AirPrint and so one can 
print in Apple Raster which reliably works.

The bug reports are

https://github.com/apple/cups/issues/5238
    Create PPD file from get-printer-attributes
    (Printer: Canon Pixma Pro 10)

https://github.com/OpenPrinting/cups-filters/pull/168
    Epson ET-7700 does not support image/pwg-raster

https://github.com/OpenPrinting/cups-filters/issues/171
    Attribute differences
    (Printer: Epson Workforce WF-2630)

All these got solved by modifying the PPD generators of CUPS and cups-filters so 
that if a printer supports both Apple Raster and PWG Raster that the printing 
gets done in Apple Raster.

This bug report can have the same reason:

https://bugs.launchpad.net/ubuntu/+source/cups/+bug/1850127
    Unable to print with Brother printer since upgrade to Ubuntu 19.10
    (Printer: Brother HL-L8260CDW)

It got solved by a printer firmware update and it is also not clear by the 
attached files whether it was actually tried to print in PWG Raster.

This makes the impression that the implementation of PWG Raster support in many 
printers is buggy and so IPP Everywhere and generally driverless IPP printing 
standards using PWG Raster is not reliable. And PWG Raster was created as a free 
and open standard format for driverless printing.

I think this should get escalated to the PWG and especially better verification 
methods for PWG Raster creation and consumption should get introduced, and 
firmware updates issued for existing printers.

    Till
