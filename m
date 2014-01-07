Return-Path: <cloos@jhcloos.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jhcloos.com;
	s=ore13; t=1389132419;
	bh=d6VQRhxPf7wUNd2YOhs05pEUv64ofjV+mSTc39tHJoY=;
	h=From:To:Subject:Date:From;
	b=YollvVIoq65ZDDf+RlATtMArX8mFUWToN4a6BajKaCXfBq3oRUE0n/0GOTMmkVzmc
	07T8rKtb9COTiQ1YE0b1b24dJxW1PtM9bWL8XWgpLgra2LRUuMwWPAJJyuvUs/MUBL
	ecHzqtKTdirfnqkWfhS5tk/Ozd4utVzbnDD36Y8K6oQ==
From: James Cloos <cloos@jhcloos.com>
Date: Tue, 07 Jan 2014 17:01:08 -0500
Message-ID: <m34n5fo3ia.fsf@carbon.jhcloos.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Printing-architecture] ProcessColorModel, when using pdf2ps
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

It looks like the filter chains should, when using pdf2ps, specify a
Process Color Model for the conversion appropriate for the printer and
relevant print job options.

When printing to a monochrome printer, -sProcessColorModel=DeviceGray
When printing to a CMYK printer,   -sProcessColorModel=DeviceCMYK
And if RGB PS printers exist,  -sProcessColorModel=DeviceRGB

GS's default for ps2write (and pdfwrite) is DeviceRGB.

This will help ensure that tranparency doesn't interfere with colour
(such as turning grayscale into full colour) and may help avoid issues
with more complex jobs.

PPD values such as ColorDevice, DefaultColorSpace and ColorModel can be
the basis of the choice.

Also, if pstops is to be called next, it may insert a /ProcessColorModel
setpagedevice call; the pdftops filter could check for that and use the
-s option if it calls pdf2ps for the conversion.  (Many manufacturer
ppds use that technique with private ppd entries.)

Posted here so that it can see some discussion.

-JimC
--
James Cloos <cloos@jhcloos.com>         OpenPGP: 1024D/ED7DAEA6

