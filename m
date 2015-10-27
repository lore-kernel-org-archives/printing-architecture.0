Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=Mb51alL3zyBIriBzoXg2fMfaVd80oeZL0v46ashUyOs=;
	b=YMdFp6afzcTPucrEsEuEbfBvTY9WiBI2pOTuun3VYPRGNj14rV1oh0h4LuDTD32r88
	IIl9KQuMU/L0UW5cyqiAiL/MmMdZQD8zM70U1OMZWHd5sj5AhOeNgb6uDGayjf+cMjtj
	AAX0TTNZYzxRgilEY21pO4NC/Tl9J2ok2mYLoGdyCb40y5Gmn+z6Nmr02roQqaZcBH2d
	9IAsmgTZoGTFjO9ZmrsQy2pin5skWCDHF4FhiBOXp4Id5oQz9uTKmiZeX2pF50SE+4gU
	FPQ+HpZGZ2Kb+KO0wmXCUW8kUirl9JaSA7rZ1iMNvKOieeNsWZ3o72ZoQxfqCeonX/z/
	FWOA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <562FEA3C.9080003@gmail.com>
Date: Tue, 27 Oct 2015 19:18:52 -0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] Are there really XPS-only printers?
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

I would like to know whether there are really printers which understand 
only XPS (plus some secret proprietary protocols) and no PDF, 
PostScript, PWG Raster, ...?

In this case I would need to add XPS printing support to Linux so that 
this class of printers gets supported. There is already a free software 
implementation in Ghostscript which would need to get supported by 
cups-filters and for phones one could also make a rastertoxps filter to 
get more lightweight support.

If there are such printers can someone give a list of models here so 
that I could perhaps get hold on one? Thanks in advance.

    Till
