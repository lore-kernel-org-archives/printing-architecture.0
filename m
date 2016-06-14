Return-Path: <till.kamppeter@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:to:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=KhuIljUgbh38HJ7lo7GorUy8v7KmViGwluHc6gG0rgw=;
	b=YwdhAy8tU4kqH7oQcm2ltI4zAPR84DeISYeUpP9vZKfeIacV9s0Rf0ArW2/m7PAQA1
	frBdK0rBfk5HqPubeSS7sE7K+EXACfY2RCqoiEOHwekiI2SMyrdebm0BgTbZQl9exjtT
	AMLnSXYEgqtUxACh5jSCqOvtHEcpQYayyFQoYD6mQMXOHTks1GT+FkPgnW/DEH5rtokT
	K6+PX0+zC53oOYaI4wEML1JEyKfv/AquK8Wp4ZHiEr0vJj9+Hirm1TJQAX7TEQtQGrea
	0JduuPB2g4V5SAMGIvQCWo2/bCxbxZMjnxsc7z1dkkGMyugjJJaW2wcq/pQeQiJpby98
	8LJA==
From: Till Kamppeter <till.kamppeter@gmail.com>
Message-ID: <57608B02.1040802@gmail.com>
Date: Tue, 14 Jun 2016 19:53:54 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [Printing-architecture] CUPS 2.2.x drops interface scripts - How to
 create filtered queues without PPD
List-Id: Printing architecture under linux
	<printing-architecture.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/printing-architecture/>
List-Post: <mailto:printing-architecture@lists.linux-foundation.org>
List-Help: <mailto:printing-architecture-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/printing-architecture>,
	<mailto:printing-architecture-request@lists.linux-foundation.org?subject=subscribe>
To: "The CUPS user discussion list." <cups@cups.org>, Open Printing <printing-architecture@lists.linux-foundation.org>

Hi,

I have seen now the new features list of the first beta of the CUPS 
2.2.x series and one of the changes is

	- Interface scripts are no longer supported for security reasons
	  (<rdar://problem/23135640>)

System V interface scripts give a possibility to create filtered print 
queues without PPD.

I make use of this in cups-filters. If cups-browsed discovers an IPP 
network printer (with "CreateIPPPrinterQueues Yes" in cups-browsed.conf) 
and is not able to gather enough info via IPP for making a PPD for this 
printer, it creates a queue with interface script, the script calling 
the filter sys5ippprinter which in turn calls all filters to convert the 
input format (PDF, JPEG, or PWG Raster) into the printer's native format 
(PWG Raster, PDF, PostScript, PCL-XL, or PCL 5c/e).

By the way, PPD files are also on the way to get deprecated.

Now I have some questions about what to do:

- How will I do non-raw (filtered) queues without PPD files?

- Or should cups-browsed always generate PPD files, using certain
   default values for capability info which it is not able to obtain
   from the printer?

- What were the security reasons leading to remove the interface script
   support from CUPS? It seems that this got only discussed internally
   at Apple.

- And if there are neither interface scripts nor PPD files (probably
   this requires all printers being IPP Everywhere), how will CUPS
   determine which filters to run?

    Till
